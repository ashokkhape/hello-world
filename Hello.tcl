# Copyright (C) 2020  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and any partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details, at
# https://fpgasoftware.intel.com/eula.

# Quartus Prime: Generate Tcl File for Project
# File: Hello.tcl
# Generated on: Sun Dec 26 19:37:26 2021

# Load Quartus Prime Tcl Project package
package require ::quartus::project


# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone V"
	set_global_assignment -name DEVICE 5CSEBA6U23I7
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 20.1.1
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "12:05:33  DECEMBER 21, 2021"
	set_global_assignment -name LAST_QUARTUS_VERSION "20.1.1 Lite Edition"
	set_global_assignment -name VERILOG_FILE Hello.v
	set_location_assignment PIN_W15 -to io_led
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to io_led
	set_location_assignment PIN_V11 -to clock
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to clock
	set_location_assignment PIN_AH17 -to reset
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to reset

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
