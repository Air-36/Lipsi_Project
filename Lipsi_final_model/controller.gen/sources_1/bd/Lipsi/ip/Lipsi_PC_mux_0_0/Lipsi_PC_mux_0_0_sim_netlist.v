// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Apr  6 17:41:45 2025
// Host        : Shri running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/shrin/Desktop/Vivado_projects/Lipsi_project/simulation/controller.gen/sources_1/bd/Lipsi/ip/Lipsi_PC_mux_0_0/Lipsi_PC_mux_0_0_sim_netlist.v
// Design      : Lipsi_PC_mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Lipsi_PC_mux_0_0,PC_mux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "PC_mux,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module Lipsi_PC_mux_0_0
   (rd_data,
    accumulator,
    adder,
    select,
    PC);
  input [7:0]rd_data;
  input [7:0]accumulator;
  input [7:0]adder;
  input [1:0]select;
  output PC;

  wire PC;
  wire [7:0]accumulator;
  wire [7:0]adder;
  wire [7:0]rd_data;
  wire [1:0]select;

  Lipsi_PC_mux_0_0_PC_mux inst
       (.PC(PC),
        .accumulator(accumulator[0]),
        .adder(adder[0]),
        .rd_data(rd_data[0]),
        .select(select));
endmodule

(* ORIG_REF_NAME = "PC_mux" *) 
module Lipsi_PC_mux_0_0_PC_mux
   (PC,
    accumulator,
    rd_data,
    adder,
    select);
  output PC;
  input [0:0]accumulator;
  input [0:0]rd_data;
  input [0:0]adder;
  input [1:0]select;

  wire PC;
  wire [0:0]accumulator;
  wire [0:0]adder;
  wire [0:0]rd_data;
  wire [1:0]select;

  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    PC__0
       (.I0(accumulator),
        .I1(rd_data),
        .I2(adder),
        .I3(select[0]),
        .I4(select[1]),
        .O(PC));
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
