// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Nov 28 16:55:01 2025
// Host        : DESKTOP-1CQ16CU running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /mnt/c/DPU-PYNQ/boards/Ultra96v2/binary_container_1/link/vivado/vpl/prj/prj.gen/sources_1/bd/design_1/ip/design_1_fisheye_reader_stream_0_0/design_1_fisheye_reader_stream_0_0_stub.v
// Design      : design_1_fisheye_reader_stream_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fisheye_reader_stream,Vivado 2022.1" *)
module design_1_fisheye_reader_stream_0_0(aclk, aresetn, three_delay_issue, wr_done, 
  pix_cnt_acc, bram_addrb, bram_enb, bram_web, bram_dinb, bram_doutb, run_en, m_tdata, m_tvalid, 
  m_tready, m_tlast, m_tuser, m_tkeep)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,three_delay_issue,wr_done,pix_cnt_acc[16:0],bram_addrb[16:0],bram_enb,bram_web,bram_dinb[31:0],bram_doutb[31:0],run_en,m_tdata[31:0],m_tvalid,m_tready,m_tlast,m_tuser,m_tkeep[3:0]" */;
  input aclk;
  input aresetn;
  output three_delay_issue;
  input wr_done;
  output [16:0]pix_cnt_acc;
  output [16:0]bram_addrb;
  output bram_enb;
  output bram_web;
  output [31:0]bram_dinb;
  input [31:0]bram_doutb;
  output run_en;
  output [31:0]m_tdata;
  output m_tvalid;
  input m_tready;
  output m_tlast;
  output m_tuser;
  output [3:0]m_tkeep;
endmodule
