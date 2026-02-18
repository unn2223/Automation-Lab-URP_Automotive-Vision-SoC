`timescale 1ns/1ps

module bram_con #(
    parameter integer IMG_W       = 320,
    parameter integer IMG_H       = 240,
    parameter integer PIXELS      = IMG_W * IMG_H,
    parameter integer ADDR_WIDTH  = 17
)(
    input  wire                    aclk,
    input  wire                    aresetn,

    // run_en = 1: stop BRAM writes, run_en = 0: allow writes
    input  wire                    run_en,

    // AXI4-Stream input
    input  wire [31:0]             s_axis_tdata,
    input  wire                    s_axis_tvalid,
    output wire                    s_axis_tready,
    input  wire                    s_axis_tlast,
    input  wire                    s_axis_tuser,

    // BRAM Port-A (write)
    output reg  [ADDR_WIDTH-1:0]   bram_addra,
    output reg  [31:0]             bram_dina,
    output reg                     bram_wea,
    output wire                    bram_ena,
    input  wire [31:0]             bram_douta,
    output wire                    bram_rsta,
    output wire                    bram_regcea,

    // Status
    output reg                     last_hs,
    output reg  [ADDR_WIDTH:0]     wcount,
    output reg                     frame_captured
);

    assign bram_ena    = 1'b1;
    assign bram_rsta   = ~aresetn;
    assign bram_regcea = 1'b1;

    assign s_axis_tready = aresetn;

    wire hs_now     = s_axis_tvalid & s_axis_tready;
    wire last_guard = (wcount == (PIXELS-1));

    reg last_hs_d;

    always @(posedge aclk) begin
        if (!aresetn) begin
            bram_addra     <= {ADDR_WIDTH{1'b0}};
            bram_dina      <= 32'd0;
            bram_wea       <= 1'b0;
            wcount         <= {ADDR_WIDTH+1{1'b0}};
            frame_captured <= 1'b0;
            last_hs        <= 1'b0;
            last_hs_d      <= 1'b0;
        end else begin
            bram_wea       <= 1'b0;
            frame_captured <= 1'b0;
            last_hs_d      <= last_hs;

            if (hs_now) begin
                bram_dina <= s_axis_tdata;

                if (!run_en) begin
                    bram_wea <= 1'b1;

                    if (!last_guard) begin
                        bram_addra <= bram_addra + 1'b1;
                        wcount     <= wcount + 1'b1;
                        last_hs    <= 1'b0;
                    end else begin
                        bram_addra <= {ADDR_WIDTH{1'b0}};
                        wcount     <= {ADDR_WIDTH+1{1'b0}};
                        last_hs    <= 1'b1;
                    end
                end else begin
                    last_hs <= 1'b0;
                end
            end else begin
                last_hs <= 1'b0;
            end

            if (last_hs_d)
                frame_captured <= 1'b1;
        end
    end

endmodule
