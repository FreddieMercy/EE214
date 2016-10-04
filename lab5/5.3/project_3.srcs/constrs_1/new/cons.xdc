set_property PACKAGE_PIN W5 [get_ports clk]							
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

set_property PACKAGE_PIN U18 [get_ports rst]							
set_property IOSTANDARD LVCMOS33 [get_ports rst]

set_property PACKAGE_PIN U16 [get_ports led]							
set_property IOSTANDARD LVCMOS33 [get_ports led]

set_property PACKAGE_PIN R2 [get_ports sw[0]]							
set_property IOSTANDARD LVCMOS33 [get_ports sw[0]]

set_property PACKAGE_PIN T1 [get_ports sw[1]]							
set_property IOSTANDARD LVCMOS33 [get_ports sw[1]]