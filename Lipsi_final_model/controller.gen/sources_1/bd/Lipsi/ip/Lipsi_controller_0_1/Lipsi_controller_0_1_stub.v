// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Apr  6 17:41:45 2025
// Host        : Shri running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/shrin/Desktop/Vivado_projects/Lipsi_project/simulation/controller.gen/sources_1/bd/Lipsi/ip/Lipsi_controller_0_1/Lipsi_controller_0_1_stub.v
// Design      : Lipsi_controller_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "controller,Vivado 2023.2" *)
module Lipsi_controller_0_1(clk, instruction, accumulator, alu_select, wr_en, 
  PC_en, A_en, addr_mux, data_mux, PC_mux)
/* synthesis syn_black_box black_box_pad_pin="instruction[7:0],accumulator[7:0],alu_select[2:0],wr_en,PC_en,A_en,addr_mux,data_mux,PC_mux[1:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input [7:0]instruction;
  input [7:0]accumulator;
  output [2:0]alu_select;
  output wr_en;
  output PC_en;
  output A_en;
  output addr_mux;
  output data_mux;
  output [1:0]PC_mux;
endmodule
