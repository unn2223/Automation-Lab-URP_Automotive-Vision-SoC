// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Nov 28 16:59:47 2025
// Host        : DESKTOP-1CQ16CU running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /mnt/c/DPU-PYNQ/boards/Ultra96v2/binary_container_1/link/vivado/vpl/prj/prj.gen/sources_1/bd/design_1/ip/design_1_bram_0_0/design_1_bram_0_0_stub.v
// Design      : design_1_bram_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bram,Vivado 2022.1" *)
module design_1_bram_0_0(addra, dina, clka, wea, ena, rsta, regcea, douta, addrb, 
  dinb, web, enb, rstb, regceb, doutb)
/* synthesis syn_black_box black_box_pad_pin="addra[16:0],dina[31:0],clka,wea,ena,rsta,regcea,douta[31:0],addrb[16:0],dinb[31:0],web,enb,rstb,regceb,doutb[31:0]" */;
  input [16:0]addra;
  input [31:0]dina;
  input clka;
  input wea;
  input ena;
  input rsta;
  input regcea;
  output [31:0]douta;
  input [16:0]addrb;
  input [31:0]dinb;
  input web;
  input enb;
  input rstb;
  input regceb;
  output [31:0]doutb;
endmodule
