# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "IN_HEIGHT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TDATA_W" -parent ${Page_0}


}

proc update_PARAM_VALUE.IN_HEIGHT { PARAM_VALUE.IN_HEIGHT } {
	# Procedure called to update IN_HEIGHT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IN_HEIGHT { PARAM_VALUE.IN_HEIGHT } {
	# Procedure called to validate IN_HEIGHT
	return true
}

proc update_PARAM_VALUE.IN_WIDTH { PARAM_VALUE.IN_WIDTH } {
	# Procedure called to update IN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IN_WIDTH { PARAM_VALUE.IN_WIDTH } {
	# Procedure called to validate IN_WIDTH
	return true
}

proc update_PARAM_VALUE.TDATA_W { PARAM_VALUE.TDATA_W } {
	# Procedure called to update TDATA_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TDATA_W { PARAM_VALUE.TDATA_W } {
	# Procedure called to validate TDATA_W
	return true
}


proc update_MODELPARAM_VALUE.TDATA_W { MODELPARAM_VALUE.TDATA_W PARAM_VALUE.TDATA_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TDATA_W}] ${MODELPARAM_VALUE.TDATA_W}
}

proc update_MODELPARAM_VALUE.IN_WIDTH { MODELPARAM_VALUE.IN_WIDTH PARAM_VALUE.IN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IN_WIDTH}] ${MODELPARAM_VALUE.IN_WIDTH}
}

proc update_MODELPARAM_VALUE.IN_HEIGHT { MODELPARAM_VALUE.IN_HEIGHT PARAM_VALUE.IN_HEIGHT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IN_HEIGHT}] ${MODELPARAM_VALUE.IN_HEIGHT}
}

