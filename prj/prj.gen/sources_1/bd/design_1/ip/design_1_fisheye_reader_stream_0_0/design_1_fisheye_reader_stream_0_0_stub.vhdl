-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Fri Nov 28 16:55:02 2025
-- Host        : DESKTOP-1CQ16CU running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /mnt/c/DPU-PYNQ/boards/Ultra96v2/binary_container_1/link/vivado/vpl/prj/prj.gen/sources_1/bd/design_1/ip/design_1_fisheye_reader_stream_0_0/design_1_fisheye_reader_stream_0_0_stub.vhdl
-- Design      : design_1_fisheye_reader_stream_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_fisheye_reader_stream_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    three_delay_issue : out STD_LOGIC;
    wr_done : in STD_LOGIC;
    pix_cnt_acc : out STD_LOGIC_VECTOR ( 16 downto 0 );
    bram_addrb : out STD_LOGIC_VECTOR ( 16 downto 0 );
    bram_enb : out STD_LOGIC;
    bram_web : out STD_LOGIC;
    bram_dinb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_doutb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    run_en : out STD_LOGIC;
    m_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_tvalid : out STD_LOGIC;
    m_tready : in STD_LOGIC;
    m_tlast : out STD_LOGIC;
    m_tuser : out STD_LOGIC;
    m_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end design_1_fisheye_reader_stream_0_0;

architecture stub of design_1_fisheye_reader_stream_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,three_delay_issue,wr_done,pix_cnt_acc[16:0],bram_addrb[16:0],bram_enb,bram_web,bram_dinb[31:0],bram_doutb[31:0],run_en,m_tdata[31:0],m_tvalid,m_tready,m_tlast,m_tuser,m_tkeep[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "fisheye_reader_stream,Vivado 2022.1";
begin
end;
