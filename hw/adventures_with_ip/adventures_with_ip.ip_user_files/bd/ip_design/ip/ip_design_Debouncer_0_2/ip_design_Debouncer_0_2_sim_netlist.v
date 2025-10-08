// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Mar 23 19:02:53 2025
// Host        : ensc-pit-w26 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               u:/ENSC452/FinalStage/adventures_with_ip/adventures_with_ip.gen/sources_1/bd/ip_design/ip/ip_design_Debouncer_0_2/ip_design_Debouncer_0_2_sim_netlist.v
// Design      : ip_design_Debouncer_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ip_design_Debouncer_0_2,Debouncer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Debouncer,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module ip_design_Debouncer_0_2
   (clk,
    SignalIn,
    SignalOut);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ip_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input [4:0]SignalIn;
  output [4:0]SignalOut;

  wire [4:0]SignalIn;
  wire [4:0]SignalOut;
  wire clk;

  ip_design_Debouncer_0_2_Debouncer U0
       (.SignalIn(SignalIn),
        .SignalOut(SignalOut),
        .clk(clk));
endmodule

(* ORIG_REF_NAME = "Debouncer" *) 
module ip_design_Debouncer_0_2_Debouncer
   (SignalOut,
    SignalIn,
    clk);
  output [4:0]SignalOut;
  input [4:0]SignalIn;
  input clk;

  wire \Counter0[0]_i_2_n_0 ;
  wire \Counter0[0]_i_4_n_0 ;
  wire \Counter0[0]_i_5_n_0 ;
  wire \Counter0[0]_i_6_n_0 ;
  wire [23:7]Counter0_reg;
  wire \Counter0_reg[0]_i_3_n_0 ;
  wire \Counter0_reg[0]_i_3_n_1 ;
  wire \Counter0_reg[0]_i_3_n_2 ;
  wire \Counter0_reg[0]_i_3_n_3 ;
  wire \Counter0_reg[0]_i_3_n_4 ;
  wire \Counter0_reg[0]_i_3_n_5 ;
  wire \Counter0_reg[0]_i_3_n_6 ;
  wire \Counter0_reg[0]_i_3_n_7 ;
  wire \Counter0_reg[12]_i_1_n_0 ;
  wire \Counter0_reg[12]_i_1_n_1 ;
  wire \Counter0_reg[12]_i_1_n_2 ;
  wire \Counter0_reg[12]_i_1_n_3 ;
  wire \Counter0_reg[12]_i_1_n_4 ;
  wire \Counter0_reg[12]_i_1_n_5 ;
  wire \Counter0_reg[12]_i_1_n_6 ;
  wire \Counter0_reg[12]_i_1_n_7 ;
  wire \Counter0_reg[16]_i_1_n_0 ;
  wire \Counter0_reg[16]_i_1_n_1 ;
  wire \Counter0_reg[16]_i_1_n_2 ;
  wire \Counter0_reg[16]_i_1_n_3 ;
  wire \Counter0_reg[16]_i_1_n_4 ;
  wire \Counter0_reg[16]_i_1_n_5 ;
  wire \Counter0_reg[16]_i_1_n_6 ;
  wire \Counter0_reg[16]_i_1_n_7 ;
  wire \Counter0_reg[20]_i_1_n_1 ;
  wire \Counter0_reg[20]_i_1_n_2 ;
  wire \Counter0_reg[20]_i_1_n_3 ;
  wire \Counter0_reg[20]_i_1_n_4 ;
  wire \Counter0_reg[20]_i_1_n_5 ;
  wire \Counter0_reg[20]_i_1_n_6 ;
  wire \Counter0_reg[20]_i_1_n_7 ;
  wire \Counter0_reg[4]_i_1_n_0 ;
  wire \Counter0_reg[4]_i_1_n_1 ;
  wire \Counter0_reg[4]_i_1_n_2 ;
  wire \Counter0_reg[4]_i_1_n_3 ;
  wire \Counter0_reg[4]_i_1_n_4 ;
  wire \Counter0_reg[4]_i_1_n_5 ;
  wire \Counter0_reg[4]_i_1_n_6 ;
  wire \Counter0_reg[4]_i_1_n_7 ;
  wire \Counter0_reg[8]_i_1_n_0 ;
  wire \Counter0_reg[8]_i_1_n_1 ;
  wire \Counter0_reg[8]_i_1_n_2 ;
  wire \Counter0_reg[8]_i_1_n_3 ;
  wire \Counter0_reg[8]_i_1_n_4 ;
  wire \Counter0_reg[8]_i_1_n_5 ;
  wire \Counter0_reg[8]_i_1_n_6 ;
  wire \Counter0_reg[8]_i_1_n_7 ;
  wire \Counter0_reg_n_0_[0] ;
  wire \Counter0_reg_n_0_[1] ;
  wire \Counter0_reg_n_0_[2] ;
  wire \Counter0_reg_n_0_[3] ;
  wire \Counter0_reg_n_0_[4] ;
  wire \Counter0_reg_n_0_[5] ;
  wire \Counter0_reg_n_0_[6] ;
  wire \Counter1[0]_i_1_n_0 ;
  wire \Counter1[0]_i_2_n_0 ;
  wire \Counter1[0]_i_4_n_0 ;
  wire [22:5]Counter1_reg;
  wire \Counter1_reg[0]_i_3_n_0 ;
  wire \Counter1_reg[0]_i_3_n_1 ;
  wire \Counter1_reg[0]_i_3_n_2 ;
  wire \Counter1_reg[0]_i_3_n_3 ;
  wire \Counter1_reg[0]_i_3_n_4 ;
  wire \Counter1_reg[0]_i_3_n_5 ;
  wire \Counter1_reg[0]_i_3_n_6 ;
  wire \Counter1_reg[0]_i_3_n_7 ;
  wire \Counter1_reg[12]_i_1_n_0 ;
  wire \Counter1_reg[12]_i_1_n_1 ;
  wire \Counter1_reg[12]_i_1_n_2 ;
  wire \Counter1_reg[12]_i_1_n_3 ;
  wire \Counter1_reg[12]_i_1_n_4 ;
  wire \Counter1_reg[12]_i_1_n_5 ;
  wire \Counter1_reg[12]_i_1_n_6 ;
  wire \Counter1_reg[12]_i_1_n_7 ;
  wire \Counter1_reg[16]_i_1_n_0 ;
  wire \Counter1_reg[16]_i_1_n_1 ;
  wire \Counter1_reg[16]_i_1_n_2 ;
  wire \Counter1_reg[16]_i_1_n_3 ;
  wire \Counter1_reg[16]_i_1_n_4 ;
  wire \Counter1_reg[16]_i_1_n_5 ;
  wire \Counter1_reg[16]_i_1_n_6 ;
  wire \Counter1_reg[16]_i_1_n_7 ;
  wire \Counter1_reg[20]_i_1_n_2 ;
  wire \Counter1_reg[20]_i_1_n_3 ;
  wire \Counter1_reg[20]_i_1_n_5 ;
  wire \Counter1_reg[20]_i_1_n_6 ;
  wire \Counter1_reg[20]_i_1_n_7 ;
  wire \Counter1_reg[4]_i_1_n_0 ;
  wire \Counter1_reg[4]_i_1_n_1 ;
  wire \Counter1_reg[4]_i_1_n_2 ;
  wire \Counter1_reg[4]_i_1_n_3 ;
  wire \Counter1_reg[4]_i_1_n_4 ;
  wire \Counter1_reg[4]_i_1_n_5 ;
  wire \Counter1_reg[4]_i_1_n_6 ;
  wire \Counter1_reg[4]_i_1_n_7 ;
  wire \Counter1_reg[8]_i_1_n_0 ;
  wire \Counter1_reg[8]_i_1_n_1 ;
  wire \Counter1_reg[8]_i_1_n_2 ;
  wire \Counter1_reg[8]_i_1_n_3 ;
  wire \Counter1_reg[8]_i_1_n_4 ;
  wire \Counter1_reg[8]_i_1_n_5 ;
  wire \Counter1_reg[8]_i_1_n_6 ;
  wire \Counter1_reg[8]_i_1_n_7 ;
  wire \Counter1_reg_n_0_[0] ;
  wire \Counter1_reg_n_0_[1] ;
  wire \Counter1_reg_n_0_[2] ;
  wire \Counter1_reg_n_0_[3] ;
  wire \Counter1_reg_n_0_[4] ;
  wire \Counter2[0]_i_1_n_0 ;
  wire \Counter2[0]_i_2_n_0 ;
  wire \Counter2[0]_i_4_n_0 ;
  wire \Counter2[0]_i_5_n_0 ;
  wire \Counter2[0]_i_6_n_0 ;
  wire [23:7]Counter2_reg;
  wire \Counter2_reg[0]_i_3_n_0 ;
  wire \Counter2_reg[0]_i_3_n_1 ;
  wire \Counter2_reg[0]_i_3_n_2 ;
  wire \Counter2_reg[0]_i_3_n_3 ;
  wire \Counter2_reg[0]_i_3_n_4 ;
  wire \Counter2_reg[0]_i_3_n_5 ;
  wire \Counter2_reg[0]_i_3_n_6 ;
  wire \Counter2_reg[0]_i_3_n_7 ;
  wire \Counter2_reg[12]_i_1_n_0 ;
  wire \Counter2_reg[12]_i_1_n_1 ;
  wire \Counter2_reg[12]_i_1_n_2 ;
  wire \Counter2_reg[12]_i_1_n_3 ;
  wire \Counter2_reg[12]_i_1_n_4 ;
  wire \Counter2_reg[12]_i_1_n_5 ;
  wire \Counter2_reg[12]_i_1_n_6 ;
  wire \Counter2_reg[12]_i_1_n_7 ;
  wire \Counter2_reg[16]_i_1_n_0 ;
  wire \Counter2_reg[16]_i_1_n_1 ;
  wire \Counter2_reg[16]_i_1_n_2 ;
  wire \Counter2_reg[16]_i_1_n_3 ;
  wire \Counter2_reg[16]_i_1_n_4 ;
  wire \Counter2_reg[16]_i_1_n_5 ;
  wire \Counter2_reg[16]_i_1_n_6 ;
  wire \Counter2_reg[16]_i_1_n_7 ;
  wire \Counter2_reg[20]_i_1_n_1 ;
  wire \Counter2_reg[20]_i_1_n_2 ;
  wire \Counter2_reg[20]_i_1_n_3 ;
  wire \Counter2_reg[20]_i_1_n_4 ;
  wire \Counter2_reg[20]_i_1_n_5 ;
  wire \Counter2_reg[20]_i_1_n_6 ;
  wire \Counter2_reg[20]_i_1_n_7 ;
  wire \Counter2_reg[4]_i_1_n_0 ;
  wire \Counter2_reg[4]_i_1_n_1 ;
  wire \Counter2_reg[4]_i_1_n_2 ;
  wire \Counter2_reg[4]_i_1_n_3 ;
  wire \Counter2_reg[4]_i_1_n_4 ;
  wire \Counter2_reg[4]_i_1_n_5 ;
  wire \Counter2_reg[4]_i_1_n_6 ;
  wire \Counter2_reg[4]_i_1_n_7 ;
  wire \Counter2_reg[8]_i_1_n_0 ;
  wire \Counter2_reg[8]_i_1_n_1 ;
  wire \Counter2_reg[8]_i_1_n_2 ;
  wire \Counter2_reg[8]_i_1_n_3 ;
  wire \Counter2_reg[8]_i_1_n_4 ;
  wire \Counter2_reg[8]_i_1_n_5 ;
  wire \Counter2_reg[8]_i_1_n_6 ;
  wire \Counter2_reg[8]_i_1_n_7 ;
  wire \Counter2_reg_n_0_[0] ;
  wire \Counter2_reg_n_0_[1] ;
  wire \Counter2_reg_n_0_[2] ;
  wire \Counter2_reg_n_0_[3] ;
  wire \Counter2_reg_n_0_[4] ;
  wire \Counter2_reg_n_0_[5] ;
  wire \Counter2_reg_n_0_[6] ;
  wire \Counter3[0]_i_1_n_0 ;
  wire \Counter3[0]_i_2_n_0 ;
  wire \Counter3[0]_i_4_n_0 ;
  wire \Counter3[0]_i_5_n_0 ;
  wire \Counter3[0]_i_6_n_0 ;
  wire [23:7]Counter3_reg;
  wire \Counter3_reg[0]_i_3_n_0 ;
  wire \Counter3_reg[0]_i_3_n_1 ;
  wire \Counter3_reg[0]_i_3_n_2 ;
  wire \Counter3_reg[0]_i_3_n_3 ;
  wire \Counter3_reg[0]_i_3_n_4 ;
  wire \Counter3_reg[0]_i_3_n_5 ;
  wire \Counter3_reg[0]_i_3_n_6 ;
  wire \Counter3_reg[0]_i_3_n_7 ;
  wire \Counter3_reg[12]_i_1_n_0 ;
  wire \Counter3_reg[12]_i_1_n_1 ;
  wire \Counter3_reg[12]_i_1_n_2 ;
  wire \Counter3_reg[12]_i_1_n_3 ;
  wire \Counter3_reg[12]_i_1_n_4 ;
  wire \Counter3_reg[12]_i_1_n_5 ;
  wire \Counter3_reg[12]_i_1_n_6 ;
  wire \Counter3_reg[12]_i_1_n_7 ;
  wire \Counter3_reg[16]_i_1_n_0 ;
  wire \Counter3_reg[16]_i_1_n_1 ;
  wire \Counter3_reg[16]_i_1_n_2 ;
  wire \Counter3_reg[16]_i_1_n_3 ;
  wire \Counter3_reg[16]_i_1_n_4 ;
  wire \Counter3_reg[16]_i_1_n_5 ;
  wire \Counter3_reg[16]_i_1_n_6 ;
  wire \Counter3_reg[16]_i_1_n_7 ;
  wire \Counter3_reg[20]_i_1_n_1 ;
  wire \Counter3_reg[20]_i_1_n_2 ;
  wire \Counter3_reg[20]_i_1_n_3 ;
  wire \Counter3_reg[20]_i_1_n_4 ;
  wire \Counter3_reg[20]_i_1_n_5 ;
  wire \Counter3_reg[20]_i_1_n_6 ;
  wire \Counter3_reg[20]_i_1_n_7 ;
  wire \Counter3_reg[4]_i_1_n_0 ;
  wire \Counter3_reg[4]_i_1_n_1 ;
  wire \Counter3_reg[4]_i_1_n_2 ;
  wire \Counter3_reg[4]_i_1_n_3 ;
  wire \Counter3_reg[4]_i_1_n_4 ;
  wire \Counter3_reg[4]_i_1_n_5 ;
  wire \Counter3_reg[4]_i_1_n_6 ;
  wire \Counter3_reg[4]_i_1_n_7 ;
  wire \Counter3_reg[8]_i_1_n_0 ;
  wire \Counter3_reg[8]_i_1_n_1 ;
  wire \Counter3_reg[8]_i_1_n_2 ;
  wire \Counter3_reg[8]_i_1_n_3 ;
  wire \Counter3_reg[8]_i_1_n_4 ;
  wire \Counter3_reg[8]_i_1_n_5 ;
  wire \Counter3_reg[8]_i_1_n_6 ;
  wire \Counter3_reg[8]_i_1_n_7 ;
  wire \Counter3_reg_n_0_[0] ;
  wire \Counter3_reg_n_0_[1] ;
  wire \Counter3_reg_n_0_[2] ;
  wire \Counter3_reg_n_0_[3] ;
  wire \Counter3_reg_n_0_[4] ;
  wire \Counter3_reg_n_0_[5] ;
  wire \Counter3_reg_n_0_[6] ;
  wire \Counter4[0]_i_1_n_0 ;
  wire \Counter4[0]_i_2_n_0 ;
  wire \Counter4[0]_i_4_n_0 ;
  wire [22:5]Counter4_reg;
  wire \Counter4_reg[0]_i_3_n_0 ;
  wire \Counter4_reg[0]_i_3_n_1 ;
  wire \Counter4_reg[0]_i_3_n_2 ;
  wire \Counter4_reg[0]_i_3_n_3 ;
  wire \Counter4_reg[0]_i_3_n_4 ;
  wire \Counter4_reg[0]_i_3_n_5 ;
  wire \Counter4_reg[0]_i_3_n_6 ;
  wire \Counter4_reg[0]_i_3_n_7 ;
  wire \Counter4_reg[12]_i_1_n_0 ;
  wire \Counter4_reg[12]_i_1_n_1 ;
  wire \Counter4_reg[12]_i_1_n_2 ;
  wire \Counter4_reg[12]_i_1_n_3 ;
  wire \Counter4_reg[12]_i_1_n_4 ;
  wire \Counter4_reg[12]_i_1_n_5 ;
  wire \Counter4_reg[12]_i_1_n_6 ;
  wire \Counter4_reg[12]_i_1_n_7 ;
  wire \Counter4_reg[16]_i_1_n_0 ;
  wire \Counter4_reg[16]_i_1_n_1 ;
  wire \Counter4_reg[16]_i_1_n_2 ;
  wire \Counter4_reg[16]_i_1_n_3 ;
  wire \Counter4_reg[16]_i_1_n_4 ;
  wire \Counter4_reg[16]_i_1_n_5 ;
  wire \Counter4_reg[16]_i_1_n_6 ;
  wire \Counter4_reg[16]_i_1_n_7 ;
  wire \Counter4_reg[20]_i_1_n_2 ;
  wire \Counter4_reg[20]_i_1_n_3 ;
  wire \Counter4_reg[20]_i_1_n_5 ;
  wire \Counter4_reg[20]_i_1_n_6 ;
  wire \Counter4_reg[20]_i_1_n_7 ;
  wire \Counter4_reg[4]_i_1_n_0 ;
  wire \Counter4_reg[4]_i_1_n_1 ;
  wire \Counter4_reg[4]_i_1_n_2 ;
  wire \Counter4_reg[4]_i_1_n_3 ;
  wire \Counter4_reg[4]_i_1_n_4 ;
  wire \Counter4_reg[4]_i_1_n_5 ;
  wire \Counter4_reg[4]_i_1_n_6 ;
  wire \Counter4_reg[4]_i_1_n_7 ;
  wire \Counter4_reg[8]_i_1_n_0 ;
  wire \Counter4_reg[8]_i_1_n_1 ;
  wire \Counter4_reg[8]_i_1_n_2 ;
  wire \Counter4_reg[8]_i_1_n_3 ;
  wire \Counter4_reg[8]_i_1_n_4 ;
  wire \Counter4_reg[8]_i_1_n_5 ;
  wire \Counter4_reg[8]_i_1_n_6 ;
  wire \Counter4_reg[8]_i_1_n_7 ;
  wire \Counter4_reg_n_0_[0] ;
  wire \Counter4_reg_n_0_[1] ;
  wire \Counter4_reg_n_0_[2] ;
  wire \Counter4_reg_n_0_[3] ;
  wire \Counter4_reg_n_0_[4] ;
  wire [4:0]IsStable;
  wire \IsStable[0]_i_1_n_0 ;
  wire \IsStable[0]_i_2_n_0 ;
  wire \IsStable[0]_i_3_n_0 ;
  wire \IsStable[0]_i_4_n_0 ;
  wire \IsStable[0]_i_5_n_0 ;
  wire \IsStable[0]_i_6_n_0 ;
  wire \IsStable[1]_i_1_n_0 ;
  wire \IsStable[1]_i_2_n_0 ;
  wire \IsStable[1]_i_3_n_0 ;
  wire \IsStable[1]_i_4_n_0 ;
  wire \IsStable[1]_i_5_n_0 ;
  wire \IsStable[1]_i_6_n_0 ;
  wire \IsStable[2]_i_1_n_0 ;
  wire \IsStable[2]_i_2_n_0 ;
  wire \IsStable[2]_i_3_n_0 ;
  wire \IsStable[2]_i_4_n_0 ;
  wire \IsStable[2]_i_5_n_0 ;
  wire \IsStable[2]_i_6_n_0 ;
  wire \IsStable[3]_i_1_n_0 ;
  wire \IsStable[3]_i_2_n_0 ;
  wire \IsStable[3]_i_3_n_0 ;
  wire \IsStable[3]_i_4_n_0 ;
  wire \IsStable[3]_i_5_n_0 ;
  wire \IsStable[3]_i_6_n_0 ;
  wire \IsStable[4]_i_1_n_0 ;
  wire \IsStable[4]_i_2_n_0 ;
  wire \IsStable[4]_i_3_n_0 ;
  wire \IsStable[4]_i_4_n_0 ;
  wire \IsStable[4]_i_5_n_0 ;
  wire [4:0]SignalIn;
  wire [4:0]SignalIn_sync;
  wire [4:0]SignalOut;
  wire \TempIn[0]_i_1_n_0 ;
  wire \TempIn[1]_i_1_n_0 ;
  wire \TempIn[2]_i_1_n_0 ;
  wire \TempIn[3]_i_1_n_0 ;
  wire \TempIn[4]_i_1_n_0 ;
  wire clear;
  wire clk;
  wire [3:3]\NLW_Counter0_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_Counter1_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_Counter1_reg[20]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_Counter2_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_Counter3_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_Counter4_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_Counter4_reg[20]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \Counter0[0]_i_1 
       (.I0(SignalIn_sync[0]),
        .O(clear));
  LUT6 #(
    .INIT(64'h00000000555577F7)) 
    \Counter0[0]_i_2 
       (.I0(Counter0_reg[23]),
        .I1(Counter0_reg[21]),
        .I2(\Counter0[0]_i_4_n_0 ),
        .I3(\Counter0[0]_i_5_n_0 ),
        .I4(Counter0_reg[22]),
        .I5(IsStable[0]),
        .O(\Counter0[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h01005555FFFFFFFF)) 
    \Counter0[0]_i_4 
       (.I0(\IsStable[0]_i_6_n_0 ),
        .I1(Counter0_reg[12]),
        .I2(Counter0_reg[13]),
        .I3(\IsStable[0]_i_4_n_0 ),
        .I4(\IsStable[0]_i_3_n_0 ),
        .I5(Counter0_reg[18]),
        .O(\Counter0[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \Counter0[0]_i_5 
       (.I0(Counter0_reg[19]),
        .I1(Counter0_reg[20]),
        .O(\Counter0[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Counter0[0]_i_6 
       (.I0(\Counter0_reg_n_0_[0] ),
        .O(\Counter0[0]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter0_reg[0] 
       (.C(clk),
        .CE(\Counter0[0]_i_2_n_0 ),
        .D(\Counter0_reg[0]_i_3_n_7 ),
        .Q(\Counter0_reg_n_0_[0] ),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter0_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\Counter0_reg[0]_i_3_n_0 ,\Counter0_reg[0]_i_3_n_1 ,\Counter0_reg[0]_i_3_n_2 ,\Counter0_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\Counter0_reg[0]_i_3_n_4 ,\Counter0_reg[0]_i_3_n_5 ,\Counter0_reg[0]_i_3_n_6 ,\Counter0_reg[0]_i_3_n_7 }),
        .S({\Counter0_reg_n_0_[3] ,\Counter0_reg_n_0_[2] ,\Counter0_reg_n_0_[1] ,\Counter0[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Counter0_reg[10] 
       (.C(clk),
        .CE(\Counter0[0]_i_2_n_0 ),
        .D(\Counter0_reg[8]_i_1_n_5 ),
        .Q(Counter0_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Counter0_reg[11] 
       (.C(clk),
        .CE(\Counter0[0]_i_2_n_0 ),
        .D(\Counter0_reg[8]_i_1_n_4 ),
        .Q(Counter0_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Counter0_reg[12] 
       (.C(clk),
        .CE(\Counter0[0]_i_2_n_0 ),
        .D(\Counter0_reg[12]_i_1_n_7 ),
        .Q(Counter0_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter0_reg[12]_i_1 
       (.CI(\Counter0_reg[8]_i_1_n_0 ),
        .CO({\Counter0_reg[12]_i_1_n_0 ,\Counter0_reg[12]_i_1_n_1 ,\Counter0_reg[12]_i_1_n_2 ,\Counter0_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter0_reg[12]_i_1_n_4 ,\Counter0_reg[12]_i_1_n_5 ,\Counter0_reg[12]_i_1_n_6 ,\Counter0_reg[12]_i_1_n_7 }),
        .S(Counter0_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \Counter0_reg[13] 
       (.C(clk),
        .CE(\Counter0[0]_i_2_n_0 ),
        .D(\Counter0_reg[12]_i_1_n_6 ),
        .Q(Counter0_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Counter0_reg[14] 
       (.C(clk),
        .CE(\Counter0[0]_i_2_n_0 ),
        .D(\Counter0_reg[12]_i_1_n_5 ),
        .Q(Counter0_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Counter0_reg[15] 
       (.C(clk),
        .CE(\Counter0[0]_i_2_n_0 ),
        .D(\Counter0_reg[12]_i_1_n_4 ),
        .Q(Counter0_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Counter0_reg[16] 
       (.C(clk),
        .CE(\Counter0[0]_i_2_n_0 ),
        .D(\Counter0_reg[16]_i_1_n_7 ),
        .Q(Counter0_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter0_reg[16]_i_1 
       (.CI(\Counter0_reg[12]_i_1_n_0 ),
        .CO({\Counter0_reg[16]_i_1_n_0 ,\Counter0_reg[16]_i_1_n_1 ,\Counter0_reg[16]_i_1_n_2 ,\Counter0_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter0_reg[16]_i_1_n_4 ,\Counter0_reg[16]_i_1_n_5 ,\Counter0_reg[16]_i_1_n_6 ,\Counter0_reg[16]_i_1_n_7 }),
        .S(Counter0_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \Counter0_reg[17] 
       (.C(clk),
        .CE(\Counter0[0]_i_2_n_0 ),
        .D(\Counter0_reg[16]_i_1_n_6 ),
        .Q(Counter0_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Counter0_reg[18] 
       (.C(clk),
        .CE(\Counter0[0]_i_2_n_0 ),
        .D(\Counter0_reg[16]_i_1_n_5 ),
        .Q(Counter0_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Counter0_reg[19] 
       (.C(clk),
        .CE(\Counter0[0]_i_2_n_0 ),
        .D(\Counter0_reg[16]_i_1_n_4 ),
        .Q(Counter0_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Counter0_reg[1] 
       (.C(clk),
        .CE(\Counter0[0]_i_2_n_0 ),
        .D(\Counter0_reg[0]_i_3_n_6 ),
        .Q(\Counter0_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Counter0_reg[20] 
       (.C(clk),
        .CE(\Counter0[0]_i_2_n_0 ),
        .D(\Counter0_reg[20]_i_1_n_7 ),
        .Q(Counter0_reg[20]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter0_reg[20]_i_1 
       (.CI(\Counter0_reg[16]_i_1_n_0 ),
        .CO({\NLW_Counter0_reg[20]_i_1_CO_UNCONNECTED [3],\Counter0_reg[20]_i_1_n_1 ,\Counter0_reg[20]_i_1_n_2 ,\Counter0_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter0_reg[20]_i_1_n_4 ,\Counter0_reg[20]_i_1_n_5 ,\Counter0_reg[20]_i_1_n_6 ,\Counter0_reg[20]_i_1_n_7 }),
        .S(Counter0_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \Counter0_reg[21] 
       (.C(clk),
        .CE(\Counter0[0]_i_2_n_0 ),
        .D(\Counter0_reg[20]_i_1_n_6 ),
        .Q(Counter0_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Counter0_reg[22] 
       (.C(clk),
        .CE(\Counter0[0]_i_2_n_0 ),
        .D(\Counter0_reg[20]_i_1_n_5 ),
        .Q(Counter0_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Counter0_reg[23] 
       (.C(clk),
        .CE(\Counter0[0]_i_2_n_0 ),
        .D(\Counter0_reg[20]_i_1_n_4 ),
        .Q(Counter0_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Counter0_reg[2] 
       (.C(clk),
        .CE(\Counter0[0]_i_2_n_0 ),
        .D(\Counter0_reg[0]_i_3_n_5 ),
        .Q(\Counter0_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Counter0_reg[3] 
       (.C(clk),
        .CE(\Counter0[0]_i_2_n_0 ),
        .D(\Counter0_reg[0]_i_3_n_4 ),
        .Q(\Counter0_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Counter0_reg[4] 
       (.C(clk),
        .CE(\Counter0[0]_i_2_n_0 ),
        .D(\Counter0_reg[4]_i_1_n_7 ),
        .Q(\Counter0_reg_n_0_[4] ),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter0_reg[4]_i_1 
       (.CI(\Counter0_reg[0]_i_3_n_0 ),
        .CO({\Counter0_reg[4]_i_1_n_0 ,\Counter0_reg[4]_i_1_n_1 ,\Counter0_reg[4]_i_1_n_2 ,\Counter0_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter0_reg[4]_i_1_n_4 ,\Counter0_reg[4]_i_1_n_5 ,\Counter0_reg[4]_i_1_n_6 ,\Counter0_reg[4]_i_1_n_7 }),
        .S({Counter0_reg[7],\Counter0_reg_n_0_[6] ,\Counter0_reg_n_0_[5] ,\Counter0_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \Counter0_reg[5] 
       (.C(clk),
        .CE(\Counter0[0]_i_2_n_0 ),
        .D(\Counter0_reg[4]_i_1_n_6 ),
        .Q(\Counter0_reg_n_0_[5] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Counter0_reg[6] 
       (.C(clk),
        .CE(\Counter0[0]_i_2_n_0 ),
        .D(\Counter0_reg[4]_i_1_n_5 ),
        .Q(\Counter0_reg_n_0_[6] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Counter0_reg[7] 
       (.C(clk),
        .CE(\Counter0[0]_i_2_n_0 ),
        .D(\Counter0_reg[4]_i_1_n_4 ),
        .Q(Counter0_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \Counter0_reg[8] 
       (.C(clk),
        .CE(\Counter0[0]_i_2_n_0 ),
        .D(\Counter0_reg[8]_i_1_n_7 ),
        .Q(Counter0_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter0_reg[8]_i_1 
       (.CI(\Counter0_reg[4]_i_1_n_0 ),
        .CO({\Counter0_reg[8]_i_1_n_0 ,\Counter0_reg[8]_i_1_n_1 ,\Counter0_reg[8]_i_1_n_2 ,\Counter0_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter0_reg[8]_i_1_n_4 ,\Counter0_reg[8]_i_1_n_5 ,\Counter0_reg[8]_i_1_n_6 ,\Counter0_reg[8]_i_1_n_7 }),
        .S(Counter0_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \Counter0_reg[9] 
       (.C(clk),
        .CE(\Counter0[0]_i_2_n_0 ),
        .D(\Counter0_reg[8]_i_1_n_6 ),
        .Q(Counter0_reg[9]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \Counter1[0]_i_1 
       (.I0(SignalIn_sync[1]),
        .O(\Counter1[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000555D)) 
    \Counter1[0]_i_2 
       (.I0(\IsStable[1]_i_3_n_0 ),
        .I1(\IsStable[1]_i_2_n_0 ),
        .I2(Counter1_reg[19]),
        .I3(Counter1_reg[18]),
        .I4(IsStable[1]),
        .O(\Counter1[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Counter1[0]_i_4 
       (.I0(\Counter1_reg_n_0_[0] ),
        .O(\Counter1[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter1_reg[0] 
       (.C(clk),
        .CE(\Counter1[0]_i_2_n_0 ),
        .D(\Counter1_reg[0]_i_3_n_7 ),
        .Q(\Counter1_reg_n_0_[0] ),
        .R(\Counter1[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter1_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\Counter1_reg[0]_i_3_n_0 ,\Counter1_reg[0]_i_3_n_1 ,\Counter1_reg[0]_i_3_n_2 ,\Counter1_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\Counter1_reg[0]_i_3_n_4 ,\Counter1_reg[0]_i_3_n_5 ,\Counter1_reg[0]_i_3_n_6 ,\Counter1_reg[0]_i_3_n_7 }),
        .S({\Counter1_reg_n_0_[3] ,\Counter1_reg_n_0_[2] ,\Counter1_reg_n_0_[1] ,\Counter1[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Counter1_reg[10] 
       (.C(clk),
        .CE(\Counter1[0]_i_2_n_0 ),
        .D(\Counter1_reg[8]_i_1_n_5 ),
        .Q(Counter1_reg[10]),
        .R(\Counter1[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter1_reg[11] 
       (.C(clk),
        .CE(\Counter1[0]_i_2_n_0 ),
        .D(\Counter1_reg[8]_i_1_n_4 ),
        .Q(Counter1_reg[11]),
        .R(\Counter1[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter1_reg[12] 
       (.C(clk),
        .CE(\Counter1[0]_i_2_n_0 ),
        .D(\Counter1_reg[12]_i_1_n_7 ),
        .Q(Counter1_reg[12]),
        .R(\Counter1[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter1_reg[12]_i_1 
       (.CI(\Counter1_reg[8]_i_1_n_0 ),
        .CO({\Counter1_reg[12]_i_1_n_0 ,\Counter1_reg[12]_i_1_n_1 ,\Counter1_reg[12]_i_1_n_2 ,\Counter1_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter1_reg[12]_i_1_n_4 ,\Counter1_reg[12]_i_1_n_5 ,\Counter1_reg[12]_i_1_n_6 ,\Counter1_reg[12]_i_1_n_7 }),
        .S(Counter1_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \Counter1_reg[13] 
       (.C(clk),
        .CE(\Counter1[0]_i_2_n_0 ),
        .D(\Counter1_reg[12]_i_1_n_6 ),
        .Q(Counter1_reg[13]),
        .R(\Counter1[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter1_reg[14] 
       (.C(clk),
        .CE(\Counter1[0]_i_2_n_0 ),
        .D(\Counter1_reg[12]_i_1_n_5 ),
        .Q(Counter1_reg[14]),
        .R(\Counter1[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter1_reg[15] 
       (.C(clk),
        .CE(\Counter1[0]_i_2_n_0 ),
        .D(\Counter1_reg[12]_i_1_n_4 ),
        .Q(Counter1_reg[15]),
        .R(\Counter1[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter1_reg[16] 
       (.C(clk),
        .CE(\Counter1[0]_i_2_n_0 ),
        .D(\Counter1_reg[16]_i_1_n_7 ),
        .Q(Counter1_reg[16]),
        .R(\Counter1[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter1_reg[16]_i_1 
       (.CI(\Counter1_reg[12]_i_1_n_0 ),
        .CO({\Counter1_reg[16]_i_1_n_0 ,\Counter1_reg[16]_i_1_n_1 ,\Counter1_reg[16]_i_1_n_2 ,\Counter1_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter1_reg[16]_i_1_n_4 ,\Counter1_reg[16]_i_1_n_5 ,\Counter1_reg[16]_i_1_n_6 ,\Counter1_reg[16]_i_1_n_7 }),
        .S(Counter1_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \Counter1_reg[17] 
       (.C(clk),
        .CE(\Counter1[0]_i_2_n_0 ),
        .D(\Counter1_reg[16]_i_1_n_6 ),
        .Q(Counter1_reg[17]),
        .R(\Counter1[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter1_reg[18] 
       (.C(clk),
        .CE(\Counter1[0]_i_2_n_0 ),
        .D(\Counter1_reg[16]_i_1_n_5 ),
        .Q(Counter1_reg[18]),
        .R(\Counter1[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter1_reg[19] 
       (.C(clk),
        .CE(\Counter1[0]_i_2_n_0 ),
        .D(\Counter1_reg[16]_i_1_n_4 ),
        .Q(Counter1_reg[19]),
        .R(\Counter1[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter1_reg[1] 
       (.C(clk),
        .CE(\Counter1[0]_i_2_n_0 ),
        .D(\Counter1_reg[0]_i_3_n_6 ),
        .Q(\Counter1_reg_n_0_[1] ),
        .R(\Counter1[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter1_reg[20] 
       (.C(clk),
        .CE(\Counter1[0]_i_2_n_0 ),
        .D(\Counter1_reg[20]_i_1_n_7 ),
        .Q(Counter1_reg[20]),
        .R(\Counter1[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter1_reg[20]_i_1 
       (.CI(\Counter1_reg[16]_i_1_n_0 ),
        .CO({\NLW_Counter1_reg[20]_i_1_CO_UNCONNECTED [3:2],\Counter1_reg[20]_i_1_n_2 ,\Counter1_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Counter1_reg[20]_i_1_O_UNCONNECTED [3],\Counter1_reg[20]_i_1_n_5 ,\Counter1_reg[20]_i_1_n_6 ,\Counter1_reg[20]_i_1_n_7 }),
        .S({1'b0,Counter1_reg[22:20]}));
  FDRE #(
    .INIT(1'b0)) 
    \Counter1_reg[21] 
       (.C(clk),
        .CE(\Counter1[0]_i_2_n_0 ),
        .D(\Counter1_reg[20]_i_1_n_6 ),
        .Q(Counter1_reg[21]),
        .R(\Counter1[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter1_reg[22] 
       (.C(clk),
        .CE(\Counter1[0]_i_2_n_0 ),
        .D(\Counter1_reg[20]_i_1_n_5 ),
        .Q(Counter1_reg[22]),
        .R(\Counter1[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter1_reg[2] 
       (.C(clk),
        .CE(\Counter1[0]_i_2_n_0 ),
        .D(\Counter1_reg[0]_i_3_n_5 ),
        .Q(\Counter1_reg_n_0_[2] ),
        .R(\Counter1[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter1_reg[3] 
       (.C(clk),
        .CE(\Counter1[0]_i_2_n_0 ),
        .D(\Counter1_reg[0]_i_3_n_4 ),
        .Q(\Counter1_reg_n_0_[3] ),
        .R(\Counter1[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter1_reg[4] 
       (.C(clk),
        .CE(\Counter1[0]_i_2_n_0 ),
        .D(\Counter1_reg[4]_i_1_n_7 ),
        .Q(\Counter1_reg_n_0_[4] ),
        .R(\Counter1[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter1_reg[4]_i_1 
       (.CI(\Counter1_reg[0]_i_3_n_0 ),
        .CO({\Counter1_reg[4]_i_1_n_0 ,\Counter1_reg[4]_i_1_n_1 ,\Counter1_reg[4]_i_1_n_2 ,\Counter1_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter1_reg[4]_i_1_n_4 ,\Counter1_reg[4]_i_1_n_5 ,\Counter1_reg[4]_i_1_n_6 ,\Counter1_reg[4]_i_1_n_7 }),
        .S({Counter1_reg[7:5],\Counter1_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \Counter1_reg[5] 
       (.C(clk),
        .CE(\Counter1[0]_i_2_n_0 ),
        .D(\Counter1_reg[4]_i_1_n_6 ),
        .Q(Counter1_reg[5]),
        .R(\Counter1[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter1_reg[6] 
       (.C(clk),
        .CE(\Counter1[0]_i_2_n_0 ),
        .D(\Counter1_reg[4]_i_1_n_5 ),
        .Q(Counter1_reg[6]),
        .R(\Counter1[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter1_reg[7] 
       (.C(clk),
        .CE(\Counter1[0]_i_2_n_0 ),
        .D(\Counter1_reg[4]_i_1_n_4 ),
        .Q(Counter1_reg[7]),
        .R(\Counter1[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter1_reg[8] 
       (.C(clk),
        .CE(\Counter1[0]_i_2_n_0 ),
        .D(\Counter1_reg[8]_i_1_n_7 ),
        .Q(Counter1_reg[8]),
        .R(\Counter1[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter1_reg[8]_i_1 
       (.CI(\Counter1_reg[4]_i_1_n_0 ),
        .CO({\Counter1_reg[8]_i_1_n_0 ,\Counter1_reg[8]_i_1_n_1 ,\Counter1_reg[8]_i_1_n_2 ,\Counter1_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter1_reg[8]_i_1_n_4 ,\Counter1_reg[8]_i_1_n_5 ,\Counter1_reg[8]_i_1_n_6 ,\Counter1_reg[8]_i_1_n_7 }),
        .S(Counter1_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \Counter1_reg[9] 
       (.C(clk),
        .CE(\Counter1[0]_i_2_n_0 ),
        .D(\Counter1_reg[8]_i_1_n_6 ),
        .Q(Counter1_reg[9]),
        .R(\Counter1[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Counter2[0]_i_1 
       (.I0(SignalIn_sync[2]),
        .O(\Counter2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000555577F7)) 
    \Counter2[0]_i_2 
       (.I0(Counter2_reg[23]),
        .I1(Counter2_reg[21]),
        .I2(\Counter2[0]_i_4_n_0 ),
        .I3(\Counter2[0]_i_5_n_0 ),
        .I4(Counter2_reg[22]),
        .I5(IsStable[2]),
        .O(\Counter2[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h01005555FFFFFFFF)) 
    \Counter2[0]_i_4 
       (.I0(\IsStable[2]_i_6_n_0 ),
        .I1(Counter2_reg[12]),
        .I2(Counter2_reg[13]),
        .I3(\IsStable[2]_i_4_n_0 ),
        .I4(\IsStable[2]_i_3_n_0 ),
        .I5(Counter2_reg[18]),
        .O(\Counter2[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \Counter2[0]_i_5 
       (.I0(Counter2_reg[19]),
        .I1(Counter2_reg[20]),
        .O(\Counter2[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Counter2[0]_i_6 
       (.I0(\Counter2_reg_n_0_[0] ),
        .O(\Counter2[0]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter2_reg[0] 
       (.C(clk),
        .CE(\Counter2[0]_i_2_n_0 ),
        .D(\Counter2_reg[0]_i_3_n_7 ),
        .Q(\Counter2_reg_n_0_[0] ),
        .R(\Counter2[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter2_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\Counter2_reg[0]_i_3_n_0 ,\Counter2_reg[0]_i_3_n_1 ,\Counter2_reg[0]_i_3_n_2 ,\Counter2_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\Counter2_reg[0]_i_3_n_4 ,\Counter2_reg[0]_i_3_n_5 ,\Counter2_reg[0]_i_3_n_6 ,\Counter2_reg[0]_i_3_n_7 }),
        .S({\Counter2_reg_n_0_[3] ,\Counter2_reg_n_0_[2] ,\Counter2_reg_n_0_[1] ,\Counter2[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Counter2_reg[10] 
       (.C(clk),
        .CE(\Counter2[0]_i_2_n_0 ),
        .D(\Counter2_reg[8]_i_1_n_5 ),
        .Q(Counter2_reg[10]),
        .R(\Counter2[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter2_reg[11] 
       (.C(clk),
        .CE(\Counter2[0]_i_2_n_0 ),
        .D(\Counter2_reg[8]_i_1_n_4 ),
        .Q(Counter2_reg[11]),
        .R(\Counter2[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter2_reg[12] 
       (.C(clk),
        .CE(\Counter2[0]_i_2_n_0 ),
        .D(\Counter2_reg[12]_i_1_n_7 ),
        .Q(Counter2_reg[12]),
        .R(\Counter2[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter2_reg[12]_i_1 
       (.CI(\Counter2_reg[8]_i_1_n_0 ),
        .CO({\Counter2_reg[12]_i_1_n_0 ,\Counter2_reg[12]_i_1_n_1 ,\Counter2_reg[12]_i_1_n_2 ,\Counter2_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter2_reg[12]_i_1_n_4 ,\Counter2_reg[12]_i_1_n_5 ,\Counter2_reg[12]_i_1_n_6 ,\Counter2_reg[12]_i_1_n_7 }),
        .S(Counter2_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \Counter2_reg[13] 
       (.C(clk),
        .CE(\Counter2[0]_i_2_n_0 ),
        .D(\Counter2_reg[12]_i_1_n_6 ),
        .Q(Counter2_reg[13]),
        .R(\Counter2[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter2_reg[14] 
       (.C(clk),
        .CE(\Counter2[0]_i_2_n_0 ),
        .D(\Counter2_reg[12]_i_1_n_5 ),
        .Q(Counter2_reg[14]),
        .R(\Counter2[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter2_reg[15] 
       (.C(clk),
        .CE(\Counter2[0]_i_2_n_0 ),
        .D(\Counter2_reg[12]_i_1_n_4 ),
        .Q(Counter2_reg[15]),
        .R(\Counter2[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter2_reg[16] 
       (.C(clk),
        .CE(\Counter2[0]_i_2_n_0 ),
        .D(\Counter2_reg[16]_i_1_n_7 ),
        .Q(Counter2_reg[16]),
        .R(\Counter2[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter2_reg[16]_i_1 
       (.CI(\Counter2_reg[12]_i_1_n_0 ),
        .CO({\Counter2_reg[16]_i_1_n_0 ,\Counter2_reg[16]_i_1_n_1 ,\Counter2_reg[16]_i_1_n_2 ,\Counter2_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter2_reg[16]_i_1_n_4 ,\Counter2_reg[16]_i_1_n_5 ,\Counter2_reg[16]_i_1_n_6 ,\Counter2_reg[16]_i_1_n_7 }),
        .S(Counter2_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \Counter2_reg[17] 
       (.C(clk),
        .CE(\Counter2[0]_i_2_n_0 ),
        .D(\Counter2_reg[16]_i_1_n_6 ),
        .Q(Counter2_reg[17]),
        .R(\Counter2[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter2_reg[18] 
       (.C(clk),
        .CE(\Counter2[0]_i_2_n_0 ),
        .D(\Counter2_reg[16]_i_1_n_5 ),
        .Q(Counter2_reg[18]),
        .R(\Counter2[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter2_reg[19] 
       (.C(clk),
        .CE(\Counter2[0]_i_2_n_0 ),
        .D(\Counter2_reg[16]_i_1_n_4 ),
        .Q(Counter2_reg[19]),
        .R(\Counter2[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter2_reg[1] 
       (.C(clk),
        .CE(\Counter2[0]_i_2_n_0 ),
        .D(\Counter2_reg[0]_i_3_n_6 ),
        .Q(\Counter2_reg_n_0_[1] ),
        .R(\Counter2[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter2_reg[20] 
       (.C(clk),
        .CE(\Counter2[0]_i_2_n_0 ),
        .D(\Counter2_reg[20]_i_1_n_7 ),
        .Q(Counter2_reg[20]),
        .R(\Counter2[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter2_reg[20]_i_1 
       (.CI(\Counter2_reg[16]_i_1_n_0 ),
        .CO({\NLW_Counter2_reg[20]_i_1_CO_UNCONNECTED [3],\Counter2_reg[20]_i_1_n_1 ,\Counter2_reg[20]_i_1_n_2 ,\Counter2_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter2_reg[20]_i_1_n_4 ,\Counter2_reg[20]_i_1_n_5 ,\Counter2_reg[20]_i_1_n_6 ,\Counter2_reg[20]_i_1_n_7 }),
        .S(Counter2_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \Counter2_reg[21] 
       (.C(clk),
        .CE(\Counter2[0]_i_2_n_0 ),
        .D(\Counter2_reg[20]_i_1_n_6 ),
        .Q(Counter2_reg[21]),
        .R(\Counter2[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter2_reg[22] 
       (.C(clk),
        .CE(\Counter2[0]_i_2_n_0 ),
        .D(\Counter2_reg[20]_i_1_n_5 ),
        .Q(Counter2_reg[22]),
        .R(\Counter2[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter2_reg[23] 
       (.C(clk),
        .CE(\Counter2[0]_i_2_n_0 ),
        .D(\Counter2_reg[20]_i_1_n_4 ),
        .Q(Counter2_reg[23]),
        .R(\Counter2[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter2_reg[2] 
       (.C(clk),
        .CE(\Counter2[0]_i_2_n_0 ),
        .D(\Counter2_reg[0]_i_3_n_5 ),
        .Q(\Counter2_reg_n_0_[2] ),
        .R(\Counter2[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter2_reg[3] 
       (.C(clk),
        .CE(\Counter2[0]_i_2_n_0 ),
        .D(\Counter2_reg[0]_i_3_n_4 ),
        .Q(\Counter2_reg_n_0_[3] ),
        .R(\Counter2[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter2_reg[4] 
       (.C(clk),
        .CE(\Counter2[0]_i_2_n_0 ),
        .D(\Counter2_reg[4]_i_1_n_7 ),
        .Q(\Counter2_reg_n_0_[4] ),
        .R(\Counter2[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter2_reg[4]_i_1 
       (.CI(\Counter2_reg[0]_i_3_n_0 ),
        .CO({\Counter2_reg[4]_i_1_n_0 ,\Counter2_reg[4]_i_1_n_1 ,\Counter2_reg[4]_i_1_n_2 ,\Counter2_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter2_reg[4]_i_1_n_4 ,\Counter2_reg[4]_i_1_n_5 ,\Counter2_reg[4]_i_1_n_6 ,\Counter2_reg[4]_i_1_n_7 }),
        .S({Counter2_reg[7],\Counter2_reg_n_0_[6] ,\Counter2_reg_n_0_[5] ,\Counter2_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \Counter2_reg[5] 
       (.C(clk),
        .CE(\Counter2[0]_i_2_n_0 ),
        .D(\Counter2_reg[4]_i_1_n_6 ),
        .Q(\Counter2_reg_n_0_[5] ),
        .R(\Counter2[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter2_reg[6] 
       (.C(clk),
        .CE(\Counter2[0]_i_2_n_0 ),
        .D(\Counter2_reg[4]_i_1_n_5 ),
        .Q(\Counter2_reg_n_0_[6] ),
        .R(\Counter2[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter2_reg[7] 
       (.C(clk),
        .CE(\Counter2[0]_i_2_n_0 ),
        .D(\Counter2_reg[4]_i_1_n_4 ),
        .Q(Counter2_reg[7]),
        .R(\Counter2[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter2_reg[8] 
       (.C(clk),
        .CE(\Counter2[0]_i_2_n_0 ),
        .D(\Counter2_reg[8]_i_1_n_7 ),
        .Q(Counter2_reg[8]),
        .R(\Counter2[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter2_reg[8]_i_1 
       (.CI(\Counter2_reg[4]_i_1_n_0 ),
        .CO({\Counter2_reg[8]_i_1_n_0 ,\Counter2_reg[8]_i_1_n_1 ,\Counter2_reg[8]_i_1_n_2 ,\Counter2_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter2_reg[8]_i_1_n_4 ,\Counter2_reg[8]_i_1_n_5 ,\Counter2_reg[8]_i_1_n_6 ,\Counter2_reg[8]_i_1_n_7 }),
        .S(Counter2_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \Counter2_reg[9] 
       (.C(clk),
        .CE(\Counter2[0]_i_2_n_0 ),
        .D(\Counter2_reg[8]_i_1_n_6 ),
        .Q(Counter2_reg[9]),
        .R(\Counter2[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Counter3[0]_i_1 
       (.I0(SignalIn_sync[3]),
        .O(\Counter3[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000555577F7)) 
    \Counter3[0]_i_2 
       (.I0(Counter3_reg[23]),
        .I1(Counter3_reg[21]),
        .I2(\Counter3[0]_i_4_n_0 ),
        .I3(\Counter3[0]_i_5_n_0 ),
        .I4(Counter3_reg[22]),
        .I5(IsStable[3]),
        .O(\Counter3[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h01005555FFFFFFFF)) 
    \Counter3[0]_i_4 
       (.I0(\IsStable[3]_i_6_n_0 ),
        .I1(Counter3_reg[12]),
        .I2(Counter3_reg[13]),
        .I3(\IsStable[3]_i_4_n_0 ),
        .I4(\IsStable[3]_i_3_n_0 ),
        .I5(Counter3_reg[18]),
        .O(\Counter3[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \Counter3[0]_i_5 
       (.I0(Counter3_reg[19]),
        .I1(Counter3_reg[20]),
        .O(\Counter3[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Counter3[0]_i_6 
       (.I0(\Counter3_reg_n_0_[0] ),
        .O(\Counter3[0]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter3_reg[0] 
       (.C(clk),
        .CE(\Counter3[0]_i_2_n_0 ),
        .D(\Counter3_reg[0]_i_3_n_7 ),
        .Q(\Counter3_reg_n_0_[0] ),
        .R(\Counter3[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter3_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\Counter3_reg[0]_i_3_n_0 ,\Counter3_reg[0]_i_3_n_1 ,\Counter3_reg[0]_i_3_n_2 ,\Counter3_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\Counter3_reg[0]_i_3_n_4 ,\Counter3_reg[0]_i_3_n_5 ,\Counter3_reg[0]_i_3_n_6 ,\Counter3_reg[0]_i_3_n_7 }),
        .S({\Counter3_reg_n_0_[3] ,\Counter3_reg_n_0_[2] ,\Counter3_reg_n_0_[1] ,\Counter3[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Counter3_reg[10] 
       (.C(clk),
        .CE(\Counter3[0]_i_2_n_0 ),
        .D(\Counter3_reg[8]_i_1_n_5 ),
        .Q(Counter3_reg[10]),
        .R(\Counter3[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter3_reg[11] 
       (.C(clk),
        .CE(\Counter3[0]_i_2_n_0 ),
        .D(\Counter3_reg[8]_i_1_n_4 ),
        .Q(Counter3_reg[11]),
        .R(\Counter3[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter3_reg[12] 
       (.C(clk),
        .CE(\Counter3[0]_i_2_n_0 ),
        .D(\Counter3_reg[12]_i_1_n_7 ),
        .Q(Counter3_reg[12]),
        .R(\Counter3[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter3_reg[12]_i_1 
       (.CI(\Counter3_reg[8]_i_1_n_0 ),
        .CO({\Counter3_reg[12]_i_1_n_0 ,\Counter3_reg[12]_i_1_n_1 ,\Counter3_reg[12]_i_1_n_2 ,\Counter3_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter3_reg[12]_i_1_n_4 ,\Counter3_reg[12]_i_1_n_5 ,\Counter3_reg[12]_i_1_n_6 ,\Counter3_reg[12]_i_1_n_7 }),
        .S(Counter3_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \Counter3_reg[13] 
       (.C(clk),
        .CE(\Counter3[0]_i_2_n_0 ),
        .D(\Counter3_reg[12]_i_1_n_6 ),
        .Q(Counter3_reg[13]),
        .R(\Counter3[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter3_reg[14] 
       (.C(clk),
        .CE(\Counter3[0]_i_2_n_0 ),
        .D(\Counter3_reg[12]_i_1_n_5 ),
        .Q(Counter3_reg[14]),
        .R(\Counter3[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter3_reg[15] 
       (.C(clk),
        .CE(\Counter3[0]_i_2_n_0 ),
        .D(\Counter3_reg[12]_i_1_n_4 ),
        .Q(Counter3_reg[15]),
        .R(\Counter3[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter3_reg[16] 
       (.C(clk),
        .CE(\Counter3[0]_i_2_n_0 ),
        .D(\Counter3_reg[16]_i_1_n_7 ),
        .Q(Counter3_reg[16]),
        .R(\Counter3[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter3_reg[16]_i_1 
       (.CI(\Counter3_reg[12]_i_1_n_0 ),
        .CO({\Counter3_reg[16]_i_1_n_0 ,\Counter3_reg[16]_i_1_n_1 ,\Counter3_reg[16]_i_1_n_2 ,\Counter3_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter3_reg[16]_i_1_n_4 ,\Counter3_reg[16]_i_1_n_5 ,\Counter3_reg[16]_i_1_n_6 ,\Counter3_reg[16]_i_1_n_7 }),
        .S(Counter3_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \Counter3_reg[17] 
       (.C(clk),
        .CE(\Counter3[0]_i_2_n_0 ),
        .D(\Counter3_reg[16]_i_1_n_6 ),
        .Q(Counter3_reg[17]),
        .R(\Counter3[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter3_reg[18] 
       (.C(clk),
        .CE(\Counter3[0]_i_2_n_0 ),
        .D(\Counter3_reg[16]_i_1_n_5 ),
        .Q(Counter3_reg[18]),
        .R(\Counter3[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter3_reg[19] 
       (.C(clk),
        .CE(\Counter3[0]_i_2_n_0 ),
        .D(\Counter3_reg[16]_i_1_n_4 ),
        .Q(Counter3_reg[19]),
        .R(\Counter3[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter3_reg[1] 
       (.C(clk),
        .CE(\Counter3[0]_i_2_n_0 ),
        .D(\Counter3_reg[0]_i_3_n_6 ),
        .Q(\Counter3_reg_n_0_[1] ),
        .R(\Counter3[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter3_reg[20] 
       (.C(clk),
        .CE(\Counter3[0]_i_2_n_0 ),
        .D(\Counter3_reg[20]_i_1_n_7 ),
        .Q(Counter3_reg[20]),
        .R(\Counter3[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter3_reg[20]_i_1 
       (.CI(\Counter3_reg[16]_i_1_n_0 ),
        .CO({\NLW_Counter3_reg[20]_i_1_CO_UNCONNECTED [3],\Counter3_reg[20]_i_1_n_1 ,\Counter3_reg[20]_i_1_n_2 ,\Counter3_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter3_reg[20]_i_1_n_4 ,\Counter3_reg[20]_i_1_n_5 ,\Counter3_reg[20]_i_1_n_6 ,\Counter3_reg[20]_i_1_n_7 }),
        .S(Counter3_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \Counter3_reg[21] 
       (.C(clk),
        .CE(\Counter3[0]_i_2_n_0 ),
        .D(\Counter3_reg[20]_i_1_n_6 ),
        .Q(Counter3_reg[21]),
        .R(\Counter3[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter3_reg[22] 
       (.C(clk),
        .CE(\Counter3[0]_i_2_n_0 ),
        .D(\Counter3_reg[20]_i_1_n_5 ),
        .Q(Counter3_reg[22]),
        .R(\Counter3[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter3_reg[23] 
       (.C(clk),
        .CE(\Counter3[0]_i_2_n_0 ),
        .D(\Counter3_reg[20]_i_1_n_4 ),
        .Q(Counter3_reg[23]),
        .R(\Counter3[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter3_reg[2] 
       (.C(clk),
        .CE(\Counter3[0]_i_2_n_0 ),
        .D(\Counter3_reg[0]_i_3_n_5 ),
        .Q(\Counter3_reg_n_0_[2] ),
        .R(\Counter3[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter3_reg[3] 
       (.C(clk),
        .CE(\Counter3[0]_i_2_n_0 ),
        .D(\Counter3_reg[0]_i_3_n_4 ),
        .Q(\Counter3_reg_n_0_[3] ),
        .R(\Counter3[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter3_reg[4] 
       (.C(clk),
        .CE(\Counter3[0]_i_2_n_0 ),
        .D(\Counter3_reg[4]_i_1_n_7 ),
        .Q(\Counter3_reg_n_0_[4] ),
        .R(\Counter3[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter3_reg[4]_i_1 
       (.CI(\Counter3_reg[0]_i_3_n_0 ),
        .CO({\Counter3_reg[4]_i_1_n_0 ,\Counter3_reg[4]_i_1_n_1 ,\Counter3_reg[4]_i_1_n_2 ,\Counter3_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter3_reg[4]_i_1_n_4 ,\Counter3_reg[4]_i_1_n_5 ,\Counter3_reg[4]_i_1_n_6 ,\Counter3_reg[4]_i_1_n_7 }),
        .S({Counter3_reg[7],\Counter3_reg_n_0_[6] ,\Counter3_reg_n_0_[5] ,\Counter3_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \Counter3_reg[5] 
       (.C(clk),
        .CE(\Counter3[0]_i_2_n_0 ),
        .D(\Counter3_reg[4]_i_1_n_6 ),
        .Q(\Counter3_reg_n_0_[5] ),
        .R(\Counter3[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter3_reg[6] 
       (.C(clk),
        .CE(\Counter3[0]_i_2_n_0 ),
        .D(\Counter3_reg[4]_i_1_n_5 ),
        .Q(\Counter3_reg_n_0_[6] ),
        .R(\Counter3[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter3_reg[7] 
       (.C(clk),
        .CE(\Counter3[0]_i_2_n_0 ),
        .D(\Counter3_reg[4]_i_1_n_4 ),
        .Q(Counter3_reg[7]),
        .R(\Counter3[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter3_reg[8] 
       (.C(clk),
        .CE(\Counter3[0]_i_2_n_0 ),
        .D(\Counter3_reg[8]_i_1_n_7 ),
        .Q(Counter3_reg[8]),
        .R(\Counter3[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter3_reg[8]_i_1 
       (.CI(\Counter3_reg[4]_i_1_n_0 ),
        .CO({\Counter3_reg[8]_i_1_n_0 ,\Counter3_reg[8]_i_1_n_1 ,\Counter3_reg[8]_i_1_n_2 ,\Counter3_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter3_reg[8]_i_1_n_4 ,\Counter3_reg[8]_i_1_n_5 ,\Counter3_reg[8]_i_1_n_6 ,\Counter3_reg[8]_i_1_n_7 }),
        .S(Counter3_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \Counter3_reg[9] 
       (.C(clk),
        .CE(\Counter3[0]_i_2_n_0 ),
        .D(\Counter3_reg[8]_i_1_n_6 ),
        .Q(Counter3_reg[9]),
        .R(\Counter3[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Counter4[0]_i_1 
       (.I0(SignalIn_sync[4]),
        .O(\Counter4[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000055F7)) 
    \Counter4[0]_i_2 
       (.I0(Counter4_reg[22]),
        .I1(Counter4_reg[20]),
        .I2(\IsStable[4]_i_2_n_0 ),
        .I3(Counter4_reg[21]),
        .I4(IsStable[4]),
        .O(\Counter4[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Counter4[0]_i_4 
       (.I0(\Counter4_reg_n_0_[0] ),
        .O(\Counter4[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter4_reg[0] 
       (.C(clk),
        .CE(\Counter4[0]_i_2_n_0 ),
        .D(\Counter4_reg[0]_i_3_n_7 ),
        .Q(\Counter4_reg_n_0_[0] ),
        .R(\Counter4[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter4_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\Counter4_reg[0]_i_3_n_0 ,\Counter4_reg[0]_i_3_n_1 ,\Counter4_reg[0]_i_3_n_2 ,\Counter4_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\Counter4_reg[0]_i_3_n_4 ,\Counter4_reg[0]_i_3_n_5 ,\Counter4_reg[0]_i_3_n_6 ,\Counter4_reg[0]_i_3_n_7 }),
        .S({\Counter4_reg_n_0_[3] ,\Counter4_reg_n_0_[2] ,\Counter4_reg_n_0_[1] ,\Counter4[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Counter4_reg[10] 
       (.C(clk),
        .CE(\Counter4[0]_i_2_n_0 ),
        .D(\Counter4_reg[8]_i_1_n_5 ),
        .Q(Counter4_reg[10]),
        .R(\Counter4[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter4_reg[11] 
       (.C(clk),
        .CE(\Counter4[0]_i_2_n_0 ),
        .D(\Counter4_reg[8]_i_1_n_4 ),
        .Q(Counter4_reg[11]),
        .R(\Counter4[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter4_reg[12] 
       (.C(clk),
        .CE(\Counter4[0]_i_2_n_0 ),
        .D(\Counter4_reg[12]_i_1_n_7 ),
        .Q(Counter4_reg[12]),
        .R(\Counter4[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter4_reg[12]_i_1 
       (.CI(\Counter4_reg[8]_i_1_n_0 ),
        .CO({\Counter4_reg[12]_i_1_n_0 ,\Counter4_reg[12]_i_1_n_1 ,\Counter4_reg[12]_i_1_n_2 ,\Counter4_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter4_reg[12]_i_1_n_4 ,\Counter4_reg[12]_i_1_n_5 ,\Counter4_reg[12]_i_1_n_6 ,\Counter4_reg[12]_i_1_n_7 }),
        .S(Counter4_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \Counter4_reg[13] 
       (.C(clk),
        .CE(\Counter4[0]_i_2_n_0 ),
        .D(\Counter4_reg[12]_i_1_n_6 ),
        .Q(Counter4_reg[13]),
        .R(\Counter4[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter4_reg[14] 
       (.C(clk),
        .CE(\Counter4[0]_i_2_n_0 ),
        .D(\Counter4_reg[12]_i_1_n_5 ),
        .Q(Counter4_reg[14]),
        .R(\Counter4[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter4_reg[15] 
       (.C(clk),
        .CE(\Counter4[0]_i_2_n_0 ),
        .D(\Counter4_reg[12]_i_1_n_4 ),
        .Q(Counter4_reg[15]),
        .R(\Counter4[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter4_reg[16] 
       (.C(clk),
        .CE(\Counter4[0]_i_2_n_0 ),
        .D(\Counter4_reg[16]_i_1_n_7 ),
        .Q(Counter4_reg[16]),
        .R(\Counter4[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter4_reg[16]_i_1 
       (.CI(\Counter4_reg[12]_i_1_n_0 ),
        .CO({\Counter4_reg[16]_i_1_n_0 ,\Counter4_reg[16]_i_1_n_1 ,\Counter4_reg[16]_i_1_n_2 ,\Counter4_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter4_reg[16]_i_1_n_4 ,\Counter4_reg[16]_i_1_n_5 ,\Counter4_reg[16]_i_1_n_6 ,\Counter4_reg[16]_i_1_n_7 }),
        .S(Counter4_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \Counter4_reg[17] 
       (.C(clk),
        .CE(\Counter4[0]_i_2_n_0 ),
        .D(\Counter4_reg[16]_i_1_n_6 ),
        .Q(Counter4_reg[17]),
        .R(\Counter4[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter4_reg[18] 
       (.C(clk),
        .CE(\Counter4[0]_i_2_n_0 ),
        .D(\Counter4_reg[16]_i_1_n_5 ),
        .Q(Counter4_reg[18]),
        .R(\Counter4[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter4_reg[19] 
       (.C(clk),
        .CE(\Counter4[0]_i_2_n_0 ),
        .D(\Counter4_reg[16]_i_1_n_4 ),
        .Q(Counter4_reg[19]),
        .R(\Counter4[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter4_reg[1] 
       (.C(clk),
        .CE(\Counter4[0]_i_2_n_0 ),
        .D(\Counter4_reg[0]_i_3_n_6 ),
        .Q(\Counter4_reg_n_0_[1] ),
        .R(\Counter4[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter4_reg[20] 
       (.C(clk),
        .CE(\Counter4[0]_i_2_n_0 ),
        .D(\Counter4_reg[20]_i_1_n_7 ),
        .Q(Counter4_reg[20]),
        .R(\Counter4[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter4_reg[20]_i_1 
       (.CI(\Counter4_reg[16]_i_1_n_0 ),
        .CO({\NLW_Counter4_reg[20]_i_1_CO_UNCONNECTED [3:2],\Counter4_reg[20]_i_1_n_2 ,\Counter4_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Counter4_reg[20]_i_1_O_UNCONNECTED [3],\Counter4_reg[20]_i_1_n_5 ,\Counter4_reg[20]_i_1_n_6 ,\Counter4_reg[20]_i_1_n_7 }),
        .S({1'b0,Counter4_reg[22:20]}));
  FDRE #(
    .INIT(1'b0)) 
    \Counter4_reg[21] 
       (.C(clk),
        .CE(\Counter4[0]_i_2_n_0 ),
        .D(\Counter4_reg[20]_i_1_n_6 ),
        .Q(Counter4_reg[21]),
        .R(\Counter4[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter4_reg[22] 
       (.C(clk),
        .CE(\Counter4[0]_i_2_n_0 ),
        .D(\Counter4_reg[20]_i_1_n_5 ),
        .Q(Counter4_reg[22]),
        .R(\Counter4[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter4_reg[2] 
       (.C(clk),
        .CE(\Counter4[0]_i_2_n_0 ),
        .D(\Counter4_reg[0]_i_3_n_5 ),
        .Q(\Counter4_reg_n_0_[2] ),
        .R(\Counter4[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter4_reg[3] 
       (.C(clk),
        .CE(\Counter4[0]_i_2_n_0 ),
        .D(\Counter4_reg[0]_i_3_n_4 ),
        .Q(\Counter4_reg_n_0_[3] ),
        .R(\Counter4[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter4_reg[4] 
       (.C(clk),
        .CE(\Counter4[0]_i_2_n_0 ),
        .D(\Counter4_reg[4]_i_1_n_7 ),
        .Q(\Counter4_reg_n_0_[4] ),
        .R(\Counter4[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter4_reg[4]_i_1 
       (.CI(\Counter4_reg[0]_i_3_n_0 ),
        .CO({\Counter4_reg[4]_i_1_n_0 ,\Counter4_reg[4]_i_1_n_1 ,\Counter4_reg[4]_i_1_n_2 ,\Counter4_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter4_reg[4]_i_1_n_4 ,\Counter4_reg[4]_i_1_n_5 ,\Counter4_reg[4]_i_1_n_6 ,\Counter4_reg[4]_i_1_n_7 }),
        .S({Counter4_reg[7:5],\Counter4_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \Counter4_reg[5] 
       (.C(clk),
        .CE(\Counter4[0]_i_2_n_0 ),
        .D(\Counter4_reg[4]_i_1_n_6 ),
        .Q(Counter4_reg[5]),
        .R(\Counter4[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter4_reg[6] 
       (.C(clk),
        .CE(\Counter4[0]_i_2_n_0 ),
        .D(\Counter4_reg[4]_i_1_n_5 ),
        .Q(Counter4_reg[6]),
        .R(\Counter4[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter4_reg[7] 
       (.C(clk),
        .CE(\Counter4[0]_i_2_n_0 ),
        .D(\Counter4_reg[4]_i_1_n_4 ),
        .Q(Counter4_reg[7]),
        .R(\Counter4[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter4_reg[8] 
       (.C(clk),
        .CE(\Counter4[0]_i_2_n_0 ),
        .D(\Counter4_reg[8]_i_1_n_7 ),
        .Q(Counter4_reg[8]),
        .R(\Counter4[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter4_reg[8]_i_1 
       (.CI(\Counter4_reg[4]_i_1_n_0 ),
        .CO({\Counter4_reg[8]_i_1_n_0 ,\Counter4_reg[8]_i_1_n_1 ,\Counter4_reg[8]_i_1_n_2 ,\Counter4_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter4_reg[8]_i_1_n_4 ,\Counter4_reg[8]_i_1_n_5 ,\Counter4_reg[8]_i_1_n_6 ,\Counter4_reg[8]_i_1_n_7 }),
        .S(Counter4_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \Counter4_reg[9] 
       (.C(clk),
        .CE(\Counter4[0]_i_2_n_0 ),
        .D(\Counter4_reg[8]_i_1_n_6 ),
        .Q(Counter4_reg[9]),
        .R(\Counter4[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBA0000000000)) 
    \IsStable[0]_i_1 
       (.I0(Counter0_reg[22]),
        .I1(\IsStable[0]_i_2_n_0 ),
        .I2(Counter0_reg[21]),
        .I3(Counter0_reg[23]),
        .I4(IsStable[0]),
        .I5(SignalIn_sync[0]),
        .O(\IsStable[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000555577F7)) 
    \IsStable[0]_i_2 
       (.I0(Counter0_reg[18]),
        .I1(\IsStable[0]_i_3_n_0 ),
        .I2(\IsStable[0]_i_4_n_0 ),
        .I3(\IsStable[0]_i_5_n_0 ),
        .I4(\IsStable[0]_i_6_n_0 ),
        .I5(\Counter0[0]_i_5_n_0 ),
        .O(\IsStable[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \IsStable[0]_i_3 
       (.I0(Counter0_reg[14]),
        .I1(Counter0_reg[15]),
        .O(\IsStable[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h007FFFFF)) 
    \IsStable[0]_i_4 
       (.I0(Counter0_reg[7]),
        .I1(Counter0_reg[9]),
        .I2(Counter0_reg[8]),
        .I3(Counter0_reg[10]),
        .I4(Counter0_reg[11]),
        .O(\IsStable[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \IsStable[0]_i_5 
       (.I0(Counter0_reg[12]),
        .I1(Counter0_reg[13]),
        .O(\IsStable[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \IsStable[0]_i_6 
       (.I0(Counter0_reg[16]),
        .I1(Counter0_reg[17]),
        .O(\IsStable[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEF0000000000)) 
    \IsStable[1]_i_1 
       (.I0(Counter1_reg[18]),
        .I1(Counter1_reg[19]),
        .I2(\IsStable[1]_i_2_n_0 ),
        .I3(\IsStable[1]_i_3_n_0 ),
        .I4(IsStable[1]),
        .I5(SignalIn_sync[1]),
        .O(\IsStable[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00011111FFFFFFFF)) 
    \IsStable[1]_i_2 
       (.I0(Counter1_reg[15]),
        .I1(Counter1_reg[16]),
        .I2(\IsStable[1]_i_4_n_0 ),
        .I3(\IsStable[1]_i_5_n_0 ),
        .I4(\IsStable[1]_i_6_n_0 ),
        .I5(Counter1_reg[17]),
        .O(\IsStable[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \IsStable[1]_i_3 
       (.I0(Counter1_reg[20]),
        .I1(Counter1_reg[22]),
        .I2(Counter1_reg[21]),
        .O(\IsStable[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \IsStable[1]_i_4 
       (.I0(Counter1_reg[5]),
        .I1(Counter1_reg[7]),
        .I2(Counter1_reg[6]),
        .O(\IsStable[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \IsStable[1]_i_5 
       (.I0(Counter1_reg[9]),
        .I1(Counter1_reg[8]),
        .I2(Counter1_reg[11]),
        .I3(Counter1_reg[10]),
        .O(\IsStable[1]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \IsStable[1]_i_6 
       (.I0(Counter1_reg[12]),
        .I1(Counter1_reg[14]),
        .I2(Counter1_reg[13]),
        .O(\IsStable[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBA0000000000)) 
    \IsStable[2]_i_1 
       (.I0(Counter2_reg[22]),
        .I1(\IsStable[2]_i_2_n_0 ),
        .I2(Counter2_reg[21]),
        .I3(Counter2_reg[23]),
        .I4(IsStable[2]),
        .I5(SignalIn_sync[2]),
        .O(\IsStable[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000555577F7)) 
    \IsStable[2]_i_2 
       (.I0(Counter2_reg[18]),
        .I1(\IsStable[2]_i_3_n_0 ),
        .I2(\IsStable[2]_i_4_n_0 ),
        .I3(\IsStable[2]_i_5_n_0 ),
        .I4(\IsStable[2]_i_6_n_0 ),
        .I5(\Counter2[0]_i_5_n_0 ),
        .O(\IsStable[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \IsStable[2]_i_3 
       (.I0(Counter2_reg[14]),
        .I1(Counter2_reg[15]),
        .O(\IsStable[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h007FFFFF)) 
    \IsStable[2]_i_4 
       (.I0(Counter2_reg[7]),
        .I1(Counter2_reg[9]),
        .I2(Counter2_reg[8]),
        .I3(Counter2_reg[10]),
        .I4(Counter2_reg[11]),
        .O(\IsStable[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \IsStable[2]_i_5 
       (.I0(Counter2_reg[12]),
        .I1(Counter2_reg[13]),
        .O(\IsStable[2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \IsStable[2]_i_6 
       (.I0(Counter2_reg[16]),
        .I1(Counter2_reg[17]),
        .O(\IsStable[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBA0000000000)) 
    \IsStable[3]_i_1 
       (.I0(Counter3_reg[22]),
        .I1(\IsStable[3]_i_2_n_0 ),
        .I2(Counter3_reg[21]),
        .I3(Counter3_reg[23]),
        .I4(IsStable[3]),
        .I5(SignalIn_sync[3]),
        .O(\IsStable[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000555577F7)) 
    \IsStable[3]_i_2 
       (.I0(Counter3_reg[18]),
        .I1(\IsStable[3]_i_3_n_0 ),
        .I2(\IsStable[3]_i_4_n_0 ),
        .I3(\IsStable[3]_i_5_n_0 ),
        .I4(\IsStable[3]_i_6_n_0 ),
        .I5(\Counter3[0]_i_5_n_0 ),
        .O(\IsStable[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \IsStable[3]_i_3 
       (.I0(Counter3_reg[14]),
        .I1(Counter3_reg[15]),
        .O(\IsStable[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h007FFFFF)) 
    \IsStable[3]_i_4 
       (.I0(Counter3_reg[7]),
        .I1(Counter3_reg[9]),
        .I2(Counter3_reg[8]),
        .I3(Counter3_reg[10]),
        .I4(Counter3_reg[11]),
        .O(\IsStable[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \IsStable[3]_i_5 
       (.I0(Counter3_reg[12]),
        .I1(Counter3_reg[13]),
        .O(\IsStable[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \IsStable[3]_i_6 
       (.I0(Counter3_reg[16]),
        .I1(Counter3_reg[17]),
        .O(\IsStable[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBA0000000000)) 
    \IsStable[4]_i_1 
       (.I0(Counter4_reg[21]),
        .I1(\IsStable[4]_i_2_n_0 ),
        .I2(Counter4_reg[20]),
        .I3(Counter4_reg[22]),
        .I4(IsStable[4]),
        .I5(SignalIn_sync[4]),
        .O(\IsStable[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FF7F)) 
    \IsStable[4]_i_2 
       (.I0(\IsStable[4]_i_3_n_0 ),
        .I1(Counter4_reg[10]),
        .I2(Counter4_reg[11]),
        .I3(\IsStable[4]_i_4_n_0 ),
        .I4(Counter4_reg[12]),
        .I5(\IsStable[4]_i_5_n_0 ),
        .O(\IsStable[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \IsStable[4]_i_3 
       (.I0(Counter4_reg[13]),
        .I1(Counter4_reg[16]),
        .I2(Counter4_reg[17]),
        .I3(Counter4_reg[14]),
        .I4(Counter4_reg[15]),
        .O(\IsStable[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00010101)) 
    \IsStable[4]_i_4 
       (.I0(Counter4_reg[8]),
        .I1(Counter4_reg[9]),
        .I2(Counter4_reg[7]),
        .I3(Counter4_reg[6]),
        .I4(Counter4_reg[5]),
        .O(\IsStable[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \IsStable[4]_i_5 
       (.I0(Counter4_reg[18]),
        .I1(Counter4_reg[19]),
        .O(\IsStable[4]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \IsStable_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\IsStable[0]_i_1_n_0 ),
        .Q(IsStable[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IsStable_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\IsStable[1]_i_1_n_0 ),
        .Q(IsStable[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IsStable_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\IsStable[2]_i_1_n_0 ),
        .Q(IsStable[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IsStable_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\IsStable[3]_i_1_n_0 ),
        .Q(IsStable[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IsStable_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\IsStable[4]_i_1_n_0 ),
        .Q(IsStable[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SignalIn_sync_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(SignalIn[0]),
        .Q(SignalIn_sync[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SignalIn_sync_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(SignalIn[1]),
        .Q(SignalIn_sync[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SignalIn_sync_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(SignalIn[2]),
        .Q(SignalIn_sync[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SignalIn_sync_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(SignalIn[3]),
        .Q(SignalIn_sync[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SignalIn_sync_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(SignalIn[4]),
        .Q(SignalIn_sync[4]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \TempIn[0]_i_1 
       (.I0(SignalIn_sync[0]),
        .I1(IsStable[0]),
        .I2(SignalOut[0]),
        .O(\TempIn[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \TempIn[1]_i_1 
       (.I0(SignalIn_sync[1]),
        .I1(IsStable[1]),
        .I2(SignalOut[1]),
        .O(\TempIn[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \TempIn[2]_i_1 
       (.I0(SignalIn_sync[2]),
        .I1(IsStable[2]),
        .I2(SignalOut[2]),
        .O(\TempIn[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \TempIn[3]_i_1 
       (.I0(SignalIn_sync[3]),
        .I1(IsStable[3]),
        .I2(SignalOut[3]),
        .O(\TempIn[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \TempIn[4]_i_1 
       (.I0(SignalIn_sync[4]),
        .I1(IsStable[4]),
        .I2(SignalOut[4]),
        .O(\TempIn[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TempIn_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\TempIn[0]_i_1_n_0 ),
        .Q(SignalOut[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TempIn_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\TempIn[1]_i_1_n_0 ),
        .Q(SignalOut[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TempIn_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\TempIn[2]_i_1_n_0 ),
        .Q(SignalOut[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TempIn_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\TempIn[3]_i_1_n_0 ),
        .Q(SignalOut[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TempIn_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\TempIn[4]_i_1_n_0 ),
        .Q(SignalOut[4]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
