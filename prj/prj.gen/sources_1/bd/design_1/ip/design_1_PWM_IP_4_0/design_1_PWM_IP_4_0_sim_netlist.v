// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Nov 28 16:53:53 2025
// Host        : DESKTOP-1CQ16CU running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_PWM_IP_4_0 -prefix
//               design_1_PWM_IP_4_0_ design_1_PWM_IP_0_0_sim_netlist.v
// Design      : design_1_PWM_IP_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_PWM_IP_4_0_PWM_IP_v1_0
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    PWM_out,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_awaddr,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wstrb,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output PWM_out;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire PWM_out;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  design_1_PWM_IP_4_0_PWM_IP_v1_0_S00_AXI PWM_IP_v1_0_S00_AXI_inst
       (.PWM_out(PWM_out),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module design_1_PWM_IP_4_0_PWM_IP_v1_0_S00_AXI
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    PWM_out,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_awaddr,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wstrb,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output PWM_out;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire PWM_out;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [1:0]p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [0:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg2_reg_n_0_[10] ;
  wire \slv_reg2_reg_n_0_[11] ;
  wire \slv_reg2_reg_n_0_[12] ;
  wire \slv_reg2_reg_n_0_[13] ;
  wire \slv_reg2_reg_n_0_[14] ;
  wire \slv_reg2_reg_n_0_[15] ;
  wire \slv_reg2_reg_n_0_[16] ;
  wire \slv_reg2_reg_n_0_[17] ;
  wire \slv_reg2_reg_n_0_[18] ;
  wire \slv_reg2_reg_n_0_[19] ;
  wire \slv_reg2_reg_n_0_[1] ;
  wire \slv_reg2_reg_n_0_[20] ;
  wire \slv_reg2_reg_n_0_[21] ;
  wire \slv_reg2_reg_n_0_[22] ;
  wire \slv_reg2_reg_n_0_[23] ;
  wire \slv_reg2_reg_n_0_[24] ;
  wire \slv_reg2_reg_n_0_[25] ;
  wire \slv_reg2_reg_n_0_[26] ;
  wire \slv_reg2_reg_n_0_[27] ;
  wire \slv_reg2_reg_n_0_[28] ;
  wire \slv_reg2_reg_n_0_[29] ;
  wire \slv_reg2_reg_n_0_[2] ;
  wire \slv_reg2_reg_n_0_[30] ;
  wire \slv_reg2_reg_n_0_[31] ;
  wire \slv_reg2_reg_n_0_[3] ;
  wire \slv_reg2_reg_n_0_[4] ;
  wire \slv_reg2_reg_n_0_[5] ;
  wire \slv_reg2_reg_n_0_[6] ;
  wire \slv_reg2_reg_n_0_[7] ;
  wire \slv_reg2_reg_n_0_[8] ;
  wire \slv_reg2_reg_n_0_[9] ;
  wire [31:0]slv_reg3;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire u_PWM_rev00_n_0;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(u_PWM_rev00_n_0));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[0]),
        .Q(axi_araddr[2]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[1]),
        .Q(axi_araddr[3]),
        .R(u_PWM_rev00_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[0]),
        .Q(p_0_in[0]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(p_0_in[1]),
        .R(u_PWM_rev00_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(u_PWM_rev00_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(u_PWM_rev00_n_0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg1[0]),
        .I1(slv_reg0[0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(slv_reg0[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[10] ),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(slv_reg0[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[11] ),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(slv_reg0[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[12] ),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(slv_reg0[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[13] ),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(slv_reg0[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[14] ),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(slv_reg0[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[15] ),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(slv_reg0[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[16] ),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(slv_reg0[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[17] ),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(slv_reg0[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[18] ),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(slv_reg0[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[19] ),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg1[1]),
        .I1(slv_reg0[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[1] ),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(slv_reg0[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[20] ),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(slv_reg0[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[21] ),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(slv_reg0[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[22] ),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(slv_reg0[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[23] ),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(slv_reg0[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[24] ),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(slv_reg0[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[25] ),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(slv_reg0[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[26] ),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(slv_reg0[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[27] ),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(slv_reg0[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[28] ),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(slv_reg0[29]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[29] ),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg1[2]),
        .I1(slv_reg0[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[2] ),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(slv_reg0[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[30] ),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg1[31]),
        .I1(slv_reg0[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[31] ),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg1[3]),
        .I1(slv_reg0[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[3] ),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg1[4]),
        .I1(slv_reg0[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[4] ),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg1[5]),
        .I1(slv_reg0[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[5] ),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg1[6]),
        .I1(slv_reg0[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[6] ),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(slv_reg0[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[7] ),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(slv_reg0[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[8] ),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(slv_reg0[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[9] ),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(u_PWM_rev00_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(u_PWM_rev00_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(u_PWM_rev00_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(u_PWM_rev00_n_0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(u_PWM_rev00_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg1[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(u_PWM_rev00_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg2_reg_n_0_[10] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg2_reg_n_0_[11] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg2_reg_n_0_[12] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg2_reg_n_0_[13] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg2_reg_n_0_[14] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg2_reg_n_0_[15] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg2_reg_n_0_[16] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg2_reg_n_0_[17] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg2_reg_n_0_[18] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg2_reg_n_0_[19] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg2_reg_n_0_[1] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg2_reg_n_0_[20] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg2_reg_n_0_[21] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg2_reg_n_0_[22] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg2_reg_n_0_[23] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg2_reg_n_0_[24] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg2_reg_n_0_[25] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg2_reg_n_0_[26] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg2_reg_n_0_[27] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg2_reg_n_0_[28] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg2_reg_n_0_[29] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg2_reg_n_0_[2] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg2_reg_n_0_[30] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg2_reg_n_0_[31] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg2_reg_n_0_[3] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg2_reg_n_0_[4] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg2_reg_n_0_[5] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg2_reg_n_0_[6] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg2_reg_n_0_[7] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg2_reg_n_0_[8] ),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg2_reg_n_0_[9] ),
        .R(u_PWM_rev00_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(u_PWM_rev00_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(u_PWM_rev00_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
  design_1_PWM_IP_4_0_PWM_rev00 u_PWM_rev00
       (.\DUTY_CYCLE_D_reg[19]_0 (slv_reg1[19:0]),
        .PWM_out(PWM_out),
        .Q(slv_reg2),
        .\SIZE_D_reg[19]_0 (slv_reg0[19:0]),
        .SR(u_PWM_rev00_n_0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
endmodule

module design_1_PWM_IP_4_0_PWM_rev00
   (SR,
    PWM_out,
    s00_axi_aclk,
    Q,
    \DUTY_CYCLE_D_reg[19]_0 ,
    \SIZE_D_reg[19]_0 ,
    s00_axi_aresetn);
  output [0:0]SR;
  output PWM_out;
  input s00_axi_aclk;
  input [0:0]Q;
  input [19:0]\DUTY_CYCLE_D_reg[19]_0 ;
  input [19:0]\SIZE_D_reg[19]_0 ;
  input s00_axi_aresetn;

  wire [19:0]DUTY_CYCLE_D;
  wire [19:0]\DUTY_CYCLE_D_reg[19]_0 ;
  wire DUTY_CYCLE_reset;
  wire DUTY_CYCLE_reset_carry_i_1_n_0;
  wire DUTY_CYCLE_reset_carry_i_2_n_0;
  wire DUTY_CYCLE_reset_carry_i_3_n_0;
  wire DUTY_CYCLE_reset_carry_i_4_n_0;
  wire DUTY_CYCLE_reset_carry_i_5_n_0;
  wire DUTY_CYCLE_reset_carry_i_6_n_0;
  wire DUTY_CYCLE_reset_carry_i_7_n_0;
  wire DUTY_CYCLE_reset_carry_n_2;
  wire DUTY_CYCLE_reset_carry_n_3;
  wire DUTY_CYCLE_reset_carry_n_4;
  wire DUTY_CYCLE_reset_carry_n_5;
  wire DUTY_CYCLE_reset_carry_n_6;
  wire DUTY_CYCLE_reset_carry_n_7;
  wire PWM_out;
  wire [0:0]Q;
  wire [19:0]SIZE_D;
  wire [19:0]\SIZE_D_reg[19]_0 ;
  wire [0:0]SR;
  wire [19:0]counter;
  wire [19:1]counter0;
  wire counter1;
  wire \counter1_inferred__0/i__carry__0_n_1 ;
  wire \counter1_inferred__0/i__carry__0_n_2 ;
  wire \counter1_inferred__0/i__carry__0_n_3 ;
  wire \counter1_inferred__0/i__carry__0_n_4 ;
  wire \counter1_inferred__0/i__carry__0_n_5 ;
  wire \counter1_inferred__0/i__carry__0_n_6 ;
  wire \counter1_inferred__0/i__carry__0_n_7 ;
  wire \counter1_inferred__0/i__carry_n_0 ;
  wire \counter1_inferred__0/i__carry_n_1 ;
  wire \counter1_inferred__0/i__carry_n_2 ;
  wire \counter1_inferred__0/i__carry_n_3 ;
  wire \counter1_inferred__0/i__carry_n_4 ;
  wire \counter1_inferred__0/i__carry_n_5 ;
  wire \counter1_inferred__0/i__carry_n_6 ;
  wire \counter1_inferred__0/i__carry_n_7 ;
  wire [31:1]counter2;
  wire counter2_carry__0_i_1_n_0;
  wire counter2_carry__0_i_2_n_0;
  wire counter2_carry__0_i_3_n_0;
  wire counter2_carry__0_i_4_n_0;
  wire counter2_carry__0_i_5_n_0;
  wire counter2_carry__0_i_6_n_0;
  wire counter2_carry__0_i_7_n_0;
  wire counter2_carry__0_i_8_n_0;
  wire counter2_carry__0_n_0;
  wire counter2_carry__0_n_1;
  wire counter2_carry__0_n_2;
  wire counter2_carry__0_n_3;
  wire counter2_carry__0_n_4;
  wire counter2_carry__0_n_5;
  wire counter2_carry__0_n_6;
  wire counter2_carry__0_n_7;
  wire counter2_carry__1_i_1_n_0;
  wire counter2_carry__1_i_2_n_0;
  wire counter2_carry__1_i_3_n_0;
  wire counter2_carry__1_n_4;
  wire counter2_carry__1_n_6;
  wire counter2_carry__1_n_7;
  wire counter2_carry_i_1_n_0;
  wire counter2_carry_i_2_n_0;
  wire counter2_carry_i_3_n_0;
  wire counter2_carry_i_4_n_0;
  wire counter2_carry_i_5_n_0;
  wire counter2_carry_i_6_n_0;
  wire counter2_carry_i_7_n_0;
  wire counter2_carry_i_8_n_0;
  wire counter2_carry_n_0;
  wire counter2_carry_n_1;
  wire counter2_carry_n_2;
  wire counter2_carry_n_3;
  wire counter2_carry_n_4;
  wire counter2_carry_n_5;
  wire counter2_carry_n_6;
  wire counter2_carry_n_7;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[10]_i_1_n_0 ;
  wire \counter[11]_i_1_n_0 ;
  wire \counter[12]_i_1_n_0 ;
  wire \counter[13]_i_1_n_0 ;
  wire \counter[14]_i_1_n_0 ;
  wire \counter[15]_i_1_n_0 ;
  wire \counter[16]_i_1_n_0 ;
  wire \counter[17]_i_1_n_0 ;
  wire \counter[18]_i_1_n_0 ;
  wire \counter[19]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[5]_i_1_n_0 ;
  wire \counter[6]_i_1_n_0 ;
  wire \counter[7]_i_1_n_0 ;
  wire \counter[8]_i_1_n_0 ;
  wire \counter[9]_i_1_n_0 ;
  wire \counter_reg[16]_i_2_n_0 ;
  wire \counter_reg[16]_i_2_n_1 ;
  wire \counter_reg[16]_i_2_n_2 ;
  wire \counter_reg[16]_i_2_n_3 ;
  wire \counter_reg[16]_i_2_n_4 ;
  wire \counter_reg[16]_i_2_n_5 ;
  wire \counter_reg[16]_i_2_n_6 ;
  wire \counter_reg[16]_i_2_n_7 ;
  wire \counter_reg[19]_i_2_n_6 ;
  wire \counter_reg[19]_i_2_n_7 ;
  wire \counter_reg[8]_i_2_n_0 ;
  wire \counter_reg[8]_i_2_n_1 ;
  wire \counter_reg[8]_i_2_n_2 ;
  wire \counter_reg[8]_i_2_n_3 ;
  wire \counter_reg[8]_i_2_n_4 ;
  wire \counter_reg[8]_i_2_n_5 ;
  wire \counter_reg[8]_i_2_n_6 ;
  wire \counter_reg[8]_i_2_n_7 ;
  wire i__carry__0_i_10_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__0_i_9_n_0;
  wire i__carry_i_10_n_0;
  wire i__carry_i_11_n_0;
  wire i__carry_i_12_n_0;
  wire i__carry_i_13_n_0;
  wire i__carry_i_14_n_0;
  wire i__carry_i_15_n_0;
  wire i__carry_i_16_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire i__carry_i_9_n_0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire size_reset;
  wire size_reset_carry_i_1_n_0;
  wire size_reset_carry_i_2_n_0;
  wire size_reset_carry_i_3_n_0;
  wire size_reset_carry_i_4_n_0;
  wire size_reset_carry_i_5_n_0;
  wire size_reset_carry_i_6_n_0;
  wire size_reset_carry_i_7_n_0;
  wire size_reset_carry_n_2;
  wire size_reset_carry_n_3;
  wire size_reset_carry_n_4;
  wire size_reset_carry_n_5;
  wire size_reset_carry_n_6;
  wire size_reset_carry_n_7;
  wire wave;
  wire wave0;
  wire wave0_carry__0_i_1_n_0;
  wire wave0_carry__0_i_2_n_0;
  wire wave0_carry__0_i_3_n_0;
  wire wave0_carry__0_i_4_n_0;
  wire wave0_carry__0_n_7;
  wire wave0_carry_i_10_n_0;
  wire wave0_carry_i_11_n_0;
  wire wave0_carry_i_12_n_0;
  wire wave0_carry_i_13_n_0;
  wire wave0_carry_i_14_n_0;
  wire wave0_carry_i_15_n_0;
  wire wave0_carry_i_16_n_0;
  wire wave0_carry_i_1_n_0;
  wire wave0_carry_i_2_n_0;
  wire wave0_carry_i_3_n_0;
  wire wave0_carry_i_4_n_0;
  wire wave0_carry_i_5_n_0;
  wire wave0_carry_i_6_n_0;
  wire wave0_carry_i_7_n_0;
  wire wave0_carry_i_8_n_0;
  wire wave0_carry_i_9_n_0;
  wire wave0_carry_n_0;
  wire wave0_carry_n_1;
  wire wave0_carry_n_2;
  wire wave0_carry_n_3;
  wire wave0_carry_n_4;
  wire wave0_carry_n_5;
  wire wave0_carry_n_6;
  wire wave0_carry_n_7;
  wire wave1_out;
  wire [7:7]NLW_DUTY_CYCLE_reset_carry_CO_UNCONNECTED;
  wire [7:0]NLW_DUTY_CYCLE_reset_carry_O_UNCONNECTED;
  wire [7:0]\NLW_counter1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [7:0]\NLW_counter1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [7:2]NLW_counter2_carry__1_CO_UNCONNECTED;
  wire [7:3]NLW_counter2_carry__1_O_UNCONNECTED;
  wire [7:2]\NLW_counter_reg[19]_i_2_CO_UNCONNECTED ;
  wire [7:3]\NLW_counter_reg[19]_i_2_O_UNCONNECTED ;
  wire [7:7]NLW_size_reset_carry_CO_UNCONNECTED;
  wire [7:0]NLW_size_reset_carry_O_UNCONNECTED;
  wire [7:0]NLW_wave0_carry_O_UNCONNECTED;
  wire [7:2]NLW_wave0_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_wave0_carry__0_O_UNCONNECTED;

  FDCE \DUTY_CYCLE_D_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\DUTY_CYCLE_D_reg[19]_0 [0]),
        .Q(DUTY_CYCLE_D[0]));
  FDCE \DUTY_CYCLE_D_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\DUTY_CYCLE_D_reg[19]_0 [10]),
        .Q(DUTY_CYCLE_D[10]));
  FDCE \DUTY_CYCLE_D_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\DUTY_CYCLE_D_reg[19]_0 [11]),
        .Q(DUTY_CYCLE_D[11]));
  FDCE \DUTY_CYCLE_D_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\DUTY_CYCLE_D_reg[19]_0 [12]),
        .Q(DUTY_CYCLE_D[12]));
  FDCE \DUTY_CYCLE_D_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\DUTY_CYCLE_D_reg[19]_0 [13]),
        .Q(DUTY_CYCLE_D[13]));
  FDCE \DUTY_CYCLE_D_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\DUTY_CYCLE_D_reg[19]_0 [14]),
        .Q(DUTY_CYCLE_D[14]));
  FDCE \DUTY_CYCLE_D_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\DUTY_CYCLE_D_reg[19]_0 [15]),
        .Q(DUTY_CYCLE_D[15]));
  FDCE \DUTY_CYCLE_D_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\DUTY_CYCLE_D_reg[19]_0 [16]),
        .Q(DUTY_CYCLE_D[16]));
  FDCE \DUTY_CYCLE_D_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\DUTY_CYCLE_D_reg[19]_0 [17]),
        .Q(DUTY_CYCLE_D[17]));
  FDCE \DUTY_CYCLE_D_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\DUTY_CYCLE_D_reg[19]_0 [18]),
        .Q(DUTY_CYCLE_D[18]));
  FDCE \DUTY_CYCLE_D_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\DUTY_CYCLE_D_reg[19]_0 [19]),
        .Q(DUTY_CYCLE_D[19]));
  FDCE \DUTY_CYCLE_D_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\DUTY_CYCLE_D_reg[19]_0 [1]),
        .Q(DUTY_CYCLE_D[1]));
  FDCE \DUTY_CYCLE_D_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\DUTY_CYCLE_D_reg[19]_0 [2]),
        .Q(DUTY_CYCLE_D[2]));
  FDCE \DUTY_CYCLE_D_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\DUTY_CYCLE_D_reg[19]_0 [3]),
        .Q(DUTY_CYCLE_D[3]));
  FDCE \DUTY_CYCLE_D_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\DUTY_CYCLE_D_reg[19]_0 [4]),
        .Q(DUTY_CYCLE_D[4]));
  FDCE \DUTY_CYCLE_D_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\DUTY_CYCLE_D_reg[19]_0 [5]),
        .Q(DUTY_CYCLE_D[5]));
  FDCE \DUTY_CYCLE_D_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\DUTY_CYCLE_D_reg[19]_0 [6]),
        .Q(DUTY_CYCLE_D[6]));
  FDCE \DUTY_CYCLE_D_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\DUTY_CYCLE_D_reg[19]_0 [7]),
        .Q(DUTY_CYCLE_D[7]));
  FDCE \DUTY_CYCLE_D_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\DUTY_CYCLE_D_reg[19]_0 [8]),
        .Q(DUTY_CYCLE_D[8]));
  FDCE \DUTY_CYCLE_D_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\DUTY_CYCLE_D_reg[19]_0 [9]),
        .Q(DUTY_CYCLE_D[9]));
  CARRY8 DUTY_CYCLE_reset_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_DUTY_CYCLE_reset_carry_CO_UNCONNECTED[7],DUTY_CYCLE_reset,DUTY_CYCLE_reset_carry_n_2,DUTY_CYCLE_reset_carry_n_3,DUTY_CYCLE_reset_carry_n_4,DUTY_CYCLE_reset_carry_n_5,DUTY_CYCLE_reset_carry_n_6,DUTY_CYCLE_reset_carry_n_7}),
        .DI({1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_DUTY_CYCLE_reset_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,DUTY_CYCLE_reset_carry_i_1_n_0,DUTY_CYCLE_reset_carry_i_2_n_0,DUTY_CYCLE_reset_carry_i_3_n_0,DUTY_CYCLE_reset_carry_i_4_n_0,DUTY_CYCLE_reset_carry_i_5_n_0,DUTY_CYCLE_reset_carry_i_6_n_0,DUTY_CYCLE_reset_carry_i_7_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    DUTY_CYCLE_reset_carry_i_1
       (.I0(DUTY_CYCLE_D[18]),
        .I1(\DUTY_CYCLE_D_reg[19]_0 [18]),
        .I2(DUTY_CYCLE_D[19]),
        .I3(\DUTY_CYCLE_D_reg[19]_0 [19]),
        .O(DUTY_CYCLE_reset_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    DUTY_CYCLE_reset_carry_i_2
       (.I0(DUTY_CYCLE_D[15]),
        .I1(\DUTY_CYCLE_D_reg[19]_0 [15]),
        .I2(\DUTY_CYCLE_D_reg[19]_0 [17]),
        .I3(DUTY_CYCLE_D[17]),
        .I4(\DUTY_CYCLE_D_reg[19]_0 [16]),
        .I5(DUTY_CYCLE_D[16]),
        .O(DUTY_CYCLE_reset_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    DUTY_CYCLE_reset_carry_i_3
       (.I0(DUTY_CYCLE_D[12]),
        .I1(\DUTY_CYCLE_D_reg[19]_0 [12]),
        .I2(\DUTY_CYCLE_D_reg[19]_0 [14]),
        .I3(DUTY_CYCLE_D[14]),
        .I4(\DUTY_CYCLE_D_reg[19]_0 [13]),
        .I5(DUTY_CYCLE_D[13]),
        .O(DUTY_CYCLE_reset_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    DUTY_CYCLE_reset_carry_i_4
       (.I0(DUTY_CYCLE_D[9]),
        .I1(\DUTY_CYCLE_D_reg[19]_0 [9]),
        .I2(\DUTY_CYCLE_D_reg[19]_0 [11]),
        .I3(DUTY_CYCLE_D[11]),
        .I4(\DUTY_CYCLE_D_reg[19]_0 [10]),
        .I5(DUTY_CYCLE_D[10]),
        .O(DUTY_CYCLE_reset_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    DUTY_CYCLE_reset_carry_i_5
       (.I0(DUTY_CYCLE_D[6]),
        .I1(\DUTY_CYCLE_D_reg[19]_0 [6]),
        .I2(\DUTY_CYCLE_D_reg[19]_0 [8]),
        .I3(DUTY_CYCLE_D[8]),
        .I4(\DUTY_CYCLE_D_reg[19]_0 [7]),
        .I5(DUTY_CYCLE_D[7]),
        .O(DUTY_CYCLE_reset_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    DUTY_CYCLE_reset_carry_i_6
       (.I0(DUTY_CYCLE_D[3]),
        .I1(\DUTY_CYCLE_D_reg[19]_0 [3]),
        .I2(\DUTY_CYCLE_D_reg[19]_0 [5]),
        .I3(DUTY_CYCLE_D[5]),
        .I4(\DUTY_CYCLE_D_reg[19]_0 [4]),
        .I5(DUTY_CYCLE_D[4]),
        .O(DUTY_CYCLE_reset_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    DUTY_CYCLE_reset_carry_i_7
       (.I0(DUTY_CYCLE_D[0]),
        .I1(\DUTY_CYCLE_D_reg[19]_0 [0]),
        .I2(\DUTY_CYCLE_D_reg[19]_0 [2]),
        .I3(DUTY_CYCLE_D[2]),
        .I4(\DUTY_CYCLE_D_reg[19]_0 [1]),
        .I5(DUTY_CYCLE_D[1]),
        .O(DUTY_CYCLE_reset_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    PWM_out_INST_0
       (.I0(Q),
        .I1(wave),
        .O(PWM_out));
  FDCE \SIZE_D_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\SIZE_D_reg[19]_0 [0]),
        .Q(SIZE_D[0]));
  FDCE \SIZE_D_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\SIZE_D_reg[19]_0 [10]),
        .Q(SIZE_D[10]));
  FDCE \SIZE_D_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\SIZE_D_reg[19]_0 [11]),
        .Q(SIZE_D[11]));
  FDCE \SIZE_D_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\SIZE_D_reg[19]_0 [12]),
        .Q(SIZE_D[12]));
  FDCE \SIZE_D_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\SIZE_D_reg[19]_0 [13]),
        .Q(SIZE_D[13]));
  FDCE \SIZE_D_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\SIZE_D_reg[19]_0 [14]),
        .Q(SIZE_D[14]));
  FDCE \SIZE_D_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\SIZE_D_reg[19]_0 [15]),
        .Q(SIZE_D[15]));
  FDCE \SIZE_D_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\SIZE_D_reg[19]_0 [16]),
        .Q(SIZE_D[16]));
  FDCE \SIZE_D_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\SIZE_D_reg[19]_0 [17]),
        .Q(SIZE_D[17]));
  FDCE \SIZE_D_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\SIZE_D_reg[19]_0 [18]),
        .Q(SIZE_D[18]));
  FDCE \SIZE_D_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\SIZE_D_reg[19]_0 [19]),
        .Q(SIZE_D[19]));
  FDCE \SIZE_D_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\SIZE_D_reg[19]_0 [1]),
        .Q(SIZE_D[1]));
  FDCE \SIZE_D_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\SIZE_D_reg[19]_0 [2]),
        .Q(SIZE_D[2]));
  FDCE \SIZE_D_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\SIZE_D_reg[19]_0 [3]),
        .Q(SIZE_D[3]));
  FDCE \SIZE_D_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\SIZE_D_reg[19]_0 [4]),
        .Q(SIZE_D[4]));
  FDCE \SIZE_D_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\SIZE_D_reg[19]_0 [5]),
        .Q(SIZE_D[5]));
  FDCE \SIZE_D_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\SIZE_D_reg[19]_0 [6]),
        .Q(SIZE_D[6]));
  FDCE \SIZE_D_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\SIZE_D_reg[19]_0 [7]),
        .Q(SIZE_D[7]));
  FDCE \SIZE_D_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\SIZE_D_reg[19]_0 [8]),
        .Q(SIZE_D[8]));
  FDCE \SIZE_D_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\SIZE_D_reg[19]_0 [9]),
        .Q(SIZE_D[9]));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \counter1_inferred__0/i__carry 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\counter1_inferred__0/i__carry_n_0 ,\counter1_inferred__0/i__carry_n_1 ,\counter1_inferred__0/i__carry_n_2 ,\counter1_inferred__0/i__carry_n_3 ,\counter1_inferred__0/i__carry_n_4 ,\counter1_inferred__0/i__carry_n_5 ,\counter1_inferred__0/i__carry_n_6 ,\counter1_inferred__0/i__carry_n_7 }),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}),
        .O(\NLW_counter1_inferred__0/i__carry_O_UNCONNECTED [7:0]),
        .S({i__carry_i_9_n_0,i__carry_i_10_n_0,i__carry_i_11_n_0,i__carry_i_12_n_0,i__carry_i_13_n_0,i__carry_i_14_n_0,i__carry_i_15_n_0,i__carry_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \counter1_inferred__0/i__carry__0 
       (.CI(\counter1_inferred__0/i__carry_n_0 ),
        .CI_TOP(1'b0),
        .CO({counter1,\counter1_inferred__0/i__carry__0_n_1 ,\counter1_inferred__0/i__carry__0_n_2 ,\counter1_inferred__0/i__carry__0_n_3 ,\counter1_inferred__0/i__carry__0_n_4 ,\counter1_inferred__0/i__carry__0_n_5 ,\counter1_inferred__0/i__carry__0_n_6 ,\counter1_inferred__0/i__carry__0_n_7 }),
        .DI({counter2[31],i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0,i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}),
        .O(\NLW_counter1_inferred__0/i__carry__0_O_UNCONNECTED [7:0]),
        .S({counter2_carry__1_n_4,counter2_carry__1_n_4,counter2_carry__1_n_4,counter2_carry__1_n_4,counter2_carry__1_n_4,counter2_carry__1_n_4,i__carry__0_i_9_n_0,i__carry__0_i_10_n_0}));
  CARRY8 counter2_carry
       (.CI(SIZE_D[0]),
        .CI_TOP(1'b0),
        .CO({counter2_carry_n_0,counter2_carry_n_1,counter2_carry_n_2,counter2_carry_n_3,counter2_carry_n_4,counter2_carry_n_5,counter2_carry_n_6,counter2_carry_n_7}),
        .DI(SIZE_D[8:1]),
        .O(counter2[8:1]),
        .S({counter2_carry_i_1_n_0,counter2_carry_i_2_n_0,counter2_carry_i_3_n_0,counter2_carry_i_4_n_0,counter2_carry_i_5_n_0,counter2_carry_i_6_n_0,counter2_carry_i_7_n_0,counter2_carry_i_8_n_0}));
  CARRY8 counter2_carry__0
       (.CI(counter2_carry_n_0),
        .CI_TOP(1'b0),
        .CO({counter2_carry__0_n_0,counter2_carry__0_n_1,counter2_carry__0_n_2,counter2_carry__0_n_3,counter2_carry__0_n_4,counter2_carry__0_n_5,counter2_carry__0_n_6,counter2_carry__0_n_7}),
        .DI(SIZE_D[16:9]),
        .O(counter2[16:9]),
        .S({counter2_carry__0_i_1_n_0,counter2_carry__0_i_2_n_0,counter2_carry__0_i_3_n_0,counter2_carry__0_i_4_n_0,counter2_carry__0_i_5_n_0,counter2_carry__0_i_6_n_0,counter2_carry__0_i_7_n_0,counter2_carry__0_i_8_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__0_i_1
       (.I0(SIZE_D[16]),
        .O(counter2_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__0_i_2
       (.I0(SIZE_D[15]),
        .O(counter2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__0_i_3
       (.I0(SIZE_D[14]),
        .O(counter2_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__0_i_4
       (.I0(SIZE_D[13]),
        .O(counter2_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__0_i_5
       (.I0(SIZE_D[12]),
        .O(counter2_carry__0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__0_i_6
       (.I0(SIZE_D[11]),
        .O(counter2_carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__0_i_7
       (.I0(SIZE_D[10]),
        .O(counter2_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__0_i_8
       (.I0(SIZE_D[9]),
        .O(counter2_carry__0_i_8_n_0));
  CARRY8 counter2_carry__1
       (.CI(counter2_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_counter2_carry__1_CO_UNCONNECTED[7:4],counter2_carry__1_n_4,NLW_counter2_carry__1_CO_UNCONNECTED[2],counter2_carry__1_n_6,counter2_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,SIZE_D[19:17]}),
        .O({NLW_counter2_carry__1_O_UNCONNECTED[7:3],counter2[19:17]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b1,counter2_carry__1_i_1_n_0,counter2_carry__1_i_2_n_0,counter2_carry__1_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__1_i_1
       (.I0(SIZE_D[19]),
        .O(counter2_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__1_i_2
       (.I0(SIZE_D[18]),
        .O(counter2_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__1_i_3
       (.I0(SIZE_D[17]),
        .O(counter2_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry_i_1
       (.I0(SIZE_D[8]),
        .O(counter2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry_i_2
       (.I0(SIZE_D[7]),
        .O(counter2_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry_i_3
       (.I0(SIZE_D[6]),
        .O(counter2_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry_i_4
       (.I0(SIZE_D[5]),
        .O(counter2_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry_i_5
       (.I0(SIZE_D[4]),
        .O(counter2_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry_i_6
       (.I0(SIZE_D[3]),
        .O(counter2_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry_i_7
       (.I0(SIZE_D[2]),
        .O(counter2_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry_i_8
       (.I0(SIZE_D[1]),
        .O(counter2_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .I1(counter1),
        .I2(DUTY_CYCLE_reset),
        .I3(size_reset),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \counter[10]_i_1 
       (.I0(counter0[10]),
        .I1(counter1),
        .I2(DUTY_CYCLE_reset),
        .I3(size_reset),
        .O(\counter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \counter[11]_i_1 
       (.I0(counter0[11]),
        .I1(counter1),
        .I2(DUTY_CYCLE_reset),
        .I3(size_reset),
        .O(\counter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \counter[12]_i_1 
       (.I0(counter0[12]),
        .I1(counter1),
        .I2(DUTY_CYCLE_reset),
        .I3(size_reset),
        .O(\counter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \counter[13]_i_1 
       (.I0(counter0[13]),
        .I1(counter1),
        .I2(DUTY_CYCLE_reset),
        .I3(size_reset),
        .O(\counter[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \counter[14]_i_1 
       (.I0(counter0[14]),
        .I1(counter1),
        .I2(DUTY_CYCLE_reset),
        .I3(size_reset),
        .O(\counter[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \counter[15]_i_1 
       (.I0(counter0[15]),
        .I1(counter1),
        .I2(DUTY_CYCLE_reset),
        .I3(size_reset),
        .O(\counter[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \counter[16]_i_1 
       (.I0(counter0[16]),
        .I1(counter1),
        .I2(DUTY_CYCLE_reset),
        .I3(size_reset),
        .O(\counter[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \counter[17]_i_1 
       (.I0(counter0[17]),
        .I1(counter1),
        .I2(DUTY_CYCLE_reset),
        .I3(size_reset),
        .O(\counter[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \counter[18]_i_1 
       (.I0(counter0[18]),
        .I1(counter1),
        .I2(DUTY_CYCLE_reset),
        .I3(size_reset),
        .O(\counter[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \counter[19]_i_1 
       (.I0(counter0[19]),
        .I1(counter1),
        .I2(DUTY_CYCLE_reset),
        .I3(size_reset),
        .O(\counter[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \counter[1]_i_1 
       (.I0(counter0[1]),
        .I1(counter1),
        .I2(DUTY_CYCLE_reset),
        .I3(size_reset),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \counter[2]_i_1 
       (.I0(counter0[2]),
        .I1(counter1),
        .I2(DUTY_CYCLE_reset),
        .I3(size_reset),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \counter[3]_i_1 
       (.I0(counter0[3]),
        .I1(counter1),
        .I2(DUTY_CYCLE_reset),
        .I3(size_reset),
        .O(\counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \counter[4]_i_1 
       (.I0(counter0[4]),
        .I1(counter1),
        .I2(DUTY_CYCLE_reset),
        .I3(size_reset),
        .O(\counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \counter[5]_i_1 
       (.I0(counter0[5]),
        .I1(counter1),
        .I2(DUTY_CYCLE_reset),
        .I3(size_reset),
        .O(\counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \counter[6]_i_1 
       (.I0(counter0[6]),
        .I1(counter1),
        .I2(DUTY_CYCLE_reset),
        .I3(size_reset),
        .O(\counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \counter[7]_i_1 
       (.I0(counter0[7]),
        .I1(counter1),
        .I2(DUTY_CYCLE_reset),
        .I3(size_reset),
        .O(\counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \counter[8]_i_1 
       (.I0(counter0[8]),
        .I1(counter1),
        .I2(DUTY_CYCLE_reset),
        .I3(size_reset),
        .O(\counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \counter[9]_i_1 
       (.I0(counter0[9]),
        .I1(counter1),
        .I2(DUTY_CYCLE_reset),
        .I3(size_reset),
        .O(\counter[9]_i_1_n_0 ));
  FDCE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]));
  FDCE \counter_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\counter[10]_i_1_n_0 ),
        .Q(counter[10]));
  FDCE \counter_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\counter[11]_i_1_n_0 ),
        .Q(counter[11]));
  FDCE \counter_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\counter[12]_i_1_n_0 ),
        .Q(counter[12]));
  FDCE \counter_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\counter[13]_i_1_n_0 ),
        .Q(counter[13]));
  FDCE \counter_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\counter[14]_i_1_n_0 ),
        .Q(counter[14]));
  FDCE \counter_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\counter[15]_i_1_n_0 ),
        .Q(counter[15]));
  FDCE \counter_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\counter[16]_i_1_n_0 ),
        .Q(counter[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \counter_reg[16]_i_2 
       (.CI(\counter_reg[8]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[16]_i_2_n_0 ,\counter_reg[16]_i_2_n_1 ,\counter_reg[16]_i_2_n_2 ,\counter_reg[16]_i_2_n_3 ,\counter_reg[16]_i_2_n_4 ,\counter_reg[16]_i_2_n_5 ,\counter_reg[16]_i_2_n_6 ,\counter_reg[16]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[16:9]),
        .S(counter[16:9]));
  FDCE \counter_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\counter[17]_i_1_n_0 ),
        .Q(counter[17]));
  FDCE \counter_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\counter[18]_i_1_n_0 ),
        .Q(counter[18]));
  FDCE \counter_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\counter[19]_i_1_n_0 ),
        .Q(counter[19]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \counter_reg[19]_i_2 
       (.CI(\counter_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_counter_reg[19]_i_2_CO_UNCONNECTED [7:2],\counter_reg[19]_i_2_n_6 ,\counter_reg[19]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[19]_i_2_O_UNCONNECTED [7:3],counter0[19:17]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,counter[19:17]}));
  FDCE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]));
  FDCE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]));
  FDCE \counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\counter[3]_i_1_n_0 ),
        .Q(counter[3]));
  FDCE \counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\counter[4]_i_1_n_0 ),
        .Q(counter[4]));
  FDCE \counter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\counter[5]_i_1_n_0 ),
        .Q(counter[5]));
  FDCE \counter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\counter[6]_i_1_n_0 ),
        .Q(counter[6]));
  FDCE \counter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\counter[7]_i_1_n_0 ),
        .Q(counter[7]));
  FDCE \counter_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\counter[8]_i_1_n_0 ),
        .Q(counter[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \counter_reg[8]_i_2 
       (.CI(counter[0]),
        .CI_TOP(1'b0),
        .CO({\counter_reg[8]_i_2_n_0 ,\counter_reg[8]_i_2_n_1 ,\counter_reg[8]_i_2_n_2 ,\counter_reg[8]_i_2_n_3 ,\counter_reg[8]_i_2_n_4 ,\counter_reg[8]_i_2_n_5 ,\counter_reg[8]_i_2_n_6 ,\counter_reg[8]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[8:1]),
        .S(counter[8:1]));
  FDCE \counter_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\counter[9]_i_1_n_0 ),
        .Q(counter[9]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(counter2_carry__1_n_4),
        .O(counter2[31]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_10
       (.I0(counter2[16]),
        .I1(counter[16]),
        .I2(counter2[17]),
        .I3(counter[17]),
        .O(i__carry__0_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(counter2_carry__1_n_4),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(counter2_carry__1_n_4),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4
       (.I0(counter2_carry__1_n_4),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_5
       (.I0(counter2_carry__1_n_4),
        .O(i__carry__0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_6
       (.I0(counter2_carry__1_n_4),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_7
       (.I0(counter2[18]),
        .I1(counter[18]),
        .I2(counter[19]),
        .I3(counter2[19]),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_8
       (.I0(counter2[16]),
        .I1(counter[16]),
        .I2(counter[17]),
        .I3(counter2[17]),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_9
       (.I0(counter2[18]),
        .I1(counter[18]),
        .I2(counter2[19]),
        .I3(counter[19]),
        .O(i__carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1
       (.I0(counter2[14]),
        .I1(counter[14]),
        .I2(counter[15]),
        .I3(counter2[15]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_10
       (.I0(counter2[12]),
        .I1(counter[12]),
        .I2(counter2[13]),
        .I3(counter[13]),
        .O(i__carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_11
       (.I0(counter2[10]),
        .I1(counter[10]),
        .I2(counter2[11]),
        .I3(counter[11]),
        .O(i__carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_12
       (.I0(counter2[8]),
        .I1(counter[8]),
        .I2(counter2[9]),
        .I3(counter[9]),
        .O(i__carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_13
       (.I0(counter2[6]),
        .I1(counter[6]),
        .I2(counter2[7]),
        .I3(counter[7]),
        .O(i__carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_14
       (.I0(counter2[4]),
        .I1(counter[4]),
        .I2(counter2[5]),
        .I3(counter[5]),
        .O(i__carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_15
       (.I0(counter2[2]),
        .I1(counter[2]),
        .I2(counter2[3]),
        .I3(counter[3]),
        .O(i__carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    i__carry_i_16
       (.I0(SIZE_D[0]),
        .I1(counter[0]),
        .I2(counter2[1]),
        .I3(counter[1]),
        .O(i__carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2
       (.I0(counter2[12]),
        .I1(counter[12]),
        .I2(counter[13]),
        .I3(counter2[13]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3
       (.I0(counter2[10]),
        .I1(counter[10]),
        .I2(counter[11]),
        .I3(counter2[11]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4
       (.I0(counter2[8]),
        .I1(counter[8]),
        .I2(counter[9]),
        .I3(counter2[9]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_5
       (.I0(counter2[6]),
        .I1(counter[6]),
        .I2(counter[7]),
        .I3(counter2[7]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_6
       (.I0(counter2[4]),
        .I1(counter[4]),
        .I2(counter[5]),
        .I3(counter2[5]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_7
       (.I0(counter2[2]),
        .I1(counter[2]),
        .I2(counter[3]),
        .I3(counter2[3]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h1F01)) 
    i__carry_i_8
       (.I0(counter[0]),
        .I1(SIZE_D[0]),
        .I2(counter[1]),
        .I3(counter2[1]),
        .O(i__carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_9
       (.I0(counter2[14]),
        .I1(counter[14]),
        .I2(counter2[15]),
        .I3(counter[15]),
        .O(i__carry_i_9_n_0));
  CARRY8 size_reset_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_size_reset_carry_CO_UNCONNECTED[7],size_reset,size_reset_carry_n_2,size_reset_carry_n_3,size_reset_carry_n_4,size_reset_carry_n_5,size_reset_carry_n_6,size_reset_carry_n_7}),
        .DI({1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_size_reset_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,size_reset_carry_i_1_n_0,size_reset_carry_i_2_n_0,size_reset_carry_i_3_n_0,size_reset_carry_i_4_n_0,size_reset_carry_i_5_n_0,size_reset_carry_i_6_n_0,size_reset_carry_i_7_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    size_reset_carry_i_1
       (.I0(SIZE_D[18]),
        .I1(\SIZE_D_reg[19]_0 [18]),
        .I2(SIZE_D[19]),
        .I3(\SIZE_D_reg[19]_0 [19]),
        .O(size_reset_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    size_reset_carry_i_2
       (.I0(SIZE_D[15]),
        .I1(\SIZE_D_reg[19]_0 [15]),
        .I2(\SIZE_D_reg[19]_0 [17]),
        .I3(SIZE_D[17]),
        .I4(\SIZE_D_reg[19]_0 [16]),
        .I5(SIZE_D[16]),
        .O(size_reset_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    size_reset_carry_i_3
       (.I0(SIZE_D[12]),
        .I1(\SIZE_D_reg[19]_0 [12]),
        .I2(\SIZE_D_reg[19]_0 [14]),
        .I3(SIZE_D[14]),
        .I4(\SIZE_D_reg[19]_0 [13]),
        .I5(SIZE_D[13]),
        .O(size_reset_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    size_reset_carry_i_4
       (.I0(SIZE_D[9]),
        .I1(\SIZE_D_reg[19]_0 [9]),
        .I2(\SIZE_D_reg[19]_0 [11]),
        .I3(SIZE_D[11]),
        .I4(\SIZE_D_reg[19]_0 [10]),
        .I5(SIZE_D[10]),
        .O(size_reset_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    size_reset_carry_i_5
       (.I0(SIZE_D[6]),
        .I1(\SIZE_D_reg[19]_0 [6]),
        .I2(\SIZE_D_reg[19]_0 [8]),
        .I3(SIZE_D[8]),
        .I4(\SIZE_D_reg[19]_0 [7]),
        .I5(SIZE_D[7]),
        .O(size_reset_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    size_reset_carry_i_6
       (.I0(SIZE_D[3]),
        .I1(\SIZE_D_reg[19]_0 [3]),
        .I2(\SIZE_D_reg[19]_0 [5]),
        .I3(SIZE_D[5]),
        .I4(\SIZE_D_reg[19]_0 [4]),
        .I5(SIZE_D[4]),
        .O(size_reset_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    size_reset_carry_i_7
       (.I0(SIZE_D[0]),
        .I1(\SIZE_D_reg[19]_0 [0]),
        .I2(\SIZE_D_reg[19]_0 [2]),
        .I3(SIZE_D[2]),
        .I4(\SIZE_D_reg[19]_0 [1]),
        .I5(SIZE_D[1]),
        .O(size_reset_carry_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 wave0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({wave0_carry_n_0,wave0_carry_n_1,wave0_carry_n_2,wave0_carry_n_3,wave0_carry_n_4,wave0_carry_n_5,wave0_carry_n_6,wave0_carry_n_7}),
        .DI({wave0_carry_i_1_n_0,wave0_carry_i_2_n_0,wave0_carry_i_3_n_0,wave0_carry_i_4_n_0,wave0_carry_i_5_n_0,wave0_carry_i_6_n_0,wave0_carry_i_7_n_0,wave0_carry_i_8_n_0}),
        .O(NLW_wave0_carry_O_UNCONNECTED[7:0]),
        .S({wave0_carry_i_9_n_0,wave0_carry_i_10_n_0,wave0_carry_i_11_n_0,wave0_carry_i_12_n_0,wave0_carry_i_13_n_0,wave0_carry_i_14_n_0,wave0_carry_i_15_n_0,wave0_carry_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 wave0_carry__0
       (.CI(wave0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_wave0_carry__0_CO_UNCONNECTED[7:2],wave0,wave0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,wave0_carry__0_i_1_n_0,wave0_carry__0_i_2_n_0}),
        .O(NLW_wave0_carry__0_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,wave0_carry__0_i_3_n_0,wave0_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    wave0_carry__0_i_1
       (.I0(DUTY_CYCLE_D[18]),
        .I1(counter[18]),
        .I2(counter[19]),
        .I3(DUTY_CYCLE_D[19]),
        .O(wave0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    wave0_carry__0_i_2
       (.I0(DUTY_CYCLE_D[16]),
        .I1(counter[16]),
        .I2(counter[17]),
        .I3(DUTY_CYCLE_D[17]),
        .O(wave0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    wave0_carry__0_i_3
       (.I0(DUTY_CYCLE_D[18]),
        .I1(counter[18]),
        .I2(DUTY_CYCLE_D[19]),
        .I3(counter[19]),
        .O(wave0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    wave0_carry__0_i_4
       (.I0(DUTY_CYCLE_D[16]),
        .I1(counter[16]),
        .I2(DUTY_CYCLE_D[17]),
        .I3(counter[17]),
        .O(wave0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    wave0_carry_i_1
       (.I0(DUTY_CYCLE_D[14]),
        .I1(counter[14]),
        .I2(counter[15]),
        .I3(DUTY_CYCLE_D[15]),
        .O(wave0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    wave0_carry_i_10
       (.I0(DUTY_CYCLE_D[12]),
        .I1(counter[12]),
        .I2(DUTY_CYCLE_D[13]),
        .I3(counter[13]),
        .O(wave0_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    wave0_carry_i_11
       (.I0(DUTY_CYCLE_D[10]),
        .I1(counter[10]),
        .I2(DUTY_CYCLE_D[11]),
        .I3(counter[11]),
        .O(wave0_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    wave0_carry_i_12
       (.I0(DUTY_CYCLE_D[8]),
        .I1(counter[8]),
        .I2(DUTY_CYCLE_D[9]),
        .I3(counter[9]),
        .O(wave0_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    wave0_carry_i_13
       (.I0(DUTY_CYCLE_D[6]),
        .I1(counter[6]),
        .I2(DUTY_CYCLE_D[7]),
        .I3(counter[7]),
        .O(wave0_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    wave0_carry_i_14
       (.I0(DUTY_CYCLE_D[4]),
        .I1(counter[4]),
        .I2(DUTY_CYCLE_D[5]),
        .I3(counter[5]),
        .O(wave0_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    wave0_carry_i_15
       (.I0(DUTY_CYCLE_D[2]),
        .I1(counter[2]),
        .I2(DUTY_CYCLE_D[3]),
        .I3(counter[3]),
        .O(wave0_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    wave0_carry_i_16
       (.I0(DUTY_CYCLE_D[0]),
        .I1(counter[0]),
        .I2(DUTY_CYCLE_D[1]),
        .I3(counter[1]),
        .O(wave0_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    wave0_carry_i_2
       (.I0(DUTY_CYCLE_D[12]),
        .I1(counter[12]),
        .I2(counter[13]),
        .I3(DUTY_CYCLE_D[13]),
        .O(wave0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    wave0_carry_i_3
       (.I0(DUTY_CYCLE_D[10]),
        .I1(counter[10]),
        .I2(counter[11]),
        .I3(DUTY_CYCLE_D[11]),
        .O(wave0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    wave0_carry_i_4
       (.I0(DUTY_CYCLE_D[8]),
        .I1(counter[8]),
        .I2(counter[9]),
        .I3(DUTY_CYCLE_D[9]),
        .O(wave0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    wave0_carry_i_5
       (.I0(DUTY_CYCLE_D[6]),
        .I1(counter[6]),
        .I2(counter[7]),
        .I3(DUTY_CYCLE_D[7]),
        .O(wave0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    wave0_carry_i_6
       (.I0(DUTY_CYCLE_D[4]),
        .I1(counter[4]),
        .I2(counter[5]),
        .I3(DUTY_CYCLE_D[5]),
        .O(wave0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    wave0_carry_i_7
       (.I0(DUTY_CYCLE_D[2]),
        .I1(counter[2]),
        .I2(counter[3]),
        .I3(DUTY_CYCLE_D[3]),
        .O(wave0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    wave0_carry_i_8
       (.I0(DUTY_CYCLE_D[0]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(DUTY_CYCLE_D[1]),
        .O(wave0_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    wave0_carry_i_9
       (.I0(DUTY_CYCLE_D[14]),
        .I1(counter[14]),
        .I2(DUTY_CYCLE_D[15]),
        .I3(counter[15]),
        .O(wave0_carry_i_9_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    wave_i_1
       (.I0(wave0),
        .I1(DUTY_CYCLE_reset),
        .I2(size_reset),
        .O(wave1_out));
  FDCE wave_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(wave1_out),
        .Q(wave));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_PWM_IP_0_0,PWM_IP_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "PWM_IP_v1_0,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module design_1_PWM_IP_4_0
   (PWM_out,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output PWM_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire PWM_out;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_PWM_IP_4_0_PWM_IP_v1_0 inst
       (.PWM_out(PWM_out),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
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
