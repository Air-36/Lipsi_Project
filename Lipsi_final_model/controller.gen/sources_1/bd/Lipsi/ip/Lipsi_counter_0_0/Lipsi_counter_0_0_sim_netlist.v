// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Apr  6 17:41:45 2025
// Host        : Shri running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/shrin/Desktop/Vivado_projects/Lipsi_project/simulation/controller.gen/sources_1/bd/Lipsi/ip/Lipsi_counter_0_0/Lipsi_counter_0_0_sim_netlist.v
// Design      : Lipsi_counter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Lipsi_counter_0_0,counter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "counter,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module Lipsi_counter_0_0
   (PC_out,
    PC_mux);
  input [7:0]PC_out;
  output [7:0]PC_mux;

  wire [7:0]PC_mux;
  wire [7:0]PC_out;

  Lipsi_counter_0_0_counter inst
       (.PC_mux(PC_mux),
        .PC_out(PC_out));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module Lipsi_counter_0_0_counter
   (PC_mux,
    PC_out);
  output [7:0]PC_mux;
  input [7:0]PC_out;

  wire [7:0]PC_mux;
  wire \PC_mux[7]_INST_0_i_1_n_0 ;
  wire [7:0]PC_out;

  LUT1 #(
    .INIT(2'h1)) 
    \PC_mux[0]_INST_0 
       (.I0(PC_out[0]),
        .O(PC_mux[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \PC_mux[1]_INST_0 
       (.I0(PC_out[0]),
        .I1(PC_out[1]),
        .O(PC_mux[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \PC_mux[2]_INST_0 
       (.I0(PC_out[0]),
        .I1(PC_out[1]),
        .I2(PC_out[2]),
        .O(PC_mux[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \PC_mux[3]_INST_0 
       (.I0(PC_out[1]),
        .I1(PC_out[0]),
        .I2(PC_out[2]),
        .I3(PC_out[3]),
        .O(PC_mux[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \PC_mux[4]_INST_0 
       (.I0(PC_out[2]),
        .I1(PC_out[0]),
        .I2(PC_out[1]),
        .I3(PC_out[3]),
        .I4(PC_out[4]),
        .O(PC_mux[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \PC_mux[5]_INST_0 
       (.I0(PC_out[3]),
        .I1(PC_out[1]),
        .I2(PC_out[0]),
        .I3(PC_out[2]),
        .I4(PC_out[4]),
        .I5(PC_out[5]),
        .O(PC_mux[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \PC_mux[6]_INST_0 
       (.I0(\PC_mux[7]_INST_0_i_1_n_0 ),
        .I1(PC_out[6]),
        .O(PC_mux[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \PC_mux[7]_INST_0 
       (.I0(\PC_mux[7]_INST_0_i_1_n_0 ),
        .I1(PC_out[6]),
        .I2(PC_out[7]),
        .O(PC_mux[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \PC_mux[7]_INST_0_i_1 
       (.I0(PC_out[5]),
        .I1(PC_out[3]),
        .I2(PC_out[1]),
        .I3(PC_out[0]),
        .I4(PC_out[2]),
        .I5(PC_out[4]),
        .O(\PC_mux[7]_INST_0_i_1_n_0 ));
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
