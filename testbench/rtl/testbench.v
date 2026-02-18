`timescale 1ns/1ps

module testbench;

  parameter integer IN_W  = 640;
  parameter integer IN_H  = 480;
  parameter integer OUT_W = IN_W/2;   // 320
  parameter integer OUT_H = IN_H/2;   // 240

  // Number of frames to run.
  parameter integer NUM_FRAMES = 3;

  reg aclk, aresetn;
  always #5 aclk = ~aclk;             // 100 MHz

  initial begin
    aclk    = 1'b0;
    aresetn = 1'b0;
    #40 aresetn = 1'b1;
  end

  // AXIS input/output signals.
  reg  [31:0] s_tdata;
  reg         s_tvalid, s_tlast, s_tuser;
  wire        s_tready;

  wire [31:0] m_tdata;
  wire        m_tvalid, m_tlast, m_tuser;
  reg         m_tready;

  // DUT
  top_axis_chain #(
    .IN_W (IN_W),
    .IN_H (IN_H)
  ) dut (
    .aclk          (aclk),
    .aresetn       (aresetn),
    .s_axis_tdata  (s_tdata),
    .s_axis_tvalid (s_tvalid),
    .s_axis_tready (s_tready),
    .s_axis_tlast  (s_tlast),
    .s_axis_tuser  (s_tuser),
    .m_axis_tdata  (m_tdata),
    .m_axis_tvalid (m_tvalid),
    .m_axis_tready (m_tready),
    .m_axis_tlast  (m_tlast),
    .m_axis_tuser  (m_tuser)
  );

  // Shared variables.
  integer x, y, ret;
  reg [7:0] r8, g8, b8;

  integer frame_idx_tx;
  integer eof_flag;

  integer frame_idx_rx;
  integer pix_cnt_frame;
  integer OUT_PIXELS;
  integer in_fp, out_fp;

  // Send one AXIS beat with handshake.
  task send_pixel;
    input [31:0] pix;
    input        sof;
    input        eol;
  begin
    // Wait until downstream is ready.
    while (s_tready == 1'b0) @(posedge aclk);

    // Drive one beat.
    s_tdata  <= pix;
    s_tuser  <= sof;
    s_tlast  <= eol;
    s_tvalid <= 1'b1;

    @(posedge aclk);

    // Deassert after one beat.
    s_tvalid <= 1'b0;
    s_tuser  <= 1'b0;
    s_tlast  <= 1'b0;
  end
  endtask

  // TX: read front_i.hex and stream into DUT.
  initial begin
    s_tdata  = 32'd0;
    s_tvalid = 1'b0;
    s_tlast  = 1'b0;
    s_tuser  = 1'b0;
    m_tready = 1'b1;

    wait (aresetn);

    for (frame_idx_tx = 0; frame_idx_tx < NUM_FRAMES; frame_idx_tx = frame_idx_tx + 1) begin

      // Select input file per frame.
      if (frame_idx_tx == 0)
        in_fp = $fopen("vectors/input_hex/front_0.hex", "r");
      else if (frame_idx_tx == 1)
        in_fp = $fopen("vectors/input_hex/front_1.hex", "r");
      else if (frame_idx_tx == 2)
        in_fp = $fopen("vectors/input_hex/front_2.hex", "r");
      else
        in_fp = 0;

      if (in_fp == 0) begin
        $display("ERROR: cannot open input hex for frame %0d", frame_idx_tx);
      end
      else begin
        $display("[TX] frame %0d: open (expect %0d lines)", frame_idx_tx, IN_W*IN_H);

        eof_flag = 0;

        for (y = 0; (y < IN_H) && (eof_flag == 0); y = y + 1) begin
          for (x = 0; (x < IN_W) && (eof_flag == 0); x = x + 1) begin

            if ($feof(in_fp)) begin
              $display("ERROR: EOF early at frame %0d, (%0d,%0d)", frame_idx_tx, x, y);
              eof_flag = 1;
            end
            else begin
              ret = $fscanf(in_fp, "%2x%2x%2x\n", r8, g8, b8);
              if (ret != 3) begin
                $display("ERROR: bad line at frame %0d, (%0d,%0d)", frame_idx_tx, x, y);
                eof_flag = 1;
              end
              else begin
                // Pack RGB into AXIS word and send.
                send_pixel(
                  {8'h00, r8, g8, b8},
                  ((x == 0) && (y == 0)),   // SOF
                  (x == IN_W-1)             // EOL
                );
              end
            end

          end
        end

        $fclose(in_fp);
        $display("[TX] frame %0d done", frame_idx_tx);

        // Idle gap between frames.
        repeat (20) @(posedge aclk);
      end
    end

    $display("[TX] all frames sent.");
  end

  // RX: save DUT output to result_i.hex.
  initial begin
    OUT_PIXELS     = OUT_W * OUT_H;
    frame_idx_rx   = 0;
    pix_cnt_frame  = 0;

    wait (aresetn);

    // Open first output file.
    if (NUM_FRAMES > 0) begin
      if (frame_idx_rx == 0)
        out_fp = $fopen("vectors/sim_output_hex/result_0.hex", "w");
      else if (frame_idx_rx == 1)
        out_fp = $fopen("vectors/sim_output_hex/result_1.hex", "w");
      else if (frame_idx_rx == 2)
        out_fp = $fopen("vectors/sim_output_hex/result_2.hex", "w");
      else
        out_fp = 0;

      if (out_fp == 0)
        $display("ERROR: cannot open output file for frame %0d", frame_idx_rx);
      else
        $display("[RX] frame %0d: saving %0d pixels", frame_idx_rx, OUT_PIXELS);
    end

    forever begin
      @(posedge aclk);

      if (m_tvalid && m_tready) begin
        if (out_fp != 0) begin
          $fwrite(out_fp, "%02x%02x%02x\n",
                  m_tdata[23:16], m_tdata[15:8], m_tdata[7:0]);
        end
        pix_cnt_frame = pix_cnt_frame + 1;

        // End of one output frame.
        if (pix_cnt_frame == OUT_PIXELS) begin
          if (out_fp != 0) begin
            $fclose(out_fp);
            $display("[RX] frame %0d done (%0d pixels)", frame_idx_rx, pix_cnt_frame);
          end

          frame_idx_rx  = frame_idx_rx + 1;
          pix_cnt_frame = 0;

          // All frames received.
          if (frame_idx_rx >= NUM_FRAMES) begin
            $display("[RX] all frames received.");
            repeat (20) @(posedge aclk);
            $finish;
          end

          // Open next output file.
          if (frame_idx_rx == 0)
            out_fp = $fopen("vectors/sim_output_hex/result_0.hex", "w");
          else if (frame_idx_rx == 1)
            out_fp = $fopen("vectors/sim_output_hex/result_1.hex", "w");
          else if (frame_idx_rx == 2)
            out_fp = $fopen("vectors/sim_output_hex/result_2.hex", "w");
          else
            out_fp = 0;

          if (out_fp == 0)
            $display("ERROR: cannot open output file for frame %0d", frame_idx_rx);
          else
            $display("[RX] frame %0d: saving %0d pixels", frame_idx_rx, OUT_PIXELS);
        end
      end
    end
  end

endmodule
