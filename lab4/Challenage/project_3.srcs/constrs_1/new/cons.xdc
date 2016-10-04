set_property PACKAGE_PIN W5 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

set_property PACKAGE_PIN V17 [get_ports {X[0]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {X[0]}]

set_property PACKAGE_PIN V16 [get_ports {X[1]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {X[1]}]

set_property PACKAGE_PIN W16 [get_ports {X[2]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {X[2]}]

set_property PACKAGE_PIN W17 [get_ports {X[3]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {X[3]}]

set_property PACKAGE_PIN W15 [get_ports {X[4]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {X[4]}]

set_property PACKAGE_PIN V15 [get_ports {X[5]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {X[5]}]

set_property PACKAGE_PIN W14 [get_ports {X[6]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {X[6]}]

set_property PACKAGE_PIN W13 [get_ports {X[7]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {X[7]}]

#Bank = 34, Pin name = ,						Sch name = AN0
set_property PACKAGE_PIN U2 [get_ports {an[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
#Bank = 34, Pin name = ,						Sch name = AN1
set_property PACKAGE_PIN U4 [get_ports {an[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
#Bank = 34, Pin name = ,						Sch name = AN2
set_property PACKAGE_PIN V4 [get_ports {an[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
#Bank = 34, Pin name = ,					Sch name = AN3
set_property PACKAGE_PIN W4 [get_ports {an[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]
	
set_property PACKAGE_PIN W7 [get_ports {seg[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]
#Bank = 34, Pin name = ,					Sch name = CB
set_property PACKAGE_PIN W6 [get_ports {seg[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]
#Bank = 34, Pin name = ,					Sch name = CC
set_property PACKAGE_PIN U8 [get_ports {seg[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]
#Bank = 34, Pin name = ,						Sch name = CD
set_property PACKAGE_PIN V8 [get_ports {seg[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]
#Bank = 34, Pin name = ,						Sch name = CE
set_property PACKAGE_PIN U5 [get_ports {seg[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]
#Bank = 34, Pin name = ,						Sch name = CF
set_property PACKAGE_PIN V5 [get_ports {seg[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]
#Bank = 34, Pin name = ,						Sch name = CG
set_property PACKAGE_PIN U7 [get_ports {seg[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]

#Bank = 34, Pin name = ,						Sch name = DP
set_property PACKAGE_PIN V7 [get_ports {seg[7]}]							
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[7]}]
