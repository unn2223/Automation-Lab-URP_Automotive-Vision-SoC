-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Fri Nov 28 16:59:59 2025
-- Host        : DESKTOP-1CQ16CU running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /mnt/c/DPU-PYNQ/boards/Ultra96v2/binary_container_1/link/vivado/vpl/prj/prj.gen/sources_1/bd/design_1/ip/design_1_axis_resize_half_0_0/design_1_axis_resize_half_0_0_sim_netlist.vhdl
-- Design      : design_1_axis_resize_half_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_resize_half_0_0_axis_resize_half is
  port (
    m_tlast : out STD_LOGIC;
    m_tuser : out STD_LOGIC;
    m_tvalid : out STD_LOGIC;
    s_tready : out STD_LOGIC;
    aclk : in STD_LOGIC;
    s_tvalid : in STD_LOGIC;
    s_tuser : in STD_LOGIC;
    m_tready : in STD_LOGIC;
    run_en : in STD_LOGIC;
    s_tlast : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_resize_half_0_0_axis_resize_half : entity is "axis_resize_half";
end design_1_axis_resize_half_0_0_axis_resize_half;

architecture STRUCTURE of design_1_axis_resize_half_0_0_axis_resize_half is
  signal beat_accepted : STD_LOGIC;
  signal m_tlast_INST_0_i_1_n_0 : STD_LOGIC;
  signal m_tlast_INST_0_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^s_tready\ : STD_LOGIC;
  signal \x_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \x_cnt[9]_i_4_n_0\ : STD_LOGIC;
  signal x_cnt_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \y_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \y_cnt_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of m_tlast_INST_0_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of m_tuser_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of m_tvalid_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of s_tready_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \x_cnt[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \x_cnt[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \x_cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \x_cnt[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \x_cnt[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \x_cnt[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \x_cnt[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \x_cnt[9]_i_3\ : label is "soft_lutpair1";
begin
  s_tready <= \^s_tready\;
m_tlast_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => m_tlast_INST_0_i_1_n_0,
      I1 => x_cnt_reg(2),
      I2 => x_cnt_reg(1),
      I3 => x_cnt_reg(4),
      I4 => x_cnt_reg(3),
      I5 => m_tlast_INST_0_i_2_n_0,
      O => m_tlast
    );
m_tlast_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x_cnt_reg(0),
      I1 => \y_cnt_reg_n_0_[0]\,
      O => m_tlast_INST_0_i_1_n_0
    );
m_tlast_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => x_cnt_reg(7),
      I1 => x_cnt_reg(8),
      I2 => x_cnt_reg(5),
      I3 => x_cnt_reg(6),
      I4 => s_tvalid,
      I5 => x_cnt_reg(9),
      O => m_tlast_INST_0_i_2_n_0
    );
m_tuser_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s_tvalid,
      I1 => s_tuser,
      I2 => \y_cnt_reg_n_0_[0]\,
      I3 => x_cnt_reg(0),
      O => m_tuser
    );
m_tvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_tvalid,
      I1 => \y_cnt_reg_n_0_[0]\,
      I2 => x_cnt_reg(0),
      O => m_tvalid
    );
s_tready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => run_en,
      I1 => m_tready,
      I2 => \y_cnt_reg_n_0_[0]\,
      I3 => x_cnt_reg(0),
      O => \^s_tready\
    );
\x_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cnt_reg(0),
      O => p_0_in(0)
    );
\x_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => x_cnt_reg(0),
      I1 => x_cnt_reg(1),
      O => p_0_in(1)
    );
\x_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => x_cnt_reg(1),
      I1 => x_cnt_reg(0),
      I2 => x_cnt_reg(2),
      O => p_0_in(2)
    );
\x_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => x_cnt_reg(2),
      I1 => x_cnt_reg(0),
      I2 => x_cnt_reg(1),
      I3 => x_cnt_reg(3),
      O => p_0_in(3)
    );
\x_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => x_cnt_reg(3),
      I1 => x_cnt_reg(1),
      I2 => x_cnt_reg(0),
      I3 => x_cnt_reg(2),
      I4 => x_cnt_reg(4),
      O => p_0_in(4)
    );
\x_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => x_cnt_reg(4),
      I1 => x_cnt_reg(2),
      I2 => x_cnt_reg(0),
      I3 => x_cnt_reg(1),
      I4 => x_cnt_reg(3),
      I5 => x_cnt_reg(5),
      O => p_0_in(5)
    );
\x_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \x_cnt[9]_i_4_n_0\,
      I1 => x_cnt_reg(6),
      O => p_0_in(6)
    );
\x_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => x_cnt_reg(6),
      I1 => \x_cnt[9]_i_4_n_0\,
      I2 => x_cnt_reg(7),
      O => p_0_in(7)
    );
\x_cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => x_cnt_reg(7),
      I1 => \x_cnt[9]_i_4_n_0\,
      I2 => x_cnt_reg(6),
      I3 => x_cnt_reg(8),
      O => p_0_in(8)
    );
\x_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4000000FFFFFFFF"
    )
        port map (
      I0 => run_en,
      I1 => m_tready,
      I2 => m_tlast_INST_0_i_1_n_0,
      I3 => s_tlast,
      I4 => s_tvalid,
      I5 => aresetn,
      O => \x_cnt[9]_i_1_n_0\
    );
\x_cnt[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEFE0000"
    )
        port map (
      I0 => x_cnt_reg(0),
      I1 => \y_cnt_reg_n_0_[0]\,
      I2 => m_tready,
      I3 => run_en,
      I4 => s_tvalid,
      O => beat_accepted
    );
\x_cnt[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => x_cnt_reg(8),
      I1 => x_cnt_reg(6),
      I2 => \x_cnt[9]_i_4_n_0\,
      I3 => x_cnt_reg(7),
      I4 => x_cnt_reg(9),
      O => p_0_in(9)
    );
\x_cnt[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => x_cnt_reg(4),
      I1 => x_cnt_reg(2),
      I2 => x_cnt_reg(0),
      I3 => x_cnt_reg(1),
      I4 => x_cnt_reg(3),
      I5 => x_cnt_reg(5),
      O => \x_cnt[9]_i_4_n_0\
    );
\x_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat_accepted,
      D => p_0_in(0),
      Q => x_cnt_reg(0),
      R => \x_cnt[9]_i_1_n_0\
    );
\x_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat_accepted,
      D => p_0_in(1),
      Q => x_cnt_reg(1),
      R => \x_cnt[9]_i_1_n_0\
    );
\x_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat_accepted,
      D => p_0_in(2),
      Q => x_cnt_reg(2),
      R => \x_cnt[9]_i_1_n_0\
    );
\x_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat_accepted,
      D => p_0_in(3),
      Q => x_cnt_reg(3),
      R => \x_cnt[9]_i_1_n_0\
    );
\x_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat_accepted,
      D => p_0_in(4),
      Q => x_cnt_reg(4),
      R => \x_cnt[9]_i_1_n_0\
    );
\x_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat_accepted,
      D => p_0_in(5),
      Q => x_cnt_reg(5),
      R => \x_cnt[9]_i_1_n_0\
    );
\x_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat_accepted,
      D => p_0_in(6),
      Q => x_cnt_reg(6),
      R => \x_cnt[9]_i_1_n_0\
    );
\x_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat_accepted,
      D => p_0_in(7),
      Q => x_cnt_reg(7),
      R => \x_cnt[9]_i_1_n_0\
    );
\x_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat_accepted,
      D => p_0_in(8),
      Q => x_cnt_reg(8),
      R => \x_cnt[9]_i_1_n_0\
    );
\x_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat_accepted,
      D => p_0_in(9),
      Q => x_cnt_reg(9),
      R => \x_cnt[9]_i_1_n_0\
    );
\y_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => \y_cnt_reg_n_0_[0]\,
      I1 => s_tvalid,
      I2 => s_tlast,
      I3 => \^s_tready\,
      I4 => aresetn,
      O => \y_cnt[0]_i_1_n_0\
    );
\y_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \y_cnt[0]_i_1_n_0\,
      Q => \y_cnt_reg_n_0_[0]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_resize_half_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    run_en : in STD_LOGIC;
    s_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_tvalid : in STD_LOGIC;
    s_tready : out STD_LOGIC;
    s_tlast : in STD_LOGIC;
    s_tuser : in STD_LOGIC;
    m_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_tvalid : out STD_LOGIC;
    m_tready : in STD_LOGIC;
    m_tlast : out STD_LOGIC;
    m_tuser : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axis_resize_half_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axis_resize_half_0_0 : entity is "design_1_axis_resize_half_0_0,axis_resize_half,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axis_resize_half_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_axis_resize_half_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axis_resize_half_0_0 : entity is "axis_resize_half,Vivado 2022.1";
end design_1_axis_resize_half_0_0;

architecture STRUCTURE of design_1_axis_resize_half_0_0 is
  signal \^s_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m:s, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_tlast : signal is "xilinx.com:interface:axis:1.0 m TLAST";
  attribute X_INTERFACE_INFO of m_tready : signal is "xilinx.com:interface:axis:1.0 m TREADY";
  attribute X_INTERFACE_INFO of m_tuser : signal is "xilinx.com:interface:axis:1.0 m TUSER";
  attribute X_INTERFACE_PARAMETER of m_tuser : signal is "XIL_INTERFACENAME m, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_tvalid : signal is "xilinx.com:interface:axis:1.0 m TVALID";
  attribute X_INTERFACE_INFO of s_tlast : signal is "xilinx.com:interface:axis:1.0 s TLAST";
  attribute X_INTERFACE_INFO of s_tready : signal is "xilinx.com:interface:axis:1.0 s TREADY";
  attribute X_INTERFACE_INFO of s_tuser : signal is "xilinx.com:interface:axis:1.0 s TUSER";
  attribute X_INTERFACE_PARAMETER of s_tuser : signal is "XIL_INTERFACENAME s, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_tvalid : signal is "xilinx.com:interface:axis:1.0 s TVALID";
  attribute X_INTERFACE_INFO of m_tdata : signal is "xilinx.com:interface:axis:1.0 m TDATA";
  attribute X_INTERFACE_INFO of s_tdata : signal is "xilinx.com:interface:axis:1.0 s TDATA";
begin
  \^s_tdata\(31 downto 0) <= s_tdata(31 downto 0);
  m_tdata(31 downto 0) <= \^s_tdata\(31 downto 0);
inst: entity work.design_1_axis_resize_half_0_0_axis_resize_half
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_tlast => m_tlast,
      m_tready => m_tready,
      m_tuser => m_tuser,
      m_tvalid => m_tvalid,
      run_en => run_en,
      s_tlast => s_tlast,
      s_tready => s_tready,
      s_tuser => s_tuser,
      s_tvalid => s_tvalid
    );
end STRUCTURE;
