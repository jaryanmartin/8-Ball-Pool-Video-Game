-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Mar 23 19:02:52 2025
-- Host        : ensc-pit-w26 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ip_design_Debouncer_0_2_sim_netlist.vhdl
-- Design      : ip_design_Debouncer_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Debouncer is
  port (
    SignalOut : out STD_LOGIC_VECTOR ( 4 downto 0 );
    SignalIn : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Debouncer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Debouncer is
  signal \Counter0[0]_i_2_n_0\ : STD_LOGIC;
  signal \Counter0[0]_i_4_n_0\ : STD_LOGIC;
  signal \Counter0[0]_i_5_n_0\ : STD_LOGIC;
  signal \Counter0[0]_i_6_n_0\ : STD_LOGIC;
  signal Counter0_reg : STD_LOGIC_VECTOR ( 23 downto 7 );
  signal \Counter0_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \Counter0_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \Counter0_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \Counter0_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \Counter0_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \Counter0_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \Counter0_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \Counter0_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \Counter0_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \Counter0_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \Counter0_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \Counter0_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \Counter0_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \Counter0_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \Counter0_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \Counter0_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \Counter0_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \Counter0_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \Counter0_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \Counter0_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \Counter0_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \Counter0_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \Counter0_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \Counter0_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \Counter0_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \Counter0_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \Counter0_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \Counter0_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \Counter0_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \Counter0_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \Counter0_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \Counter0_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \Counter0_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \Counter0_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \Counter0_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \Counter0_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \Counter0_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \Counter0_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \Counter0_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \Counter0_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \Counter0_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \Counter0_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \Counter0_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \Counter0_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \Counter0_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \Counter0_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \Counter0_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \Counter0_reg_n_0_[0]\ : STD_LOGIC;
  signal \Counter0_reg_n_0_[1]\ : STD_LOGIC;
  signal \Counter0_reg_n_0_[2]\ : STD_LOGIC;
  signal \Counter0_reg_n_0_[3]\ : STD_LOGIC;
  signal \Counter0_reg_n_0_[4]\ : STD_LOGIC;
  signal \Counter0_reg_n_0_[5]\ : STD_LOGIC;
  signal \Counter0_reg_n_0_[6]\ : STD_LOGIC;
  signal \Counter1[0]_i_1_n_0\ : STD_LOGIC;
  signal \Counter1[0]_i_2_n_0\ : STD_LOGIC;
  signal \Counter1[0]_i_4_n_0\ : STD_LOGIC;
  signal Counter1_reg : STD_LOGIC_VECTOR ( 22 downto 5 );
  signal \Counter1_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \Counter1_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \Counter1_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \Counter1_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \Counter1_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \Counter1_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \Counter1_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \Counter1_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \Counter1_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \Counter1_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \Counter1_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \Counter1_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \Counter1_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \Counter1_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \Counter1_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \Counter1_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \Counter1_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \Counter1_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \Counter1_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \Counter1_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \Counter1_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \Counter1_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \Counter1_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \Counter1_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \Counter1_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \Counter1_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \Counter1_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \Counter1_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \Counter1_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \Counter1_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \Counter1_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \Counter1_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \Counter1_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \Counter1_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \Counter1_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \Counter1_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \Counter1_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \Counter1_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \Counter1_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \Counter1_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \Counter1_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \Counter1_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \Counter1_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \Counter1_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \Counter1_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \Counter1_reg_n_0_[0]\ : STD_LOGIC;
  signal \Counter1_reg_n_0_[1]\ : STD_LOGIC;
  signal \Counter1_reg_n_0_[2]\ : STD_LOGIC;
  signal \Counter1_reg_n_0_[3]\ : STD_LOGIC;
  signal \Counter1_reg_n_0_[4]\ : STD_LOGIC;
  signal \Counter2[0]_i_1_n_0\ : STD_LOGIC;
  signal \Counter2[0]_i_2_n_0\ : STD_LOGIC;
  signal \Counter2[0]_i_4_n_0\ : STD_LOGIC;
  signal \Counter2[0]_i_5_n_0\ : STD_LOGIC;
  signal \Counter2[0]_i_6_n_0\ : STD_LOGIC;
  signal Counter2_reg : STD_LOGIC_VECTOR ( 23 downto 7 );
  signal \Counter2_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \Counter2_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \Counter2_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \Counter2_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \Counter2_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \Counter2_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \Counter2_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \Counter2_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \Counter2_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \Counter2_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \Counter2_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \Counter2_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \Counter2_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \Counter2_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \Counter2_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \Counter2_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \Counter2_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \Counter2_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \Counter2_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \Counter2_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \Counter2_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \Counter2_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \Counter2_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \Counter2_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \Counter2_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \Counter2_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \Counter2_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \Counter2_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \Counter2_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \Counter2_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \Counter2_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \Counter2_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \Counter2_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \Counter2_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \Counter2_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \Counter2_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \Counter2_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \Counter2_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \Counter2_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \Counter2_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \Counter2_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \Counter2_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \Counter2_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \Counter2_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \Counter2_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \Counter2_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \Counter2_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \Counter2_reg_n_0_[0]\ : STD_LOGIC;
  signal \Counter2_reg_n_0_[1]\ : STD_LOGIC;
  signal \Counter2_reg_n_0_[2]\ : STD_LOGIC;
  signal \Counter2_reg_n_0_[3]\ : STD_LOGIC;
  signal \Counter2_reg_n_0_[4]\ : STD_LOGIC;
  signal \Counter2_reg_n_0_[5]\ : STD_LOGIC;
  signal \Counter2_reg_n_0_[6]\ : STD_LOGIC;
  signal \Counter3[0]_i_1_n_0\ : STD_LOGIC;
  signal \Counter3[0]_i_2_n_0\ : STD_LOGIC;
  signal \Counter3[0]_i_4_n_0\ : STD_LOGIC;
  signal \Counter3[0]_i_5_n_0\ : STD_LOGIC;
  signal \Counter3[0]_i_6_n_0\ : STD_LOGIC;
  signal Counter3_reg : STD_LOGIC_VECTOR ( 23 downto 7 );
  signal \Counter3_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \Counter3_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \Counter3_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \Counter3_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \Counter3_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \Counter3_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \Counter3_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \Counter3_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \Counter3_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \Counter3_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \Counter3_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \Counter3_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \Counter3_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \Counter3_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \Counter3_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \Counter3_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \Counter3_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \Counter3_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \Counter3_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \Counter3_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \Counter3_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \Counter3_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \Counter3_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \Counter3_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \Counter3_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \Counter3_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \Counter3_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \Counter3_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \Counter3_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \Counter3_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \Counter3_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \Counter3_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \Counter3_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \Counter3_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \Counter3_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \Counter3_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \Counter3_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \Counter3_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \Counter3_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \Counter3_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \Counter3_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \Counter3_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \Counter3_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \Counter3_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \Counter3_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \Counter3_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \Counter3_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \Counter3_reg_n_0_[0]\ : STD_LOGIC;
  signal \Counter3_reg_n_0_[1]\ : STD_LOGIC;
  signal \Counter3_reg_n_0_[2]\ : STD_LOGIC;
  signal \Counter3_reg_n_0_[3]\ : STD_LOGIC;
  signal \Counter3_reg_n_0_[4]\ : STD_LOGIC;
  signal \Counter3_reg_n_0_[5]\ : STD_LOGIC;
  signal \Counter3_reg_n_0_[6]\ : STD_LOGIC;
  signal \Counter4[0]_i_1_n_0\ : STD_LOGIC;
  signal \Counter4[0]_i_2_n_0\ : STD_LOGIC;
  signal \Counter4[0]_i_4_n_0\ : STD_LOGIC;
  signal Counter4_reg : STD_LOGIC_VECTOR ( 22 downto 5 );
  signal \Counter4_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \Counter4_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \Counter4_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \Counter4_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \Counter4_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \Counter4_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \Counter4_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \Counter4_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \Counter4_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \Counter4_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \Counter4_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \Counter4_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \Counter4_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \Counter4_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \Counter4_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \Counter4_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \Counter4_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \Counter4_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \Counter4_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \Counter4_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \Counter4_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \Counter4_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \Counter4_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \Counter4_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \Counter4_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \Counter4_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \Counter4_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \Counter4_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \Counter4_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \Counter4_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \Counter4_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \Counter4_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \Counter4_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \Counter4_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \Counter4_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \Counter4_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \Counter4_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \Counter4_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \Counter4_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \Counter4_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \Counter4_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \Counter4_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \Counter4_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \Counter4_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \Counter4_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \Counter4_reg_n_0_[0]\ : STD_LOGIC;
  signal \Counter4_reg_n_0_[1]\ : STD_LOGIC;
  signal \Counter4_reg_n_0_[2]\ : STD_LOGIC;
  signal \Counter4_reg_n_0_[3]\ : STD_LOGIC;
  signal \Counter4_reg_n_0_[4]\ : STD_LOGIC;
  signal IsStable : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \IsStable[0]_i_1_n_0\ : STD_LOGIC;
  signal \IsStable[0]_i_2_n_0\ : STD_LOGIC;
  signal \IsStable[0]_i_3_n_0\ : STD_LOGIC;
  signal \IsStable[0]_i_4_n_0\ : STD_LOGIC;
  signal \IsStable[0]_i_5_n_0\ : STD_LOGIC;
  signal \IsStable[0]_i_6_n_0\ : STD_LOGIC;
  signal \IsStable[1]_i_1_n_0\ : STD_LOGIC;
  signal \IsStable[1]_i_2_n_0\ : STD_LOGIC;
  signal \IsStable[1]_i_3_n_0\ : STD_LOGIC;
  signal \IsStable[1]_i_4_n_0\ : STD_LOGIC;
  signal \IsStable[1]_i_5_n_0\ : STD_LOGIC;
  signal \IsStable[1]_i_6_n_0\ : STD_LOGIC;
  signal \IsStable[2]_i_1_n_0\ : STD_LOGIC;
  signal \IsStable[2]_i_2_n_0\ : STD_LOGIC;
  signal \IsStable[2]_i_3_n_0\ : STD_LOGIC;
  signal \IsStable[2]_i_4_n_0\ : STD_LOGIC;
  signal \IsStable[2]_i_5_n_0\ : STD_LOGIC;
  signal \IsStable[2]_i_6_n_0\ : STD_LOGIC;
  signal \IsStable[3]_i_1_n_0\ : STD_LOGIC;
  signal \IsStable[3]_i_2_n_0\ : STD_LOGIC;
  signal \IsStable[3]_i_3_n_0\ : STD_LOGIC;
  signal \IsStable[3]_i_4_n_0\ : STD_LOGIC;
  signal \IsStable[3]_i_5_n_0\ : STD_LOGIC;
  signal \IsStable[3]_i_6_n_0\ : STD_LOGIC;
  signal \IsStable[4]_i_1_n_0\ : STD_LOGIC;
  signal \IsStable[4]_i_2_n_0\ : STD_LOGIC;
  signal \IsStable[4]_i_3_n_0\ : STD_LOGIC;
  signal \IsStable[4]_i_4_n_0\ : STD_LOGIC;
  signal \IsStable[4]_i_5_n_0\ : STD_LOGIC;
  signal SignalIn_sync : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^signalout\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \TempIn[0]_i_1_n_0\ : STD_LOGIC;
  signal \TempIn[1]_i_1_n_0\ : STD_LOGIC;
  signal \TempIn[2]_i_1_n_0\ : STD_LOGIC;
  signal \TempIn[3]_i_1_n_0\ : STD_LOGIC;
  signal \TempIn[4]_i_1_n_0\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \NLW_Counter0_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Counter1_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Counter1_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Counter2_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Counter3_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Counter4_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Counter4_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \Counter0_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter0_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter0_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter0_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter0_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter0_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter1_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter1_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter1_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter1_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter1_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter1_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter2_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter2_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter2_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter2_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter2_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter2_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter3_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter3_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter3_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter3_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter3_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter3_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter4_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter4_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter4_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter4_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter4_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \Counter4_reg[8]_i_1\ : label is 11;
begin
  SignalOut(4 downto 0) <= \^signalout\(4 downto 0);
\Counter0[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SignalIn_sync(0),
      O => clear
    );
\Counter0[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000555577F7"
    )
        port map (
      I0 => Counter0_reg(23),
      I1 => Counter0_reg(21),
      I2 => \Counter0[0]_i_4_n_0\,
      I3 => \Counter0[0]_i_5_n_0\,
      I4 => Counter0_reg(22),
      I5 => IsStable(0),
      O => \Counter0[0]_i_2_n_0\
    );
\Counter0[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01005555FFFFFFFF"
    )
        port map (
      I0 => \IsStable[0]_i_6_n_0\,
      I1 => Counter0_reg(12),
      I2 => Counter0_reg(13),
      I3 => \IsStable[0]_i_4_n_0\,
      I4 => \IsStable[0]_i_3_n_0\,
      I5 => Counter0_reg(18),
      O => \Counter0[0]_i_4_n_0\
    );
\Counter0[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Counter0_reg(19),
      I1 => Counter0_reg(20),
      O => \Counter0[0]_i_5_n_0\
    );
\Counter0[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Counter0_reg_n_0_[0]\,
      O => \Counter0[0]_i_6_n_0\
    );
\Counter0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter0[0]_i_2_n_0\,
      D => \Counter0_reg[0]_i_3_n_7\,
      Q => \Counter0_reg_n_0_[0]\,
      R => clear
    );
\Counter0_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Counter0_reg[0]_i_3_n_0\,
      CO(2) => \Counter0_reg[0]_i_3_n_1\,
      CO(1) => \Counter0_reg[0]_i_3_n_2\,
      CO(0) => \Counter0_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \Counter0_reg[0]_i_3_n_4\,
      O(2) => \Counter0_reg[0]_i_3_n_5\,
      O(1) => \Counter0_reg[0]_i_3_n_6\,
      O(0) => \Counter0_reg[0]_i_3_n_7\,
      S(3) => \Counter0_reg_n_0_[3]\,
      S(2) => \Counter0_reg_n_0_[2]\,
      S(1) => \Counter0_reg_n_0_[1]\,
      S(0) => \Counter0[0]_i_6_n_0\
    );
\Counter0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter0[0]_i_2_n_0\,
      D => \Counter0_reg[8]_i_1_n_5\,
      Q => Counter0_reg(10),
      R => clear
    );
\Counter0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter0[0]_i_2_n_0\,
      D => \Counter0_reg[8]_i_1_n_4\,
      Q => Counter0_reg(11),
      R => clear
    );
\Counter0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter0[0]_i_2_n_0\,
      D => \Counter0_reg[12]_i_1_n_7\,
      Q => Counter0_reg(12),
      R => clear
    );
\Counter0_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter0_reg[8]_i_1_n_0\,
      CO(3) => \Counter0_reg[12]_i_1_n_0\,
      CO(2) => \Counter0_reg[12]_i_1_n_1\,
      CO(1) => \Counter0_reg[12]_i_1_n_2\,
      CO(0) => \Counter0_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter0_reg[12]_i_1_n_4\,
      O(2) => \Counter0_reg[12]_i_1_n_5\,
      O(1) => \Counter0_reg[12]_i_1_n_6\,
      O(0) => \Counter0_reg[12]_i_1_n_7\,
      S(3 downto 0) => Counter0_reg(15 downto 12)
    );
\Counter0_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter0[0]_i_2_n_0\,
      D => \Counter0_reg[12]_i_1_n_6\,
      Q => Counter0_reg(13),
      R => clear
    );
\Counter0_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter0[0]_i_2_n_0\,
      D => \Counter0_reg[12]_i_1_n_5\,
      Q => Counter0_reg(14),
      R => clear
    );
\Counter0_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter0[0]_i_2_n_0\,
      D => \Counter0_reg[12]_i_1_n_4\,
      Q => Counter0_reg(15),
      R => clear
    );
\Counter0_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter0[0]_i_2_n_0\,
      D => \Counter0_reg[16]_i_1_n_7\,
      Q => Counter0_reg(16),
      R => clear
    );
\Counter0_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter0_reg[12]_i_1_n_0\,
      CO(3) => \Counter0_reg[16]_i_1_n_0\,
      CO(2) => \Counter0_reg[16]_i_1_n_1\,
      CO(1) => \Counter0_reg[16]_i_1_n_2\,
      CO(0) => \Counter0_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter0_reg[16]_i_1_n_4\,
      O(2) => \Counter0_reg[16]_i_1_n_5\,
      O(1) => \Counter0_reg[16]_i_1_n_6\,
      O(0) => \Counter0_reg[16]_i_1_n_7\,
      S(3 downto 0) => Counter0_reg(19 downto 16)
    );
\Counter0_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter0[0]_i_2_n_0\,
      D => \Counter0_reg[16]_i_1_n_6\,
      Q => Counter0_reg(17),
      R => clear
    );
\Counter0_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter0[0]_i_2_n_0\,
      D => \Counter0_reg[16]_i_1_n_5\,
      Q => Counter0_reg(18),
      R => clear
    );
\Counter0_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter0[0]_i_2_n_0\,
      D => \Counter0_reg[16]_i_1_n_4\,
      Q => Counter0_reg(19),
      R => clear
    );
\Counter0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter0[0]_i_2_n_0\,
      D => \Counter0_reg[0]_i_3_n_6\,
      Q => \Counter0_reg_n_0_[1]\,
      R => clear
    );
\Counter0_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter0[0]_i_2_n_0\,
      D => \Counter0_reg[20]_i_1_n_7\,
      Q => Counter0_reg(20),
      R => clear
    );
\Counter0_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter0_reg[16]_i_1_n_0\,
      CO(3) => \NLW_Counter0_reg[20]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \Counter0_reg[20]_i_1_n_1\,
      CO(1) => \Counter0_reg[20]_i_1_n_2\,
      CO(0) => \Counter0_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter0_reg[20]_i_1_n_4\,
      O(2) => \Counter0_reg[20]_i_1_n_5\,
      O(1) => \Counter0_reg[20]_i_1_n_6\,
      O(0) => \Counter0_reg[20]_i_1_n_7\,
      S(3 downto 0) => Counter0_reg(23 downto 20)
    );
\Counter0_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter0[0]_i_2_n_0\,
      D => \Counter0_reg[20]_i_1_n_6\,
      Q => Counter0_reg(21),
      R => clear
    );
\Counter0_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter0[0]_i_2_n_0\,
      D => \Counter0_reg[20]_i_1_n_5\,
      Q => Counter0_reg(22),
      R => clear
    );
\Counter0_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter0[0]_i_2_n_0\,
      D => \Counter0_reg[20]_i_1_n_4\,
      Q => Counter0_reg(23),
      R => clear
    );
\Counter0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter0[0]_i_2_n_0\,
      D => \Counter0_reg[0]_i_3_n_5\,
      Q => \Counter0_reg_n_0_[2]\,
      R => clear
    );
\Counter0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter0[0]_i_2_n_0\,
      D => \Counter0_reg[0]_i_3_n_4\,
      Q => \Counter0_reg_n_0_[3]\,
      R => clear
    );
\Counter0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter0[0]_i_2_n_0\,
      D => \Counter0_reg[4]_i_1_n_7\,
      Q => \Counter0_reg_n_0_[4]\,
      R => clear
    );
\Counter0_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter0_reg[0]_i_3_n_0\,
      CO(3) => \Counter0_reg[4]_i_1_n_0\,
      CO(2) => \Counter0_reg[4]_i_1_n_1\,
      CO(1) => \Counter0_reg[4]_i_1_n_2\,
      CO(0) => \Counter0_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter0_reg[4]_i_1_n_4\,
      O(2) => \Counter0_reg[4]_i_1_n_5\,
      O(1) => \Counter0_reg[4]_i_1_n_6\,
      O(0) => \Counter0_reg[4]_i_1_n_7\,
      S(3) => Counter0_reg(7),
      S(2) => \Counter0_reg_n_0_[6]\,
      S(1) => \Counter0_reg_n_0_[5]\,
      S(0) => \Counter0_reg_n_0_[4]\
    );
\Counter0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter0[0]_i_2_n_0\,
      D => \Counter0_reg[4]_i_1_n_6\,
      Q => \Counter0_reg_n_0_[5]\,
      R => clear
    );
\Counter0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter0[0]_i_2_n_0\,
      D => \Counter0_reg[4]_i_1_n_5\,
      Q => \Counter0_reg_n_0_[6]\,
      R => clear
    );
\Counter0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter0[0]_i_2_n_0\,
      D => \Counter0_reg[4]_i_1_n_4\,
      Q => Counter0_reg(7),
      R => clear
    );
\Counter0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter0[0]_i_2_n_0\,
      D => \Counter0_reg[8]_i_1_n_7\,
      Q => Counter0_reg(8),
      R => clear
    );
\Counter0_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter0_reg[4]_i_1_n_0\,
      CO(3) => \Counter0_reg[8]_i_1_n_0\,
      CO(2) => \Counter0_reg[8]_i_1_n_1\,
      CO(1) => \Counter0_reg[8]_i_1_n_2\,
      CO(0) => \Counter0_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter0_reg[8]_i_1_n_4\,
      O(2) => \Counter0_reg[8]_i_1_n_5\,
      O(1) => \Counter0_reg[8]_i_1_n_6\,
      O(0) => \Counter0_reg[8]_i_1_n_7\,
      S(3 downto 0) => Counter0_reg(11 downto 8)
    );
\Counter0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter0[0]_i_2_n_0\,
      D => \Counter0_reg[8]_i_1_n_6\,
      Q => Counter0_reg(9),
      R => clear
    );
\Counter1[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SignalIn_sync(1),
      O => \Counter1[0]_i_1_n_0\
    );
\Counter1[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000555D"
    )
        port map (
      I0 => \IsStable[1]_i_3_n_0\,
      I1 => \IsStable[1]_i_2_n_0\,
      I2 => Counter1_reg(19),
      I3 => Counter1_reg(18),
      I4 => IsStable(1),
      O => \Counter1[0]_i_2_n_0\
    );
\Counter1[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Counter1_reg_n_0_[0]\,
      O => \Counter1[0]_i_4_n_0\
    );
\Counter1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter1[0]_i_2_n_0\,
      D => \Counter1_reg[0]_i_3_n_7\,
      Q => \Counter1_reg_n_0_[0]\,
      R => \Counter1[0]_i_1_n_0\
    );
\Counter1_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Counter1_reg[0]_i_3_n_0\,
      CO(2) => \Counter1_reg[0]_i_3_n_1\,
      CO(1) => \Counter1_reg[0]_i_3_n_2\,
      CO(0) => \Counter1_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \Counter1_reg[0]_i_3_n_4\,
      O(2) => \Counter1_reg[0]_i_3_n_5\,
      O(1) => \Counter1_reg[0]_i_3_n_6\,
      O(0) => \Counter1_reg[0]_i_3_n_7\,
      S(3) => \Counter1_reg_n_0_[3]\,
      S(2) => \Counter1_reg_n_0_[2]\,
      S(1) => \Counter1_reg_n_0_[1]\,
      S(0) => \Counter1[0]_i_4_n_0\
    );
\Counter1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter1[0]_i_2_n_0\,
      D => \Counter1_reg[8]_i_1_n_5\,
      Q => Counter1_reg(10),
      R => \Counter1[0]_i_1_n_0\
    );
\Counter1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter1[0]_i_2_n_0\,
      D => \Counter1_reg[8]_i_1_n_4\,
      Q => Counter1_reg(11),
      R => \Counter1[0]_i_1_n_0\
    );
\Counter1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter1[0]_i_2_n_0\,
      D => \Counter1_reg[12]_i_1_n_7\,
      Q => Counter1_reg(12),
      R => \Counter1[0]_i_1_n_0\
    );
\Counter1_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter1_reg[8]_i_1_n_0\,
      CO(3) => \Counter1_reg[12]_i_1_n_0\,
      CO(2) => \Counter1_reg[12]_i_1_n_1\,
      CO(1) => \Counter1_reg[12]_i_1_n_2\,
      CO(0) => \Counter1_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter1_reg[12]_i_1_n_4\,
      O(2) => \Counter1_reg[12]_i_1_n_5\,
      O(1) => \Counter1_reg[12]_i_1_n_6\,
      O(0) => \Counter1_reg[12]_i_1_n_7\,
      S(3 downto 0) => Counter1_reg(15 downto 12)
    );
\Counter1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter1[0]_i_2_n_0\,
      D => \Counter1_reg[12]_i_1_n_6\,
      Q => Counter1_reg(13),
      R => \Counter1[0]_i_1_n_0\
    );
\Counter1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter1[0]_i_2_n_0\,
      D => \Counter1_reg[12]_i_1_n_5\,
      Q => Counter1_reg(14),
      R => \Counter1[0]_i_1_n_0\
    );
\Counter1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter1[0]_i_2_n_0\,
      D => \Counter1_reg[12]_i_1_n_4\,
      Q => Counter1_reg(15),
      R => \Counter1[0]_i_1_n_0\
    );
\Counter1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter1[0]_i_2_n_0\,
      D => \Counter1_reg[16]_i_1_n_7\,
      Q => Counter1_reg(16),
      R => \Counter1[0]_i_1_n_0\
    );
\Counter1_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter1_reg[12]_i_1_n_0\,
      CO(3) => \Counter1_reg[16]_i_1_n_0\,
      CO(2) => \Counter1_reg[16]_i_1_n_1\,
      CO(1) => \Counter1_reg[16]_i_1_n_2\,
      CO(0) => \Counter1_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter1_reg[16]_i_1_n_4\,
      O(2) => \Counter1_reg[16]_i_1_n_5\,
      O(1) => \Counter1_reg[16]_i_1_n_6\,
      O(0) => \Counter1_reg[16]_i_1_n_7\,
      S(3 downto 0) => Counter1_reg(19 downto 16)
    );
\Counter1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter1[0]_i_2_n_0\,
      D => \Counter1_reg[16]_i_1_n_6\,
      Q => Counter1_reg(17),
      R => \Counter1[0]_i_1_n_0\
    );
\Counter1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter1[0]_i_2_n_0\,
      D => \Counter1_reg[16]_i_1_n_5\,
      Q => Counter1_reg(18),
      R => \Counter1[0]_i_1_n_0\
    );
\Counter1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter1[0]_i_2_n_0\,
      D => \Counter1_reg[16]_i_1_n_4\,
      Q => Counter1_reg(19),
      R => \Counter1[0]_i_1_n_0\
    );
\Counter1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter1[0]_i_2_n_0\,
      D => \Counter1_reg[0]_i_3_n_6\,
      Q => \Counter1_reg_n_0_[1]\,
      R => \Counter1[0]_i_1_n_0\
    );
\Counter1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter1[0]_i_2_n_0\,
      D => \Counter1_reg[20]_i_1_n_7\,
      Q => Counter1_reg(20),
      R => \Counter1[0]_i_1_n_0\
    );
\Counter1_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter1_reg[16]_i_1_n_0\,
      CO(3 downto 2) => \NLW_Counter1_reg[20]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Counter1_reg[20]_i_1_n_2\,
      CO(0) => \Counter1_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_Counter1_reg[20]_i_1_O_UNCONNECTED\(3),
      O(2) => \Counter1_reg[20]_i_1_n_5\,
      O(1) => \Counter1_reg[20]_i_1_n_6\,
      O(0) => \Counter1_reg[20]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => Counter1_reg(22 downto 20)
    );
\Counter1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter1[0]_i_2_n_0\,
      D => \Counter1_reg[20]_i_1_n_6\,
      Q => Counter1_reg(21),
      R => \Counter1[0]_i_1_n_0\
    );
\Counter1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter1[0]_i_2_n_0\,
      D => \Counter1_reg[20]_i_1_n_5\,
      Q => Counter1_reg(22),
      R => \Counter1[0]_i_1_n_0\
    );
\Counter1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter1[0]_i_2_n_0\,
      D => \Counter1_reg[0]_i_3_n_5\,
      Q => \Counter1_reg_n_0_[2]\,
      R => \Counter1[0]_i_1_n_0\
    );
\Counter1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter1[0]_i_2_n_0\,
      D => \Counter1_reg[0]_i_3_n_4\,
      Q => \Counter1_reg_n_0_[3]\,
      R => \Counter1[0]_i_1_n_0\
    );
\Counter1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter1[0]_i_2_n_0\,
      D => \Counter1_reg[4]_i_1_n_7\,
      Q => \Counter1_reg_n_0_[4]\,
      R => \Counter1[0]_i_1_n_0\
    );
\Counter1_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter1_reg[0]_i_3_n_0\,
      CO(3) => \Counter1_reg[4]_i_1_n_0\,
      CO(2) => \Counter1_reg[4]_i_1_n_1\,
      CO(1) => \Counter1_reg[4]_i_1_n_2\,
      CO(0) => \Counter1_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter1_reg[4]_i_1_n_4\,
      O(2) => \Counter1_reg[4]_i_1_n_5\,
      O(1) => \Counter1_reg[4]_i_1_n_6\,
      O(0) => \Counter1_reg[4]_i_1_n_7\,
      S(3 downto 1) => Counter1_reg(7 downto 5),
      S(0) => \Counter1_reg_n_0_[4]\
    );
\Counter1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter1[0]_i_2_n_0\,
      D => \Counter1_reg[4]_i_1_n_6\,
      Q => Counter1_reg(5),
      R => \Counter1[0]_i_1_n_0\
    );
\Counter1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter1[0]_i_2_n_0\,
      D => \Counter1_reg[4]_i_1_n_5\,
      Q => Counter1_reg(6),
      R => \Counter1[0]_i_1_n_0\
    );
\Counter1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter1[0]_i_2_n_0\,
      D => \Counter1_reg[4]_i_1_n_4\,
      Q => Counter1_reg(7),
      R => \Counter1[0]_i_1_n_0\
    );
\Counter1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter1[0]_i_2_n_0\,
      D => \Counter1_reg[8]_i_1_n_7\,
      Q => Counter1_reg(8),
      R => \Counter1[0]_i_1_n_0\
    );
\Counter1_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter1_reg[4]_i_1_n_0\,
      CO(3) => \Counter1_reg[8]_i_1_n_0\,
      CO(2) => \Counter1_reg[8]_i_1_n_1\,
      CO(1) => \Counter1_reg[8]_i_1_n_2\,
      CO(0) => \Counter1_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter1_reg[8]_i_1_n_4\,
      O(2) => \Counter1_reg[8]_i_1_n_5\,
      O(1) => \Counter1_reg[8]_i_1_n_6\,
      O(0) => \Counter1_reg[8]_i_1_n_7\,
      S(3 downto 0) => Counter1_reg(11 downto 8)
    );
\Counter1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter1[0]_i_2_n_0\,
      D => \Counter1_reg[8]_i_1_n_6\,
      Q => Counter1_reg(9),
      R => \Counter1[0]_i_1_n_0\
    );
\Counter2[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SignalIn_sync(2),
      O => \Counter2[0]_i_1_n_0\
    );
\Counter2[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000555577F7"
    )
        port map (
      I0 => Counter2_reg(23),
      I1 => Counter2_reg(21),
      I2 => \Counter2[0]_i_4_n_0\,
      I3 => \Counter2[0]_i_5_n_0\,
      I4 => Counter2_reg(22),
      I5 => IsStable(2),
      O => \Counter2[0]_i_2_n_0\
    );
\Counter2[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01005555FFFFFFFF"
    )
        port map (
      I0 => \IsStable[2]_i_6_n_0\,
      I1 => Counter2_reg(12),
      I2 => Counter2_reg(13),
      I3 => \IsStable[2]_i_4_n_0\,
      I4 => \IsStable[2]_i_3_n_0\,
      I5 => Counter2_reg(18),
      O => \Counter2[0]_i_4_n_0\
    );
\Counter2[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Counter2_reg(19),
      I1 => Counter2_reg(20),
      O => \Counter2[0]_i_5_n_0\
    );
\Counter2[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Counter2_reg_n_0_[0]\,
      O => \Counter2[0]_i_6_n_0\
    );
\Counter2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter2[0]_i_2_n_0\,
      D => \Counter2_reg[0]_i_3_n_7\,
      Q => \Counter2_reg_n_0_[0]\,
      R => \Counter2[0]_i_1_n_0\
    );
\Counter2_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Counter2_reg[0]_i_3_n_0\,
      CO(2) => \Counter2_reg[0]_i_3_n_1\,
      CO(1) => \Counter2_reg[0]_i_3_n_2\,
      CO(0) => \Counter2_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \Counter2_reg[0]_i_3_n_4\,
      O(2) => \Counter2_reg[0]_i_3_n_5\,
      O(1) => \Counter2_reg[0]_i_3_n_6\,
      O(0) => \Counter2_reg[0]_i_3_n_7\,
      S(3) => \Counter2_reg_n_0_[3]\,
      S(2) => \Counter2_reg_n_0_[2]\,
      S(1) => \Counter2_reg_n_0_[1]\,
      S(0) => \Counter2[0]_i_6_n_0\
    );
\Counter2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter2[0]_i_2_n_0\,
      D => \Counter2_reg[8]_i_1_n_5\,
      Q => Counter2_reg(10),
      R => \Counter2[0]_i_1_n_0\
    );
\Counter2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter2[0]_i_2_n_0\,
      D => \Counter2_reg[8]_i_1_n_4\,
      Q => Counter2_reg(11),
      R => \Counter2[0]_i_1_n_0\
    );
\Counter2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter2[0]_i_2_n_0\,
      D => \Counter2_reg[12]_i_1_n_7\,
      Q => Counter2_reg(12),
      R => \Counter2[0]_i_1_n_0\
    );
\Counter2_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter2_reg[8]_i_1_n_0\,
      CO(3) => \Counter2_reg[12]_i_1_n_0\,
      CO(2) => \Counter2_reg[12]_i_1_n_1\,
      CO(1) => \Counter2_reg[12]_i_1_n_2\,
      CO(0) => \Counter2_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter2_reg[12]_i_1_n_4\,
      O(2) => \Counter2_reg[12]_i_1_n_5\,
      O(1) => \Counter2_reg[12]_i_1_n_6\,
      O(0) => \Counter2_reg[12]_i_1_n_7\,
      S(3 downto 0) => Counter2_reg(15 downto 12)
    );
\Counter2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter2[0]_i_2_n_0\,
      D => \Counter2_reg[12]_i_1_n_6\,
      Q => Counter2_reg(13),
      R => \Counter2[0]_i_1_n_0\
    );
\Counter2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter2[0]_i_2_n_0\,
      D => \Counter2_reg[12]_i_1_n_5\,
      Q => Counter2_reg(14),
      R => \Counter2[0]_i_1_n_0\
    );
\Counter2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter2[0]_i_2_n_0\,
      D => \Counter2_reg[12]_i_1_n_4\,
      Q => Counter2_reg(15),
      R => \Counter2[0]_i_1_n_0\
    );
\Counter2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter2[0]_i_2_n_0\,
      D => \Counter2_reg[16]_i_1_n_7\,
      Q => Counter2_reg(16),
      R => \Counter2[0]_i_1_n_0\
    );
\Counter2_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter2_reg[12]_i_1_n_0\,
      CO(3) => \Counter2_reg[16]_i_1_n_0\,
      CO(2) => \Counter2_reg[16]_i_1_n_1\,
      CO(1) => \Counter2_reg[16]_i_1_n_2\,
      CO(0) => \Counter2_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter2_reg[16]_i_1_n_4\,
      O(2) => \Counter2_reg[16]_i_1_n_5\,
      O(1) => \Counter2_reg[16]_i_1_n_6\,
      O(0) => \Counter2_reg[16]_i_1_n_7\,
      S(3 downto 0) => Counter2_reg(19 downto 16)
    );
\Counter2_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter2[0]_i_2_n_0\,
      D => \Counter2_reg[16]_i_1_n_6\,
      Q => Counter2_reg(17),
      R => \Counter2[0]_i_1_n_0\
    );
\Counter2_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter2[0]_i_2_n_0\,
      D => \Counter2_reg[16]_i_1_n_5\,
      Q => Counter2_reg(18),
      R => \Counter2[0]_i_1_n_0\
    );
\Counter2_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter2[0]_i_2_n_0\,
      D => \Counter2_reg[16]_i_1_n_4\,
      Q => Counter2_reg(19),
      R => \Counter2[0]_i_1_n_0\
    );
\Counter2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter2[0]_i_2_n_0\,
      D => \Counter2_reg[0]_i_3_n_6\,
      Q => \Counter2_reg_n_0_[1]\,
      R => \Counter2[0]_i_1_n_0\
    );
\Counter2_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter2[0]_i_2_n_0\,
      D => \Counter2_reg[20]_i_1_n_7\,
      Q => Counter2_reg(20),
      R => \Counter2[0]_i_1_n_0\
    );
\Counter2_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter2_reg[16]_i_1_n_0\,
      CO(3) => \NLW_Counter2_reg[20]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \Counter2_reg[20]_i_1_n_1\,
      CO(1) => \Counter2_reg[20]_i_1_n_2\,
      CO(0) => \Counter2_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter2_reg[20]_i_1_n_4\,
      O(2) => \Counter2_reg[20]_i_1_n_5\,
      O(1) => \Counter2_reg[20]_i_1_n_6\,
      O(0) => \Counter2_reg[20]_i_1_n_7\,
      S(3 downto 0) => Counter2_reg(23 downto 20)
    );
\Counter2_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter2[0]_i_2_n_0\,
      D => \Counter2_reg[20]_i_1_n_6\,
      Q => Counter2_reg(21),
      R => \Counter2[0]_i_1_n_0\
    );
\Counter2_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter2[0]_i_2_n_0\,
      D => \Counter2_reg[20]_i_1_n_5\,
      Q => Counter2_reg(22),
      R => \Counter2[0]_i_1_n_0\
    );
\Counter2_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter2[0]_i_2_n_0\,
      D => \Counter2_reg[20]_i_1_n_4\,
      Q => Counter2_reg(23),
      R => \Counter2[0]_i_1_n_0\
    );
\Counter2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter2[0]_i_2_n_0\,
      D => \Counter2_reg[0]_i_3_n_5\,
      Q => \Counter2_reg_n_0_[2]\,
      R => \Counter2[0]_i_1_n_0\
    );
\Counter2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter2[0]_i_2_n_0\,
      D => \Counter2_reg[0]_i_3_n_4\,
      Q => \Counter2_reg_n_0_[3]\,
      R => \Counter2[0]_i_1_n_0\
    );
\Counter2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter2[0]_i_2_n_0\,
      D => \Counter2_reg[4]_i_1_n_7\,
      Q => \Counter2_reg_n_0_[4]\,
      R => \Counter2[0]_i_1_n_0\
    );
\Counter2_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter2_reg[0]_i_3_n_0\,
      CO(3) => \Counter2_reg[4]_i_1_n_0\,
      CO(2) => \Counter2_reg[4]_i_1_n_1\,
      CO(1) => \Counter2_reg[4]_i_1_n_2\,
      CO(0) => \Counter2_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter2_reg[4]_i_1_n_4\,
      O(2) => \Counter2_reg[4]_i_1_n_5\,
      O(1) => \Counter2_reg[4]_i_1_n_6\,
      O(0) => \Counter2_reg[4]_i_1_n_7\,
      S(3) => Counter2_reg(7),
      S(2) => \Counter2_reg_n_0_[6]\,
      S(1) => \Counter2_reg_n_0_[5]\,
      S(0) => \Counter2_reg_n_0_[4]\
    );
\Counter2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter2[0]_i_2_n_0\,
      D => \Counter2_reg[4]_i_1_n_6\,
      Q => \Counter2_reg_n_0_[5]\,
      R => \Counter2[0]_i_1_n_0\
    );
\Counter2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter2[0]_i_2_n_0\,
      D => \Counter2_reg[4]_i_1_n_5\,
      Q => \Counter2_reg_n_0_[6]\,
      R => \Counter2[0]_i_1_n_0\
    );
\Counter2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter2[0]_i_2_n_0\,
      D => \Counter2_reg[4]_i_1_n_4\,
      Q => Counter2_reg(7),
      R => \Counter2[0]_i_1_n_0\
    );
\Counter2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter2[0]_i_2_n_0\,
      D => \Counter2_reg[8]_i_1_n_7\,
      Q => Counter2_reg(8),
      R => \Counter2[0]_i_1_n_0\
    );
\Counter2_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter2_reg[4]_i_1_n_0\,
      CO(3) => \Counter2_reg[8]_i_1_n_0\,
      CO(2) => \Counter2_reg[8]_i_1_n_1\,
      CO(1) => \Counter2_reg[8]_i_1_n_2\,
      CO(0) => \Counter2_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter2_reg[8]_i_1_n_4\,
      O(2) => \Counter2_reg[8]_i_1_n_5\,
      O(1) => \Counter2_reg[8]_i_1_n_6\,
      O(0) => \Counter2_reg[8]_i_1_n_7\,
      S(3 downto 0) => Counter2_reg(11 downto 8)
    );
\Counter2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter2[0]_i_2_n_0\,
      D => \Counter2_reg[8]_i_1_n_6\,
      Q => Counter2_reg(9),
      R => \Counter2[0]_i_1_n_0\
    );
\Counter3[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SignalIn_sync(3),
      O => \Counter3[0]_i_1_n_0\
    );
\Counter3[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000555577F7"
    )
        port map (
      I0 => Counter3_reg(23),
      I1 => Counter3_reg(21),
      I2 => \Counter3[0]_i_4_n_0\,
      I3 => \Counter3[0]_i_5_n_0\,
      I4 => Counter3_reg(22),
      I5 => IsStable(3),
      O => \Counter3[0]_i_2_n_0\
    );
\Counter3[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01005555FFFFFFFF"
    )
        port map (
      I0 => \IsStable[3]_i_6_n_0\,
      I1 => Counter3_reg(12),
      I2 => Counter3_reg(13),
      I3 => \IsStable[3]_i_4_n_0\,
      I4 => \IsStable[3]_i_3_n_0\,
      I5 => Counter3_reg(18),
      O => \Counter3[0]_i_4_n_0\
    );
\Counter3[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Counter3_reg(19),
      I1 => Counter3_reg(20),
      O => \Counter3[0]_i_5_n_0\
    );
\Counter3[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Counter3_reg_n_0_[0]\,
      O => \Counter3[0]_i_6_n_0\
    );
\Counter3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter3[0]_i_2_n_0\,
      D => \Counter3_reg[0]_i_3_n_7\,
      Q => \Counter3_reg_n_0_[0]\,
      R => \Counter3[0]_i_1_n_0\
    );
\Counter3_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Counter3_reg[0]_i_3_n_0\,
      CO(2) => \Counter3_reg[0]_i_3_n_1\,
      CO(1) => \Counter3_reg[0]_i_3_n_2\,
      CO(0) => \Counter3_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \Counter3_reg[0]_i_3_n_4\,
      O(2) => \Counter3_reg[0]_i_3_n_5\,
      O(1) => \Counter3_reg[0]_i_3_n_6\,
      O(0) => \Counter3_reg[0]_i_3_n_7\,
      S(3) => \Counter3_reg_n_0_[3]\,
      S(2) => \Counter3_reg_n_0_[2]\,
      S(1) => \Counter3_reg_n_0_[1]\,
      S(0) => \Counter3[0]_i_6_n_0\
    );
\Counter3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter3[0]_i_2_n_0\,
      D => \Counter3_reg[8]_i_1_n_5\,
      Q => Counter3_reg(10),
      R => \Counter3[0]_i_1_n_0\
    );
\Counter3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter3[0]_i_2_n_0\,
      D => \Counter3_reg[8]_i_1_n_4\,
      Q => Counter3_reg(11),
      R => \Counter3[0]_i_1_n_0\
    );
\Counter3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter3[0]_i_2_n_0\,
      D => \Counter3_reg[12]_i_1_n_7\,
      Q => Counter3_reg(12),
      R => \Counter3[0]_i_1_n_0\
    );
\Counter3_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter3_reg[8]_i_1_n_0\,
      CO(3) => \Counter3_reg[12]_i_1_n_0\,
      CO(2) => \Counter3_reg[12]_i_1_n_1\,
      CO(1) => \Counter3_reg[12]_i_1_n_2\,
      CO(0) => \Counter3_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter3_reg[12]_i_1_n_4\,
      O(2) => \Counter3_reg[12]_i_1_n_5\,
      O(1) => \Counter3_reg[12]_i_1_n_6\,
      O(0) => \Counter3_reg[12]_i_1_n_7\,
      S(3 downto 0) => Counter3_reg(15 downto 12)
    );
\Counter3_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter3[0]_i_2_n_0\,
      D => \Counter3_reg[12]_i_1_n_6\,
      Q => Counter3_reg(13),
      R => \Counter3[0]_i_1_n_0\
    );
\Counter3_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter3[0]_i_2_n_0\,
      D => \Counter3_reg[12]_i_1_n_5\,
      Q => Counter3_reg(14),
      R => \Counter3[0]_i_1_n_0\
    );
\Counter3_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter3[0]_i_2_n_0\,
      D => \Counter3_reg[12]_i_1_n_4\,
      Q => Counter3_reg(15),
      R => \Counter3[0]_i_1_n_0\
    );
\Counter3_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter3[0]_i_2_n_0\,
      D => \Counter3_reg[16]_i_1_n_7\,
      Q => Counter3_reg(16),
      R => \Counter3[0]_i_1_n_0\
    );
\Counter3_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter3_reg[12]_i_1_n_0\,
      CO(3) => \Counter3_reg[16]_i_1_n_0\,
      CO(2) => \Counter3_reg[16]_i_1_n_1\,
      CO(1) => \Counter3_reg[16]_i_1_n_2\,
      CO(0) => \Counter3_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter3_reg[16]_i_1_n_4\,
      O(2) => \Counter3_reg[16]_i_1_n_5\,
      O(1) => \Counter3_reg[16]_i_1_n_6\,
      O(0) => \Counter3_reg[16]_i_1_n_7\,
      S(3 downto 0) => Counter3_reg(19 downto 16)
    );
\Counter3_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter3[0]_i_2_n_0\,
      D => \Counter3_reg[16]_i_1_n_6\,
      Q => Counter3_reg(17),
      R => \Counter3[0]_i_1_n_0\
    );
\Counter3_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter3[0]_i_2_n_0\,
      D => \Counter3_reg[16]_i_1_n_5\,
      Q => Counter3_reg(18),
      R => \Counter3[0]_i_1_n_0\
    );
\Counter3_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter3[0]_i_2_n_0\,
      D => \Counter3_reg[16]_i_1_n_4\,
      Q => Counter3_reg(19),
      R => \Counter3[0]_i_1_n_0\
    );
\Counter3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter3[0]_i_2_n_0\,
      D => \Counter3_reg[0]_i_3_n_6\,
      Q => \Counter3_reg_n_0_[1]\,
      R => \Counter3[0]_i_1_n_0\
    );
\Counter3_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter3[0]_i_2_n_0\,
      D => \Counter3_reg[20]_i_1_n_7\,
      Q => Counter3_reg(20),
      R => \Counter3[0]_i_1_n_0\
    );
\Counter3_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter3_reg[16]_i_1_n_0\,
      CO(3) => \NLW_Counter3_reg[20]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \Counter3_reg[20]_i_1_n_1\,
      CO(1) => \Counter3_reg[20]_i_1_n_2\,
      CO(0) => \Counter3_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter3_reg[20]_i_1_n_4\,
      O(2) => \Counter3_reg[20]_i_1_n_5\,
      O(1) => \Counter3_reg[20]_i_1_n_6\,
      O(0) => \Counter3_reg[20]_i_1_n_7\,
      S(3 downto 0) => Counter3_reg(23 downto 20)
    );
\Counter3_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter3[0]_i_2_n_0\,
      D => \Counter3_reg[20]_i_1_n_6\,
      Q => Counter3_reg(21),
      R => \Counter3[0]_i_1_n_0\
    );
\Counter3_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter3[0]_i_2_n_0\,
      D => \Counter3_reg[20]_i_1_n_5\,
      Q => Counter3_reg(22),
      R => \Counter3[0]_i_1_n_0\
    );
\Counter3_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter3[0]_i_2_n_0\,
      D => \Counter3_reg[20]_i_1_n_4\,
      Q => Counter3_reg(23),
      R => \Counter3[0]_i_1_n_0\
    );
\Counter3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter3[0]_i_2_n_0\,
      D => \Counter3_reg[0]_i_3_n_5\,
      Q => \Counter3_reg_n_0_[2]\,
      R => \Counter3[0]_i_1_n_0\
    );
\Counter3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter3[0]_i_2_n_0\,
      D => \Counter3_reg[0]_i_3_n_4\,
      Q => \Counter3_reg_n_0_[3]\,
      R => \Counter3[0]_i_1_n_0\
    );
\Counter3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter3[0]_i_2_n_0\,
      D => \Counter3_reg[4]_i_1_n_7\,
      Q => \Counter3_reg_n_0_[4]\,
      R => \Counter3[0]_i_1_n_0\
    );
\Counter3_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter3_reg[0]_i_3_n_0\,
      CO(3) => \Counter3_reg[4]_i_1_n_0\,
      CO(2) => \Counter3_reg[4]_i_1_n_1\,
      CO(1) => \Counter3_reg[4]_i_1_n_2\,
      CO(0) => \Counter3_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter3_reg[4]_i_1_n_4\,
      O(2) => \Counter3_reg[4]_i_1_n_5\,
      O(1) => \Counter3_reg[4]_i_1_n_6\,
      O(0) => \Counter3_reg[4]_i_1_n_7\,
      S(3) => Counter3_reg(7),
      S(2) => \Counter3_reg_n_0_[6]\,
      S(1) => \Counter3_reg_n_0_[5]\,
      S(0) => \Counter3_reg_n_0_[4]\
    );
\Counter3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter3[0]_i_2_n_0\,
      D => \Counter3_reg[4]_i_1_n_6\,
      Q => \Counter3_reg_n_0_[5]\,
      R => \Counter3[0]_i_1_n_0\
    );
\Counter3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter3[0]_i_2_n_0\,
      D => \Counter3_reg[4]_i_1_n_5\,
      Q => \Counter3_reg_n_0_[6]\,
      R => \Counter3[0]_i_1_n_0\
    );
\Counter3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter3[0]_i_2_n_0\,
      D => \Counter3_reg[4]_i_1_n_4\,
      Q => Counter3_reg(7),
      R => \Counter3[0]_i_1_n_0\
    );
\Counter3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter3[0]_i_2_n_0\,
      D => \Counter3_reg[8]_i_1_n_7\,
      Q => Counter3_reg(8),
      R => \Counter3[0]_i_1_n_0\
    );
\Counter3_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter3_reg[4]_i_1_n_0\,
      CO(3) => \Counter3_reg[8]_i_1_n_0\,
      CO(2) => \Counter3_reg[8]_i_1_n_1\,
      CO(1) => \Counter3_reg[8]_i_1_n_2\,
      CO(0) => \Counter3_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter3_reg[8]_i_1_n_4\,
      O(2) => \Counter3_reg[8]_i_1_n_5\,
      O(1) => \Counter3_reg[8]_i_1_n_6\,
      O(0) => \Counter3_reg[8]_i_1_n_7\,
      S(3 downto 0) => Counter3_reg(11 downto 8)
    );
\Counter3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter3[0]_i_2_n_0\,
      D => \Counter3_reg[8]_i_1_n_6\,
      Q => Counter3_reg(9),
      R => \Counter3[0]_i_1_n_0\
    );
\Counter4[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SignalIn_sync(4),
      O => \Counter4[0]_i_1_n_0\
    );
\Counter4[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000055F7"
    )
        port map (
      I0 => Counter4_reg(22),
      I1 => Counter4_reg(20),
      I2 => \IsStable[4]_i_2_n_0\,
      I3 => Counter4_reg(21),
      I4 => IsStable(4),
      O => \Counter4[0]_i_2_n_0\
    );
\Counter4[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Counter4_reg_n_0_[0]\,
      O => \Counter4[0]_i_4_n_0\
    );
\Counter4_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter4[0]_i_2_n_0\,
      D => \Counter4_reg[0]_i_3_n_7\,
      Q => \Counter4_reg_n_0_[0]\,
      R => \Counter4[0]_i_1_n_0\
    );
\Counter4_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Counter4_reg[0]_i_3_n_0\,
      CO(2) => \Counter4_reg[0]_i_3_n_1\,
      CO(1) => \Counter4_reg[0]_i_3_n_2\,
      CO(0) => \Counter4_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \Counter4_reg[0]_i_3_n_4\,
      O(2) => \Counter4_reg[0]_i_3_n_5\,
      O(1) => \Counter4_reg[0]_i_3_n_6\,
      O(0) => \Counter4_reg[0]_i_3_n_7\,
      S(3) => \Counter4_reg_n_0_[3]\,
      S(2) => \Counter4_reg_n_0_[2]\,
      S(1) => \Counter4_reg_n_0_[1]\,
      S(0) => \Counter4[0]_i_4_n_0\
    );
\Counter4_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter4[0]_i_2_n_0\,
      D => \Counter4_reg[8]_i_1_n_5\,
      Q => Counter4_reg(10),
      R => \Counter4[0]_i_1_n_0\
    );
\Counter4_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter4[0]_i_2_n_0\,
      D => \Counter4_reg[8]_i_1_n_4\,
      Q => Counter4_reg(11),
      R => \Counter4[0]_i_1_n_0\
    );
\Counter4_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter4[0]_i_2_n_0\,
      D => \Counter4_reg[12]_i_1_n_7\,
      Q => Counter4_reg(12),
      R => \Counter4[0]_i_1_n_0\
    );
\Counter4_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter4_reg[8]_i_1_n_0\,
      CO(3) => \Counter4_reg[12]_i_1_n_0\,
      CO(2) => \Counter4_reg[12]_i_1_n_1\,
      CO(1) => \Counter4_reg[12]_i_1_n_2\,
      CO(0) => \Counter4_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter4_reg[12]_i_1_n_4\,
      O(2) => \Counter4_reg[12]_i_1_n_5\,
      O(1) => \Counter4_reg[12]_i_1_n_6\,
      O(0) => \Counter4_reg[12]_i_1_n_7\,
      S(3 downto 0) => Counter4_reg(15 downto 12)
    );
\Counter4_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter4[0]_i_2_n_0\,
      D => \Counter4_reg[12]_i_1_n_6\,
      Q => Counter4_reg(13),
      R => \Counter4[0]_i_1_n_0\
    );
\Counter4_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter4[0]_i_2_n_0\,
      D => \Counter4_reg[12]_i_1_n_5\,
      Q => Counter4_reg(14),
      R => \Counter4[0]_i_1_n_0\
    );
\Counter4_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter4[0]_i_2_n_0\,
      D => \Counter4_reg[12]_i_1_n_4\,
      Q => Counter4_reg(15),
      R => \Counter4[0]_i_1_n_0\
    );
\Counter4_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter4[0]_i_2_n_0\,
      D => \Counter4_reg[16]_i_1_n_7\,
      Q => Counter4_reg(16),
      R => \Counter4[0]_i_1_n_0\
    );
\Counter4_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter4_reg[12]_i_1_n_0\,
      CO(3) => \Counter4_reg[16]_i_1_n_0\,
      CO(2) => \Counter4_reg[16]_i_1_n_1\,
      CO(1) => \Counter4_reg[16]_i_1_n_2\,
      CO(0) => \Counter4_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter4_reg[16]_i_1_n_4\,
      O(2) => \Counter4_reg[16]_i_1_n_5\,
      O(1) => \Counter4_reg[16]_i_1_n_6\,
      O(0) => \Counter4_reg[16]_i_1_n_7\,
      S(3 downto 0) => Counter4_reg(19 downto 16)
    );
\Counter4_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter4[0]_i_2_n_0\,
      D => \Counter4_reg[16]_i_1_n_6\,
      Q => Counter4_reg(17),
      R => \Counter4[0]_i_1_n_0\
    );
\Counter4_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter4[0]_i_2_n_0\,
      D => \Counter4_reg[16]_i_1_n_5\,
      Q => Counter4_reg(18),
      R => \Counter4[0]_i_1_n_0\
    );
\Counter4_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter4[0]_i_2_n_0\,
      D => \Counter4_reg[16]_i_1_n_4\,
      Q => Counter4_reg(19),
      R => \Counter4[0]_i_1_n_0\
    );
\Counter4_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter4[0]_i_2_n_0\,
      D => \Counter4_reg[0]_i_3_n_6\,
      Q => \Counter4_reg_n_0_[1]\,
      R => \Counter4[0]_i_1_n_0\
    );
\Counter4_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter4[0]_i_2_n_0\,
      D => \Counter4_reg[20]_i_1_n_7\,
      Q => Counter4_reg(20),
      R => \Counter4[0]_i_1_n_0\
    );
\Counter4_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter4_reg[16]_i_1_n_0\,
      CO(3 downto 2) => \NLW_Counter4_reg[20]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Counter4_reg[20]_i_1_n_2\,
      CO(0) => \Counter4_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_Counter4_reg[20]_i_1_O_UNCONNECTED\(3),
      O(2) => \Counter4_reg[20]_i_1_n_5\,
      O(1) => \Counter4_reg[20]_i_1_n_6\,
      O(0) => \Counter4_reg[20]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => Counter4_reg(22 downto 20)
    );
\Counter4_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter4[0]_i_2_n_0\,
      D => \Counter4_reg[20]_i_1_n_6\,
      Q => Counter4_reg(21),
      R => \Counter4[0]_i_1_n_0\
    );
\Counter4_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter4[0]_i_2_n_0\,
      D => \Counter4_reg[20]_i_1_n_5\,
      Q => Counter4_reg(22),
      R => \Counter4[0]_i_1_n_0\
    );
\Counter4_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter4[0]_i_2_n_0\,
      D => \Counter4_reg[0]_i_3_n_5\,
      Q => \Counter4_reg_n_0_[2]\,
      R => \Counter4[0]_i_1_n_0\
    );
\Counter4_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter4[0]_i_2_n_0\,
      D => \Counter4_reg[0]_i_3_n_4\,
      Q => \Counter4_reg_n_0_[3]\,
      R => \Counter4[0]_i_1_n_0\
    );
\Counter4_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter4[0]_i_2_n_0\,
      D => \Counter4_reg[4]_i_1_n_7\,
      Q => \Counter4_reg_n_0_[4]\,
      R => \Counter4[0]_i_1_n_0\
    );
\Counter4_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter4_reg[0]_i_3_n_0\,
      CO(3) => \Counter4_reg[4]_i_1_n_0\,
      CO(2) => \Counter4_reg[4]_i_1_n_1\,
      CO(1) => \Counter4_reg[4]_i_1_n_2\,
      CO(0) => \Counter4_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter4_reg[4]_i_1_n_4\,
      O(2) => \Counter4_reg[4]_i_1_n_5\,
      O(1) => \Counter4_reg[4]_i_1_n_6\,
      O(0) => \Counter4_reg[4]_i_1_n_7\,
      S(3 downto 1) => Counter4_reg(7 downto 5),
      S(0) => \Counter4_reg_n_0_[4]\
    );
\Counter4_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter4[0]_i_2_n_0\,
      D => \Counter4_reg[4]_i_1_n_6\,
      Q => Counter4_reg(5),
      R => \Counter4[0]_i_1_n_0\
    );
\Counter4_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter4[0]_i_2_n_0\,
      D => \Counter4_reg[4]_i_1_n_5\,
      Q => Counter4_reg(6),
      R => \Counter4[0]_i_1_n_0\
    );
\Counter4_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter4[0]_i_2_n_0\,
      D => \Counter4_reg[4]_i_1_n_4\,
      Q => Counter4_reg(7),
      R => \Counter4[0]_i_1_n_0\
    );
\Counter4_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter4[0]_i_2_n_0\,
      D => \Counter4_reg[8]_i_1_n_7\,
      Q => Counter4_reg(8),
      R => \Counter4[0]_i_1_n_0\
    );
\Counter4_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter4_reg[4]_i_1_n_0\,
      CO(3) => \Counter4_reg[8]_i_1_n_0\,
      CO(2) => \Counter4_reg[8]_i_1_n_1\,
      CO(1) => \Counter4_reg[8]_i_1_n_2\,
      CO(0) => \Counter4_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter4_reg[8]_i_1_n_4\,
      O(2) => \Counter4_reg[8]_i_1_n_5\,
      O(1) => \Counter4_reg[8]_i_1_n_6\,
      O(0) => \Counter4_reg[8]_i_1_n_7\,
      S(3 downto 0) => Counter4_reg(11 downto 8)
    );
\Counter4_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Counter4[0]_i_2_n_0\,
      D => \Counter4_reg[8]_i_1_n_6\,
      Q => Counter4_reg(9),
      R => \Counter4[0]_i_1_n_0\
    );
\IsStable[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBA0000000000"
    )
        port map (
      I0 => Counter0_reg(22),
      I1 => \IsStable[0]_i_2_n_0\,
      I2 => Counter0_reg(21),
      I3 => Counter0_reg(23),
      I4 => IsStable(0),
      I5 => SignalIn_sync(0),
      O => \IsStable[0]_i_1_n_0\
    );
\IsStable[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000555577F7"
    )
        port map (
      I0 => Counter0_reg(18),
      I1 => \IsStable[0]_i_3_n_0\,
      I2 => \IsStable[0]_i_4_n_0\,
      I3 => \IsStable[0]_i_5_n_0\,
      I4 => \IsStable[0]_i_6_n_0\,
      I5 => \Counter0[0]_i_5_n_0\,
      O => \IsStable[0]_i_2_n_0\
    );
\IsStable[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter0_reg(14),
      I1 => Counter0_reg(15),
      O => \IsStable[0]_i_3_n_0\
    );
\IsStable[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007FFFFF"
    )
        port map (
      I0 => Counter0_reg(7),
      I1 => Counter0_reg(9),
      I2 => Counter0_reg(8),
      I3 => Counter0_reg(10),
      I4 => Counter0_reg(11),
      O => \IsStable[0]_i_4_n_0\
    );
\IsStable[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Counter0_reg(12),
      I1 => Counter0_reg(13),
      O => \IsStable[0]_i_5_n_0\
    );
\IsStable[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Counter0_reg(16),
      I1 => Counter0_reg(17),
      O => \IsStable[0]_i_6_n_0\
    );
\IsStable[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEF0000000000"
    )
        port map (
      I0 => Counter1_reg(18),
      I1 => Counter1_reg(19),
      I2 => \IsStable[1]_i_2_n_0\,
      I3 => \IsStable[1]_i_3_n_0\,
      I4 => IsStable(1),
      I5 => SignalIn_sync(1),
      O => \IsStable[1]_i_1_n_0\
    );
\IsStable[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00011111FFFFFFFF"
    )
        port map (
      I0 => Counter1_reg(15),
      I1 => Counter1_reg(16),
      I2 => \IsStable[1]_i_4_n_0\,
      I3 => \IsStable[1]_i_5_n_0\,
      I4 => \IsStable[1]_i_6_n_0\,
      I5 => Counter1_reg(17),
      O => \IsStable[1]_i_2_n_0\
    );
\IsStable[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Counter1_reg(20),
      I1 => Counter1_reg(22),
      I2 => Counter1_reg(21),
      O => \IsStable[1]_i_3_n_0\
    );
\IsStable[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Counter1_reg(5),
      I1 => Counter1_reg(7),
      I2 => Counter1_reg(6),
      O => \IsStable[1]_i_4_n_0\
    );
\IsStable[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Counter1_reg(9),
      I1 => Counter1_reg(8),
      I2 => Counter1_reg(11),
      I3 => Counter1_reg(10),
      O => \IsStable[1]_i_5_n_0\
    );
\IsStable[1]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Counter1_reg(12),
      I1 => Counter1_reg(14),
      I2 => Counter1_reg(13),
      O => \IsStable[1]_i_6_n_0\
    );
\IsStable[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBA0000000000"
    )
        port map (
      I0 => Counter2_reg(22),
      I1 => \IsStable[2]_i_2_n_0\,
      I2 => Counter2_reg(21),
      I3 => Counter2_reg(23),
      I4 => IsStable(2),
      I5 => SignalIn_sync(2),
      O => \IsStable[2]_i_1_n_0\
    );
\IsStable[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000555577F7"
    )
        port map (
      I0 => Counter2_reg(18),
      I1 => \IsStable[2]_i_3_n_0\,
      I2 => \IsStable[2]_i_4_n_0\,
      I3 => \IsStable[2]_i_5_n_0\,
      I4 => \IsStable[2]_i_6_n_0\,
      I5 => \Counter2[0]_i_5_n_0\,
      O => \IsStable[2]_i_2_n_0\
    );
\IsStable[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter2_reg(14),
      I1 => Counter2_reg(15),
      O => \IsStable[2]_i_3_n_0\
    );
\IsStable[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007FFFFF"
    )
        port map (
      I0 => Counter2_reg(7),
      I1 => Counter2_reg(9),
      I2 => Counter2_reg(8),
      I3 => Counter2_reg(10),
      I4 => Counter2_reg(11),
      O => \IsStable[2]_i_4_n_0\
    );
\IsStable[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Counter2_reg(12),
      I1 => Counter2_reg(13),
      O => \IsStable[2]_i_5_n_0\
    );
\IsStable[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Counter2_reg(16),
      I1 => Counter2_reg(17),
      O => \IsStable[2]_i_6_n_0\
    );
\IsStable[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBA0000000000"
    )
        port map (
      I0 => Counter3_reg(22),
      I1 => \IsStable[3]_i_2_n_0\,
      I2 => Counter3_reg(21),
      I3 => Counter3_reg(23),
      I4 => IsStable(3),
      I5 => SignalIn_sync(3),
      O => \IsStable[3]_i_1_n_0\
    );
\IsStable[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000555577F7"
    )
        port map (
      I0 => Counter3_reg(18),
      I1 => \IsStable[3]_i_3_n_0\,
      I2 => \IsStable[3]_i_4_n_0\,
      I3 => \IsStable[3]_i_5_n_0\,
      I4 => \IsStable[3]_i_6_n_0\,
      I5 => \Counter3[0]_i_5_n_0\,
      O => \IsStable[3]_i_2_n_0\
    );
\IsStable[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter3_reg(14),
      I1 => Counter3_reg(15),
      O => \IsStable[3]_i_3_n_0\
    );
\IsStable[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007FFFFF"
    )
        port map (
      I0 => Counter3_reg(7),
      I1 => Counter3_reg(9),
      I2 => Counter3_reg(8),
      I3 => Counter3_reg(10),
      I4 => Counter3_reg(11),
      O => \IsStable[3]_i_4_n_0\
    );
\IsStable[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Counter3_reg(12),
      I1 => Counter3_reg(13),
      O => \IsStable[3]_i_5_n_0\
    );
\IsStable[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Counter3_reg(16),
      I1 => Counter3_reg(17),
      O => \IsStable[3]_i_6_n_0\
    );
\IsStable[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBA0000000000"
    )
        port map (
      I0 => Counter4_reg(21),
      I1 => \IsStable[4]_i_2_n_0\,
      I2 => Counter4_reg(20),
      I3 => Counter4_reg(22),
      I4 => IsStable(4),
      I5 => SignalIn_sync(4),
      O => \IsStable[4]_i_1_n_0\
    );
\IsStable[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FF7F"
    )
        port map (
      I0 => \IsStable[4]_i_3_n_0\,
      I1 => Counter4_reg(10),
      I2 => Counter4_reg(11),
      I3 => \IsStable[4]_i_4_n_0\,
      I4 => Counter4_reg(12),
      I5 => \IsStable[4]_i_5_n_0\,
      O => \IsStable[4]_i_2_n_0\
    );
\IsStable[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => Counter4_reg(13),
      I1 => Counter4_reg(16),
      I2 => Counter4_reg(17),
      I3 => Counter4_reg(14),
      I4 => Counter4_reg(15),
      O => \IsStable[4]_i_3_n_0\
    );
\IsStable[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010101"
    )
        port map (
      I0 => Counter4_reg(8),
      I1 => Counter4_reg(9),
      I2 => Counter4_reg(7),
      I3 => Counter4_reg(6),
      I4 => Counter4_reg(5),
      O => \IsStable[4]_i_4_n_0\
    );
\IsStable[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Counter4_reg(18),
      I1 => Counter4_reg(19),
      O => \IsStable[4]_i_5_n_0\
    );
\IsStable_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \IsStable[0]_i_1_n_0\,
      Q => IsStable(0),
      R => '0'
    );
\IsStable_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \IsStable[1]_i_1_n_0\,
      Q => IsStable(1),
      R => '0'
    );
\IsStable_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \IsStable[2]_i_1_n_0\,
      Q => IsStable(2),
      R => '0'
    );
\IsStable_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \IsStable[3]_i_1_n_0\,
      Q => IsStable(3),
      R => '0'
    );
\IsStable_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \IsStable[4]_i_1_n_0\,
      Q => IsStable(4),
      R => '0'
    );
\SignalIn_sync_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => SignalIn(0),
      Q => SignalIn_sync(0),
      R => '0'
    );
\SignalIn_sync_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => SignalIn(1),
      Q => SignalIn_sync(1),
      R => '0'
    );
\SignalIn_sync_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => SignalIn(2),
      Q => SignalIn_sync(2),
      R => '0'
    );
\SignalIn_sync_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => SignalIn(3),
      Q => SignalIn_sync(3),
      R => '0'
    );
\SignalIn_sync_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => SignalIn(4),
      Q => SignalIn_sync(4),
      R => '0'
    );
\TempIn[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SignalIn_sync(0),
      I1 => IsStable(0),
      I2 => \^signalout\(0),
      O => \TempIn[0]_i_1_n_0\
    );
\TempIn[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SignalIn_sync(1),
      I1 => IsStable(1),
      I2 => \^signalout\(1),
      O => \TempIn[1]_i_1_n_0\
    );
\TempIn[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SignalIn_sync(2),
      I1 => IsStable(2),
      I2 => \^signalout\(2),
      O => \TempIn[2]_i_1_n_0\
    );
\TempIn[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SignalIn_sync(3),
      I1 => IsStable(3),
      I2 => \^signalout\(3),
      O => \TempIn[3]_i_1_n_0\
    );
\TempIn[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SignalIn_sync(4),
      I1 => IsStable(4),
      I2 => \^signalout\(4),
      O => \TempIn[4]_i_1_n_0\
    );
\TempIn_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \TempIn[0]_i_1_n_0\,
      Q => \^signalout\(0),
      R => '0'
    );
\TempIn_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \TempIn[1]_i_1_n_0\,
      Q => \^signalout\(1),
      R => '0'
    );
\TempIn_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \TempIn[2]_i_1_n_0\,
      Q => \^signalout\(2),
      R => '0'
    );
\TempIn_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \TempIn[3]_i_1_n_0\,
      Q => \^signalout\(3),
      R => '0'
    );
\TempIn_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \TempIn[4]_i_1_n_0\,
      Q => \^signalout\(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    SignalIn : in STD_LOGIC_VECTOR ( 4 downto 0 );
    SignalOut : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ip_design_Debouncer_0_2,Debouncer,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Debouncer,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ip_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Debouncer
     port map (
      SignalIn(4 downto 0) => SignalIn(4 downto 0),
      SignalOut(4 downto 0) => SignalOut(4 downto 0),
      clk => clk
    );
end STRUCTURE;
