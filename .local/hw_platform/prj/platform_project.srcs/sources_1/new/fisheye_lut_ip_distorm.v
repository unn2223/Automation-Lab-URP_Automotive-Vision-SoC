`timescale 1ns/1ps
// ======================================================
// fisheye_lut_ip_distrom (Verilog 2001)
// - Distributed ROM style LUT (map_x/map_y)
// - $readmemh("map_x.mem"/"map_y.mem")
// - run_en = 내부 동작 플래그 (스캔 중 1)
// ======================================================
module fisheye_lut_ip_distrom #(
    parameter integer WIDTH    = 320,
    parameter integer HEIGHT   = 240,
    parameter integer XY_BITS  = 10,
    parameter integer DEPTH    = WIDTH*HEIGHT
)(
    input  wire                     clk,
    input  wire                     n_rst,     // active-low
    input  wire                     en,        // 시작 트리거 (1클럭 펄스)
    output reg  [XY_BITS-1:0]       src_x_q,
    output reg  [XY_BITS-1:0]       src_y_q,
    output reg  [$clog2(DEPTH)-1:0] out_idx,
    output reg                      out_valid,
    output reg                      run_en,
    output reg                      delaythree_run_en
);

    (* rom_style="distributed", ram_style="distributed" *)
    reg [XY_BITS-1:0] map_x [0:DEPTH-1];
    (* rom_style="distributed", ram_style="distributed" *)
    reg [XY_BITS-1:0] map_y [0:DEPTH-1];

    initial begin
        $readmemh("map_x.mem", map_x);
        $readmemh("map_y.mem", map_y);
    end

    reg [$clog2(DEPTH)-1:0] idx;
    reg delayone_run_en;
    reg delaytwo_run_en;
    
    always@(posedge clk)begin
        delayone_run_en <= run_en;
        delaytwo_run_en <= delayone_run_en;
        delaythree_run_en <= delaytwo_run_en;
    
    end
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            idx    <= {($clog2(DEPTH)){1'b0}};
            run_en <= 1'b0;
        end else begin
            if (en)
                run_en <= 1'b1;

            if (delaythree_run_en) begin
                if (idx == DEPTH-1) begin
                    idx    <= {($clog2(DEPTH)){1'b0}};
                    run_en <= 1'b0;
                end else begin
                    if(run_en)
                    idx <= idx + 1'b1;
                end
            end
        end
    end

    always @* begin
        src_x_q   = map_x[idx];
        src_y_q   = map_y[idx];
        out_idx   = idx;
        out_valid = run_en;
    end

endmodule
