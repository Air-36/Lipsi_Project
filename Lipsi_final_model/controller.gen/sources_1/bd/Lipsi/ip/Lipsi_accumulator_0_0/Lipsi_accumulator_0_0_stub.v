// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Apr  6 17:42:59 2025
// Host        : Shri running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/shrin/Desktop/Vivado_projects/Lipsi_project/simulation/controller.gen/sources_1/bd/Lipsi/ip/Lipsi_accumulator_0_0/Lipsi_accumulator_0_0_stub.v
// Design      : Lipsi_accumulator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "accumulator,Vivado 2023.2" *)
module Lipsi_accumulator_0_0(alu_out, accu_en, clk, accu_out)
/* synthesis syn_black_box black_box_pad_pin="alu_out[7:0],clk,accu_out[7:0]" */
/* synthesis syn_force_seq_prim="accu_en" */;
  input [7:0]alu_out;
  input accu_en /* synthesis syn_isclock = 1 */;
  input clk;
  output [7:0]accu_out;
endmodule
