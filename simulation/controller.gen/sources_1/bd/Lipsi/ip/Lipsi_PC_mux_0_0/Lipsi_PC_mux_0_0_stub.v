// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Apr  6 17:41:45 2025
// Host        : Shri running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/shrin/Desktop/Vivado_projects/Lipsi_project/simulation/controller.gen/sources_1/bd/Lipsi/ip/Lipsi_PC_mux_0_0/Lipsi_PC_mux_0_0_stub.v
// Design      : Lipsi_PC_mux_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "PC_mux,Vivado 2023.2" *)
module Lipsi_PC_mux_0_0(rd_data, accumulator, adder, select, PC)
/* synthesis syn_black_box black_box_pad_pin="rd_data[7:0],accumulator[7:0],adder[7:0],select[1:0],PC" */;
  input [7:0]rd_data;
  input [7:0]accumulator;
  input [7:0]adder;
  input [1:0]select;
  output PC;
endmodule
