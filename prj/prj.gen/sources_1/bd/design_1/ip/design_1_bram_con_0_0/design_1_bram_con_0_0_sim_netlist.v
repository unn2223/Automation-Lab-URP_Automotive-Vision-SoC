// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Nov 28 16:56:31 2025
// Host        : DESKTOP-1CQ16CU running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /mnt/c/DPU-PYNQ/boards/Ultra96v2/binary_container_1/link/vivado/vpl/prj/prj.gen/sources_1/bd/design_1/ip/design_1_bram_con_0_0/design_1_bram_con_0_0_sim_netlist.v
// Design      : design_1_bram_con_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_bram_con_0_0,bram_con,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "bram_con,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module design_1_bram_con_0_0
   (aclk,
    aresetn,
    run_en,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
    s_axis_tuser,
    bram_addra,
    bram_dina,
    bram_wea,
    bram_ena,
    bram_douta,
    bram_rsta,
    bram_regcea,
    last_hs,
    wcount,
    frame_captured);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input run_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tuser;
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

  wire \<const1> ;
  wire aclk;
  wire aresetn;
  wire [16:0]bram_addra;
  wire [31:0]bram_dina;
  wire bram_rsta;
  wire bram_wea;
  wire frame_captured;
  wire last_hs;
  wire run_en;
  wire [31:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire [17:0]wcount;

  assign bram_ena = \<const1> ;
  assign bram_regcea = \<const1> ;
  assign s_axis_tready = aresetn;
  VCC VCC
       (.P(\<const1> ));
  design_1_bram_con_0_0_bram_con inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .bram_addra(bram_addra),
        .bram_dina(bram_dina),
        .bram_rsta(bram_rsta),
        .bram_wea(bram_wea),
        .frame_captured(frame_captured),
        .last_hs(last_hs),
        .run_en(run_en),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .wcount(wcount));
endmodule

(* ORIG_REF_NAME = "bram_con" *) 
module design_1_bram_con_0_0_bram_con
   (bram_dina,
    bram_rsta,
    bram_wea,
    last_hs,
    frame_captured,
    wcount,
    bram_addra,
    aresetn,
    s_axis_tvalid,
    s_axis_tdata,
    aclk,
    run_en);
  output [31:0]bram_dina;
  output bram_rsta;
  output bram_wea;
  output last_hs;
  output frame_captured;
  output [17:0]wcount;
  output [16:0]bram_addra;
  input aresetn;
  input s_axis_tvalid;
  input [31:0]s_axis_tdata;
  input aclk;
  input run_en;

  wire aclk;
  wire aresetn;
  wire [16:0]bram_addra;
  wire \bram_addra[16]_i_1_n_0 ;
  wire \bram_addra[16]_i_2_n_0 ;
  wire \bram_addra[16]_i_4_n_0 ;
  wire \bram_addra[16]_i_5_n_0 ;
  wire \bram_addra[16]_i_6_n_0 ;
  wire \bram_addra[16]_i_7_n_0 ;
  wire \bram_addra[7]_i_2_n_0 ;
  wire \bram_addra_reg[15]_i_1_n_0 ;
  wire \bram_addra_reg[15]_i_1_n_1 ;
  wire \bram_addra_reg[15]_i_1_n_10 ;
  wire \bram_addra_reg[15]_i_1_n_11 ;
  wire \bram_addra_reg[15]_i_1_n_12 ;
  wire \bram_addra_reg[15]_i_1_n_13 ;
  wire \bram_addra_reg[15]_i_1_n_14 ;
  wire \bram_addra_reg[15]_i_1_n_15 ;
  wire \bram_addra_reg[15]_i_1_n_2 ;
  wire \bram_addra_reg[15]_i_1_n_3 ;
  wire \bram_addra_reg[15]_i_1_n_4 ;
  wire \bram_addra_reg[15]_i_1_n_5 ;
  wire \bram_addra_reg[15]_i_1_n_6 ;
  wire \bram_addra_reg[15]_i_1_n_7 ;
  wire \bram_addra_reg[15]_i_1_n_8 ;
  wire \bram_addra_reg[15]_i_1_n_9 ;
  wire \bram_addra_reg[16]_i_3_n_15 ;
  wire \bram_addra_reg[7]_i_1_n_0 ;
  wire \bram_addra_reg[7]_i_1_n_1 ;
  wire \bram_addra_reg[7]_i_1_n_10 ;
  wire \bram_addra_reg[7]_i_1_n_11 ;
  wire \bram_addra_reg[7]_i_1_n_12 ;
  wire \bram_addra_reg[7]_i_1_n_13 ;
  wire \bram_addra_reg[7]_i_1_n_14 ;
  wire \bram_addra_reg[7]_i_1_n_15 ;
  wire \bram_addra_reg[7]_i_1_n_2 ;
  wire \bram_addra_reg[7]_i_1_n_3 ;
  wire \bram_addra_reg[7]_i_1_n_4 ;
  wire \bram_addra_reg[7]_i_1_n_5 ;
  wire \bram_addra_reg[7]_i_1_n_6 ;
  wire \bram_addra_reg[7]_i_1_n_7 ;
  wire \bram_addra_reg[7]_i_1_n_8 ;
  wire \bram_addra_reg[7]_i_1_n_9 ;
  wire [31:0]bram_dina;
  wire bram_rsta;
  wire bram_wea;
  wire frame_captured;
  wire last_hs;
  wire last_hs_d;
  wire last_hs_i_1_n_0;
  wire run_en;
  wire [31:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire [17:0]wcount;
  wire \wcount[7]_i_2_n_0 ;
  wire \wcount_reg[15]_i_1_n_0 ;
  wire \wcount_reg[15]_i_1_n_1 ;
  wire \wcount_reg[15]_i_1_n_10 ;
  wire \wcount_reg[15]_i_1_n_11 ;
  wire \wcount_reg[15]_i_1_n_12 ;
  wire \wcount_reg[15]_i_1_n_13 ;
  wire \wcount_reg[15]_i_1_n_14 ;
  wire \wcount_reg[15]_i_1_n_15 ;
  wire \wcount_reg[15]_i_1_n_2 ;
  wire \wcount_reg[15]_i_1_n_3 ;
  wire \wcount_reg[15]_i_1_n_4 ;
  wire \wcount_reg[15]_i_1_n_5 ;
  wire \wcount_reg[15]_i_1_n_6 ;
  wire \wcount_reg[15]_i_1_n_7 ;
  wire \wcount_reg[15]_i_1_n_8 ;
  wire \wcount_reg[15]_i_1_n_9 ;
  wire \wcount_reg[17]_i_1_n_14 ;
  wire \wcount_reg[17]_i_1_n_15 ;
  wire \wcount_reg[17]_i_1_n_7 ;
  wire \wcount_reg[7]_i_1_n_0 ;
  wire \wcount_reg[7]_i_1_n_1 ;
  wire \wcount_reg[7]_i_1_n_10 ;
  wire \wcount_reg[7]_i_1_n_11 ;
  wire \wcount_reg[7]_i_1_n_12 ;
  wire \wcount_reg[7]_i_1_n_13 ;
  wire \wcount_reg[7]_i_1_n_14 ;
  wire \wcount_reg[7]_i_1_n_15 ;
  wire \wcount_reg[7]_i_1_n_2 ;
  wire \wcount_reg[7]_i_1_n_3 ;
  wire \wcount_reg[7]_i_1_n_4 ;
  wire \wcount_reg[7]_i_1_n_5 ;
  wire \wcount_reg[7]_i_1_n_6 ;
  wire \wcount_reg[7]_i_1_n_7 ;
  wire \wcount_reg[7]_i_1_n_8 ;
  wire \wcount_reg[7]_i_1_n_9 ;
  wire [7:0]\NLW_bram_addra_reg[16]_i_3_CO_UNCONNECTED ;
  wire [7:1]\NLW_bram_addra_reg[16]_i_3_O_UNCONNECTED ;
  wire [7:1]\NLW_wcount_reg[17]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_wcount_reg[17]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h10000000FFFFFFFF)) 
    \bram_addra[16]_i_1 
       (.I0(\bram_addra[16]_i_4_n_0 ),
        .I1(\bram_addra[16]_i_5_n_0 ),
        .I2(\bram_addra[16]_i_6_n_0 ),
        .I3(\bram_addra[16]_i_2_n_0 ),
        .I4(\bram_addra[16]_i_7_n_0 ),
        .I5(aresetn),
        .O(\bram_addra[16]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \bram_addra[16]_i_2 
       (.I0(run_en),
        .I1(s_axis_tvalid),
        .I2(aresetn),
        .O(\bram_addra[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \bram_addra[16]_i_4 
       (.I0(wcount[9]),
        .I1(wcount[14]),
        .I2(wcount[16]),
        .I3(wcount[15]),
        .O(\bram_addra[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \bram_addra[16]_i_5 
       (.I0(wcount[11]),
        .I1(wcount[0]),
        .I2(wcount[13]),
        .I3(wcount[4]),
        .O(\bram_addra[16]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \bram_addra[16]_i_6 
       (.I0(wcount[5]),
        .I1(wcount[8]),
        .I2(wcount[6]),
        .I3(wcount[7]),
        .O(\bram_addra[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \bram_addra[16]_i_7 
       (.I0(wcount[1]),
        .I1(wcount[3]),
        .I2(wcount[10]),
        .I3(wcount[12]),
        .I4(wcount[17]),
        .I5(wcount[2]),
        .O(\bram_addra[16]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bram_addra[7]_i_2 
       (.I0(bram_addra[0]),
        .O(\bram_addra[7]_i_2_n_0 ));
  FDRE \bram_addra_reg[0] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\bram_addra_reg[7]_i_1_n_15 ),
        .Q(bram_addra[0]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \bram_addra_reg[10] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\bram_addra_reg[15]_i_1_n_13 ),
        .Q(bram_addra[10]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \bram_addra_reg[11] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\bram_addra_reg[15]_i_1_n_12 ),
        .Q(bram_addra[11]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \bram_addra_reg[12] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\bram_addra_reg[15]_i_1_n_11 ),
        .Q(bram_addra[12]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \bram_addra_reg[13] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\bram_addra_reg[15]_i_1_n_10 ),
        .Q(bram_addra[13]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \bram_addra_reg[14] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\bram_addra_reg[15]_i_1_n_9 ),
        .Q(bram_addra[14]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \bram_addra_reg[15] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\bram_addra_reg[15]_i_1_n_8 ),
        .Q(bram_addra[15]),
        .R(\bram_addra[16]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \bram_addra_reg[15]_i_1 
       (.CI(\bram_addra_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\bram_addra_reg[15]_i_1_n_0 ,\bram_addra_reg[15]_i_1_n_1 ,\bram_addra_reg[15]_i_1_n_2 ,\bram_addra_reg[15]_i_1_n_3 ,\bram_addra_reg[15]_i_1_n_4 ,\bram_addra_reg[15]_i_1_n_5 ,\bram_addra_reg[15]_i_1_n_6 ,\bram_addra_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_addra_reg[15]_i_1_n_8 ,\bram_addra_reg[15]_i_1_n_9 ,\bram_addra_reg[15]_i_1_n_10 ,\bram_addra_reg[15]_i_1_n_11 ,\bram_addra_reg[15]_i_1_n_12 ,\bram_addra_reg[15]_i_1_n_13 ,\bram_addra_reg[15]_i_1_n_14 ,\bram_addra_reg[15]_i_1_n_15 }),
        .S(bram_addra[15:8]));
  FDRE \bram_addra_reg[16] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\bram_addra_reg[16]_i_3_n_15 ),
        .Q(bram_addra[16]),
        .R(\bram_addra[16]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \bram_addra_reg[16]_i_3 
       (.CI(\bram_addra_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_bram_addra_reg[16]_i_3_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bram_addra_reg[16]_i_3_O_UNCONNECTED [7:1],\bram_addra_reg[16]_i_3_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_addra[16]}));
  FDRE \bram_addra_reg[1] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\bram_addra_reg[7]_i_1_n_14 ),
        .Q(bram_addra[1]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \bram_addra_reg[2] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\bram_addra_reg[7]_i_1_n_13 ),
        .Q(bram_addra[2]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \bram_addra_reg[3] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\bram_addra_reg[7]_i_1_n_12 ),
        .Q(bram_addra[3]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \bram_addra_reg[4] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\bram_addra_reg[7]_i_1_n_11 ),
        .Q(bram_addra[4]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \bram_addra_reg[5] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\bram_addra_reg[7]_i_1_n_10 ),
        .Q(bram_addra[5]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \bram_addra_reg[6] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\bram_addra_reg[7]_i_1_n_9 ),
        .Q(bram_addra[6]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \bram_addra_reg[7] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\bram_addra_reg[7]_i_1_n_8 ),
        .Q(bram_addra[7]),
        .R(\bram_addra[16]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \bram_addra_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\bram_addra_reg[7]_i_1_n_0 ,\bram_addra_reg[7]_i_1_n_1 ,\bram_addra_reg[7]_i_1_n_2 ,\bram_addra_reg[7]_i_1_n_3 ,\bram_addra_reg[7]_i_1_n_4 ,\bram_addra_reg[7]_i_1_n_5 ,\bram_addra_reg[7]_i_1_n_6 ,\bram_addra_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\bram_addra_reg[7]_i_1_n_8 ,\bram_addra_reg[7]_i_1_n_9 ,\bram_addra_reg[7]_i_1_n_10 ,\bram_addra_reg[7]_i_1_n_11 ,\bram_addra_reg[7]_i_1_n_12 ,\bram_addra_reg[7]_i_1_n_13 ,\bram_addra_reg[7]_i_1_n_14 ,\bram_addra_reg[7]_i_1_n_15 }),
        .S({bram_addra[7:1],\bram_addra[7]_i_2_n_0 }));
  FDRE \bram_addra_reg[8] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\bram_addra_reg[15]_i_1_n_15 ),
        .Q(bram_addra[8]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \bram_addra_reg[9] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\bram_addra_reg[15]_i_1_n_14 ),
        .Q(bram_addra[9]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \bram_dina_reg[0] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[0]),
        .Q(bram_dina[0]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[10] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[10]),
        .Q(bram_dina[10]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[11] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[11]),
        .Q(bram_dina[11]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[12] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[12]),
        .Q(bram_dina[12]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[13] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[13]),
        .Q(bram_dina[13]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[14] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[14]),
        .Q(bram_dina[14]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[15] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[15]),
        .Q(bram_dina[15]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[16] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[16]),
        .Q(bram_dina[16]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[17] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[17]),
        .Q(bram_dina[17]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[18] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[18]),
        .Q(bram_dina[18]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[19] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[19]),
        .Q(bram_dina[19]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[1] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[1]),
        .Q(bram_dina[1]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[20] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[20]),
        .Q(bram_dina[20]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[21] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[21]),
        .Q(bram_dina[21]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[22] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[22]),
        .Q(bram_dina[22]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[23] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[23]),
        .Q(bram_dina[23]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[24] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[24]),
        .Q(bram_dina[24]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[25] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[25]),
        .Q(bram_dina[25]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[26] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[26]),
        .Q(bram_dina[26]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[27] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[27]),
        .Q(bram_dina[27]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[28] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[28]),
        .Q(bram_dina[28]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[29] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[29]),
        .Q(bram_dina[29]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[2] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[2]),
        .Q(bram_dina[2]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[30] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[30]),
        .Q(bram_dina[30]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[31] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[31]),
        .Q(bram_dina[31]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[3] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[3]),
        .Q(bram_dina[3]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[4] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[4]),
        .Q(bram_dina[4]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[5] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[5]),
        .Q(bram_dina[5]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[6] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[6]),
        .Q(bram_dina[6]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[7] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[7]),
        .Q(bram_dina[7]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[8] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[8]),
        .Q(bram_dina[8]),
        .R(bram_rsta));
  FDRE \bram_dina_reg[9] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[9]),
        .Q(bram_dina[9]),
        .R(bram_rsta));
  LUT1 #(
    .INIT(2'h1)) 
    bram_rsta_INST_0
       (.I0(aresetn),
        .O(bram_rsta));
  FDRE bram_wea_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\bram_addra[16]_i_2_n_0 ),
        .Q(bram_wea),
        .R(bram_rsta));
  FDRE frame_captured_reg
       (.C(aclk),
        .CE(1'b1),
        .D(last_hs_d),
        .Q(frame_captured),
        .R(bram_rsta));
  FDRE last_hs_d_reg
       (.C(aclk),
        .CE(1'b1),
        .D(last_hs),
        .Q(last_hs_d),
        .R(bram_rsta));
  LUT5 #(
    .INIT(32'h00000080)) 
    last_hs_i_1
       (.I0(\bram_addra[16]_i_7_n_0 ),
        .I1(\bram_addra[16]_i_2_n_0 ),
        .I2(\bram_addra[16]_i_6_n_0 ),
        .I3(\bram_addra[16]_i_5_n_0 ),
        .I4(\bram_addra[16]_i_4_n_0 ),
        .O(last_hs_i_1_n_0));
  FDRE last_hs_reg
       (.C(aclk),
        .CE(1'b1),
        .D(last_hs_i_1_n_0),
        .Q(last_hs),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \wcount[7]_i_2 
       (.I0(wcount[0]),
        .O(\wcount[7]_i_2_n_0 ));
  FDRE \wcount_reg[0] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\wcount_reg[7]_i_1_n_15 ),
        .Q(wcount[0]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \wcount_reg[10] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\wcount_reg[15]_i_1_n_13 ),
        .Q(wcount[10]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \wcount_reg[11] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\wcount_reg[15]_i_1_n_12 ),
        .Q(wcount[11]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \wcount_reg[12] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\wcount_reg[15]_i_1_n_11 ),
        .Q(wcount[12]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \wcount_reg[13] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\wcount_reg[15]_i_1_n_10 ),
        .Q(wcount[13]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \wcount_reg[14] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\wcount_reg[15]_i_1_n_9 ),
        .Q(wcount[14]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \wcount_reg[15] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\wcount_reg[15]_i_1_n_8 ),
        .Q(wcount[15]),
        .R(\bram_addra[16]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \wcount_reg[15]_i_1 
       (.CI(\wcount_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\wcount_reg[15]_i_1_n_0 ,\wcount_reg[15]_i_1_n_1 ,\wcount_reg[15]_i_1_n_2 ,\wcount_reg[15]_i_1_n_3 ,\wcount_reg[15]_i_1_n_4 ,\wcount_reg[15]_i_1_n_5 ,\wcount_reg[15]_i_1_n_6 ,\wcount_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\wcount_reg[15]_i_1_n_8 ,\wcount_reg[15]_i_1_n_9 ,\wcount_reg[15]_i_1_n_10 ,\wcount_reg[15]_i_1_n_11 ,\wcount_reg[15]_i_1_n_12 ,\wcount_reg[15]_i_1_n_13 ,\wcount_reg[15]_i_1_n_14 ,\wcount_reg[15]_i_1_n_15 }),
        .S(wcount[15:8]));
  FDRE \wcount_reg[16] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\wcount_reg[17]_i_1_n_15 ),
        .Q(wcount[16]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \wcount_reg[17] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\wcount_reg[17]_i_1_n_14 ),
        .Q(wcount[17]),
        .R(\bram_addra[16]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \wcount_reg[17]_i_1 
       (.CI(\wcount_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_wcount_reg[17]_i_1_CO_UNCONNECTED [7:1],\wcount_reg[17]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wcount_reg[17]_i_1_O_UNCONNECTED [7:2],\wcount_reg[17]_i_1_n_14 ,\wcount_reg[17]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,wcount[17:16]}));
  FDRE \wcount_reg[1] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\wcount_reg[7]_i_1_n_14 ),
        .Q(wcount[1]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \wcount_reg[2] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\wcount_reg[7]_i_1_n_13 ),
        .Q(wcount[2]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \wcount_reg[3] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\wcount_reg[7]_i_1_n_12 ),
        .Q(wcount[3]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \wcount_reg[4] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\wcount_reg[7]_i_1_n_11 ),
        .Q(wcount[4]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \wcount_reg[5] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\wcount_reg[7]_i_1_n_10 ),
        .Q(wcount[5]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \wcount_reg[6] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\wcount_reg[7]_i_1_n_9 ),
        .Q(wcount[6]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \wcount_reg[7] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\wcount_reg[7]_i_1_n_8 ),
        .Q(wcount[7]),
        .R(\bram_addra[16]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \wcount_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\wcount_reg[7]_i_1_n_0 ,\wcount_reg[7]_i_1_n_1 ,\wcount_reg[7]_i_1_n_2 ,\wcount_reg[7]_i_1_n_3 ,\wcount_reg[7]_i_1_n_4 ,\wcount_reg[7]_i_1_n_5 ,\wcount_reg[7]_i_1_n_6 ,\wcount_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\wcount_reg[7]_i_1_n_8 ,\wcount_reg[7]_i_1_n_9 ,\wcount_reg[7]_i_1_n_10 ,\wcount_reg[7]_i_1_n_11 ,\wcount_reg[7]_i_1_n_12 ,\wcount_reg[7]_i_1_n_13 ,\wcount_reg[7]_i_1_n_14 ,\wcount_reg[7]_i_1_n_15 }),
        .S({wcount[7:1],\wcount[7]_i_2_n_0 }));
  FDRE \wcount_reg[8] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\wcount_reg[15]_i_1_n_15 ),
        .Q(wcount[8]),
        .R(\bram_addra[16]_i_1_n_0 ));
  FDRE \wcount_reg[9] 
       (.C(aclk),
        .CE(\bram_addra[16]_i_2_n_0 ),
        .D(\wcount_reg[15]_i_1_n_14 ),
        .Q(wcount[9]),
        .R(\bram_addra[16]_i_1_n_0 ));
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
