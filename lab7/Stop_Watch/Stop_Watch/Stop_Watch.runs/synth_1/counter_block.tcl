# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/junhao.zhang.freddie/Vivado_Projects/lab7/Stop_Watch/Stop_Watch/Stop_Watch.cache/wt [current_project]
set_property parent.project_path C:/Users/junhao.zhang.freddie/Vivado_Projects/lab7/Stop_Watch/Stop_Watch/Stop_Watch.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib C:/Users/junhao.zhang.freddie/Vivado_Projects/lab7/Stop_Watch/Stop_Watch/Stop_Watch.srcs/sources_1/new/stopwatch.v
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/junhao.zhang.freddie/Vivado_Projects/lab7/Stop_Watch/Stop_Watch/Stop_Watch.srcs/constrs_1/new/stopwatch.xdc
set_property used_in_implementation false [get_files C:/Users/junhao.zhang.freddie/Vivado_Projects/lab7/Stop_Watch/Stop_Watch/Stop_Watch.srcs/constrs_1/new/stopwatch.xdc]


synth_design -top counter_block -part xc7a35tcpg236-1


write_checkpoint -force -noxdef counter_block.dcp

catch { report_utilization -file counter_block_utilization_synth.rpt -pb counter_block_utilization_synth.pb }
