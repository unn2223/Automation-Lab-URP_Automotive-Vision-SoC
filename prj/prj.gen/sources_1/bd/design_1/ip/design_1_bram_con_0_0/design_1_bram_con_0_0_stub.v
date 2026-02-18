// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Nov 28 16:56:30 2025
// Host        : DESKTOP-1CQ16CU running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /mnt/c/DPU-PYNQ/boards/Ultra96v2/binary_container_1/link/vivado/vpl/prj/prj.gen/sources_1/bd/design_1/ip/design_1_bram_con_0_0/design_1_bram_con_0_0_stub.v
// Design      : design_1_bram_con_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bram_con,Vivado 2022.1" *)
module design_1_bram_con_0_0(aclk, aresetn, run_en, s_axis_tdata, 
  s_axis_tvalid, s_axis_tready, s_axis_tlast, s_axis_tuser, bram_addra, bram_dina, bram_wea, 
  bram_ena, bram_douta, bram_rsta, bram_regcea, last_hs, wcount, frame_captured)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,run_en,s_axis_tdata[31:0],s_axis_tvalid,s_axis_tready,s_axis_tlast,s_axis_tuser,bram_addra[16:0],bram_dina[31:0],bram_wea,bram_ena,bram_douta[31:0],bram_rsta,bram_regcea,last_hs,wcount[17:0],frame_captured" */;
  input aclk;
  input aresetn;
  input run_en;
  input [31:0]s_axis_tdata;
  input s_axis_tvalid;
  output s_axis_tready;
  input s_axis_tlast;
  input s_axis_tuser;
  output [16:0]bram_addra;
  output [31:0]bram_dina;
  output bram_wea;
  output bram_ena;
  input [31:0]bram_douta;
  output bram_rsta;
  output bram_regcea;
  output last_hs;
  output [17:0]wcount;
  output frame_captured;
endmodule
