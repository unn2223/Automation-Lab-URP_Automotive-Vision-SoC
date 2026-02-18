`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/01 16:30:11
// Design Name: 
// Module Name: axis_resize_half
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module axis_resize_half #(
  parameter integer TDATA_W   = 32,      // AXIS tdata 폭 (VDMA와 동일)
  parameter integer IN_WIDTH  = 640,     // 입력 프레임 가로 픽셀수 (짝수)
  parameter integer IN_HEIGHT = 480      // 입력 프레임 세로 픽셀수 (짝수)
)(
  input  wire                aclk,
  input  wire                aresetn,
  input  wire                run_en,

  // S_AXIS (입력: 원본 프레임)
  input  wire [TDATA_W-1:0]  s_tdata,
  input  wire                s_tvalid,
  output wire                s_tready,
  input  wire                s_tlast,     // 입력 라인 끝
  input  wire                s_tuser,     // 프레임 시작(SOF)

  // M_AXIS (출력: 1/2 축소 프레임)
  output wire [TDATA_W-1:0]  m_tdata,
  output wire                m_tvalid,
  input  wire                m_tready,
  output wire                m_tlast,     // 출력 라인 끝
  output wire                m_tuser      // 출력 프레임 SOF
);

  // x/y 카운터: 입력 기준 (수신한 픽셀/라인 위치)
  reg [$clog2(IN_WIDTH) -1:0]  x_cnt;
  reg [$clog2(IN_HEIGHT)-1:0]  y_cnt;

  wire beat_accepted = s_tvalid && s_tready;

  // 짝수 픽셀/짝수 라인만 내보냄 → 1/2 다운샘플
  wire emit_pixel = (x_cnt[0] == 1'b0) && (y_cnt[0] == 1'b0);

  // 출력 라인의 마지막 비트: 짝수 픽셀만 뽑으므로 마지막 출력 픽셀은 x=IN_WIDTH-2 (짝수)
  wire last_output_pixel_this_line = (x_cnt == IN_WIDTH-2);

  // s_tready: 출력으로 내보낼 때는 downstream backpressure 전달, 버릴 때는 항상 1
  assign s_tready = emit_pixel ? m_tready & (!run_en) : 1'b1;

  // 출력 데이터/유효
  assign m_tdata  = s_tdata;
  assign m_tvalid = s_tvalid && emit_pixel;

  // 출력 라인 종료: 입력 라인에서 x=IN_WIDTH-2일 때 그 픽셀을 내보내면 한 줄 끝
  assign m_tlast  = m_tvalid && last_output_pixel_this_line;

  // 출력 프레임 SOF: 입력 SOF가 들어온 그 픽셀이 짝수/짝수일 때만 전달
  assign m_tuser  = m_tvalid && s_tuser;

  // 좌표 카운터 갱신
  always @(posedge aclk) begin
    if (!aresetn) begin
      x_cnt <= 0;
      y_cnt <= 0;
    end else if (beat_accepted) begin
      if (s_tlast) begin
        // 라인 끝: x 리셋, y+1
        x_cnt <= 0;
        if (y_cnt == IN_HEIGHT-1) begin
          y_cnt <= 0;               // 프레임 끝나면 y 리셋 (다음 프레임)
        end else begin
          y_cnt <= y_cnt + 1'b1;
        end
      end else begin
        x_cnt <= x_cnt + 1'b1;
      end
    end
  end

endmodule