-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Apr  3 13:54:02 2025
-- Host        : ensc-pit-w26 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ip_design_bonustimer_0_0_sim_netlist.vhdl
-- Design      : ip_design_bonustimer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bonustimer_v1_0_S00_AXI is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 13 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bonustimer_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bonustimer_v1_0_S00_AXI is
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal clk_counter : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \clk_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \clk_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \clk_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \clk_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \clk_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \clk_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \clk_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \clk_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \clk_counter0_carry__2_n_0\ : STD_LOGIC;
  signal \clk_counter0_carry__2_n_1\ : STD_LOGIC;
  signal \clk_counter0_carry__2_n_2\ : STD_LOGIC;
  signal \clk_counter0_carry__2_n_3\ : STD_LOGIC;
  signal \clk_counter0_carry__3_n_0\ : STD_LOGIC;
  signal \clk_counter0_carry__3_n_1\ : STD_LOGIC;
  signal \clk_counter0_carry__3_n_2\ : STD_LOGIC;
  signal \clk_counter0_carry__3_n_3\ : STD_LOGIC;
  signal \clk_counter0_carry__4_n_0\ : STD_LOGIC;
  signal \clk_counter0_carry__4_n_1\ : STD_LOGIC;
  signal \clk_counter0_carry__4_n_2\ : STD_LOGIC;
  signal \clk_counter0_carry__4_n_3\ : STD_LOGIC;
  signal \clk_counter0_carry__5_n_3\ : STD_LOGIC;
  signal clk_counter0_carry_n_0 : STD_LOGIC;
  signal clk_counter0_carry_n_1 : STD_LOGIC;
  signal clk_counter0_carry_n_2 : STD_LOGIC;
  signal clk_counter0_carry_n_3 : STD_LOGIC;
  signal \clk_counter[26]_i_2_n_0\ : STD_LOGIC;
  signal \clk_counter[26]_i_3_n_0\ : STD_LOGIC;
  signal \clk_counter[26]_i_4_n_0\ : STD_LOGIC;
  signal \clk_counter[26]_i_5_n_0\ : STD_LOGIC;
  signal \clk_counter[26]_i_6_n_0\ : STD_LOGIC;
  signal \clk_counter[26]_i_7_n_0\ : STD_LOGIC;
  signal \clk_counter[26]_i_8_n_0\ : STD_LOGIC;
  signal clk_counter_0 : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 26 downto 1 );
  signal en_sig : STD_LOGIC;
  signal en_sig_reg_n_0 : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \slv_reg0[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg1[13]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \slv_reg2[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  signal timer_enable : STD_LOGIC;
  signal timer_enable_i_1_n_0 : STD_LOGIC;
  signal timer_reset : STD_LOGIC;
  signal timer_reset_i_1_n_0 : STD_LOGIC;
  signal timer_value0 : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal timer_value00_in : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal \timer_value0_carry__0_n_0\ : STD_LOGIC;
  signal \timer_value0_carry__0_n_1\ : STD_LOGIC;
  signal \timer_value0_carry__0_n_2\ : STD_LOGIC;
  signal \timer_value0_carry__0_n_3\ : STD_LOGIC;
  signal \timer_value0_carry__1_n_0\ : STD_LOGIC;
  signal \timer_value0_carry__1_n_1\ : STD_LOGIC;
  signal \timer_value0_carry__1_n_2\ : STD_LOGIC;
  signal \timer_value0_carry__1_n_3\ : STD_LOGIC;
  signal timer_value0_carry_i_1_n_0 : STD_LOGIC;
  signal timer_value0_carry_n_0 : STD_LOGIC;
  signal timer_value0_carry_n_1 : STD_LOGIC;
  signal timer_value0_carry_n_2 : STD_LOGIC;
  signal timer_value0_carry_n_3 : STD_LOGIC;
  signal \timer_value0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \timer_value0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \timer_value0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \timer_value0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \timer_value0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \timer_value0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \timer_value0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \timer_value0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \timer_value0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \timer_value0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \timer_value0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \timer_value0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \timer_value[13]_i_1_n_0\ : STD_LOGIC;
  signal \timer_value[13]_i_3_n_0\ : STD_LOGIC;
  signal \timer_value[13]_i_4_n_0\ : STD_LOGIC;
  signal \timer_value[13]_i_5_n_0\ : STD_LOGIC;
  signal \timer_value[13]_i_6_n_0\ : STD_LOGIC;
  signal \NLW_clk_counter0_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_clk_counter0_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_timer_value0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_timer_value0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_timer_value0_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_timer_value0_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair15";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of clk_counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \clk_counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \clk_counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \clk_counter0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \clk_counter0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \clk_counter0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \clk_counter0_carry__5\ : label is 35;
  attribute SOFT_HLUTNM of \clk_counter[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \clk_counter[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \clk_counter[11]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \clk_counter[12]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \clk_counter[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \clk_counter[14]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \clk_counter[15]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \clk_counter[16]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \clk_counter[17]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \clk_counter[18]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \clk_counter[19]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \clk_counter[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \clk_counter[20]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \clk_counter[21]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \clk_counter[22]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \clk_counter[23]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \clk_counter[24]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \clk_counter[25]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \clk_counter[26]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \clk_counter[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \clk_counter[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \clk_counter[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \clk_counter[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \clk_counter[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \clk_counter[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \clk_counter[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \clk_counter[9]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of en_sig_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \slv_reg0[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of timer_enable_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of timer_reset_i_1 : label is "soft_lutpair16";
  attribute ADDER_THRESHOLD of timer_value0_carry : label is 35;
  attribute ADDER_THRESHOLD of \timer_value0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \timer_value0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \timer_value0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \timer_value0_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \timer_value0_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \timer_value0_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \timer_value0_inferred__0/i__carry__2\ : label is 35;
begin
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_RDATA(13 downto 0) <= \^s_axi_rdata\(13 downto 0);
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFF8AAA8AAA8AAA"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s00_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_awready\,
      I4 => aw_en_reg_n_0,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_awready\,
      I4 => aw_en_reg_n_0,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s_axi_wready\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
clk_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => clk_counter0_carry_n_0,
      CO(2) => clk_counter0_carry_n_1,
      CO(1) => clk_counter0_carry_n_2,
      CO(0) => clk_counter0_carry_n_3,
      CYINIT => clk_counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => clk_counter(4 downto 1)
    );
\clk_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => clk_counter0_carry_n_0,
      CO(3) => \clk_counter0_carry__0_n_0\,
      CO(2) => \clk_counter0_carry__0_n_1\,
      CO(1) => \clk_counter0_carry__0_n_2\,
      CO(0) => \clk_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => clk_counter(8 downto 5)
    );
\clk_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_counter0_carry__0_n_0\,
      CO(3) => \clk_counter0_carry__1_n_0\,
      CO(2) => \clk_counter0_carry__1_n_1\,
      CO(1) => \clk_counter0_carry__1_n_2\,
      CO(0) => \clk_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => clk_counter(12 downto 9)
    );
\clk_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_counter0_carry__1_n_0\,
      CO(3) => \clk_counter0_carry__2_n_0\,
      CO(2) => \clk_counter0_carry__2_n_1\,
      CO(1) => \clk_counter0_carry__2_n_2\,
      CO(0) => \clk_counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => clk_counter(16 downto 13)
    );
\clk_counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_counter0_carry__2_n_0\,
      CO(3) => \clk_counter0_carry__3_n_0\,
      CO(2) => \clk_counter0_carry__3_n_1\,
      CO(1) => \clk_counter0_carry__3_n_2\,
      CO(0) => \clk_counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => clk_counter(20 downto 17)
    );
\clk_counter0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_counter0_carry__3_n_0\,
      CO(3) => \clk_counter0_carry__4_n_0\,
      CO(2) => \clk_counter0_carry__4_n_1\,
      CO(1) => \clk_counter0_carry__4_n_2\,
      CO(0) => \clk_counter0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => clk_counter(24 downto 21)
    );
\clk_counter0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_counter0_carry__4_n_0\,
      CO(3 downto 1) => \NLW_clk_counter0_carry__5_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \clk_counter0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_clk_counter0_carry__5_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => data0(26 downto 25),
      S(3 downto 2) => B"00",
      S(1 downto 0) => clk_counter(26 downto 25)
    );
\clk_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_counter(0),
      O => clk_counter_0(0)
    );
\clk_counter[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(10),
      O => clk_counter_0(10)
    );
\clk_counter[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(11),
      O => clk_counter_0(11)
    );
\clk_counter[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(12),
      O => clk_counter_0(12)
    );
\clk_counter[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(13),
      O => clk_counter_0(13)
    );
\clk_counter[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(14),
      O => clk_counter_0(14)
    );
\clk_counter[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(15),
      O => clk_counter_0(15)
    );
\clk_counter[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(16),
      O => clk_counter_0(16)
    );
\clk_counter[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(17),
      O => clk_counter_0(17)
    );
\clk_counter[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(18),
      O => clk_counter_0(18)
    );
\clk_counter[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(19),
      O => clk_counter_0(19)
    );
\clk_counter[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(1),
      O => clk_counter_0(1)
    );
\clk_counter[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(20),
      O => clk_counter_0(20)
    );
\clk_counter[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(21),
      O => clk_counter_0(21)
    );
\clk_counter[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(22),
      O => clk_counter_0(22)
    );
\clk_counter[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(23),
      O => clk_counter_0(23)
    );
\clk_counter[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(24),
      O => clk_counter_0(24)
    );
\clk_counter[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(25),
      O => clk_counter_0(25)
    );
\clk_counter[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(26),
      O => clk_counter_0(26)
    );
\clk_counter[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF7F"
    )
        port map (
      I0 => clk_counter(26),
      I1 => clk_counter(25),
      I2 => clk_counter(0),
      I3 => \clk_counter[26]_i_5_n_0\,
      I4 => \clk_counter[26]_i_6_n_0\,
      O => \clk_counter[26]_i_2_n_0\
    );
\clk_counter[26]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => clk_counter(7),
      I1 => clk_counter(8),
      I2 => clk_counter(5),
      I3 => clk_counter(6),
      I4 => \clk_counter[26]_i_7_n_0\,
      O => \clk_counter[26]_i_3_n_0\
    );
\clk_counter[26]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => clk_counter(15),
      I1 => clk_counter(16),
      I2 => clk_counter(13),
      I3 => clk_counter(14),
      I4 => \clk_counter[26]_i_8_n_0\,
      O => \clk_counter[26]_i_4_n_0\
    );
\clk_counter[26]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => clk_counter(21),
      I1 => clk_counter(22),
      I2 => clk_counter(24),
      I3 => clk_counter(23),
      O => \clk_counter[26]_i_5_n_0\
    );
\clk_counter[26]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => clk_counter(2),
      I1 => clk_counter(1),
      I2 => clk_counter(4),
      I3 => clk_counter(3),
      O => \clk_counter[26]_i_6_n_0\
    );
\clk_counter[26]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => clk_counter(10),
      I1 => clk_counter(9),
      I2 => clk_counter(11),
      I3 => clk_counter(12),
      O => \clk_counter[26]_i_7_n_0\
    );
\clk_counter[26]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => clk_counter(18),
      I1 => clk_counter(17),
      I2 => clk_counter(20),
      I3 => clk_counter(19),
      O => \clk_counter[26]_i_8_n_0\
    );
\clk_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(2),
      O => clk_counter_0(2)
    );
\clk_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(3),
      O => clk_counter_0(3)
    );
\clk_counter[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(4),
      O => clk_counter_0(4)
    );
\clk_counter[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(5),
      O => clk_counter_0(5)
    );
\clk_counter[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(6),
      O => clk_counter_0(6)
    );
\clk_counter[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(7),
      O => clk_counter_0(7)
    );
\clk_counter[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(8),
      O => clk_counter_0(8)
    );
\clk_counter[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      I3 => data0(9),
      O => clk_counter_0(9)
    );
\clk_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(0),
      Q => clk_counter(0),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(10),
      Q => clk_counter(10),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(11),
      Q => clk_counter(11),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(12),
      Q => clk_counter(12),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(13),
      Q => clk_counter(13),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(14),
      Q => clk_counter(14),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(15),
      Q => clk_counter(15),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(16),
      Q => clk_counter(16),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(17),
      Q => clk_counter(17),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(18),
      Q => clk_counter(18),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(19),
      Q => clk_counter(19),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(1),
      Q => clk_counter(1),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(20),
      Q => clk_counter(20),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(21),
      Q => clk_counter(21),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(22),
      Q => clk_counter(22),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(23),
      Q => clk_counter(23),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(24),
      Q => clk_counter(24),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(25),
      Q => clk_counter(25),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(26),
      Q => clk_counter(26),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(2),
      Q => clk_counter(2),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(3),
      Q => clk_counter(3),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(4),
      Q => clk_counter(4),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(5),
      Q => clk_counter(5),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(6),
      Q => clk_counter(6),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(7),
      Q => clk_counter(7),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(8),
      Q => clk_counter(8),
      R => axi_awready_i_1_n_0
    );
\clk_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => clk_counter_0(9),
      Q => clk_counter(9),
      R => axi_awready_i_1_n_0
    );
en_sig_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \clk_counter[26]_i_2_n_0\,
      I1 => \clk_counter[26]_i_3_n_0\,
      I2 => \clk_counter[26]_i_4_n_0\,
      O => en_sig
    );
en_sig_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => timer_enable,
      D => en_sig,
      Q => en_sig_reg_n_0,
      R => axi_awready_i_1_n_0
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_rdata\(8),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_rdata\(7),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_rdata\(6),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_rdata\(5),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_rdata\(12),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_rdata\(11),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_rdata\(10),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_rdata\(9),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_rdata\(13),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_rdata\(4),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_rdata\(3),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_rdata\(2),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_rdata\(1),
      O => \i__carry_i_4_n_0\
    );
\slv_reg0[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg_wren__0\,
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => s00_axi_wstrb(0),
      I5 => \slv_reg0_reg_n_0_[0]\,
      O => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg0[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \slv_reg_wren__0\,
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => s00_axi_wstrb(0),
      I5 => \slv_reg0_reg_n_0_[1]\,
      O => \slv_reg0[1]_i_1_n_0\
    );
\slv_reg0[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => \^s_axi_wready\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg0[0]_i_1_n_0\,
      Q => \slv_reg0_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg0[1]_i_1_n_0\,
      Q => \slv_reg0_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[13]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg1_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[13]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg1_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[13]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg1_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[13]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg1_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[13]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg1_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg1_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg1_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg1_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg1_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg1_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg1_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg1_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[13]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg1_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[13]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg1_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg_wren__0\,
      I2 => p_0_in(1),
      I3 => s00_axi_wstrb(0),
      I4 => p_0_in(0),
      I5 => slv_reg2(0),
      O => \slv_reg2[0]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg2[0]_i_1_n_0\,
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
timer_enable_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[0]\,
      I1 => s00_axi_aresetn,
      I2 => timer_enable,
      O => timer_enable_i_1_n_0
    );
timer_enable_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_enable_i_1_n_0,
      Q => timer_enable,
      R => '0'
    );
timer_reset_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[1]\,
      I1 => s00_axi_aresetn,
      I2 => timer_reset,
      O => timer_reset_i_1_n_0
    );
timer_reset_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_reset_i_1_n_0,
      Q => timer_reset,
      R => '0'
    );
timer_value0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => timer_value0_carry_n_0,
      CO(2) => timer_value0_carry_n_1,
      CO(1) => timer_value0_carry_n_2,
      CO(0) => timer_value0_carry_n_3,
      CYINIT => \^s_axi_rdata\(0),
      DI(3 downto 2) => B"00",
      DI(1) => \^s_axi_rdata\(2),
      DI(0) => '0',
      O(3 downto 0) => timer_value0(4 downto 1),
      S(3 downto 2) => \^s_axi_rdata\(4 downto 3),
      S(1) => timer_value0_carry_i_1_n_0,
      S(0) => \^s_axi_rdata\(1)
    );
\timer_value0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => timer_value0_carry_n_0,
      CO(3) => \timer_value0_carry__0_n_0\,
      CO(2) => \timer_value0_carry__0_n_1\,
      CO(1) => \timer_value0_carry__0_n_2\,
      CO(0) => \timer_value0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => timer_value0(8 downto 5),
      S(3 downto 0) => \^s_axi_rdata\(8 downto 5)
    );
\timer_value0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_value0_carry__0_n_0\,
      CO(3) => \timer_value0_carry__1_n_0\,
      CO(2) => \timer_value0_carry__1_n_1\,
      CO(1) => \timer_value0_carry__1_n_2\,
      CO(0) => \timer_value0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => timer_value0(12 downto 9),
      S(3 downto 0) => \^s_axi_rdata\(12 downto 9)
    );
\timer_value0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_value0_carry__1_n_0\,
      CO(3 downto 0) => \NLW_timer_value0_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_timer_value0_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => timer_value0(13),
      S(3 downto 1) => B"000",
      S(0) => \^s_axi_rdata\(13)
    );
timer_value0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_rdata\(2),
      O => timer_value0_carry_i_1_n_0
    );
\timer_value0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \timer_value0_inferred__0/i__carry_n_0\,
      CO(2) => \timer_value0_inferred__0/i__carry_n_1\,
      CO(1) => \timer_value0_inferred__0/i__carry_n_2\,
      CO(0) => \timer_value0_inferred__0/i__carry_n_3\,
      CYINIT => \^s_axi_rdata\(0),
      DI(3 downto 0) => \^s_axi_rdata\(4 downto 1),
      O(3 downto 0) => timer_value00_in(4 downto 1),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\timer_value0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_value0_inferred__0/i__carry_n_0\,
      CO(3) => \timer_value0_inferred__0/i__carry__0_n_0\,
      CO(2) => \timer_value0_inferred__0/i__carry__0_n_1\,
      CO(1) => \timer_value0_inferred__0/i__carry__0_n_2\,
      CO(0) => \timer_value0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^s_axi_rdata\(8 downto 5),
      O(3 downto 0) => timer_value00_in(8 downto 5),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\timer_value0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_value0_inferred__0/i__carry__0_n_0\,
      CO(3) => \timer_value0_inferred__0/i__carry__1_n_0\,
      CO(2) => \timer_value0_inferred__0/i__carry__1_n_1\,
      CO(1) => \timer_value0_inferred__0/i__carry__1_n_2\,
      CO(0) => \timer_value0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^s_axi_rdata\(12 downto 9),
      O(3 downto 0) => timer_value00_in(12 downto 9),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\timer_value0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_value0_inferred__0/i__carry__1_n_0\,
      CO(3 downto 0) => \NLW_timer_value0_inferred__0/i__carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_timer_value0_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => timer_value00_in(13),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__2_i_1_n_0\
    );
\timer_value[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FFF0B00"
    )
        port map (
      I0 => slv_reg2(0),
      I1 => \timer_value[13]_i_3_n_0\,
      I2 => \^s_axi_rdata\(0),
      I3 => timer_enable,
      I4 => \slv_reg1_reg_n_0_[0]\,
      O => p_2_in(0)
    );
\timer_value[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFF8F800000"
    )
        port map (
      I0 => timer_value0(10),
      I1 => slv_reg2(0),
      I2 => \timer_value[13]_i_3_n_0\,
      I3 => timer_value00_in(10),
      I4 => timer_enable,
      I5 => \slv_reg1_reg_n_0_[10]\,
      O => p_2_in(10)
    );
\timer_value[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFF8F800000"
    )
        port map (
      I0 => timer_value0(11),
      I1 => slv_reg2(0),
      I2 => \timer_value[13]_i_3_n_0\,
      I3 => timer_value00_in(11),
      I4 => timer_enable,
      I5 => \slv_reg1_reg_n_0_[11]\,
      O => p_2_in(11)
    );
\timer_value[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFF8F800000"
    )
        port map (
      I0 => timer_value0(12),
      I1 => slv_reg2(0),
      I2 => \timer_value[13]_i_3_n_0\,
      I3 => timer_value00_in(12),
      I4 => timer_enable,
      I5 => \slv_reg1_reg_n_0_[12]\,
      O => p_2_in(12)
    );
\timer_value[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFAA"
    )
        port map (
      I0 => timer_reset,
      I1 => slv_reg2(0),
      I2 => \timer_value[13]_i_3_n_0\,
      I3 => timer_enable,
      O => \timer_value[13]_i_1_n_0\
    );
\timer_value[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFF8F800000"
    )
        port map (
      I0 => timer_value0(13),
      I1 => slv_reg2(0),
      I2 => \timer_value[13]_i_3_n_0\,
      I3 => timer_value00_in(13),
      I4 => timer_enable,
      I5 => \slv_reg1_reg_n_0_[13]\,
      O => p_2_in(13)
    );
\timer_value[13]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5557"
    )
        port map (
      I0 => en_sig_reg_n_0,
      I1 => \timer_value[13]_i_4_n_0\,
      I2 => \timer_value[13]_i_5_n_0\,
      I3 => \timer_value[13]_i_6_n_0\,
      O => \timer_value[13]_i_3_n_0\
    );
\timer_value[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^s_axi_rdata\(1),
      I1 => \^s_axi_rdata\(2),
      I2 => \^s_axi_rdata\(3),
      I3 => \^s_axi_rdata\(4),
      I4 => \^s_axi_rdata\(0),
      I5 => \^s_axi_rdata\(13),
      O => \timer_value[13]_i_4_n_0\
    );
\timer_value[13]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^s_axi_rdata\(12),
      I1 => \^s_axi_rdata\(11),
      I2 => \^s_axi_rdata\(10),
      I3 => \^s_axi_rdata\(9),
      O => \timer_value[13]_i_5_n_0\
    );
\timer_value[13]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^s_axi_rdata\(8),
      I1 => \^s_axi_rdata\(7),
      I2 => \^s_axi_rdata\(6),
      I3 => \^s_axi_rdata\(5),
      O => \timer_value[13]_i_6_n_0\
    );
\timer_value[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFF8F800000"
    )
        port map (
      I0 => timer_value0(1),
      I1 => slv_reg2(0),
      I2 => \timer_value[13]_i_3_n_0\,
      I3 => timer_value00_in(1),
      I4 => timer_enable,
      I5 => \slv_reg1_reg_n_0_[1]\,
      O => p_2_in(1)
    );
\timer_value[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFF8F800000"
    )
        port map (
      I0 => timer_value0(2),
      I1 => slv_reg2(0),
      I2 => \timer_value[13]_i_3_n_0\,
      I3 => timer_value00_in(2),
      I4 => timer_enable,
      I5 => \slv_reg1_reg_n_0_[2]\,
      O => p_2_in(2)
    );
\timer_value[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFF8F800000"
    )
        port map (
      I0 => timer_value0(3),
      I1 => slv_reg2(0),
      I2 => \timer_value[13]_i_3_n_0\,
      I3 => timer_value00_in(3),
      I4 => timer_enable,
      I5 => \slv_reg1_reg_n_0_[3]\,
      O => p_2_in(3)
    );
\timer_value[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFF8F800000"
    )
        port map (
      I0 => timer_value0(4),
      I1 => slv_reg2(0),
      I2 => \timer_value[13]_i_3_n_0\,
      I3 => timer_value00_in(4),
      I4 => timer_enable,
      I5 => \slv_reg1_reg_n_0_[4]\,
      O => p_2_in(4)
    );
\timer_value[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFF8F800000"
    )
        port map (
      I0 => timer_value0(5),
      I1 => slv_reg2(0),
      I2 => \timer_value[13]_i_3_n_0\,
      I3 => timer_value00_in(5),
      I4 => timer_enable,
      I5 => \slv_reg1_reg_n_0_[5]\,
      O => p_2_in(5)
    );
\timer_value[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFF8F800000"
    )
        port map (
      I0 => timer_value0(6),
      I1 => slv_reg2(0),
      I2 => \timer_value[13]_i_3_n_0\,
      I3 => timer_value00_in(6),
      I4 => timer_enable,
      I5 => \slv_reg1_reg_n_0_[6]\,
      O => p_2_in(6)
    );
\timer_value[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFF8F800000"
    )
        port map (
      I0 => timer_value0(7),
      I1 => slv_reg2(0),
      I2 => \timer_value[13]_i_3_n_0\,
      I3 => timer_value00_in(7),
      I4 => timer_enable,
      I5 => \slv_reg1_reg_n_0_[7]\,
      O => p_2_in(7)
    );
\timer_value[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFF8F800000"
    )
        port map (
      I0 => timer_value0(8),
      I1 => slv_reg2(0),
      I2 => \timer_value[13]_i_3_n_0\,
      I3 => timer_value00_in(8),
      I4 => timer_enable,
      I5 => \slv_reg1_reg_n_0_[8]\,
      O => p_2_in(8)
    );
\timer_value[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFF8F800000"
    )
        port map (
      I0 => timer_value0(9),
      I1 => slv_reg2(0),
      I2 => \timer_value[13]_i_3_n_0\,
      I3 => timer_value00_in(9),
      I4 => timer_enable,
      I5 => \slv_reg1_reg_n_0_[9]\,
      O => p_2_in(9)
    );
\timer_value_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \timer_value[13]_i_1_n_0\,
      D => p_2_in(0),
      Q => \^s_axi_rdata\(0),
      R => axi_awready_i_1_n_0
    );
\timer_value_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \timer_value[13]_i_1_n_0\,
      D => p_2_in(10),
      Q => \^s_axi_rdata\(10),
      R => axi_awready_i_1_n_0
    );
\timer_value_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \timer_value[13]_i_1_n_0\,
      D => p_2_in(11),
      Q => \^s_axi_rdata\(11),
      R => axi_awready_i_1_n_0
    );
\timer_value_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \timer_value[13]_i_1_n_0\,
      D => p_2_in(12),
      Q => \^s_axi_rdata\(12),
      R => axi_awready_i_1_n_0
    );
\timer_value_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \timer_value[13]_i_1_n_0\,
      D => p_2_in(13),
      Q => \^s_axi_rdata\(13),
      R => axi_awready_i_1_n_0
    );
\timer_value_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \timer_value[13]_i_1_n_0\,
      D => p_2_in(1),
      Q => \^s_axi_rdata\(1),
      S => axi_awready_i_1_n_0
    );
\timer_value_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \timer_value[13]_i_1_n_0\,
      D => p_2_in(2),
      Q => \^s_axi_rdata\(2),
      R => axi_awready_i_1_n_0
    );
\timer_value_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \timer_value[13]_i_1_n_0\,
      D => p_2_in(3),
      Q => \^s_axi_rdata\(3),
      S => axi_awready_i_1_n_0
    );
\timer_value_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \timer_value[13]_i_1_n_0\,
      D => p_2_in(4),
      Q => \^s_axi_rdata\(4),
      S => axi_awready_i_1_n_0
    );
\timer_value_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \timer_value[13]_i_1_n_0\,
      D => p_2_in(5),
      Q => \^s_axi_rdata\(5),
      R => axi_awready_i_1_n_0
    );
\timer_value_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \timer_value[13]_i_1_n_0\,
      D => p_2_in(6),
      Q => \^s_axi_rdata\(6),
      S => axi_awready_i_1_n_0
    );
\timer_value_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \timer_value[13]_i_1_n_0\,
      D => p_2_in(7),
      Q => \^s_axi_rdata\(7),
      R => axi_awready_i_1_n_0
    );
\timer_value_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \timer_value[13]_i_1_n_0\,
      D => p_2_in(8),
      Q => \^s_axi_rdata\(8),
      R => axi_awready_i_1_n_0
    );
\timer_value_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \timer_value[13]_i_1_n_0\,
      D => p_2_in(9),
      Q => \^s_axi_rdata\(9),
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bonustimer_v1_0 is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 13 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bonustimer_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bonustimer_v1_0 is
begin
bonustimer_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bonustimer_v1_0_S00_AXI
     port map (
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_RDATA(13 downto 0) => s00_axi_rdata(13 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(13 downto 0) => s00_axi_wdata(13 downto 0),
      s00_axi_wstrb(1 downto 0) => s00_axi_wstrb(1 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ip_design_bonustimer_0_0,bonustimer_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bonustimer_v1_0,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^s00_axi_rdata\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 1.25e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ip_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1.25e+08, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN ip_design_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rdata(31) <= \<const0>\;
  s00_axi_rdata(30) <= \<const0>\;
  s00_axi_rdata(29) <= \<const0>\;
  s00_axi_rdata(28) <= \<const0>\;
  s00_axi_rdata(27) <= \<const0>\;
  s00_axi_rdata(26) <= \<const0>\;
  s00_axi_rdata(25) <= \<const0>\;
  s00_axi_rdata(24) <= \<const0>\;
  s00_axi_rdata(23) <= \<const0>\;
  s00_axi_rdata(22) <= \<const0>\;
  s00_axi_rdata(21) <= \<const0>\;
  s00_axi_rdata(20) <= \<const0>\;
  s00_axi_rdata(19) <= \<const0>\;
  s00_axi_rdata(18) <= \<const0>\;
  s00_axi_rdata(17) <= \<const0>\;
  s00_axi_rdata(16) <= \<const0>\;
  s00_axi_rdata(15) <= \<const0>\;
  s00_axi_rdata(14) <= \<const0>\;
  s00_axi_rdata(13 downto 0) <= \^s00_axi_rdata\(13 downto 0);
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bonustimer_v1_0
     port map (
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(13 downto 0) => \^s00_axi_rdata\(13 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(13 downto 0) => s00_axi_wdata(13 downto 0),
      s00_axi_wstrb(1 downto 0) => s00_axi_wstrb(1 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
