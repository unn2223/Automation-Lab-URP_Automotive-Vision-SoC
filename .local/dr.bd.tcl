

#---------------------------
# Constant blocks
#---------------------------

#---------------------------
# Platform Parameters for name
#---------------------------
set axi_interconnect_hpc0 [get_bd_cell /axi_interconnect_hpc0]
    
set_property -dict [ list \
  CONFIG.NUM_SI 3 \
  CONFIG.NUM_MI 1 \
  CONFIG.S02_HAS_REGSLICE 1 \
  CONFIG.S02_HAS_DATA_FIFO 2 \
  ] $axi_interconnect_hpc0
set interconnect_axifull [get_bd_cell /interconnect_axifull]
    
set_property -dict [ list \
  CONFIG.NUM_SI 1 \
  CONFIG.NUM_MI 1 \
  ] $interconnect_axifull
set interconnect_axilite [get_bd_cell /interconnect_axilite]
    
set_property -dict [ list \
  CONFIG.NUM_SI 1 \
  CONFIG.NUM_MI 4 \
  CONFIG.M03_HAS_REGSLICE 1 \
  ] $interconnect_axilite
set ps_e [get_bd_cell /ps_e]
    
set_property -dict [ list \
  CONFIG.PSU__USE__S_AXI_GP2 1 \
  CONFIG.PSU__USE__S_AXI_GP3 1 \
  ] $ps_e

#---------------------------
# Instantiating DPUCZDX8G_1
#---------------------------
set DPUCZDX8G_1 [create_bd_cell -type ip -vlnv xilinx.com:RTLKernel:DPUCZDX8G:1.0 DPUCZDX8G_1]
  

#---------------------------
# Instantiating axi_ic_ps_e_S_AXI_HP0_FPD
#---------------------------
set axi_ic_ps_e_S_AXI_HP0_FPD [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ic_ps_e_S_AXI_HP0_FPD]
  
set_property -dict [ list  \
  CONFIG.NUM_MI {1} \
  CONFIG.NUM_SI {1} \
  CONFIG.M00_HAS_REGSLICE {0} \
  CONFIG.S00_HAS_REGSLICE {0}  ] $axi_ic_ps_e_S_AXI_HP0_FPD

#---------------------------
# Instantiating axi_ic_ps_e_S_AXI_HP1_FPD
#---------------------------
set axi_ic_ps_e_S_AXI_HP1_FPD [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ic_ps_e_S_AXI_HP1_FPD]
  
set_property -dict [ list  \
  CONFIG.NUM_MI {1} \
  CONFIG.NUM_SI {1} \
  CONFIG.M00_HAS_REGSLICE {0} \
  CONFIG.S00_HAS_REGSLICE {0}  ] $axi_ic_ps_e_S_AXI_HP1_FPD

#---------------------------
# Connectivity Phase 1
#---------------------------
connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/M00_AXI] \
  [get_bd_intf_pins -auto_enable /ps_e/S_AXI_HP0_FPD] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /axi_ic_ps_e_S_AXI_HP1_FPD/M00_AXI] \
  [get_bd_intf_pins -auto_enable /ps_e/S_AXI_HP1_FPD] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /interconnect_axilite/M03_AXI] \
  [get_bd_intf_pins -auto_enable /DPUCZDX8G_1/S_AXI_CONTROL] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /DPUCZDX8G_1/M_AXI_GP0] \
  [get_bd_intf_pins -auto_enable /axi_interconnect_hpc0/S02_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /DPUCZDX8G_1/M_AXI_HP0] \
  [get_bd_intf_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S00_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /DPUCZDX8G_1/M_AXI_HP2] \
  [get_bd_intf_pins -auto_enable /axi_ic_ps_e_S_AXI_HP1_FPD/S00_AXI] \


#---------------------------
# Clock/Reset Annotation
#---------------------------

set_property HDL_ATTRIBUTE.saxihp0_fpd_aclk.FREQ_HZ {200000000} [get_bd_cells ps_e]
set_property HDL_ATTRIBUTE.saxihp0_fpd_aclk.refClockId {4} [get_bd_cells ps_e]
set_property HDL_ATTRIBUTE.saxihp0_fpd_aclk.FREQ_HZ_TOLERANCE {10000000} [get_bd_cells ps_e]
set_property HDL_ATTRIBUTE.saxihp1_fpd_aclk.FREQ_HZ {200000000} [get_bd_cells ps_e]
set_property HDL_ATTRIBUTE.saxihp1_fpd_aclk.refClockId {4} [get_bd_cells ps_e]
set_property HDL_ATTRIBUTE.saxihp1_fpd_aclk.FREQ_HZ_TOLERANCE {10000000} [get_bd_cells ps_e]

set_property HDL_ATTRIBUTE.aclk.refClockId {4} $DPUCZDX8G_1
set_property HDL_ATTRIBUTE.aclk.FREQ_HZ {200000000} $DPUCZDX8G_1
set_property HDL_ATTRIBUTE.aclk.FREQ_HZ_TOLERANCE {10000000} $DPUCZDX8G_1
set_property HDL_ATTRIBUTE.ap_clk_2.refClockId {5} $DPUCZDX8G_1
set_property HDL_ATTRIBUTE.ap_clk_2.FREQ_HZ {400000000} $DPUCZDX8G_1
set_property HDL_ATTRIBUTE.ap_clk_2.FREQ_HZ_TOLERANCE {20000000} $DPUCZDX8G_1



#---------------------------
# Invoke clock automation
#---------------------------

set_param bd.clkrstautomationv2 1
::bd::clkrst::apply_clk_rst_automation



#---------------------------
# Connectivity Phase 2
#---------------------------

#---------------------------
# Create Stream Map file
#---------------------------
set stream_subsystems [get_bd_cells * -hierarchical -quiet -filter {VLNV =~ "*:*:sdx_stream_subsystem:*"}]
if {[string length $stream_subsystems] > 0} {    
  set xmlFile $vpl_output_dir/qdma_stream_map.xml
  set fp [open ${xmlFile} w]
  puts $fp "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
  puts $fp "<xd:streamMap xmlns:xd=\"http://www.xilinx.com/xd\">"
  foreach streamSS [get_bd_cells * -hierarchical -quiet -filter {VLNV =~ "*:*:sdx_stream_subsystem:*"}] {
    set ssInstance [string trimleft $streamSS /]
    set ssRegion [get_property CONFIG.SLR_ASSIGNMENTS $streamSS]
    foreach ssIntf [get_bd_intf_pins $streamSS/* -quiet -filter {NAME=~"S??_AXIS"}] {
      set pinName [get_property NAME $ssIntf]
      set routeId [sdx_stream_subsystem::get_routeid $ssIntf]
      set flowId [sdx_stream_subsystem::get_flowid $ssIntf]
      puts $fp "  <xd:streamRoute xd:instanceRef=\"$ssInstance\" xd:portRef=\"$pinName\" xd:route=\"$routeId\" xd:flow=\"$flowId\" xd:region=\"$ssRegion\">"
      foreach connection [find_bd_objs -relation connected_to $ssIntf -thru_hier] {
        set connectedRegion [get_property CONFIG.SLR_ASSIGNMENTS [bd::utils::get_parent $connection]]
        set connectedPort [bd::utils::get_short_name $connection]
        set connectedInst [string trimleft [bd::utils::get_parent $connection] /]
        puts $fp "    <xd:connection xd:instanceRef=\"$connectedInst\" xd:portRef=\"$connectedPort\" xd:region=\"$connectedRegion\"/>"
      }
      puts $fp "  </xd:streamRoute>"
    }
    foreach ssIntf [get_bd_intf_pins $streamSS/* -quiet -filter {NAME=~"M??_AXIS"}] {
      set pinName [get_property NAME $ssIntf]
      set routeId [sdx_stream_subsystem::get_routeid $ssIntf]
      set flowId [sdx_stream_subsystem::get_flowid $ssIntf]
      puts $fp "  <xd:streamRoute xd:instanceRef=\"$ssInstance\" xd:portRef=\"$pinName\" xd:route=\"$routeId\" xd:flow=\"$flowId\" xd:region=\"$ssRegion\">"
      foreach connection [find_bd_objs -relation connected_to $ssIntf -thru_hier] {
        set connectedRegion [get_property CONFIG.SLR_ASSIGNMENTS [bd::utils::get_parent $connection]]
        set connectedPort [bd::utils::get_short_name $connection]
        set connectedInst [string trimleft [bd::utils::get_parent $connection] /]
        puts $fp "    <xd:connection xd:instanceRef=\"$connectedInst\" xd:portRef=\"$connectedPort\" xd:region=\"$connectedRegion\"/>"
      }
      puts $fp "  </xd:streamRoute>"
    }
  }
  puts $fp "</xd:streamMap>"
  close $fp
}


