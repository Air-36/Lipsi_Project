# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "A" -parent ${Page_0}
  ipgui::add_param $IPINST -name "B" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C" -parent ${Page_0}
  ipgui::add_param $IPINST -name "D" -parent ${Page_0}


}

proc update_PARAM_VALUE.A { PARAM_VALUE.A } {
	# Procedure called to update A when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.A { PARAM_VALUE.A } {
	# Procedure called to validate A
	return true
}

proc update_PARAM_VALUE.B { PARAM_VALUE.B } {
	# Procedure called to update B when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.B { PARAM_VALUE.B } {
	# Procedure called to validate B
	return true
}

proc update_PARAM_VALUE.C { PARAM_VALUE.C } {
	# Procedure called to update C when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C { PARAM_VALUE.C } {
	# Procedure called to validate C
	return true
}

proc update_PARAM_VALUE.D { PARAM_VALUE.D } {
	# Procedure called to update D when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.D { PARAM_VALUE.D } {
	# Procedure called to validate D
	return true
}


proc update_MODELPARAM_VALUE.A { MODELPARAM_VALUE.A PARAM_VALUE.A } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.A}] ${MODELPARAM_VALUE.A}
}

proc update_MODELPARAM_VALUE.B { MODELPARAM_VALUE.B PARAM_VALUE.B } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.B}] ${MODELPARAM_VALUE.B}
}

proc update_MODELPARAM_VALUE.C { MODELPARAM_VALUE.C PARAM_VALUE.C } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C}] ${MODELPARAM_VALUE.C}
}

proc update_MODELPARAM_VALUE.D { MODELPARAM_VALUE.D PARAM_VALUE.D } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.D}] ${MODELPARAM_VALUE.D}
}

