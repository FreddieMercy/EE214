# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/junhao.zhang.freddie/Vivado_Projects/lab5/project_2/project_4/project_2.cache/wt [current_project]
set_property parent.project_path C:/Users/junhao.zhang.freddie/Vivado_Projects/lab5/project_2/project_4/project_2.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_verilog -library xil_defaultlib C:/Users/junhao.zhang.freddie/Vivado_Projects/lab5/project_2/project_4/project_2.srcs/sources_1/new/sr_latch.v
synth_design -top sr_latch -part xc7a35tcpg236-1
write_checkpoint -noxdef sr_latch.dcp
catch { report_utilization -file sr_latch_utilization_synth.rpt -pb sr_latch_utilization_synth.pb }
