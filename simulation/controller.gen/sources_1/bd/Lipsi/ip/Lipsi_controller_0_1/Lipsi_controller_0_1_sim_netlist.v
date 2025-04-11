// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Apr  6 17:41:45 2025
// Host        : Shri running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/shrin/Desktop/Vivado_projects/Lipsi_project/simulation/controller.gen/sources_1/bd/Lipsi/ip/Lipsi_controller_0_1/Lipsi_controller_0_1_sim_netlist.v
// Design      : Lipsi_controller_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Lipsi_controller_0_1,controller,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "controller,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module Lipsi_controller_0_1
   (clk,
    instruction,
    accumulator,
    alu_select,
    wr_en,
    PC_en,
    A_en,
    addr_mux,
    data_mux,
    PC_mux);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input [7:0]instruction;
  input [7:0]accumulator;
  output [2:0]alu_select;
  output wr_en;
  output PC_en;
  output A_en;
  output addr_mux;
  output data_mux;
  output [1:0]PC_mux;

  wire \<const0> ;
  wire A_en;
  wire PC_en;
  wire [1:0]PC_mux;
  wire [7:0]accumulator;
  wire [2:0]alu_select;
  wire clk;
  wire data_mux;
  wire [7:0]instruction;
  wire wr_en;

  assign addr_mux = \<const0> ;
  GND GND
       (.G(\<const0> ));
  Lipsi_controller_0_1_controller inst
       (.A_en(A_en),
        .PC_en(PC_en),
        .PC_mux(PC_mux),
        .accumulator(accumulator),
        .alu_select(alu_select),
        .clk(clk),
        .data_mux(data_mux),
        .instruction({instruction[7:4],instruction[1:0]}),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "controller" *) 
module Lipsi_controller_0_1_controller
   (alu_select,
    wr_en,
    PC_en,
    A_en,
    data_mux,
    PC_mux,
    instruction,
    clk,
    accumulator);
  output [2:0]alu_select;
  output wr_en;
  output PC_en;
  output A_en;
  output data_mux;
  output [1:0]PC_mux;
  input [5:0]instruction;
  input clk;
  input [7:0]accumulator;

  wire A_en;
  wire A_en_reg_i_1_n_0;
  wire PC_en;
  wire PC_en_reg_i_1_n_0;
  wire [1:0]PC_mux;
  wire \PC_mux_reg[0]_i_1_n_0 ;
  wire \PC_mux_reg[1]_i_1_n_0 ;
  wire \PC_mux_reg[1]_i_2_n_0 ;
  wire \PC_mux_reg[1]_i_3_n_0 ;
  wire \PC_mux_reg[1]_i_4_n_0 ;
  wire \PC_mux_reg[1]_i_5_n_0 ;
  wire \PC_mux_reg[1]_i_6_n_0 ;
  wire [7:0]accumulator;
  wire [2:0]alu_select;
  wire \alu_select_reg[0]_i_1_n_0 ;
  wire \alu_select_reg[1]_i_1_n_0 ;
  wire \alu_select_reg[2]_i_1_n_0 ;
  wire \alu_select_reg[2]_i_2_n_0 ;
  wire \alu_select_reg[2]_i_3_n_0 ;
  wire \alu_select_reg[2]_i_4_n_0 ;
  wire \alu_select_reg[2]_i_5_n_0 ;
  wire \alu_select_reg[2]_i_6_n_0 ;
  wire clk;
  wire data_mux;
  wire data_mux0_out;
  wire ins_store_en;
  wire ins_store_en_reg_i_1_n_0;
  wire \ins_store_reg_n_0_[0] ;
  wire \ins_store_reg_n_0_[1] ;
  wire \ins_store_reg_n_0_[4] ;
  wire \ins_store_reg_n_0_[5] ;
  wire \ins_store_reg_n_0_[6] ;
  wire [5:0]instruction;
  wire [1:0]ns;
  wire \ns_reg[0]_i_1_n_0 ;
  wire \ns_reg[1]_i_1_n_0 ;
  wire \ns_reg[1]_i_2_n_0 ;
  wire \ns_reg[1]_i_3_n_0 ;
  wire \ns_reg[1]_i_4_n_0 ;
  wire \ns_reg[1]_i_5_n_0 ;
  wire p_1_in;
  wire [1:0]state;
  wire wr_en;
  wire wr_en1_out;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    A_en_reg
       (.CLR(1'b0),
        .D(A_en_reg_i_1_n_0),
        .G(\alu_select_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(A_en));
  LUT6 #(
    .INIT(64'h0AFA0A8A0A8A0A8A)) 
    A_en_reg_i_1
       (.I0(state[0]),
        .I1(\ins_store_reg_n_0_[6] ),
        .I2(p_1_in),
        .I3(\ins_store_reg_n_0_[4] ),
        .I4(state[1]),
        .I5(\ins_store_reg_n_0_[5] ),
        .O(A_en_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    PC_en_reg
       (.CLR(1'b0),
        .D(PC_en_reg_i_1_n_0),
        .G(\alu_select_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(PC_en));
  LUT6 #(
    .INIT(64'h55FFFDFF55005D00)) 
    PC_en_reg_i_1
       (.I0(\ins_store_reg_n_0_[5] ),
        .I1(state[1]),
        .I2(\ins_store_reg_n_0_[4] ),
        .I3(p_1_in),
        .I4(\ins_store_reg_n_0_[6] ),
        .I5(state[0]),
        .O(PC_en_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_mux_reg[0] 
       (.CLR(1'b0),
        .D(\PC_mux_reg[0]_i_1_n_0 ),
        .G(\alu_select_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(PC_mux[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \PC_mux_reg[0]_i_1 
       (.I0(\ins_store_reg_n_0_[6] ),
        .I1(\ins_store_reg_n_0_[5] ),
        .I2(p_1_in),
        .I3(\ins_store_reg_n_0_[4] ),
        .O(\PC_mux_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_mux_reg[1] 
       (.CLR(1'b0),
        .D(\PC_mux_reg[1]_i_1_n_0 ),
        .G(\alu_select_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(PC_mux[1]));
  LUT6 #(
    .INIT(64'hEEEFEEEEFFFEEEEE)) 
    \PC_mux_reg[1]_i_1 
       (.I0(\PC_mux_reg[1]_i_2_n_0 ),
        .I1(\PC_mux_reg[1]_i_3_n_0 ),
        .I2(\PC_mux_reg[1]_i_4_n_0 ),
        .I3(\PC_mux_reg[1]_i_5_n_0 ),
        .I4(\PC_mux_reg[1]_i_6_n_0 ),
        .I5(\ins_store_reg_n_0_[0] ),
        .O(\PC_mux_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2424FF04AAAAAAAA)) 
    \PC_mux_reg[1]_i_2 
       (.I0(state[0]),
        .I1(\ins_store_reg_n_0_[6] ),
        .I2(\ins_store_reg_n_0_[5] ),
        .I3(state[1]),
        .I4(\ins_store_reg_n_0_[4] ),
        .I5(p_1_in),
        .O(\PC_mux_reg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \PC_mux_reg[1]_i_3 
       (.I0(p_1_in),
        .I1(\ins_store_reg_n_0_[4] ),
        .I2(\ins_store_reg_n_0_[5] ),
        .O(\PC_mux_reg[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \PC_mux_reg[1]_i_4 
       (.I0(accumulator[1]),
        .I1(accumulator[0]),
        .I2(accumulator[3]),
        .I3(accumulator[2]),
        .O(\PC_mux_reg[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \PC_mux_reg[1]_i_5 
       (.I0(accumulator[5]),
        .I1(accumulator[4]),
        .I2(accumulator[7]),
        .I3(accumulator[6]),
        .O(\PC_mux_reg[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \PC_mux_reg[1]_i_6 
       (.I0(\ins_store_reg_n_0_[1] ),
        .I1(\ins_store_reg_n_0_[6] ),
        .I2(\ins_store_reg_n_0_[5] ),
        .I3(state[0]),
        .O(\PC_mux_reg[1]_i_6_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \alu_select_reg[0] 
       (.CLR(1'b0),
        .D(\alu_select_reg[0]_i_1_n_0 ),
        .G(\alu_select_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(alu_select[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h2C202020)) 
    \alu_select_reg[0]_i_1 
       (.I0(state[0]),
        .I1(p_1_in),
        .I2(\ins_store_reg_n_0_[4] ),
        .I3(state[1]),
        .I4(\ins_store_reg_n_0_[5] ),
        .O(\alu_select_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \alu_select_reg[1] 
       (.CLR(1'b0),
        .D(\alu_select_reg[1]_i_1_n_0 ),
        .G(\alu_select_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(alu_select[1]));
  LUT6 #(
    .INIT(64'h0CFC0C8C00000000)) 
    \alu_select_reg[1]_i_1 
       (.I0(\ins_store_reg_n_0_[6] ),
        .I1(state[0]),
        .I2(p_1_in),
        .I3(\ins_store_reg_n_0_[4] ),
        .I4(state[1]),
        .I5(\ins_store_reg_n_0_[5] ),
        .O(\alu_select_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \alu_select_reg[2] 
       (.CLR(1'b0),
        .D(\alu_select_reg[2]_i_1_n_0 ),
        .G(\alu_select_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(alu_select[2]));
  LUT6 #(
    .INIT(64'h08F8088808880888)) 
    \alu_select_reg[2]_i_1 
       (.I0(\ins_store_reg_n_0_[6] ),
        .I1(state[0]),
        .I2(p_1_in),
        .I3(\ins_store_reg_n_0_[4] ),
        .I4(state[1]),
        .I5(\ins_store_reg_n_0_[5] ),
        .O(\alu_select_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEEEEEE)) 
    \alu_select_reg[2]_i_2 
       (.I0(\alu_select_reg[2]_i_3_n_0 ),
        .I1(\alu_select_reg[2]_i_4_n_0 ),
        .I2(\alu_select_reg[2]_i_5_n_0 ),
        .I3(\ins_store_reg_n_0_[5] ),
        .I4(\ins_store_reg_n_0_[6] ),
        .I5(\alu_select_reg[2]_i_6_n_0 ),
        .O(\alu_select_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1113000033333333)) 
    \alu_select_reg[2]_i_3 
       (.I0(\ins_store_reg_n_0_[5] ),
        .I1(\ins_store_reg_n_0_[6] ),
        .I2(state[0]),
        .I3(\ins_store_reg_n_0_[4] ),
        .I4(p_1_in),
        .I5(state[1]),
        .O(\alu_select_reg[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000B0BF)) 
    \alu_select_reg[2]_i_4 
       (.I0(\ins_store_reg_n_0_[1] ),
        .I1(\ins_store_reg_n_0_[0] ),
        .I2(\ins_store_reg_n_0_[4] ),
        .I3(\ins_store_reg_n_0_[5] ),
        .I4(state[1]),
        .O(\alu_select_reg[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \alu_select_reg[2]_i_5 
       (.I0(\ins_store_reg_n_0_[4] ),
        .I1(p_1_in),
        .O(\alu_select_reg[2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \alu_select_reg[2]_i_6 
       (.I0(p_1_in),
        .I1(state[1]),
        .O(\alu_select_reg[2]_i_6_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    data_mux_reg
       (.CLR(1'b0),
        .D(data_mux0_out),
        .G(\alu_select_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(data_mux));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h20000300)) 
    data_mux_reg_i_1
       (.I0(state[0]),
        .I1(\ins_store_reg_n_0_[6] ),
        .I2(\ins_store_reg_n_0_[5] ),
        .I3(p_1_in),
        .I4(\ins_store_reg_n_0_[4] ),
        .O(data_mux0_out));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    ins_store_en_reg
       (.CLR(1'b0),
        .D(ins_store_en_reg_i_1_n_0),
        .G(\alu_select_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(ins_store_en));
  LUT6 #(
    .INIT(64'hEAFAEACABABABABA)) 
    ins_store_en_reg_i_1
       (.I0(state[0]),
        .I1(\ins_store_reg_n_0_[6] ),
        .I2(p_1_in),
        .I3(\ins_store_reg_n_0_[4] ),
        .I4(state[1]),
        .I5(\ins_store_reg_n_0_[5] ),
        .O(ins_store_en_reg_i_1_n_0));
  FDRE \ins_store_reg[0] 
       (.C(clk),
        .CE(ins_store_en),
        .D(instruction[0]),
        .Q(\ins_store_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \ins_store_reg[1] 
       (.C(clk),
        .CE(ins_store_en),
        .D(instruction[1]),
        .Q(\ins_store_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \ins_store_reg[4] 
       (.C(clk),
        .CE(ins_store_en),
        .D(instruction[2]),
        .Q(\ins_store_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \ins_store_reg[5] 
       (.C(clk),
        .CE(ins_store_en),
        .D(instruction[3]),
        .Q(\ins_store_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \ins_store_reg[6] 
       (.C(clk),
        .CE(ins_store_en),
        .D(instruction[4]),
        .Q(\ins_store_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \ins_store_reg[7] 
       (.C(clk),
        .CE(ins_store_en),
        .D(instruction[5]),
        .Q(p_1_in),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ns_reg[0] 
       (.CLR(1'b0),
        .D(\ns_reg[0]_i_1_n_0 ),
        .G(\ns_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(ns[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000FBFF)) 
    \ns_reg[0]_i_1 
       (.I0(\ins_store_reg_n_0_[6] ),
        .I1(p_1_in),
        .I2(\ins_store_reg_n_0_[4] ),
        .I3(state[1]),
        .I4(state[0]),
        .O(\ns_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ns_reg[1] 
       (.CLR(1'b0),
        .D(\ns_reg[1]_i_1_n_0 ),
        .G(\ns_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(ns[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \ns_reg[1]_i_1 
       (.I0(\ins_store_reg_n_0_[6] ),
        .I1(state[0]),
        .I2(p_1_in),
        .I3(\ins_store_reg_n_0_[4] ),
        .O(\ns_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFEEEFEEEFEEEF)) 
    \ns_reg[1]_i_2 
       (.I0(\ns_reg[1]_i_3_n_0 ),
        .I1(\ns_reg[1]_i_4_n_0 ),
        .I2(p_1_in),
        .I3(state[1]),
        .I4(\ns_reg[1]_i_5_n_0 ),
        .I5(\ins_store_reg_n_0_[1] ),
        .O(\ns_reg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00040404)) 
    \ns_reg[1]_i_3 
       (.I0(state[1]),
        .I1(\ins_store_reg_n_0_[6] ),
        .I2(\ins_store_reg_n_0_[5] ),
        .I3(\ins_store_reg_n_0_[4] ),
        .I4(\ins_store_reg_n_0_[0] ),
        .O(\ns_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0404040404044404)) 
    \ns_reg[1]_i_4 
       (.I0(\ins_store_reg_n_0_[6] ),
        .I1(\ins_store_reg_n_0_[5] ),
        .I2(state[1]),
        .I3(p_1_in),
        .I4(\ins_store_reg_n_0_[4] ),
        .I5(state[0]),
        .O(\ns_reg[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ns_reg[1]_i_5 
       (.I0(\ins_store_reg_n_0_[6] ),
        .I1(\ins_store_reg_n_0_[5] ),
        .O(\ns_reg[1]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(ns[0]),
        .Q(state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(ns[1]),
        .Q(state[1]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    wr_en_reg
       (.CLR(1'b0),
        .D(wr_en1_out),
        .G(\alu_select_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(wr_en));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000D050)) 
    wr_en_reg_i_1
       (.I0(\ins_store_reg_n_0_[5] ),
        .I1(\ins_store_reg_n_0_[4] ),
        .I2(p_1_in),
        .I3(state[0]),
        .I4(\ins_store_reg_n_0_[6] ),
        .O(wr_en1_out));
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
