// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Mar  1 20:23:32 2020
// Host        : LAPTOP-OQJ5SABP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub c:/Progh/Game/Game.srcs/sources_1/ip/clk_wiz/clk_wiz_stub.v
// Design      : clk_wiz
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz(clk_out, clk_pixel, clk_in)
/* synthesis syn_black_box black_box_pad_pin="clk_out,clk_pixel,clk_in" */;
  output clk_out;
  output clk_pixel;
  input clk_in;
endmodule
