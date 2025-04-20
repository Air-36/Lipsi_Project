//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Sun Apr  6 17:40:33 2025
//Host        : Shri running 64-bit major release  (build 9200)
//Command     : generate_target Lipsi_wrapper.bd
//Design      : Lipsi_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Lipsi_wrapper
   (clk,
    reset);
  input clk;
  input reset;

  wire clk;
  wire reset;

  Lipsi Lipsi_i
       (.clk(clk),
        .reset(reset));
endmodule
