// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Mar 23 19:02:53 2025
// Host        : ensc-pit-w26 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               u:/ENSC452/FinalStage/adventures_with_ip/adventures_with_ip.gen/sources_1/bd/ip_design/ip/ip_design_Debouncer_0_2/ip_design_Debouncer_0_2_stub.v
// Design      : ip_design_Debouncer_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Debouncer,Vivado 2020.2" *)
module ip_design_Debouncer_0_2(clk, SignalIn, SignalOut)
/* synthesis syn_black_box black_box_pad_pin="clk,SignalIn[4:0],SignalOut[4:0]" */;
  input clk;
  input [4:0]SignalIn;
  output [4:0]SignalOut;
endmodule
