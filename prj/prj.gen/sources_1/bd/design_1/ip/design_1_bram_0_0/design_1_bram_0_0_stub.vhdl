-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Fri Nov 28 16:59:47 2025
-- Host        : DESKTOP-1CQ16CU running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /mnt/c/DPU-PYNQ/boards/Ultra96v2/binary_container_1/link/vivado/vpl/prj/prj.gen/sources_1/bd/design_1/ip/design_1_bram_0_0/design_1_bram_0_0_stub.vhdl
-- Design      : design_1_bram_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_bram_0_0 is
  Port ( 
    addra : in STD_LOGIC_VECTOR ( 16 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clka : in STD_LOGIC;
    wea : in STD_LOGIC;
    ena : in STD_LOGIC;
    rsta : in STD_LOGIC;
    regcea : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 16 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    web : in STD_LOGIC;
    enb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_bram_0_0;

architecture stub of design_1_bram_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "addra[16:0],dina[31:0],clka,wea,ena,rsta,regcea,douta[31:0],addrb[16:0],dinb[31:0],web,enb,rstb,regceb,doutb[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bram,Vivado 2022.1";
begin
end;
