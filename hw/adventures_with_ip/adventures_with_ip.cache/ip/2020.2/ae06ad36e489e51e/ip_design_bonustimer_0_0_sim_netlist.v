// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr  3 13:14:15 2025
// Host        : ensc-pit-w26 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ip_design_bonustimer_0_0_sim_netlist.v
// Design      : ip_design_bonustimer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bonustimer_v1_0
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_rvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output s00_axi_arready;
  output [13:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [13:0]s00_axi_wdata;
  input [1:0]s00_axi_wstrb;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [13:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [13:0]s00_axi_wdata;
  wire [1:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bonustimer_v1_0_S00_AXI bonustimer_v1_0_S00_AXI_inst
       (.S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bonustimer_v1_0_S00_AXI
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_rvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output s00_axi_arready;
  output [13:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [13:0]s00_axi_wdata;
  input [1:0]s00_axi_wstrb;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [26:0]clk_counter;
  wire clk_counter0_carry__0_n_0;
  wire clk_counter0_carry__0_n_1;
  wire clk_counter0_carry__0_n_2;
  wire clk_counter0_carry__0_n_3;
  wire clk_counter0_carry__1_n_0;
  wire clk_counter0_carry__1_n_1;
  wire clk_counter0_carry__1_n_2;
  wire clk_counter0_carry__1_n_3;
  wire clk_counter0_carry__2_n_0;
  wire clk_counter0_carry__2_n_1;
  wire clk_counter0_carry__2_n_2;
  wire clk_counter0_carry__2_n_3;
  wire clk_counter0_carry__3_n_0;
  wire clk_counter0_carry__3_n_1;
  wire clk_counter0_carry__3_n_2;
  wire clk_counter0_carry__3_n_3;
  wire clk_counter0_carry__4_n_0;
  wire clk_counter0_carry__4_n_1;
  wire clk_counter0_carry__4_n_2;
  wire clk_counter0_carry__4_n_3;
  wire clk_counter0_carry__5_n_3;
  wire clk_counter0_carry_n_0;
  wire clk_counter0_carry_n_1;
  wire clk_counter0_carry_n_2;
  wire clk_counter0_carry_n_3;
  wire \clk_counter[26]_i_2_n_0 ;
  wire \clk_counter[26]_i_3_n_0 ;
  wire \clk_counter[26]_i_4_n_0 ;
  wire \clk_counter[26]_i_5_n_0 ;
  wire \clk_counter[26]_i_6_n_0 ;
  wire \clk_counter[26]_i_7_n_0 ;
  wire \clk_counter[26]_i_8_n_0 ;
  wire [26:0]clk_counter_0;
  wire [26:1]data0;
  wire en_sig;
  wire en_sig_reg_n_0;
  wire [1:0]p_0_in;
  wire [13:0]p_2_in;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [13:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [13:0]s00_axi_wdata;
  wire [1:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \slv_reg0[0]_i_1_n_0 ;
  wire \slv_reg0[1]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg1[13]_i_1_n_0 ;
  wire \slv_reg1[13]_i_2_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[0] ;
  wire \slv_reg1_reg_n_0_[10] ;
  wire \slv_reg1_reg_n_0_[11] ;
  wire \slv_reg1_reg_n_0_[12] ;
  wire \slv_reg1_reg_n_0_[13] ;
  wire \slv_reg1_reg_n_0_[1] ;
  wire \slv_reg1_reg_n_0_[2] ;
  wire \slv_reg1_reg_n_0_[3] ;
  wire \slv_reg1_reg_n_0_[4] ;
  wire \slv_reg1_reg_n_0_[5] ;
  wire \slv_reg1_reg_n_0_[6] ;
  wire \slv_reg1_reg_n_0_[7] ;
  wire \slv_reg1_reg_n_0_[8] ;
  wire \slv_reg1_reg_n_0_[9] ;
  wire slv_reg_wren__0;
  wire timer_enable;
  wire timer_enable_i_1_n_0;
  wire timer_reset;
  wire timer_reset_i_1_n_0;
  wire [13:1]timer_value0;
  wire timer_value0_carry__0_i_1_n_0;
  wire timer_value0_carry__0_i_2_n_0;
  wire timer_value0_carry__0_i_3_n_0;
  wire timer_value0_carry__0_i_4_n_0;
  wire timer_value0_carry__0_n_0;
  wire timer_value0_carry__0_n_1;
  wire timer_value0_carry__0_n_2;
  wire timer_value0_carry__0_n_3;
  wire timer_value0_carry__1_i_1_n_0;
  wire timer_value0_carry__1_i_2_n_0;
  wire timer_value0_carry__1_i_3_n_0;
  wire timer_value0_carry__1_i_4_n_0;
  wire timer_value0_carry__1_n_0;
  wire timer_value0_carry__1_n_1;
  wire timer_value0_carry__1_n_2;
  wire timer_value0_carry__1_n_3;
  wire timer_value0_carry__2_i_1_n_0;
  wire timer_value0_carry_i_1_n_0;
  wire timer_value0_carry_i_2_n_0;
  wire timer_value0_carry_i_3_n_0;
  wire timer_value0_carry_i_4_n_0;
  wire timer_value0_carry_n_0;
  wire timer_value0_carry_n_1;
  wire timer_value0_carry_n_2;
  wire timer_value0_carry_n_3;
  wire \timer_value[13]_i_1_n_0 ;
  wire \timer_value[13]_i_3_n_0 ;
  wire \timer_value[13]_i_4_n_0 ;
  wire \timer_value[13]_i_5_n_0 ;
  wire \timer_value[13]_i_6_n_0 ;
  wire [3:1]NLW_clk_counter0_carry__5_CO_UNCONNECTED;
  wire [3:2]NLW_clk_counter0_carry__5_O_UNCONNECTED;
  wire [3:0]NLW_timer_value0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_timer_value0_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hDFFF8AAA8AAA8AAA)) 
    aw_en_i_1
       (.I0(aw_en_reg_n_0),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(s00_axi_arready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .I4(aw_en_reg_n_0),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .I4(aw_en_reg_n_0),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_WREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter0_carry
       (.CI(1'b0),
        .CO({clk_counter0_carry_n_0,clk_counter0_carry_n_1,clk_counter0_carry_n_2,clk_counter0_carry_n_3}),
        .CYINIT(clk_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(clk_counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter0_carry__0
       (.CI(clk_counter0_carry_n_0),
        .CO({clk_counter0_carry__0_n_0,clk_counter0_carry__0_n_1,clk_counter0_carry__0_n_2,clk_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(clk_counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter0_carry__1
       (.CI(clk_counter0_carry__0_n_0),
        .CO({clk_counter0_carry__1_n_0,clk_counter0_carry__1_n_1,clk_counter0_carry__1_n_2,clk_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(clk_counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter0_carry__2
       (.CI(clk_counter0_carry__1_n_0),
        .CO({clk_counter0_carry__2_n_0,clk_counter0_carry__2_n_1,clk_counter0_carry__2_n_2,clk_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(clk_counter[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter0_carry__3
       (.CI(clk_counter0_carry__2_n_0),
        .CO({clk_counter0_carry__3_n_0,clk_counter0_carry__3_n_1,clk_counter0_carry__3_n_2,clk_counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(clk_counter[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter0_carry__4
       (.CI(clk_counter0_carry__3_n_0),
        .CO({clk_counter0_carry__4_n_0,clk_counter0_carry__4_n_1,clk_counter0_carry__4_n_2,clk_counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(clk_counter[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_counter0_carry__5
       (.CI(clk_counter0_carry__4_n_0),
        .CO({NLW_clk_counter0_carry__5_CO_UNCONNECTED[3:1],clk_counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_clk_counter0_carry__5_O_UNCONNECTED[3:2],data0[26:25]}),
        .S({1'b0,1'b0,clk_counter[26:25]}));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clk_counter[0]_i_1 
       (.I0(clk_counter[0]),
        .O(clk_counter_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[10]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[10]),
        .O(clk_counter_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[11]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[11]),
        .O(clk_counter_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[12]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[12]),
        .O(clk_counter_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[13]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[13]),
        .O(clk_counter_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[14]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[14]),
        .O(clk_counter_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[15]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[15]),
        .O(clk_counter_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[16]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[16]),
        .O(clk_counter_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[17]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[17]),
        .O(clk_counter_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[18]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[18]),
        .O(clk_counter_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[19]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[19]),
        .O(clk_counter_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[1]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[1]),
        .O(clk_counter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[20]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[20]),
        .O(clk_counter_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[21]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[21]),
        .O(clk_counter_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[22]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[22]),
        .O(clk_counter_0[22]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[23]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[23]),
        .O(clk_counter_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[24]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[24]),
        .O(clk_counter_0[24]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[25]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[25]),
        .O(clk_counter_0[25]));
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[26]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[26]),
        .O(clk_counter_0[26]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    \clk_counter[26]_i_2 
       (.I0(clk_counter[26]),
        .I1(clk_counter[25]),
        .I2(clk_counter[0]),
        .I3(\clk_counter[26]_i_5_n_0 ),
        .I4(\clk_counter[26]_i_6_n_0 ),
        .O(\clk_counter[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \clk_counter[26]_i_3 
       (.I0(clk_counter[7]),
        .I1(clk_counter[8]),
        .I2(clk_counter[5]),
        .I3(clk_counter[6]),
        .I4(\clk_counter[26]_i_7_n_0 ),
        .O(\clk_counter[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \clk_counter[26]_i_4 
       (.I0(clk_counter[15]),
        .I1(clk_counter[16]),
        .I2(clk_counter[13]),
        .I3(clk_counter[14]),
        .I4(\clk_counter[26]_i_8_n_0 ),
        .O(\clk_counter[26]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \clk_counter[26]_i_5 
       (.I0(clk_counter[21]),
        .I1(clk_counter[22]),
        .I2(clk_counter[24]),
        .I3(clk_counter[23]),
        .O(\clk_counter[26]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \clk_counter[26]_i_6 
       (.I0(clk_counter[2]),
        .I1(clk_counter[1]),
        .I2(clk_counter[4]),
        .I3(clk_counter[3]),
        .O(\clk_counter[26]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \clk_counter[26]_i_7 
       (.I0(clk_counter[10]),
        .I1(clk_counter[9]),
        .I2(clk_counter[11]),
        .I3(clk_counter[12]),
        .O(\clk_counter[26]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \clk_counter[26]_i_8 
       (.I0(clk_counter[18]),
        .I1(clk_counter[17]),
        .I2(clk_counter[20]),
        .I3(clk_counter[19]),
        .O(\clk_counter[26]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[2]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[2]),
        .O(clk_counter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[3]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[3]),
        .O(clk_counter_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[4]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[4]),
        .O(clk_counter_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[5]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[5]),
        .O(clk_counter_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[6]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[6]),
        .O(clk_counter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[7]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[7]),
        .O(clk_counter_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[8]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[8]),
        .O(clk_counter_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_counter[9]_i_1 
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .I3(data0[9]),
        .O(clk_counter_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[0]),
        .Q(clk_counter[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[10] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[10]),
        .Q(clk_counter[10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[11] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[11]),
        .Q(clk_counter[11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[12] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[12]),
        .Q(clk_counter[12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[13] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[13]),
        .Q(clk_counter[13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[14] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[14]),
        .Q(clk_counter[14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[15] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[15]),
        .Q(clk_counter[15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[16] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[16]),
        .Q(clk_counter[16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[17] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[17]),
        .Q(clk_counter[17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[18] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[18]),
        .Q(clk_counter[18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[19] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[19]),
        .Q(clk_counter[19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[1]),
        .Q(clk_counter[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[20] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[20]),
        .Q(clk_counter[20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[21] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[21]),
        .Q(clk_counter[21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[22] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[22]),
        .Q(clk_counter[22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[23] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[23]),
        .Q(clk_counter[23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[24] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[24]),
        .Q(clk_counter[24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[25] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[25]),
        .Q(clk_counter[25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[26] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[26]),
        .Q(clk_counter[26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[2]),
        .Q(clk_counter[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[3]),
        .Q(clk_counter[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[4]),
        .Q(clk_counter[4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[5]),
        .Q(clk_counter[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[6]),
        .Q(clk_counter[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[7]),
        .Q(clk_counter[7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[8] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[8]),
        .Q(clk_counter[8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[9] 
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(clk_counter_0[9]),
        .Q(clk_counter[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h01)) 
    en_sig_i_1
       (.I0(\clk_counter[26]_i_2_n_0 ),
        .I1(\clk_counter[26]_i_3_n_0 ),
        .I2(\clk_counter[26]_i_4_n_0 ),
        .O(en_sig));
  FDRE #(
    .INIT(1'b0)) 
    en_sig_reg
       (.C(s00_axi_aclk),
        .CE(timer_enable),
        .D(en_sig),
        .Q(en_sig_reg_n_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \slv_reg0[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(slv_reg_wren__0),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[0]),
        .I5(\slv_reg0_reg_n_0_[0] ),
        .O(\slv_reg0[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \slv_reg0[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(slv_reg_wren__0),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[0]),
        .I5(\slv_reg0_reg_n_0_[1] ),
        .O(\slv_reg0[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[1]_i_2 
       (.I0(S_AXI_AWREADY),
        .I1(S_AXI_WREADY),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .O(slv_reg_wren__0));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg0[0]_i_1_n_0 ),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg0[1]_i_1_n_0 ),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg1[13]_i_1 
       (.I0(\slv_reg1[13]_i_2_n_0 ),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg1[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[13]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .O(\slv_reg1[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg1[7]_i_1 
       (.I0(\slv_reg1[13]_i_2_n_0 ),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[13]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[13]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[13]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[13]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg1_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg1_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg1_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg1_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg1_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg1_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg1_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[13]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg1_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[13]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg1_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    timer_enable_i_1
       (.I0(\slv_reg0_reg_n_0_[0] ),
        .I1(s00_axi_aresetn),
        .I2(timer_enable),
        .O(timer_enable_i_1_n_0));
  FDRE timer_enable_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_enable_i_1_n_0),
        .Q(timer_enable),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    timer_reset_i_1
       (.I0(\slv_reg0_reg_n_0_[1] ),
        .I1(s00_axi_aresetn),
        .I2(timer_reset),
        .O(timer_reset_i_1_n_0));
  FDRE timer_reset_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_reset_i_1_n_0),
        .Q(timer_reset),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer_value0_carry
       (.CI(1'b0),
        .CO({timer_value0_carry_n_0,timer_value0_carry_n_1,timer_value0_carry_n_2,timer_value0_carry_n_3}),
        .CYINIT(s00_axi_rdata[0]),
        .DI(s00_axi_rdata[4:1]),
        .O(timer_value0[4:1]),
        .S({timer_value0_carry_i_1_n_0,timer_value0_carry_i_2_n_0,timer_value0_carry_i_3_n_0,timer_value0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer_value0_carry__0
       (.CI(timer_value0_carry_n_0),
        .CO({timer_value0_carry__0_n_0,timer_value0_carry__0_n_1,timer_value0_carry__0_n_2,timer_value0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(s00_axi_rdata[8:5]),
        .O(timer_value0[8:5]),
        .S({timer_value0_carry__0_i_1_n_0,timer_value0_carry__0_i_2_n_0,timer_value0_carry__0_i_3_n_0,timer_value0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer_value0_carry__0_i_1
       (.I0(s00_axi_rdata[8]),
        .O(timer_value0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer_value0_carry__0_i_2
       (.I0(s00_axi_rdata[7]),
        .O(timer_value0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer_value0_carry__0_i_3
       (.I0(s00_axi_rdata[6]),
        .O(timer_value0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer_value0_carry__0_i_4
       (.I0(s00_axi_rdata[5]),
        .O(timer_value0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer_value0_carry__1
       (.CI(timer_value0_carry__0_n_0),
        .CO({timer_value0_carry__1_n_0,timer_value0_carry__1_n_1,timer_value0_carry__1_n_2,timer_value0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(s00_axi_rdata[12:9]),
        .O(timer_value0[12:9]),
        .S({timer_value0_carry__1_i_1_n_0,timer_value0_carry__1_i_2_n_0,timer_value0_carry__1_i_3_n_0,timer_value0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer_value0_carry__1_i_1
       (.I0(s00_axi_rdata[12]),
        .O(timer_value0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer_value0_carry__1_i_2
       (.I0(s00_axi_rdata[11]),
        .O(timer_value0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer_value0_carry__1_i_3
       (.I0(s00_axi_rdata[10]),
        .O(timer_value0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer_value0_carry__1_i_4
       (.I0(s00_axi_rdata[9]),
        .O(timer_value0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer_value0_carry__2
       (.CI(timer_value0_carry__1_n_0),
        .CO(NLW_timer_value0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_timer_value0_carry__2_O_UNCONNECTED[3:1],timer_value0[13]}),
        .S({1'b0,1'b0,1'b0,timer_value0_carry__2_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer_value0_carry__2_i_1
       (.I0(s00_axi_rdata[13]),
        .O(timer_value0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer_value0_carry_i_1
       (.I0(s00_axi_rdata[4]),
        .O(timer_value0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer_value0_carry_i_2
       (.I0(s00_axi_rdata[3]),
        .O(timer_value0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer_value0_carry_i_3
       (.I0(s00_axi_rdata[2]),
        .O(timer_value0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer_value0_carry_i_4
       (.I0(s00_axi_rdata[1]),
        .O(timer_value0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \timer_value[0]_i_1 
       (.I0(s00_axi_rdata[0]),
        .I1(\timer_value[13]_i_3_n_0 ),
        .I2(\slv_reg1_reg_n_0_[0] ),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \timer_value[10]_i_1 
       (.I0(timer_value0[10]),
        .I1(\timer_value[13]_i_3_n_0 ),
        .I2(\slv_reg1_reg_n_0_[10] ),
        .O(p_2_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \timer_value[11]_i_1 
       (.I0(timer_value0[11]),
        .I1(\timer_value[13]_i_3_n_0 ),
        .I2(\slv_reg1_reg_n_0_[11] ),
        .O(p_2_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \timer_value[12]_i_1 
       (.I0(timer_value0[12]),
        .I1(\timer_value[13]_i_3_n_0 ),
        .I2(\slv_reg1_reg_n_0_[12] ),
        .O(p_2_in[12]));
  LUT2 #(
    .INIT(4'hE)) 
    \timer_value[13]_i_1 
       (.I0(timer_reset),
        .I1(\timer_value[13]_i_3_n_0 ),
        .O(\timer_value[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \timer_value[13]_i_2 
       (.I0(timer_value0[13]),
        .I1(\timer_value[13]_i_3_n_0 ),
        .I2(\slv_reg1_reg_n_0_[13] ),
        .O(p_2_in[13]));
  LUT5 #(
    .INIT(32'hFD000000)) 
    \timer_value[13]_i_3 
       (.I0(\timer_value[13]_i_4_n_0 ),
        .I1(\timer_value[13]_i_5_n_0 ),
        .I2(\timer_value[13]_i_6_n_0 ),
        .I3(timer_enable),
        .I4(en_sig_reg_n_0),
        .O(\timer_value[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \timer_value[13]_i_4 
       (.I0(s00_axi_rdata[0]),
        .I1(s00_axi_rdata[11]),
        .I2(s00_axi_rdata[13]),
        .I3(s00_axi_rdata[1]),
        .I4(s00_axi_rdata[5]),
        .I5(s00_axi_rdata[4]),
        .O(\timer_value[13]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer_value[13]_i_5 
       (.I0(s00_axi_rdata[8]),
        .I1(s00_axi_rdata[12]),
        .I2(s00_axi_rdata[2]),
        .I3(s00_axi_rdata[7]),
        .O(\timer_value[13]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer_value[13]_i_6 
       (.I0(s00_axi_rdata[9]),
        .I1(s00_axi_rdata[10]),
        .I2(s00_axi_rdata[3]),
        .I3(s00_axi_rdata[6]),
        .O(\timer_value[13]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \timer_value[1]_i_1 
       (.I0(timer_value0[1]),
        .I1(\timer_value[13]_i_3_n_0 ),
        .I2(\slv_reg1_reg_n_0_[1] ),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \timer_value[2]_i_1 
       (.I0(timer_value0[2]),
        .I1(\timer_value[13]_i_3_n_0 ),
        .I2(\slv_reg1_reg_n_0_[2] ),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \timer_value[3]_i_1 
       (.I0(timer_value0[3]),
        .I1(\timer_value[13]_i_3_n_0 ),
        .I2(\slv_reg1_reg_n_0_[3] ),
        .O(p_2_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \timer_value[4]_i_1 
       (.I0(timer_value0[4]),
        .I1(\timer_value[13]_i_3_n_0 ),
        .I2(\slv_reg1_reg_n_0_[4] ),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \timer_value[5]_i_1 
       (.I0(timer_value0[5]),
        .I1(\timer_value[13]_i_3_n_0 ),
        .I2(\slv_reg1_reg_n_0_[5] ),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \timer_value[6]_i_1 
       (.I0(timer_value0[6]),
        .I1(\timer_value[13]_i_3_n_0 ),
        .I2(\slv_reg1_reg_n_0_[6] ),
        .O(p_2_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \timer_value[7]_i_1 
       (.I0(timer_value0[7]),
        .I1(\timer_value[13]_i_3_n_0 ),
        .I2(\slv_reg1_reg_n_0_[7] ),
        .O(p_2_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \timer_value[8]_i_1 
       (.I0(timer_value0[8]),
        .I1(\timer_value[13]_i_3_n_0 ),
        .I2(\slv_reg1_reg_n_0_[8] ),
        .O(p_2_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \timer_value[9]_i_1 
       (.I0(timer_value0[9]),
        .I1(\timer_value[13]_i_3_n_0 ),
        .I2(\slv_reg1_reg_n_0_[9] ),
        .O(p_2_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_value_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\timer_value[13]_i_1_n_0 ),
        .D(p_2_in[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_value_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\timer_value[13]_i_1_n_0 ),
        .D(p_2_in[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_value_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\timer_value[13]_i_1_n_0 ),
        .D(p_2_in[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_value_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\timer_value[13]_i_1_n_0 ),
        .D(p_2_in[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_value_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\timer_value[13]_i_1_n_0 ),
        .D(p_2_in[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \timer_value_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\timer_value[13]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(s00_axi_rdata[1]),
        .S(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_value_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\timer_value[13]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \timer_value_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\timer_value[13]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(s00_axi_rdata[3]),
        .S(axi_awready_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \timer_value_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\timer_value[13]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(s00_axi_rdata[4]),
        .S(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_value_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\timer_value[13]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \timer_value_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\timer_value[13]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(s00_axi_rdata[6]),
        .S(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_value_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\timer_value[13]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_value_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\timer_value[13]_i_1_n_0 ),
        .D(p_2_in[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_value_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\timer_value[13]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "ip_design_bonustimer_0_0,bonustimer_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "bonustimer_v1_0,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1.25e+08, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN ip_design_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 1.25e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ip_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [13:0]\^s00_axi_rdata ;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rdata[31] = \<const0> ;
  assign s00_axi_rdata[30] = \<const0> ;
  assign s00_axi_rdata[29] = \<const0> ;
  assign s00_axi_rdata[28] = \<const0> ;
  assign s00_axi_rdata[27] = \<const0> ;
  assign s00_axi_rdata[26] = \<const0> ;
  assign s00_axi_rdata[25] = \<const0> ;
  assign s00_axi_rdata[24] = \<const0> ;
  assign s00_axi_rdata[23] = \<const0> ;
  assign s00_axi_rdata[22] = \<const0> ;
  assign s00_axi_rdata[21] = \<const0> ;
  assign s00_axi_rdata[20] = \<const0> ;
  assign s00_axi_rdata[19] = \<const0> ;
  assign s00_axi_rdata[18] = \<const0> ;
  assign s00_axi_rdata[17] = \<const0> ;
  assign s00_axi_rdata[16] = \<const0> ;
  assign s00_axi_rdata[15] = \<const0> ;
  assign s00_axi_rdata[14] = \<const0> ;
  assign s00_axi_rdata[13:0] = \^s00_axi_rdata [13:0];
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bonustimer_v1_0 U0
       (.S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(\^s00_axi_rdata ),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata[13:0]),
        .s00_axi_wstrb(s00_axi_wstrb[1:0]),
        .s00_axi_wvalid(s00_axi_wvalid));
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
