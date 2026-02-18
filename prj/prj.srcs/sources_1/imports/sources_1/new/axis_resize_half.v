`timescale 1ns / 1ps
// AXI4-Stream 2x downsampler (keeps even x/even y pixels).
// Default path: 640x480 -> 320x240.

module axis_resize_half #(
  parameter integer TDATA_W   = 32,      // AXIS tdata width
  parameter integer IN_WIDTH  = 640,     // input frame width (even)
  parameter integer IN_HEIGHT = 480      // input frame height (even)
)(
  input  wire                aclk,
  input  wire                aresetn,
  input  wire                run_en,     // 1: pause emitted pixels, 0: normal

  // S_AXIS input (full-resolution frame)
  input  wire [TDATA_W-1:0]  s_tdata,
  input  wire                s_tvalid,
  output wire                s_tready,
  input  wire                s_tlast,     // end of input line
  input  wire                s_tuser,     // input SOF

  // M_AXIS output (half-resolution frame)
  output wire [TDATA_W-1:0]  m_tdata,
  output wire                m_tvalid,
  input  wire                m_tready,
  output wire                m_tlast,     // end of output line
  output wire                m_tuser      // output SOF
);

  // Input-space x/y counters.
  reg [$clog2(IN_WIDTH) -1:0]  x_cnt;
  reg [$clog2(IN_HEIGHT)-1:0]  y_cnt;

  wire beat_accepted = s_tvalid && s_tready;

  // Keep only even column and even row samples.
  wire emit_pixel = (x_cnt[0] == 1'b0) && (y_cnt[0] == 1'b0);

  // Last emitted pixel of each output line.
  wire last_output_pixel_this_line = (x_cnt == IN_WIDTH-2);

  // Pass backpressure only for emitted pixels.
  assign s_tready = emit_pixel ? m_tready & (!run_en) : 1'b1;

  // Data and valid for emitted samples.
  assign m_tdata  = s_tdata;
  assign m_tvalid = s_tvalid && emit_pixel;

  // Output line end.
  assign m_tlast  = m_tvalid && last_output_pixel_this_line;

  // Output SOF follows the first emitted input SOF pixel.
  assign m_tuser  = m_tvalid && s_tuser;

  // Update input-space counters on accepted beats.
  always @(posedge aclk) begin
    if (!aresetn) begin
      x_cnt <= 0;
      y_cnt <= 0;
    end else if (beat_accepted) begin
      if (s_tlast) begin
        // End of line: reset x and advance y.
        x_cnt <= 0;
        if (y_cnt == IN_HEIGHT-1) begin
          y_cnt <= 0;
        end else begin
          y_cnt <= y_cnt + 1'b1;
        end
      end else begin
        x_cnt <= x_cnt + 1'b1;
      end
    end
  end

endmodule
