// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Apr  6 17:42:58 2025
// Host        : Shri running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Lipsi_clk_div_100m_to_1Hz_0_0_sim_netlist.v
// Design      : Lipsi_clk_div_100m_to_1Hz_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Lipsi_clk_div_100m_to_1Hz_0_0,clk_div_100m_to_1Hz,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "clk_div_100m_to_1Hz,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk_100M,
    clk_1Hz);
  input clk_100M;
  output clk_1Hz;

  wire clk_100M;
  wire clk_1Hz;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_div_100m_to_1Hz inst
       (.clk_100M(clk_100M),
        .clk_1Hz(clk_1Hz));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_div_100m_to_1Hz
   (clk_1Hz,
    clk_100M);
  output clk_1Hz;
  input clk_100M;

  wire clk_100M;
  wire clk_1Hz;
  wire clk_1Hz_0;
  wire clk_1Hz_i_1_n_0;
  wire [25:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__3_n_0;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry__4_n_0;
  wire counter0_carry__4_n_1;
  wire counter0_carry__4_n_2;
  wire counter0_carry__4_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire \counter[25]_i_2_n_0 ;
  wire \counter[25]_i_3_n_0 ;
  wire \counter[25]_i_4_n_0 ;
  wire \counter[25]_i_5_n_0 ;
  wire \counter[25]_i_6_n_0 ;
  wire \counter[25]_i_7_n_0 ;
  wire [25:0]p_1_in;
  wire [3:0]NLW_counter0_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_counter0_carry__5_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    clk_1Hz_i_1
       (.I0(clk_1Hz_0),
        .I1(clk_1Hz),
        .O(clk_1Hz_i_1_n_0));
  FDRE clk_1Hz_reg
       (.C(clk_100M),
        .CE(1'b1),
        .D(clk_1Hz_i_1_n_0),
        .Q(clk_1Hz),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[4:1]),
        .S(counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[8:5]),
        .S(counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[12:9]),
        .S(counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[16:13]),
        .S(counter[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({counter0_carry__3_n_0,counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[20:17]),
        .S(counter[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CO({counter0_carry__4_n_0,counter0_carry__4_n_1,counter0_carry__4_n_2,counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[24:21]),
        .S(counter[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__5
       (.CI(counter0_carry__4_n_0),
        .CO(NLW_counter0_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__5_O_UNCONNECTED[3:1],p_1_in[25]}),
        .S({1'b0,1'b0,1'b0,counter[25]}));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \counter[25]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(\counter[25]_i_3_n_0 ),
        .I2(\counter[25]_i_4_n_0 ),
        .I3(\counter[25]_i_5_n_0 ),
        .I4(\counter[25]_i_6_n_0 ),
        .I5(\counter[25]_i_7_n_0 ),
        .O(clk_1Hz_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[25]_i_2 
       (.I0(counter[20]),
        .I1(counter[6]),
        .I2(counter[2]),
        .I3(counter[5]),
        .O(\counter[25]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \counter[25]_i_3 
       (.I0(counter[11]),
        .I1(counter[7]),
        .I2(counter[1]),
        .I3(counter[18]),
        .O(\counter[25]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \counter[25]_i_4 
       (.I0(counter[21]),
        .I1(counter[12]),
        .I2(counter[13]),
        .I3(counter[0]),
        .O(\counter[25]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \counter[25]_i_5 
       (.I0(counter[19]),
        .I1(counter[15]),
        .I2(counter[14]),
        .I3(counter[24]),
        .O(\counter[25]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[25]_i_6 
       (.I0(counter[3]),
        .I1(counter[16]),
        .I2(counter[17]),
        .I3(counter[8]),
        .O(\counter[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7FFFFFFFFFF)) 
    \counter[25]_i_7 
       (.I0(counter[25]),
        .I1(counter[22]),
        .I2(counter[10]),
        .I3(counter[4]),
        .I4(counter[9]),
        .I5(counter[23]),
        .O(\counter[25]_i_7_n_0 ));
  FDRE \counter_reg[0] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(counter[0]),
        .R(clk_1Hz_0));
  FDRE \counter_reg[10] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(counter[10]),
        .R(clk_1Hz_0));
  FDRE \counter_reg[11] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(counter[11]),
        .R(clk_1Hz_0));
  FDRE \counter_reg[12] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(counter[12]),
        .R(clk_1Hz_0));
  FDRE \counter_reg[13] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(counter[13]),
        .R(clk_1Hz_0));
  FDRE \counter_reg[14] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(counter[14]),
        .R(clk_1Hz_0));
  FDRE \counter_reg[15] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(counter[15]),
        .R(clk_1Hz_0));
  FDRE \counter_reg[16] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[16]),
        .Q(counter[16]),
        .R(clk_1Hz_0));
  FDRE \counter_reg[17] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[17]),
        .Q(counter[17]),
        .R(clk_1Hz_0));
  FDRE \counter_reg[18] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[18]),
        .Q(counter[18]),
        .R(clk_1Hz_0));
  FDRE \counter_reg[19] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[19]),
        .Q(counter[19]),
        .R(clk_1Hz_0));
  FDRE \counter_reg[1] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(counter[1]),
        .R(clk_1Hz_0));
  FDRE \counter_reg[20] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[20]),
        .Q(counter[20]),
        .R(clk_1Hz_0));
  FDRE \counter_reg[21] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[21]),
        .Q(counter[21]),
        .R(clk_1Hz_0));
  FDRE \counter_reg[22] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[22]),
        .Q(counter[22]),
        .R(clk_1Hz_0));
  FDRE \counter_reg[23] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[23]),
        .Q(counter[23]),
        .R(clk_1Hz_0));
  FDRE \counter_reg[24] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[24]),
        .Q(counter[24]),
        .R(clk_1Hz_0));
  FDRE \counter_reg[25] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[25]),
        .Q(counter[25]),
        .R(clk_1Hz_0));
  FDRE \counter_reg[2] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(counter[2]),
        .R(clk_1Hz_0));
  FDRE \counter_reg[3] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(counter[3]),
        .R(clk_1Hz_0));
  FDRE \counter_reg[4] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(counter[4]),
        .R(clk_1Hz_0));
  FDRE \counter_reg[5] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(counter[5]),
        .R(clk_1Hz_0));
  FDRE \counter_reg[6] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(counter[6]),
        .R(clk_1Hz_0));
  FDRE \counter_reg[7] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(counter[7]),
        .R(clk_1Hz_0));
  FDRE \counter_reg[8] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(counter[8]),
        .R(clk_1Hz_0));
  FDRE \counter_reg[9] 
       (.C(clk_100M),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(counter[9]),
        .R(clk_1Hz_0));
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
