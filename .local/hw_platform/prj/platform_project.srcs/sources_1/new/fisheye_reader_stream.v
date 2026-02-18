`timescale 1ns/1ps
// AXI4-Stream out; BRAM B-port read; LUT로 src좌표 생성
module fisheye_reader_stream #(
  parameter integer W            = 320,
  parameter integer H            = 240,
  parameter integer XY_BITS      = 16,
  parameter integer BRAM_LATENCY = 2
)(
  input  wire                        aclk,
  input  wire                        aresetn,
  output reg               three_delay_issue,
  
  input  wire                        wr_done,   // 1클럭 펄스
  
  output reg [16:0]                       pix_cnt_acc,

  // BRAM B-port (read-only)
  output reg  [$clog2(W*H)-1:0]      bram_addrb,
  output wire                        bram_enb,
  output wire                        bram_web,
  output wire [31:0]                 bram_dinb,
  input  wire [31:0]                 bram_doutb,
  output wire                        run_en,

  // AXIS out → VDMA S2MM
  output wire [31:0]                 m_tdata,
  output wire                        m_tvalid,
  input  wire                        m_tready,
  output wire                        m_tlast,
  output wire                        m_tuser,
  output wire [3:0]                  m_tkeep
);
  localparam integer DEPTH = W*H;

  // ---------------- wr_done 상승엣지 검출 ----------------
  reg  wr_done_q;
  wire wr_start = wr_done & ~wr_done_q;  // 새 프레임 시작 펄스

  always @(posedge aclk or negedge aresetn) begin
    if (!aresetn)
      wr_done_q <= 1'b0;
    else
      wr_done_q <= wr_done;
  end

  // ---------------- 프레임 실행 상태 ----------------
  reg frame_run;

  // 수락기준 카운터
  //reg  [$clog2(DEPTH):0] pix_cnt_acc;
  reg  [$clog2(W)-1:0]   col_cnt_acc;

  // AXIS 핸드셰이크
  reg  out_valid_r;
  wire out_ready    = m_tready;
  wire out_can_load = (~out_valid_r) | (out_valid_r & out_ready);
  wire accept       = out_valid_r & out_ready;

  // ========= LUT: dst idx -> src(x,y) =========
  wire [XY_BITS-1:0]       src_x;
  wire [XY_BITS-1:0]       src_y;
  wire [$clog2(DEPTH)-1:0] lut_idx;
  wire                     lut_valid;
  wire                     lut_run;

  fisheye_lut_ip_distrom #(
    .WIDTH  (W),
    .HEIGHT (H),
    .XY_BITS(XY_BITS)
  ) u_lut (
    .clk       (aclk),
    .n_rst     (aresetn),
    .en        (wr_start),  // ★ 프레임 시작 펄스
    .src_x_q   (src_x),
    .src_y_q   (src_y),
    .out_idx   (lut_idx),
    .out_valid (lut_valid),
    .run_en    (lut_run)
  );

  assign run_en = lut_run;  // bram_con 으로 전달해서 write 막기

  // ---------------- BRAM 주소 발행 --------------
  wire [$clog2(DEPTH)-1:0] src_addr =
        ({src_y,8'b0} + {src_y,6'b0} + src_x); // y*320 + x

  assign bram_web  = 1'b0;
  assign bram_dinb = 32'b0;

  // LUT가 유효할 때마다 주소 발행
  wire issue = lut_valid;
  
  
  reg delay_issue;
  reg two_delay_issue;

  
always @(posedge aclk or negedge aresetn) begin
  if (!aresetn) begin
    delay_issue      <= 1'b0;
    two_delay_issue  <= 1'b0;
    three_delay_issue<= 1'b0;
  end else begin
    delay_issue      <= issue;
    two_delay_issue  <= delay_issue;
    three_delay_issue<= two_delay_issue;
  end
end


  always @(posedge aclk or negedge aresetn) begin
    if (!aresetn) begin
      bram_addrb <= {($clog2(DEPTH)){1'b0}};
    end else if (three_delay_issue) begin
      bram_addrb <= src_addr;
    end
  end

  assign bram_enb = issue;

  // --------------- BRAM 지연 파이프 -------------
  reg [BRAM_LATENCY-1:0]                v_pipe;
  reg [$clog2(DEPTH)-1:0]               idx_pipe [0:BRAM_LATENCY-1];
  integer i;
  always @(posedge aclk or negedge aresetn) begin
    if (!aresetn) begin
      v_pipe <= {BRAM_LATENCY{1'b0}};
      for (i=0; i<BRAM_LATENCY; i=i+1)
        idx_pipe[i] <= {($clog2(DEPTH)){1'b0}};
    end else begin
      v_pipe[0] <= bram_enb;
      if (bram_enb)
        idx_pipe[0] <= lut_idx;
      for (i=1; i<BRAM_LATENCY; i=i+1) begin
        v_pipe[i]   <= v_pipe[i-1];
        idx_pipe[i] <= idx_pipe[i-1];
      end
    end
  end
  wire                         pipe_valid = v_pipe[BRAM_LATENCY-1];
  wire [$clog2(DEPTH)-1:0]     pipe_idx   = idx_pipe[BRAM_LATENCY-1];

  // --------------- 출력 레지스터 ----------------
  reg [3:0]  keep_r;
  reg        last_r;
  reg        user_r;
  reg        sof_sent;   // ★ 이 프레임에서 SOF 한번 나갔는지

  // 프레임 실행 상태
  always @(posedge aclk or negedge aresetn) begin
    if (!aresetn) begin
      frame_run   <= 1'b0;
      pix_cnt_acc <= {($clog2(DEPTH)+1){1'b0}};
      col_cnt_acc <= {($clog2(W)){1'b0}};
      sof_sent    <= 1'b0;
    end else begin
      // 새 프레임 시작
      if (wr_start) begin
        frame_run   <= 1'b1;
        pix_cnt_acc <= {($clog2(DEPTH)+1){1'b0}};
        col_cnt_acc <= {($clog2(W)){1'b0}};
        sof_sent    <= 1'b0;
      end

      // 수락 시 카운터
      if (accept) begin
        if (col_cnt_acc == (W-1))
          col_cnt_acc <= {($clog2(W)){1'b0}};
        else
          col_cnt_acc <= col_cnt_acc + 1'b1;

        if (pix_cnt_acc == (DEPTH-1)) begin
          pix_cnt_acc <= {($clog2(DEPTH)+1){1'b0}};
          frame_run   <= 1'b0;  // 프레임 종료
          sof_sent    <= 1'b0;
        end else begin
          if(run_en)
          pix_cnt_acc <= pix_cnt_acc + 1'b1;
        end
      end

      // SOF 플래그
      if (frame_run && accept && !sof_sent)
        sof_sent <= 1'b1;
      if (!frame_run)
        sof_sent <= 1'b0;
    end
  end

  // 데이터/KEEP/TLAST/TUSER 레지스터
  always @(posedge aclk or negedge aresetn) begin
    if (!aresetn) begin
      out_valid_r <= 1'b0;
      keep_r      <= 4'h0;
      last_r      <= 1'b0;
      user_r      <= 1'b0;
    end else begin
      if (pipe_valid && out_can_load) begin
        keep_r      <= 4'hF;
        out_valid_r <= 1'b1;

        // 이 때 TLAST / TUSER 계산
        last_r <= (col_cnt_acc == (W-2));
        user_r <= (!sof_sent);  // 아직 SOF 안나갔을 때만
      end else if (accept) begin
        out_valid_r <= 1'b0;
      end
    end
  end

reg delay_out_valid_r;
reg two_delay_out_valid_r;
reg three_delay_out_valid_r;

always@(posedge aclk)begin
    delay_out_valid_r <= out_valid_r;
    two_delay_out_valid_r <= delay_out_valid_r;
    three_delay_out_valid_r <= two_delay_out_valid_r;

end

wire ancient_tuser;

assign ancient_tuser = !(pix_cnt_acc);

reg delay_an_tuser;
reg two_delay_an_tuser;
reg three_delay_an_tuser;

always@(posedge aclk)begin
    delay_an_tuser <= ancient_tuser;
    two_delay_an_tuser <= delay_an_tuser;
    three_delay_an_tuser <= two_delay_an_tuser;

end

reg delay_run_en;
reg two_delay_run_en;
reg three_delay_run_en;

always@(posedge aclk)begin
    delay_run_en <= run_en;
    two_delay_run_en <= delay_run_en;
    three_delay_run_en <= two_delay_run_en;

end

wire ancient_tlast;

reg delay_tlast;
reg two_delay_tlast;
reg three_delay_tlast;

assign ancient_tlast = out_valid_r & last_r;
always@(posedge aclk)begin
    delay_tlast <= ancient_tlast;
    two_delay_tlast <= delay_tlast;
    three_delay_tlast <= two_delay_tlast;

end



  assign m_tdata  = bram_doutb;
  assign m_tkeep  = keep_r;
  assign m_tvalid = three_delay_out_valid_r & three_delay_run_en;
  assign m_tlast  = three_delay_tlast;
  assign m_tuser  = three_delay_an_tuser;

endmodule
