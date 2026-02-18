// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Nov 28 16:59:59 2025
// Host        : DESKTOP-1CQ16CU running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /mnt/c/DPU-PYNQ/boards/Ultra96v2/binary_container_1/link/vivado/vpl/prj/prj.gen/sources_1/bd/design_1/ip/design_1_axis_resize_half_0_0/design_1_axis_resize_half_0_0_sim_netlist.v
// Design      : design_1_axis_resize_half_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axis_resize_half_0_0,axis_resize_half,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axis_resize_half,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module design_1_axis_resize_half_0_0
   (aclk,
    aresetn,
    run_en,
    s_tdata,
    s_tvalid,
    s_tready,
    s_tlast,
    s_tuser,
    m_tdata,
    m_tvalid,
    m_tready,
    m_tlast,
    m_tuser);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m:s, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input run_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TDATA" *) input [31:0]s_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TVALID" *) input s_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TREADY" *) output s_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TLAST" *) input s_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m TDATA" *) output [31:0]m_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m TVALID" *) output m_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m TREADY" *) input m_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m TLAST" *) output m_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_tuser;

  wire aclk;
  wire aresetn;
  wire m_tlast;
  wire m_tready;
  wire m_tuser;
  wire m_tvalid;
  wire run_en;
  wire [31:0]s_tdata;
  wire s_tlast;
  wire s_tready;
  wire s_tuser;
  wire s_tvalid;

  assign m_tdata[31:0] = s_tdata;
  design_1_axis_resize_half_0_0_axis_resize_half inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_tlast(m_tlast),
        .m_tready(m_tready),
        .m_tuser(m_tuser),
        .m_tvalid(m_tvalid),
        .run_en(run_en),
        .s_tlast(s_tlast),
        .s_tready(s_tready),
        .s_tuser(s_tuser),
        .s_tvalid(s_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_resize_half" *) 
module design_1_axis_resize_half_0_0_axis_resize_half
   (m_tlast,
    m_tuser,
    m_tvalid,
    s_tready,
    aclk,
    s_tvalid,
    s_tuser,
    m_tready,
    run_en,
    s_tlast,
    aresetn);
  output m_tlast;
  output m_tuser;
  output m_tvalid;
  output s_tready;
  input aclk;
  input s_tvalid;
  input s_tuser;
  input m_tready;
  input run_en;
  input s_tlast;
  input aresetn;

  wire aclk;
  wire aresetn;
  wire beat_accepted;
  wire m_tlast;
  wire m_tlast_INST_0_i_1_n_0;
  wire m_tlast_INST_0_i_2_n_0;
  wire m_tready;
  wire m_tuser;
  wire m_tvalid;
  wire [9:0]p_0_in;
  wire run_en;
  wire s_tlast;
  wire s_tready;
  wire s_tuser;
  wire s_tvalid;
  wire \x_cnt[9]_i_1_n_0 ;
  wire \x_cnt[9]_i_4_n_0 ;
  wire [9:0]x_cnt_reg;
  wire \y_cnt[0]_i_1_n_0 ;
  wire \y_cnt_reg_n_0_[0] ;

  LUT6 #(
    .INIT(64'h4000000000000000)) 
    m_tlast_INST_0
       (.I0(m_tlast_INST_0_i_1_n_0),
        .I1(x_cnt_reg[2]),
        .I2(x_cnt_reg[1]),
        .I3(x_cnt_reg[4]),
        .I4(x_cnt_reg[3]),
        .I5(m_tlast_INST_0_i_2_n_0),
        .O(m_tlast));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    m_tlast_INST_0_i_1
       (.I0(x_cnt_reg[0]),
        .I1(\y_cnt_reg_n_0_[0] ),
        .O(m_tlast_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    m_tlast_INST_0_i_2
       (.I0(x_cnt_reg[7]),
        .I1(x_cnt_reg[8]),
        .I2(x_cnt_reg[5]),
        .I3(x_cnt_reg[6]),
        .I4(s_tvalid),
        .I5(x_cnt_reg[9]),
        .O(m_tlast_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    m_tuser_INST_0
       (.I0(s_tvalid),
        .I1(s_tuser),
        .I2(\y_cnt_reg_n_0_[0] ),
        .I3(x_cnt_reg[0]),
        .O(m_tuser));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    m_tvalid_INST_0
       (.I0(s_tvalid),
        .I1(\y_cnt_reg_n_0_[0] ),
        .I2(x_cnt_reg[0]),
        .O(m_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFF4)) 
    s_tready_INST_0
       (.I0(run_en),
        .I1(m_tready),
        .I2(\y_cnt_reg_n_0_[0] ),
        .I3(x_cnt_reg[0]),
        .O(s_tready));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[0]_i_1 
       (.I0(x_cnt_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x_cnt[1]_i_1 
       (.I0(x_cnt_reg[0]),
        .I1(x_cnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \x_cnt[2]_i_1 
       (.I0(x_cnt_reg[1]),
        .I1(x_cnt_reg[0]),
        .I2(x_cnt_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \x_cnt[3]_i_1 
       (.I0(x_cnt_reg[2]),
        .I1(x_cnt_reg[0]),
        .I2(x_cnt_reg[1]),
        .I3(x_cnt_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \x_cnt[4]_i_1 
       (.I0(x_cnt_reg[3]),
        .I1(x_cnt_reg[1]),
        .I2(x_cnt_reg[0]),
        .I3(x_cnt_reg[2]),
        .I4(x_cnt_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \x_cnt[5]_i_1 
       (.I0(x_cnt_reg[4]),
        .I1(x_cnt_reg[2]),
        .I2(x_cnt_reg[0]),
        .I3(x_cnt_reg[1]),
        .I4(x_cnt_reg[3]),
        .I5(x_cnt_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \x_cnt[6]_i_1 
       (.I0(\x_cnt[9]_i_4_n_0 ),
        .I1(x_cnt_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \x_cnt[7]_i_1 
       (.I0(x_cnt_reg[6]),
        .I1(\x_cnt[9]_i_4_n_0 ),
        .I2(x_cnt_reg[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \x_cnt[8]_i_1 
       (.I0(x_cnt_reg[7]),
        .I1(\x_cnt[9]_i_4_n_0 ),
        .I2(x_cnt_reg[6]),
        .I3(x_cnt_reg[8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hF4000000FFFFFFFF)) 
    \x_cnt[9]_i_1 
       (.I0(run_en),
        .I1(m_tready),
        .I2(m_tlast_INST_0_i_1_n_0),
        .I3(s_tlast),
        .I4(s_tvalid),
        .I5(aresetn),
        .O(\x_cnt[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEFE0000)) 
    \x_cnt[9]_i_2 
       (.I0(x_cnt_reg[0]),
        .I1(\y_cnt_reg_n_0_[0] ),
        .I2(m_tready),
        .I3(run_en),
        .I4(s_tvalid),
        .O(beat_accepted));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \x_cnt[9]_i_3 
       (.I0(x_cnt_reg[8]),
        .I1(x_cnt_reg[6]),
        .I2(\x_cnt[9]_i_4_n_0 ),
        .I3(x_cnt_reg[7]),
        .I4(x_cnt_reg[9]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \x_cnt[9]_i_4 
       (.I0(x_cnt_reg[4]),
        .I1(x_cnt_reg[2]),
        .I2(x_cnt_reg[0]),
        .I3(x_cnt_reg[1]),
        .I4(x_cnt_reg[3]),
        .I5(x_cnt_reg[5]),
        .O(\x_cnt[9]_i_4_n_0 ));
  FDRE \x_cnt_reg[0] 
       (.C(aclk),
        .CE(beat_accepted),
        .D(p_0_in[0]),
        .Q(x_cnt_reg[0]),
        .R(\x_cnt[9]_i_1_n_0 ));
  FDRE \x_cnt_reg[1] 
       (.C(aclk),
        .CE(beat_accepted),
        .D(p_0_in[1]),
        .Q(x_cnt_reg[1]),
        .R(\x_cnt[9]_i_1_n_0 ));
  FDRE \x_cnt_reg[2] 
       (.C(aclk),
        .CE(beat_accepted),
        .D(p_0_in[2]),
        .Q(x_cnt_reg[2]),
        .R(\x_cnt[9]_i_1_n_0 ));
  FDRE \x_cnt_reg[3] 
       (.C(aclk),
        .CE(beat_accepted),
        .D(p_0_in[3]),
        .Q(x_cnt_reg[3]),
        .R(\x_cnt[9]_i_1_n_0 ));
  FDRE \x_cnt_reg[4] 
       (.C(aclk),
        .CE(beat_accepted),
        .D(p_0_in[4]),
        .Q(x_cnt_reg[4]),
        .R(\x_cnt[9]_i_1_n_0 ));
  FDRE \x_cnt_reg[5] 
       (.C(aclk),
        .CE(beat_accepted),
        .D(p_0_in[5]),
        .Q(x_cnt_reg[5]),
        .R(\x_cnt[9]_i_1_n_0 ));
  FDRE \x_cnt_reg[6] 
       (.C(aclk),
        .CE(beat_accepted),
        .D(p_0_in[6]),
        .Q(x_cnt_reg[6]),
        .R(\x_cnt[9]_i_1_n_0 ));
  FDRE \x_cnt_reg[7] 
       (.C(aclk),
        .CE(beat_accepted),
        .D(p_0_in[7]),
        .Q(x_cnt_reg[7]),
        .R(\x_cnt[9]_i_1_n_0 ));
  FDRE \x_cnt_reg[8] 
       (.C(aclk),
        .CE(beat_accepted),
        .D(p_0_in[8]),
        .Q(x_cnt_reg[8]),
        .R(\x_cnt[9]_i_1_n_0 ));
  FDRE \x_cnt_reg[9] 
       (.C(aclk),
        .CE(beat_accepted),
        .D(p_0_in[9]),
        .Q(x_cnt_reg[9]),
        .R(\x_cnt[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \y_cnt[0]_i_1 
       (.I0(\y_cnt_reg_n_0_[0] ),
        .I1(s_tvalid),
        .I2(s_tlast),
        .I3(s_tready),
        .I4(aresetn),
        .O(\y_cnt[0]_i_1_n_0 ));
  FDRE \y_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\y_cnt[0]_i_1_n_0 ),
        .Q(\y_cnt_reg_n_0_[0] ),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
