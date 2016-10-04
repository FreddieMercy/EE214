set_property PACKAGE_PIN W5 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
	
set_property PACKAGE_PIN U16 [get_ports {Y[0]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {Y[0]}]

set_property PACKAGE_PIN E19 [get_ports {Y[1]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {Y[1]}]

set_property PACKAGE_PIN U19 [get_ports {Y[2]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {Y[2]}]

set_property PACKAGE_PIN V19 [get_ports {Y[3]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {Y[3]}]

#set_property PACKAGE_PIN W19 [get_ports {S[0]}]	
#set_property IOSTANDARD LVCMOS33 [get_ports {S[0]}]

#set_property PACKAGE_PIN T17 [get_ports {S[1]}]	
#set_property IOSTANDARD LVCMOS33 [get_ports {S[1]}]

set_property PACKAGE_PIN V17 [get_ports {I0}]	
set_property IOSTANDARD LVCMOS33 [get_ports {I0}]

set_property PACKAGE_PIN V16 [get_ports {I1}]	
set_property IOSTANDARD LVCMOS33 [get_ports {I1}]

set_property PACKAGE_PIN W16 [get_ports {I2}]	
set_property IOSTANDARD LVCMOS33 [get_ports {I2}]

set_property PACKAGE_PIN W17 [get_ports {I3}]	
set_property IOSTANDARD LVCMOS33 [get_ports {I3}]

set_property PACKAGE_PIN U14 [get_ports {TDATA}]	
set_property IOSTANDARD LVCMOS33 [get_ports {TDATA}]
