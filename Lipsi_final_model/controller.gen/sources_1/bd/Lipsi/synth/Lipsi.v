//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Sun Apr  6 17:40:33 2025
//Host        : Shri running 64-bit major release  (build 9200)
//Command     : generate_target Lipsi.bd
//Design      : Lipsi
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Lipsi,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Lipsi,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=9,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "Lipsi.hwdef" *) 
module Lipsi
   (clk,
    reset);
  input clk;
  input reset;

  wire Net;
  wire [7:0]PC_0_PC_out;
  wire PC_mux_0_PC;
  wire [7:0]accumulator_0_accu_out;
  wire [7:0]addr_mux_0_mem_addr;
  wire clk_div_100m_to_1Hz_0_clk_1Hz;
  wire controller_0_A_en;
  wire controller_0_PC_en;
  wire [1:0]controller_0_PC_mux;
  wire controller_0_addr_mux;
  wire controller_0_data_mux;
  wire controller_0_wr_en;
  wire [7:0]counter_0_PC_mux;
  wire [7:0]data_mux_0_mem_data;
  wire [7:0]memory_0_rd_data;
  wire reset_1;

  assign Net = clk;
  assign reset_1 = reset;
  Lipsi_PC_0_0 PC_0
       (.PC_en(controller_0_PC_en),
        .PC_out(PC_0_PC_out),
        .clk(clk_div_100m_to_1Hz_0_clk_1Hz),
        .mux_out({PC_mux_0_PC,PC_mux_0_PC,PC_mux_0_PC,PC_mux_0_PC,PC_mux_0_PC,PC_mux_0_PC,PC_mux_0_PC,PC_mux_0_PC}));
  Lipsi_PC_mux_0_0 PC_mux_0
       (.PC(PC_mux_0_PC),
        .accumulator(accumulator_0_accu_out),
        .adder(counter_0_PC_mux),
        .rd_data(memory_0_rd_data),
        .select(controller_0_PC_mux));
  Lipsi_accumulator_0_0 accumulator_0
       (.accu_en(controller_0_A_en),
        .accu_out(accumulator_0_accu_out),
        .alu_out({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clk(clk_div_100m_to_1Hz_0_clk_1Hz));
  Lipsi_addr_mux_0_0 addr_mux_0
       (.mem_addr(addr_mux_0_mem_addr),
        .rd_data(memory_0_rd_data),
        .select(controller_0_addr_mux));
  Lipsi_clk_div_100m_to_1Hz_0_0 clk_div_100m_to_1Hz_0
       (.clk_100M(Net),
        .clk_1Hz(clk_div_100m_to_1Hz_0_clk_1Hz));
  Lipsi_controller_0_1 controller_0
       (.A_en(controller_0_A_en),
        .PC_en(controller_0_PC_en),
        .PC_mux(controller_0_PC_mux),
        .accumulator(accumulator_0_accu_out),
        .addr_mux(controller_0_addr_mux),
        .clk(clk_div_100m_to_1Hz_0_clk_1Hz),
        .data_mux(controller_0_data_mux),
        .instruction(memory_0_rd_data),
        .wr_en(controller_0_wr_en));
  Lipsi_counter_0_0 counter_0
       (.PC_mux(counter_0_PC_mux),
        .PC_out(PC_0_PC_out));
  Lipsi_data_mux_0_0 data_mux_0
       (.A(accumulator_0_accu_out),
        .PC(PC_0_PC_out),
        .mem_data(data_mux_0_mem_data),
        .select(controller_0_data_mux));
  Lipsi_memory_0_0 memory_0
       (.clk100m(Net),
        .rd_addr(PC_0_PC_out),
        .rd_data(memory_0_rd_data),
        .reset(reset_1),
        .wr_addr(addr_mux_0_mem_addr),
        .wr_data(data_mux_0_mem_data),
        .wr_en(controller_0_wr_en));
endmodule
