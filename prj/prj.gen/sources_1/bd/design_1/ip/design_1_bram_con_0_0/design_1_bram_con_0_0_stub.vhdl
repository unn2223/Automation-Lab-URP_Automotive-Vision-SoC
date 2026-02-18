-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Fri Nov 28 16:56:31 2025
-- Host        : DESKTOP-1CQ16CU running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /mnt/c/DPU-PYNQ/boards/Ultra96v2/binary_container_1/link/vivado/vpl/prj/prj.gen/sources_1/bd/design_1/ip/design_1_bram_con_0_0/design_1_bram_con_0_0_stub.vhdl
-- Design      : design_1_bram_con_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_bram_con_0_0 is
  Port ( 
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

end design_1_bram_con_0_0;

architecture stub of design_1_bram_con_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,run_en,s_axis_tdata[31:0],s_axis_tvalid,s_axis_tready,s_axis_tlast,s_axis_tuser,bram_addra[16:0],bram_dina[31:0],bram_wea,bram_ena,bram_douta[31:0],bram_rsta,bram_regcea,last_hs,wcount[17:0],frame_captured";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bram_con,Vivado 2022.1";
begin
end;
