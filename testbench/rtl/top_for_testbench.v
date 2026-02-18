`timescale 1ns/1ps

// Top chain used by testbench:
// axis_resize_half -> bram_con -> bram -> fisheye_reader_stream
module top_axis_chain #(
  parameter integer IN_W   = 640,
  parameter integer IN_H   = 480,
  parameter integer OUT_W  = IN_W/2,
  parameter integer OUT_H  = IN_H/2,
  parameter integer XY_BITS = 16,
  parameter integer BRAM_LATENCY = 2
)(
  input  wire                 aclk,
  input  wire                 aresetn,

  // AXIS input
  input  wire [31:0]          s_axis_tdata,
  input  wire                 s_axis_tvalid,
  output wire                 s_axis_tready,
  input  wire                 s_axis_tlast,
  input  wire                 s_axis_tuser,

  // AXIS output
  output wire [31:0]          m_axis_tdata,
  output wire                 m_axis_tvalid,
  input  wire                 m_axis_tready,
  output wire                 m_axis_tlast,
  output wire                 m_axis_tuser
);

  // Stream wires between blocks.
  wire [31:0] rsz_tdata;
  wire        rsz_tvalid, rsz_tready, rsz_tlast, rsz_tuser;
  wire        run_en;
  wire        last_hs;
  wire        frame_captured;

  // BRAM interface wires.
  localparam integer PIXELS = OUT_W*OUT_H;
  localparam integer ADDR_W = clogb2(PIXELS-1);

  // Port A (write)
  wire [ADDR_W-1:0] bram_addra;
  wire [31:0]       bram_dina;
  wire              bram_wea;
  wire              bram_ena;
  wire [31:0]       bram_douta;
  wire              bram_rsta;
  wire              bram_regcea;

  // Port B (read)
  wire [ADDR_W-1:0] bram_addrb;
  wire [31:0]       bram_dinb;
  wire [31:0]       bram_doutb;
  wire              bram_web;
  wire              bram_enb;
  wire              bram_rstb;
  wire              bram_regceb;

  // 1) Resize
  axis_resize_half #(
    .TDATA_W   (32),
    .IN_WIDTH  (IN_W),
    .IN_HEIGHT (IN_H)
  ) u_resize (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .run_en    (run_en),

    .s_tdata   (s_axis_tdata),
    .s_tvalid  (s_axis_tvalid),
    .s_tready  (s_axis_tready),
    .s_tlast   (s_axis_tlast),
    .s_tuser   (s_axis_tuser),

    .m_tdata   (rsz_tdata),
    .m_tvalid  (rsz_tvalid),
    .m_tready  (rsz_tready),
    .m_tlast   (rsz_tlast),
    .m_tuser   (rsz_tuser)
  );

  // 2) BRAM write controller
  bram_con #(
    .IMG_W      (OUT_W),
    .IMG_H      (OUT_H),
    .PIXELS     (PIXELS),
    .ADDR_WIDTH (ADDR_W)
  ) u_bram_con (
    .aclk           (aclk),
    .aresetn        (aresetn),
    .run_en         (run_en),

    .s_axis_tdata   (rsz_tdata),
    .s_axis_tvalid  (rsz_tvalid),
    .s_axis_tready  (rsz_tready),
    .s_axis_tlast   (rsz_tlast),
    .s_axis_tuser   (rsz_tuser),

    .bram_addra     (bram_addra),
    .bram_dina      (bram_dina),
    .bram_wea       (bram_wea),
    .bram_ena       (bram_ena),
    .bram_douta     (bram_douta),
    .bram_rsta      (bram_rsta),
    .bram_regcea    (bram_regcea),

    .last_hs        (last_hs),
    .wcount         (),
    .frame_captured (frame_captured)
  );

  // 3) BRAM core
  assign bram_rstb   = ~aresetn;
  assign bram_regceb = 1'b1;

  bram #(
    .RAM_WIDTH       (32),
    .RAM_DEPTH       (PIXELS),
    .ADDR_WIDTH      (ADDR_W),
    .RAM_PERFORMANCE ("HIGH_PERFORMANCE"),
    .INIT_FILE       ("")
  ) u_bram (
    .addra   (bram_addra),
    .addrb   (bram_addrb),
    .dina    (bram_dina),
    .dinb    (bram_dinb),
    .clka    (aclk),
    .wea     (bram_wea),
    .web     (bram_web),
    .ena     (bram_ena),
    .enb     (bram_enb),
    .rsta    (bram_rsta),
    .rstb    (bram_rstb),
    .regcea  (bram_regcea),
    .regceb  (bram_regceb),
    .douta   (bram_douta),
    .doutb   (bram_doutb)
  );

  // 4) Fisheye reader
  fisheye_reader_stream #(
    .W             (OUT_W),
    .H             (OUT_H),
    .XY_BITS       (XY_BITS),
    .BRAM_LATENCY  (BRAM_LATENCY)
  ) u_fisheye (
    .aclk        (aclk),
    .aresetn     (aresetn),
    .wr_done     (frame_captured),

    .bram_addrb  (bram_addrb),
    .bram_enb    (bram_enb),
    .bram_web    (bram_web),
    .bram_dinb   (bram_dinb),
    .bram_doutb  (bram_doutb),
    .run_en      (run_en),

    .m_tdata     (m_axis_tdata),
    .m_tvalid    (m_axis_tvalid),
    .m_tready    (m_axis_tready),
    .m_tlast     (m_axis_tlast),
    .m_tuser     (m_axis_tuser),
    .m_tkeep     ()
  );

  // Verilog-2001 clog2 helper.
  function integer clogb2;
    input integer depth;
    integer tmp;
    begin
      tmp = depth;
      clogb2 = 0;
      while (tmp > 0) begin
        tmp = tmp >> 1;
        clogb2 = clogb2 + 1;
      end
    end
  endfunction

endmodule
