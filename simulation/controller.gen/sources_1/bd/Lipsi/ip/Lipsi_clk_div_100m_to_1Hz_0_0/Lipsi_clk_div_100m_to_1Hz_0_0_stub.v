// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Apr  6 17:42:59 2025
// Host        : Shri running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/shrin/Desktop/Vivado_projects/Lipsi_project/simulation/controller.gen/sources_1/bd/Lipsi/ip/Lipsi_clk_div_100m_to_1Hz_0_0/Lipsi_clk_div_100m_to_1Hz_0_0_stub.v
// Design      : Lipsi_clk_div_100m_to_1Hz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "clk_div_100m_to_1Hz,Vivado 2023.2" *)
module Lipsi_clk_div_100m_to_1Hz_0_0(clk_100M, clk_1Hz)
/* synthesis syn_black_box black_box_pad_pin="clk_1Hz" */
/* synthesis syn_force_seq_prim="clk_100M" */;
  input clk_100M /* synthesis syn_isclock = 1 */;
  output clk_1Hz;
endmodule
