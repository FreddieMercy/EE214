#I0[0] to SW0, I0[1] to SW1
#I1[0] to SW2, I1[1] to SW3
#I2[0] to SW4, I2[1] to SW5
#I3[1] to SW6, I3[2] to SW7
#Sel[0] to BTN0, Sel[1] to BTN1
#Y[0] to LED0, Y[1] to LED1

set_property  PACKAGE_PIN V17 [get_ports {I0[0]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {I0[0]}]

set_property  PACKAGE_PIN V16 [get_ports {I0[1]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {I0[1]}]

set_property  PACKAGE_PIN W16 [get_ports {I1[0]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {I1[0]}]

set_property  PACKAGE_PIN W17 [get_ports {I1[1]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {I1[1]}]

set_property  PACKAGE_PIN W15 [get_ports {I2[0]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {I2[0]}]

set_property  PACKAGE_PIN V15 [get_ports {I2[1]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {I2[1]}]

set_property  PACKAGE_PIN W14 [get_ports {I3[0]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {I3[0]}]

set_property  PACKAGE_PIN W13 [get_ports {I3[1]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {I3[1]}]

set_property  PACKAGE_PIN W19 [get_ports {Sel[0]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {Sel[0]}]

set_property  PACKAGE_PIN T17 [get_ports {Sel[1]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {Sel[1]}]

set_property  PACKAGE_PIN U16 [get_ports {Y[0]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {Y[0]}]

set_property  PACKAGE_PIN E19 [get_ports {Y[1]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {Y[1]}]