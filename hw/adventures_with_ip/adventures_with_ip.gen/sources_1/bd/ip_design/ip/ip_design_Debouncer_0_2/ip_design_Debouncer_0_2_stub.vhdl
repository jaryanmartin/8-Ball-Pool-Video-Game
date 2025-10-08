-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Mar 23 19:02:53 2025
-- Host        : ensc-pit-w26 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               u:/ENSC452/FinalStage/adventures_with_ip/adventures_with_ip.gen/sources_1/bd/ip_design/ip/ip_design_Debouncer_0_2/ip_design_Debouncer_0_2_stub.vhdl
-- Design      : ip_design_Debouncer_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ip_design_Debouncer_0_2 is
  Port ( 
    clk : in STD_LOGIC;
    SignalIn : in STD_LOGIC_VECTOR ( 4 downto 0 );
    SignalOut : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );

end ip_design_Debouncer_0_2;

architecture stub of ip_design_Debouncer_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,SignalIn[4:0],SignalOut[4:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Debouncer,Vivado 2020.2";
begin
end;
