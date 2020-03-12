set_property SRC_FILE_INFO {cfile:c:/Users/youri/Vivado/Game/Game.srcs/sources_1/ip/clk_wiz/clk_wiz.xdc rfile:../Game.srcs/sources_1/ip/clk_wiz/clk_wiz.xdc id:1 order:EARLY scoped_inst:clock_layout/inst} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/youri/Vivado/Game/Game.srcs/constrs_1/new/constraint.xdc rfile:../Game.srcs/constrs_1/new/constraint.xdc id:2} [current_design]
current_instance clock_layout/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in]] 0.1
current_instance
set_property src_info {type:XDC file:2 line:39 export:INPUT save:INPUT read:READ} [current_design]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets reset_IBUF]
set_property src_info {type:XDC file:2 line:48 export:INPUT save:INPUT read:READ} [current_design]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {spi_clk_IBUF}]
