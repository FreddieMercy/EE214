# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/junhao.zhang.freddie/Vivado_Projects/lab4/project_2/project_2/project_2.cache/wt [current_project]
set_property parent.project_path C:/Users/junhao.zhang.freddie/Vivado_Projects/lab4/project_2/project_2/project_2.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_verilog -library xil_defaultlib {
  C:/Users/junhao.zhang.freddie/Vivado_Projects/lab4/project_2/project_2/project_2.srcs/sources_1/imports/Downloads/latch.v
  C:/Users/junhao.zhang.freddie/Vivado_Projects/lab4/project_2/project_2/project_2.srcs/sources_1/imports/Downloads/counter.v
  C:/Users/junhao.zhang.freddie/Vivado_Projects/lab4/project_2/project_2/project_2.srcs/sources_1/new/mux.v
  C:/Users/junhao.zhang.freddie/Vivado_Projects/lab4/project_2/project_2/project_2.srcs/sources_1/new/demux.v
  C:/Users/junhao.zhang.freddie/Vivado_Projects/lab4/project_2/project_2/project_2.srcs/sources_1/new/wrapper.v
}
read_xdc C:/Users/junhao.zhang.freddie/Vivado_Projects/lab4/project_2/project_2/project_2.srcs/constrs_1/new/cons.xdc
set_property used_in_implementation false [get_files C:/Users/junhao.zhang.freddie/Vivado_Projects/lab4/project_2/project_2/project_2.srcs/constrs_1/new/cons.xdc]

synth_design -top wrapper -part xc7a35tcpg236-1
write_checkpoint -noxdef wrapper.dcp
catch { report_utilization -file wrapper_utilization_synth.rpt -pb wrapper_utilization_synth.pb }
