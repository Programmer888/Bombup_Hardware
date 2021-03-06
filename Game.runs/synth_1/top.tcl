# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 3
set_param synth.incrementalSynthesisCache C:/Users/youri/Vivado/Game/.Xil/Vivado-512-LAPTOP-29Q9R4T3/incrSyn
set_param xicom.use_bs_reader 1
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/youri/Vivado/Game/Game.cache/wt [current_project]
set_property parent.project_path C:/Users/youri/Vivado/Game/Game.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo c:/Users/youri/Vivado/Game/Game.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files C:/Users/youri/Image/block.coe
add_files C:/Users/youri/Image/wall.coe
add_files C:/Users/youri/Image/player1.coe
add_files C:/Users/youri/Image/player2.coe
read_vhdl -library xil_defaultlib {
  C:/Users/youri/Vivado/Game/Game.srcs/sources_1/new/color_scheme.vhd
  C:/Users/youri/Vivado/Game/Game.srcs/sources_1/new/spi.vhd
  C:/Users/youri/Vivado/Game/Game.srcs/sources_1/new/image1.vhd
  C:/Users/youri/Vivado/Game/Game.srcs/sources_1/new/vga.vhd
  C:/Users/youri/Vivado/Game/Game.srcs/sources_1/new/top.vhd
}
read_ip -quiet C:/Users/youri/Vivado/Game/Game.srcs/sources_1/ip/clk_wiz/clk_wiz.xci
set_property used_in_implementation false [get_files -all c:/Users/youri/Vivado/Game/Game.srcs/sources_1/ip/clk_wiz/clk_wiz_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/youri/Vivado/Game/Game.srcs/sources_1/ip/clk_wiz/clk_wiz.xdc]
set_property used_in_implementation false [get_files -all c:/Users/youri/Vivado/Game/Game.srcs/sources_1/ip/clk_wiz/clk_wiz_ooc.xdc]

read_ip -quiet C:/Users/youri/Vivado/Game/Game.srcs/sources_1/ip/block_coe/block_coe.xci
set_property used_in_implementation false [get_files -all c:/Users/youri/Vivado/Game/Game.srcs/sources_1/ip/block_coe/block_coe_ooc.xdc]

read_ip -quiet C:/Users/youri/Vivado/Game/Game.srcs/sources_1/ip/wall_coe/wall_coe.xci
set_property used_in_implementation false [get_files -all c:/Users/youri/Vivado/Game/Game.srcs/sources_1/ip/wall_coe/wall_coe_ooc.xdc]

read_ip -quiet C:/Users/youri/Vivado/Game/Game.srcs/sources_1/ip/player1_coe/player1_coe.xci
set_property used_in_implementation false [get_files -all c:/Users/youri/Vivado/Game/Game.srcs/sources_1/ip/player1_coe/player1_coe_ooc.xdc]

read_ip -quiet C:/Users/youri/Vivado/Game/Game.srcs/sources_1/ip/player2_coe/player2_coe.xci
set_property used_in_implementation false [get_files -all c:/Users/youri/Vivado/Game/Game.srcs/sources_1/ip/player2_coe/player2_coe_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/youri/Vivado/Game/Game.srcs/constrs_1/new/constraint.xdc
set_property used_in_implementation false [get_files C:/Users/youri/Vivado/Game/Game.srcs/constrs_1/new/constraint.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top top -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
