-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Fri Nov 28 16:56:31 2025
-- Host        : DESKTOP-1CQ16CU running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /mnt/c/DPU-PYNQ/boards/Ultra96v2/binary_container_1/link/vivado/vpl/prj/prj.gen/sources_1/bd/design_1/ip/design_1_bram_con_0_0/design_1_bram_con_0_0_sim_netlist.vhdl
-- Design      : design_1_bram_con_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_bram_con_0_0_bram_con is
  port (
    bram_dina : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rsta : out STD_LOGIC;
    bram_wea : out STD_LOGIC;
    last_hs : out STD_LOGIC;
    frame_captured : out STD_LOGIC;
    wcount : out STD_LOGIC_VECTOR ( 17 downto 0 );
    bram_addra : out STD_LOGIC_VECTOR ( 16 downto 0 );
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    aclk : in STD_LOGIC;
    run_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_bram_con_0_0_bram_con : entity is "bram_con";
end design_1_bram_con_0_0_bram_con;

architecture STRUCTURE of design_1_bram_con_0_0_bram_con is
  signal \^bram_addra\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \bram_addra[16]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addra[16]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addra[16]_i_4_n_0\ : STD_LOGIC;
  signal \bram_addra[16]_i_5_n_0\ : STD_LOGIC;
  signal \bram_addra[16]_i_6_n_0\ : STD_LOGIC;
  signal \bram_addra[16]_i_7_n_0\ : STD_LOGIC;
  signal \bram_addra[7]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addra_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addra_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \bram_addra_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \bram_addra_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \bram_addra_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \bram_addra_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \bram_addra_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \bram_addra_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \bram_addra_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \bram_addra_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \bram_addra_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \bram_addra_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \bram_addra_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \bram_addra_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \bram_addra_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \bram_addra_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \bram_addra_reg[16]_i_3_n_15\ : STD_LOGIC;
  signal \bram_addra_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addra_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \bram_addra_reg[7]_i_1_n_10\ : STD_LOGIC;
  signal \bram_addra_reg[7]_i_1_n_11\ : STD_LOGIC;
  signal \bram_addra_reg[7]_i_1_n_12\ : STD_LOGIC;
  signal \bram_addra_reg[7]_i_1_n_13\ : STD_LOGIC;
  signal \bram_addra_reg[7]_i_1_n_14\ : STD_LOGIC;
  signal \bram_addra_reg[7]_i_1_n_15\ : STD_LOGIC;
  signal \bram_addra_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \bram_addra_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \bram_addra_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \bram_addra_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \bram_addra_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \bram_addra_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \bram_addra_reg[7]_i_1_n_8\ : STD_LOGIC;
  signal \bram_addra_reg[7]_i_1_n_9\ : STD_LOGIC;
  signal \^bram_rsta\ : STD_LOGIC;
  signal \^last_hs\ : STD_LOGIC;
  signal last_hs_d : STD_LOGIC;
  signal last_hs_i_1_n_0 : STD_LOGIC;
  signal \^wcount\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \wcount[7]_i_2_n_0\ : STD_LOGIC;
  signal \wcount_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \wcount_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \wcount_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \wcount_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \wcount_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \wcount_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \wcount_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \wcount_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \wcount_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \wcount_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \wcount_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \wcount_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \wcount_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \wcount_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \wcount_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \wcount_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \wcount_reg[17]_i_1_n_14\ : STD_LOGIC;
  signal \wcount_reg[17]_i_1_n_15\ : STD_LOGIC;
  signal \wcount_reg[17]_i_1_n_7\ : STD_LOGIC;
  signal \wcount_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \wcount_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \wcount_reg[7]_i_1_n_10\ : STD_LOGIC;
  signal \wcount_reg[7]_i_1_n_11\ : STD_LOGIC;
  signal \wcount_reg[7]_i_1_n_12\ : STD_LOGIC;
  signal \wcount_reg[7]_i_1_n_13\ : STD_LOGIC;
  signal \wcount_reg[7]_i_1_n_14\ : STD_LOGIC;
  signal \wcount_reg[7]_i_1_n_15\ : STD_LOGIC;
  signal \wcount_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \wcount_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \wcount_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \wcount_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \wcount_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \wcount_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \wcount_reg[7]_i_1_n_8\ : STD_LOGIC;
  signal \wcount_reg[7]_i_1_n_9\ : STD_LOGIC;
  signal \NLW_bram_addra_reg[16]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_bram_addra_reg[16]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_wcount_reg[17]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_wcount_reg[17]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \bram_addra_reg[15]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \bram_addra_reg[16]_i_3\ : label is 16;
  attribute ADDER_THRESHOLD of \bram_addra_reg[7]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \wcount_reg[15]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \wcount_reg[17]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \wcount_reg[7]_i_1\ : label is 16;
begin
  bram_addra(16 downto 0) <= \^bram_addra\(16 downto 0);
  bram_rsta <= \^bram_rsta\;
  last_hs <= \^last_hs\;
  wcount(17 downto 0) <= \^wcount\(17 downto 0);
\bram_addra[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10000000FFFFFFFF"
    )
        port map (
      I0 => \bram_addra[16]_i_4_n_0\,
      I1 => \bram_addra[16]_i_5_n_0\,
      I2 => \bram_addra[16]_i_6_n_0\,
      I3 => \bram_addra[16]_i_2_n_0\,
      I4 => \bram_addra[16]_i_7_n_0\,
      I5 => aresetn,
      O => \bram_addra[16]_i_1_n_0\
    );
\bram_addra[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => run_en,
      I1 => s_axis_tvalid,
      I2 => aresetn,
      O => \bram_addra[16]_i_2_n_0\
    );
\bram_addra[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \^wcount\(9),
      I1 => \^wcount\(14),
      I2 => \^wcount\(16),
      I3 => \^wcount\(15),
      O => \bram_addra[16]_i_4_n_0\
    );
\bram_addra[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^wcount\(11),
      I1 => \^wcount\(0),
      I2 => \^wcount\(13),
      I3 => \^wcount\(4),
      O => \bram_addra[16]_i_5_n_0\
    );
\bram_addra[16]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^wcount\(5),
      I1 => \^wcount\(8),
      I2 => \^wcount\(6),
      I3 => \^wcount\(7),
      O => \bram_addra[16]_i_6_n_0\
    );
\bram_addra[16]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^wcount\(1),
      I1 => \^wcount\(3),
      I2 => \^wcount\(10),
      I3 => \^wcount\(12),
      I4 => \^wcount\(17),
      I5 => \^wcount\(2),
      O => \bram_addra[16]_i_7_n_0\
    );
\bram_addra[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bram_addra\(0),
      O => \bram_addra[7]_i_2_n_0\
    );
\bram_addra_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \bram_addra_reg[7]_i_1_n_15\,
      Q => \^bram_addra\(0),
      R => \bram_addra[16]_i_1_n_0\
    );
\bram_addra_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \bram_addra_reg[15]_i_1_n_13\,
      Q => \^bram_addra\(10),
      R => \bram_addra[16]_i_1_n_0\
    );
\bram_addra_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \bram_addra_reg[15]_i_1_n_12\,
      Q => \^bram_addra\(11),
      R => \bram_addra[16]_i_1_n_0\
    );
\bram_addra_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \bram_addra_reg[15]_i_1_n_11\,
      Q => \^bram_addra\(12),
      R => \bram_addra[16]_i_1_n_0\
    );
\bram_addra_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \bram_addra_reg[15]_i_1_n_10\,
      Q => \^bram_addra\(13),
      R => \bram_addra[16]_i_1_n_0\
    );
\bram_addra_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \bram_addra_reg[15]_i_1_n_9\,
      Q => \^bram_addra\(14),
      R => \bram_addra[16]_i_1_n_0\
    );
\bram_addra_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \bram_addra_reg[15]_i_1_n_8\,
      Q => \^bram_addra\(15),
      R => \bram_addra[16]_i_1_n_0\
    );
\bram_addra_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \bram_addra_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \bram_addra_reg[15]_i_1_n_0\,
      CO(6) => \bram_addra_reg[15]_i_1_n_1\,
      CO(5) => \bram_addra_reg[15]_i_1_n_2\,
      CO(4) => \bram_addra_reg[15]_i_1_n_3\,
      CO(3) => \bram_addra_reg[15]_i_1_n_4\,
      CO(2) => \bram_addra_reg[15]_i_1_n_5\,
      CO(1) => \bram_addra_reg[15]_i_1_n_6\,
      CO(0) => \bram_addra_reg[15]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \bram_addra_reg[15]_i_1_n_8\,
      O(6) => \bram_addra_reg[15]_i_1_n_9\,
      O(5) => \bram_addra_reg[15]_i_1_n_10\,
      O(4) => \bram_addra_reg[15]_i_1_n_11\,
      O(3) => \bram_addra_reg[15]_i_1_n_12\,
      O(2) => \bram_addra_reg[15]_i_1_n_13\,
      O(1) => \bram_addra_reg[15]_i_1_n_14\,
      O(0) => \bram_addra_reg[15]_i_1_n_15\,
      S(7 downto 0) => \^bram_addra\(15 downto 8)
    );
\bram_addra_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \bram_addra_reg[16]_i_3_n_15\,
      Q => \^bram_addra\(16),
      R => \bram_addra[16]_i_1_n_0\
    );
\bram_addra_reg[16]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \bram_addra_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_bram_addra_reg[16]_i_3_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_bram_addra_reg[16]_i_3_O_UNCONNECTED\(7 downto 1),
      O(0) => \bram_addra_reg[16]_i_3_n_15\,
      S(7 downto 1) => B"0000000",
      S(0) => \^bram_addra\(16)
    );
\bram_addra_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \bram_addra_reg[7]_i_1_n_14\,
      Q => \^bram_addra\(1),
      R => \bram_addra[16]_i_1_n_0\
    );
\bram_addra_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \bram_addra_reg[7]_i_1_n_13\,
      Q => \^bram_addra\(2),
      R => \bram_addra[16]_i_1_n_0\
    );
\bram_addra_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \bram_addra_reg[7]_i_1_n_12\,
      Q => \^bram_addra\(3),
      R => \bram_addra[16]_i_1_n_0\
    );
\bram_addra_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \bram_addra_reg[7]_i_1_n_11\,
      Q => \^bram_addra\(4),
      R => \bram_addra[16]_i_1_n_0\
    );
\bram_addra_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \bram_addra_reg[7]_i_1_n_10\,
      Q => \^bram_addra\(5),
      R => \bram_addra[16]_i_1_n_0\
    );
\bram_addra_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \bram_addra_reg[7]_i_1_n_9\,
      Q => \^bram_addra\(6),
      R => \bram_addra[16]_i_1_n_0\
    );
\bram_addra_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \bram_addra_reg[7]_i_1_n_8\,
      Q => \^bram_addra\(7),
      R => \bram_addra[16]_i_1_n_0\
    );
\bram_addra_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \bram_addra_reg[7]_i_1_n_0\,
      CO(6) => \bram_addra_reg[7]_i_1_n_1\,
      CO(5) => \bram_addra_reg[7]_i_1_n_2\,
      CO(4) => \bram_addra_reg[7]_i_1_n_3\,
      CO(3) => \bram_addra_reg[7]_i_1_n_4\,
      CO(2) => \bram_addra_reg[7]_i_1_n_5\,
      CO(1) => \bram_addra_reg[7]_i_1_n_6\,
      CO(0) => \bram_addra_reg[7]_i_1_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \bram_addra_reg[7]_i_1_n_8\,
      O(6) => \bram_addra_reg[7]_i_1_n_9\,
      O(5) => \bram_addra_reg[7]_i_1_n_10\,
      O(4) => \bram_addra_reg[7]_i_1_n_11\,
      O(3) => \bram_addra_reg[7]_i_1_n_12\,
      O(2) => \bram_addra_reg[7]_i_1_n_13\,
      O(1) => \bram_addra_reg[7]_i_1_n_14\,
      O(0) => \bram_addra_reg[7]_i_1_n_15\,
      S(7 downto 1) => \^bram_addra\(7 downto 1),
      S(0) => \bram_addra[7]_i_2_n_0\
    );
\bram_addra_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \bram_addra_reg[15]_i_1_n_15\,
      Q => \^bram_addra\(8),
      R => \bram_addra[16]_i_1_n_0\
    );
\bram_addra_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \bram_addra_reg[15]_i_1_n_14\,
      Q => \^bram_addra\(9),
      R => \bram_addra[16]_i_1_n_0\
    );
\bram_dina_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(0),
      Q => bram_dina(0),
      R => \^bram_rsta\
    );
\bram_dina_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(10),
      Q => bram_dina(10),
      R => \^bram_rsta\
    );
\bram_dina_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(11),
      Q => bram_dina(11),
      R => \^bram_rsta\
    );
\bram_dina_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(12),
      Q => bram_dina(12),
      R => \^bram_rsta\
    );
\bram_dina_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(13),
      Q => bram_dina(13),
      R => \^bram_rsta\
    );
\bram_dina_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(14),
      Q => bram_dina(14),
      R => \^bram_rsta\
    );
\bram_dina_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(15),
      Q => bram_dina(15),
      R => \^bram_rsta\
    );
\bram_dina_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(16),
      Q => bram_dina(16),
      R => \^bram_rsta\
    );
\bram_dina_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(17),
      Q => bram_dina(17),
      R => \^bram_rsta\
    );
\bram_dina_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(18),
      Q => bram_dina(18),
      R => \^bram_rsta\
    );
\bram_dina_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(19),
      Q => bram_dina(19),
      R => \^bram_rsta\
    );
\bram_dina_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(1),
      Q => bram_dina(1),
      R => \^bram_rsta\
    );
\bram_dina_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(20),
      Q => bram_dina(20),
      R => \^bram_rsta\
    );
\bram_dina_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(21),
      Q => bram_dina(21),
      R => \^bram_rsta\
    );
\bram_dina_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(22),
      Q => bram_dina(22),
      R => \^bram_rsta\
    );
\bram_dina_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(23),
      Q => bram_dina(23),
      R => \^bram_rsta\
    );
\bram_dina_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(24),
      Q => bram_dina(24),
      R => \^bram_rsta\
    );
\bram_dina_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(25),
      Q => bram_dina(25),
      R => \^bram_rsta\
    );
\bram_dina_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(26),
      Q => bram_dina(26),
      R => \^bram_rsta\
    );
\bram_dina_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(27),
      Q => bram_dina(27),
      R => \^bram_rsta\
    );
\bram_dina_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(28),
      Q => bram_dina(28),
      R => \^bram_rsta\
    );
\bram_dina_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(29),
      Q => bram_dina(29),
      R => \^bram_rsta\
    );
\bram_dina_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(2),
      Q => bram_dina(2),
      R => \^bram_rsta\
    );
\bram_dina_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(30),
      Q => bram_dina(30),
      R => \^bram_rsta\
    );
\bram_dina_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(31),
      Q => bram_dina(31),
      R => \^bram_rsta\
    );
\bram_dina_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(3),
      Q => bram_dina(3),
      R => \^bram_rsta\
    );
\bram_dina_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(4),
      Q => bram_dina(4),
      R => \^bram_rsta\
    );
\bram_dina_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(5),
      Q => bram_dina(5),
      R => \^bram_rsta\
    );
\bram_dina_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(6),
      Q => bram_dina(6),
      R => \^bram_rsta\
    );
\bram_dina_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(7),
      Q => bram_dina(7),
      R => \^bram_rsta\
    );
\bram_dina_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(8),
      Q => bram_dina(8),
      R => \^bram_rsta\
    );
\bram_dina_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(9),
      Q => bram_dina(9),
      R => \^bram_rsta\
    );
bram_rsta_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^bram_rsta\
    );
bram_wea_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bram_addra[16]_i_2_n_0\,
      Q => bram_wea,
      R => \^bram_rsta\
    );
frame_captured_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => last_hs_d,
      Q => frame_captured,
      R => \^bram_rsta\
    );
last_hs_d_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \^last_hs\,
      Q => last_hs_d,
      R => \^bram_rsta\
    );
last_hs_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \bram_addra[16]_i_7_n_0\,
      I1 => \bram_addra[16]_i_2_n_0\,
      I2 => \bram_addra[16]_i_6_n_0\,
      I3 => \bram_addra[16]_i_5_n_0\,
      I4 => \bram_addra[16]_i_4_n_0\,
      O => last_hs_i_1_n_0
    );
last_hs_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => last_hs_i_1_n_0,
      Q => \^last_hs\,
      R => '0'
    );
\wcount[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^wcount\(0),
      O => \wcount[7]_i_2_n_0\
    );
\wcount_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \wcount_reg[7]_i_1_n_15\,
      Q => \^wcount\(0),
      R => \bram_addra[16]_i_1_n_0\
    );
\wcount_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \wcount_reg[15]_i_1_n_13\,
      Q => \^wcount\(10),
      R => \bram_addra[16]_i_1_n_0\
    );
\wcount_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \wcount_reg[15]_i_1_n_12\,
      Q => \^wcount\(11),
      R => \bram_addra[16]_i_1_n_0\
    );
\wcount_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \wcount_reg[15]_i_1_n_11\,
      Q => \^wcount\(12),
      R => \bram_addra[16]_i_1_n_0\
    );
\wcount_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \wcount_reg[15]_i_1_n_10\,
      Q => \^wcount\(13),
      R => \bram_addra[16]_i_1_n_0\
    );
\wcount_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \wcount_reg[15]_i_1_n_9\,
      Q => \^wcount\(14),
      R => \bram_addra[16]_i_1_n_0\
    );
\wcount_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \wcount_reg[15]_i_1_n_8\,
      Q => \^wcount\(15),
      R => \bram_addra[16]_i_1_n_0\
    );
\wcount_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \wcount_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \wcount_reg[15]_i_1_n_0\,
      CO(6) => \wcount_reg[15]_i_1_n_1\,
      CO(5) => \wcount_reg[15]_i_1_n_2\,
      CO(4) => \wcount_reg[15]_i_1_n_3\,
      CO(3) => \wcount_reg[15]_i_1_n_4\,
      CO(2) => \wcount_reg[15]_i_1_n_5\,
      CO(1) => \wcount_reg[15]_i_1_n_6\,
      CO(0) => \wcount_reg[15]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \wcount_reg[15]_i_1_n_8\,
      O(6) => \wcount_reg[15]_i_1_n_9\,
      O(5) => \wcount_reg[15]_i_1_n_10\,
      O(4) => \wcount_reg[15]_i_1_n_11\,
      O(3) => \wcount_reg[15]_i_1_n_12\,
      O(2) => \wcount_reg[15]_i_1_n_13\,
      O(1) => \wcount_reg[15]_i_1_n_14\,
      O(0) => \wcount_reg[15]_i_1_n_15\,
      S(7 downto 0) => \^wcount\(15 downto 8)
    );
\wcount_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \wcount_reg[17]_i_1_n_15\,
      Q => \^wcount\(16),
      R => \bram_addra[16]_i_1_n_0\
    );
\wcount_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \wcount_reg[17]_i_1_n_14\,
      Q => \^wcount\(17),
      R => \bram_addra[16]_i_1_n_0\
    );
\wcount_reg[17]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \wcount_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_wcount_reg[17]_i_1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \wcount_reg[17]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 2) => \NLW_wcount_reg[17]_i_1_O_UNCONNECTED\(7 downto 2),
      O(1) => \wcount_reg[17]_i_1_n_14\,
      O(0) => \wcount_reg[17]_i_1_n_15\,
      S(7 downto 2) => B"000000",
      S(1 downto 0) => \^wcount\(17 downto 16)
    );
\wcount_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \wcount_reg[7]_i_1_n_14\,
      Q => \^wcount\(1),
      R => \bram_addra[16]_i_1_n_0\
    );
\wcount_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \wcount_reg[7]_i_1_n_13\,
      Q => \^wcount\(2),
      R => \bram_addra[16]_i_1_n_0\
    );
\wcount_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \wcount_reg[7]_i_1_n_12\,
      Q => \^wcount\(3),
      R => \bram_addra[16]_i_1_n_0\
    );
\wcount_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \wcount_reg[7]_i_1_n_11\,
      Q => \^wcount\(4),
      R => \bram_addra[16]_i_1_n_0\
    );
\wcount_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \wcount_reg[7]_i_1_n_10\,
      Q => \^wcount\(5),
      R => \bram_addra[16]_i_1_n_0\
    );
\wcount_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \wcount_reg[7]_i_1_n_9\,
      Q => \^wcount\(6),
      R => \bram_addra[16]_i_1_n_0\
    );
\wcount_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \wcount_reg[7]_i_1_n_8\,
      Q => \^wcount\(7),
      R => \bram_addra[16]_i_1_n_0\
    );
\wcount_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \wcount_reg[7]_i_1_n_0\,
      CO(6) => \wcount_reg[7]_i_1_n_1\,
      CO(5) => \wcount_reg[7]_i_1_n_2\,
      CO(4) => \wcount_reg[7]_i_1_n_3\,
      CO(3) => \wcount_reg[7]_i_1_n_4\,
      CO(2) => \wcount_reg[7]_i_1_n_5\,
      CO(1) => \wcount_reg[7]_i_1_n_6\,
      CO(0) => \wcount_reg[7]_i_1_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \wcount_reg[7]_i_1_n_8\,
      O(6) => \wcount_reg[7]_i_1_n_9\,
      O(5) => \wcount_reg[7]_i_1_n_10\,
      O(4) => \wcount_reg[7]_i_1_n_11\,
      O(3) => \wcount_reg[7]_i_1_n_12\,
      O(2) => \wcount_reg[7]_i_1_n_13\,
      O(1) => \wcount_reg[7]_i_1_n_14\,
      O(0) => \wcount_reg[7]_i_1_n_15\,
      S(7 downto 1) => \^wcount\(7 downto 1),
      S(0) => \wcount[7]_i_2_n_0\
    );
\wcount_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \wcount_reg[15]_i_1_n_15\,
      Q => \^wcount\(8),
      R => \bram_addra[16]_i_1_n_0\
    );
\wcount_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \bram_addra[16]_i_2_n_0\,
      D => \wcount_reg[15]_i_1_n_14\,
      Q => \^wcount\(9),
      R => \bram_addra[16]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_bram_con_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    run_en : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC;
    bram_addra : out STD_LOGIC_VECTOR ( 16 downto 0 );
    bram_dina : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_wea : out STD_LOGIC;
    bram_ena : out STD_LOGIC;
    bram_douta : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rsta : out STD_LOGIC;
    bram_regcea : out STD_LOGIC;
    last_hs : out STD_LOGIC;
    wcount : out STD_LOGIC_VECTOR ( 17 downto 0 );
    frame_captured : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_bram_con_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_bram_con_0_0 : entity is "design_1_bram_con_0_0,bram_con,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_bram_con_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_bram_con_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_bram_con_0_0 : entity is "bram_con,Vivado 2022.1";
end design_1_bram_con_0_0;

architecture STRUCTURE of design_1_bram_con_0_0 is
  signal \<const1>\ : STD_LOGIC;
  signal \^aresetn\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis TUSER";
  attribute X_INTERFACE_PARAMETER of s_axis_tuser : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
  \^aresetn\ <= aresetn;
  bram_ena <= \<const1>\;
  bram_regcea <= \<const1>\;
  s_axis_tready <= \^aresetn\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_bram_con_0_0_bram_con
     port map (
      aclk => aclk,
      aresetn => \^aresetn\,
      bram_addra(16 downto 0) => bram_addra(16 downto 0),
      bram_dina(31 downto 0) => bram_dina(31 downto 0),
      bram_rsta => bram_rsta,
      bram_wea => bram_wea,
      frame_captured => frame_captured,
      last_hs => last_hs,
      run_en => run_en,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tvalid => s_axis_tvalid,
      wcount(17 downto 0) => wcount(17 downto 0)
    );
end STRUCTURE;
