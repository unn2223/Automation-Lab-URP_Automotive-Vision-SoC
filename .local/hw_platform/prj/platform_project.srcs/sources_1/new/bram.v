`timescale 1ns/1ps

// True Dual-Port BRAM (Write-First), Single Clock
// - RAM_WIDTH : data width
// - RAM_DEPTH : number of entries
// - ADDR_WIDTH: address width (???? ????, ??: RAM_DEPTH=76800 ?? 17???)
// - RAM_PERFORMANCE: "HIGH_PERFORMANCE" or "LOW_LATENCY"
// - INIT_FILE: $readmemh?? ???? ???? (?? ???????? 0???? ????)

module bram #(
  parameter integer RAM_WIDTH       = 32,
  parameter integer RAM_DEPTH       = 76800,
  parameter integer ADDR_WIDTH      = 17,                 // 76800 < 2^17
  parameter         RAM_PERFORMANCE = "HIGH_PERFORMANCE",
  parameter         INIT_FILE       = ""
)(
  // Port A
  input  [ADDR_WIDTH-1:0] addra,
  input  [RAM_WIDTH-1:0]  dina,
  input                   clka,
  input                   wea,
  input                   ena,
  input                   rsta,
  input                   regcea,
  output [RAM_WIDTH-1:0]  douta,

  // Port B
  input  [ADDR_WIDTH-1:0] addrb,
  input  [RAM_WIDTH-1:0]  dinb,
  input                   web,
  input                   enb,
  input                   rstb,
  input                   regceb,
  output [RAM_WIDTH-1:0]  doutb
);

  // Block RAM ?עק
  // (* ram_style = "block" *) ?? ????? ?????? ??? ?? ??? ?????? ??
  reg [RAM_WIDTH-1:0] BRAM [0:RAM_DEPTH-1];

  reg [RAM_WIDTH-1:0] ram_data_a;
  reg [RAM_WIDTH-1:0] ram_data_b;

  integer i;

  // ???? : INIT_FILE ?? ?????? ???????, ???? 0????
  generate
    if (INIT_FILE != "") begin : use_init_file
      initial begin
        $readmemh(INIT_FILE, BRAM, 0, RAM_DEPTH-1);
      end
    end else begin : init_bram_to_zero
      initial begin
        for (i = 0; i < RAM_DEPTH; i = i + 1) begin
          BRAM[i] = {RAM_WIDTH{1'b0}};
        end
      end
    end
  endgenerate

  // Port A : write-first
  always @(posedge clka) begin
    if (ena) begin
      if (wea) begin
        BRAM[addra] <= dina;
        ram_data_a  <= dina;          // write-first
      end else begin
        ram_data_a  <= BRAM[addra];
      end
    end
  end

  // Port B : write-first
  always @(posedge clka) begin
    if (enb) begin
      if (web) begin
        BRAM[addrb] <= dinb;
        ram_data_b  <= dinb;          // write-first
      end else begin
        ram_data_b  <= BRAM[addrb];
      end
    end
  end

  // ??? ??????? ???
  generate
    if (RAM_PERFORMANCE == "LOW_LATENCY") begin : no_output_register
      // 1-clock read latency (???????? ????)
      assign douta = ram_data_a;
      assign doutb = ram_data_b;

    end else begin : output_register
      // 2-clock read latency (??? ???????? ????)
      reg [RAM_WIDTH-1:0] douta_reg;
      reg [RAM_WIDTH-1:0] doutb_reg;

      always @(posedge clka) begin
        if (rsta) begin
          douta_reg <= {RAM_WIDTH{1'b0}};
        end else if (regcea) begin
          douta_reg <= ram_data_a;
        end
      end

      always @(posedge clka) begin
        if (rstb) begin
          doutb_reg <= {RAM_WIDTH{1'b0}};
        end else if (regceb) begin
          doutb_reg <= ram_data_b;
        end
      end

      assign douta = douta_reg;
      assign doutb = doutb_reg;
    end
  endgenerate

endmodule
