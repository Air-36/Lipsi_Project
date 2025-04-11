// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Mar 27 16:49:30 2025
// Host        : Shri running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/shrin/Desktop/Vivado_projects/Lipsi_project/ALU/ALU.sim/sim_1/synth/timing/xsim/tb_time_synth.v
// Design      : ALU
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module ALU
   (enable,
    Op,
    rx2,
    c,
    rx);
  input [2:0]enable;
  input [7:0]Op;
  input [7:0]rx2;
  input c;
  output [7:0]rx;

  wire [7:0]Op;
  wire [7:0]Op_IBUF;
  wire c;
  wire c_IBUF;
  wire [7:0]data0;
  wire [7:0]data1;
  wire [7:0]data2;
  wire [2:0]enable;
  wire [2:0]enable_IBUF;
  wire [0:0]p_0_in;
  wire [7:0]rx;
  wire [7:0]rx2;
  wire [7:0]rx2_IBUF;
  wire [7:0]rx_OBUF;
  wire \rx_OBUF[0]_inst_i_2_n_0 ;
  wire \rx_OBUF[1]_inst_i_2_n_0 ;
  wire \rx_OBUF[2]_inst_i_2_n_0 ;
  wire \rx_OBUF[3]_inst_i_10_n_0 ;
  wire \rx_OBUF[3]_inst_i_11_n_0 ;
  wire \rx_OBUF[3]_inst_i_12_n_0 ;
  wire \rx_OBUF[3]_inst_i_13_n_0 ;
  wire \rx_OBUF[3]_inst_i_14_n_0 ;
  wire \rx_OBUF[3]_inst_i_15_n_0 ;
  wire \rx_OBUF[3]_inst_i_16_n_0 ;
  wire \rx_OBUF[3]_inst_i_17_n_0 ;
  wire \rx_OBUF[3]_inst_i_18_n_0 ;
  wire \rx_OBUF[3]_inst_i_19_n_0 ;
  wire \rx_OBUF[3]_inst_i_20_n_0 ;
  wire \rx_OBUF[3]_inst_i_21_n_0 ;
  wire \rx_OBUF[3]_inst_i_2_n_0 ;
  wire \rx_OBUF[3]_inst_i_3_n_0 ;
  wire \rx_OBUF[3]_inst_i_3_n_1 ;
  wire \rx_OBUF[3]_inst_i_3_n_2 ;
  wire \rx_OBUF[3]_inst_i_3_n_3 ;
  wire \rx_OBUF[3]_inst_i_4_n_0 ;
  wire \rx_OBUF[3]_inst_i_4_n_1 ;
  wire \rx_OBUF[3]_inst_i_4_n_2 ;
  wire \rx_OBUF[3]_inst_i_4_n_3 ;
  wire \rx_OBUF[3]_inst_i_5_n_0 ;
  wire \rx_OBUF[3]_inst_i_5_n_1 ;
  wire \rx_OBUF[3]_inst_i_5_n_2 ;
  wire \rx_OBUF[3]_inst_i_5_n_3 ;
  wire \rx_OBUF[3]_inst_i_7_n_0 ;
  wire \rx_OBUF[3]_inst_i_8_n_0 ;
  wire \rx_OBUF[3]_inst_i_9_n_0 ;
  wire \rx_OBUF[4]_inst_i_2_n_0 ;
  wire \rx_OBUF[5]_inst_i_2_n_0 ;
  wire \rx_OBUF[6]_inst_i_2_n_0 ;
  wire \rx_OBUF[7]_inst_i_10_n_0 ;
  wire \rx_OBUF[7]_inst_i_11_n_0 ;
  wire \rx_OBUF[7]_inst_i_12_n_0 ;
  wire \rx_OBUF[7]_inst_i_13_n_0 ;
  wire \rx_OBUF[7]_inst_i_14_n_0 ;
  wire \rx_OBUF[7]_inst_i_15_n_0 ;
  wire \rx_OBUF[7]_inst_i_16_n_0 ;
  wire \rx_OBUF[7]_inst_i_17_n_0 ;
  wire \rx_OBUF[7]_inst_i_18_n_0 ;
  wire \rx_OBUF[7]_inst_i_19_n_0 ;
  wire \rx_OBUF[7]_inst_i_20_n_0 ;
  wire \rx_OBUF[7]_inst_i_2_n_0 ;
  wire \rx_OBUF[7]_inst_i_3_n_1 ;
  wire \rx_OBUF[7]_inst_i_3_n_2 ;
  wire \rx_OBUF[7]_inst_i_3_n_3 ;
  wire \rx_OBUF[7]_inst_i_4_n_1 ;
  wire \rx_OBUF[7]_inst_i_4_n_2 ;
  wire \rx_OBUF[7]_inst_i_4_n_3 ;
  wire \rx_OBUF[7]_inst_i_5_n_1 ;
  wire \rx_OBUF[7]_inst_i_5_n_2 ;
  wire \rx_OBUF[7]_inst_i_5_n_3 ;
  wire \rx_OBUF[7]_inst_i_6_n_0 ;
  wire \rx_OBUF[7]_inst_i_7_n_0 ;
  wire \rx_OBUF[7]_inst_i_8_n_0 ;
  wire \rx_OBUF[7]_inst_i_9_n_0 ;
  wire [3:3]\NLW_rx_OBUF[7]_inst_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_rx_OBUF[7]_inst_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_rx_OBUF[7]_inst_i_5_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("tb_time_synth.sdf",,,,"tool_control");
end
  IBUF \Op_IBUF[0]_inst 
       (.I(Op[0]),
        .O(Op_IBUF[0]));
  IBUF \Op_IBUF[1]_inst 
       (.I(Op[1]),
        .O(Op_IBUF[1]));
  IBUF \Op_IBUF[2]_inst 
       (.I(Op[2]),
        .O(Op_IBUF[2]));
  IBUF \Op_IBUF[3]_inst 
       (.I(Op[3]),
        .O(Op_IBUF[3]));
  IBUF \Op_IBUF[4]_inst 
       (.I(Op[4]),
        .O(Op_IBUF[4]));
  IBUF \Op_IBUF[5]_inst 
       (.I(Op[5]),
        .O(Op_IBUF[5]));
  IBUF \Op_IBUF[6]_inst 
       (.I(Op[6]),
        .O(Op_IBUF[6]));
  IBUF \Op_IBUF[7]_inst 
       (.I(Op[7]),
        .O(Op_IBUF[7]));
  IBUF c_IBUF_inst
       (.I(c),
        .O(c_IBUF));
  IBUF \enable_IBUF[0]_inst 
       (.I(enable[0]),
        .O(enable_IBUF[0]));
  IBUF \enable_IBUF[1]_inst 
       (.I(enable[1]),
        .O(enable_IBUF[1]));
  IBUF \enable_IBUF[2]_inst 
       (.I(enable[2]),
        .O(enable_IBUF[2]));
  IBUF \rx2_IBUF[0]_inst 
       (.I(rx2[0]),
        .O(rx2_IBUF[0]));
  IBUF \rx2_IBUF[1]_inst 
       (.I(rx2[1]),
        .O(rx2_IBUF[1]));
  IBUF \rx2_IBUF[2]_inst 
       (.I(rx2[2]),
        .O(rx2_IBUF[2]));
  IBUF \rx2_IBUF[3]_inst 
       (.I(rx2[3]),
        .O(rx2_IBUF[3]));
  IBUF \rx2_IBUF[4]_inst 
       (.I(rx2[4]),
        .O(rx2_IBUF[4]));
  IBUF \rx2_IBUF[5]_inst 
       (.I(rx2[5]),
        .O(rx2_IBUF[5]));
  IBUF \rx2_IBUF[6]_inst 
       (.I(rx2[6]),
        .O(rx2_IBUF[6]));
  IBUF \rx2_IBUF[7]_inst 
       (.I(rx2[7]),
        .O(rx2_IBUF[7]));
  OBUF \rx_OBUF[0]_inst 
       (.I(rx_OBUF[0]),
        .O(rx[0]));
  LUT6 #(
    .INIT(64'hDC68FFFFDC680000)) 
    \rx_OBUF[0]_inst_i_1 
       (.I0(enable_IBUF[1]),
        .I1(Op_IBUF[0]),
        .I2(rx2_IBUF[0]),
        .I3(enable_IBUF[0]),
        .I4(enable_IBUF[2]),
        .I5(\rx_OBUF[0]_inst_i_2_n_0 ),
        .O(rx_OBUF[0]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \rx_OBUF[0]_inst_i_2 
       (.I0(data2[0]),
        .I1(enable_IBUF[1]),
        .I2(data1[0]),
        .I3(enable_IBUF[0]),
        .I4(data0[0]),
        .O(\rx_OBUF[0]_inst_i_2_n_0 ));
  OBUF \rx_OBUF[1]_inst 
       (.I(rx_OBUF[1]),
        .O(rx[1]));
  LUT6 #(
    .INIT(64'hDE60FFFFDE600000)) 
    \rx_OBUF[1]_inst_i_1 
       (.I0(enable_IBUF[1]),
        .I1(enable_IBUF[0]),
        .I2(rx2_IBUF[1]),
        .I3(Op_IBUF[1]),
        .I4(enable_IBUF[2]),
        .I5(\rx_OBUF[1]_inst_i_2_n_0 ),
        .O(rx_OBUF[1]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \rx_OBUF[1]_inst_i_2 
       (.I0(data2[1]),
        .I1(enable_IBUF[1]),
        .I2(data1[1]),
        .I3(enable_IBUF[0]),
        .I4(data0[1]),
        .O(\rx_OBUF[1]_inst_i_2_n_0 ));
  OBUF \rx_OBUF[2]_inst 
       (.I(rx_OBUF[2]),
        .O(rx[2]));
  LUT6 #(
    .INIT(64'hDE60FFFFDE600000)) 
    \rx_OBUF[2]_inst_i_1 
       (.I0(enable_IBUF[1]),
        .I1(enable_IBUF[0]),
        .I2(rx2_IBUF[2]),
        .I3(Op_IBUF[2]),
        .I4(enable_IBUF[2]),
        .I5(\rx_OBUF[2]_inst_i_2_n_0 ),
        .O(rx_OBUF[2]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \rx_OBUF[2]_inst_i_2 
       (.I0(data2[2]),
        .I1(enable_IBUF[1]),
        .I2(data1[2]),
        .I3(enable_IBUF[0]),
        .I4(data0[2]),
        .O(\rx_OBUF[2]_inst_i_2_n_0 ));
  OBUF \rx_OBUF[3]_inst 
       (.I(rx_OBUF[3]),
        .O(rx[3]));
  LUT6 #(
    .INIT(64'hDE60FFFFDE600000)) 
    \rx_OBUF[3]_inst_i_1 
       (.I0(enable_IBUF[1]),
        .I1(enable_IBUF[0]),
        .I2(rx2_IBUF[3]),
        .I3(Op_IBUF[3]),
        .I4(enable_IBUF[2]),
        .I5(\rx_OBUF[3]_inst_i_2_n_0 ),
        .O(rx_OBUF[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \rx_OBUF[3]_inst_i_10 
       (.I0(rx2_IBUF[0]),
        .I1(c_IBUF),
        .O(\rx_OBUF[3]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \rx_OBUF[3]_inst_i_11 
       (.I0(Op_IBUF[2]),
        .I1(rx2_IBUF[2]),
        .I2(enable_IBUF[1]),
        .O(\rx_OBUF[3]_inst_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \rx_OBUF[3]_inst_i_12 
       (.I0(Op_IBUF[1]),
        .I1(rx2_IBUF[1]),
        .I2(enable_IBUF[1]),
        .O(\rx_OBUF[3]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCDCDCDCDFF050500)) 
    \rx_OBUF[3]_inst_i_13 
       (.I0(enable_IBUF[1]),
        .I1(rx2_IBUF[0]),
        .I2(Op_IBUF[0]),
        .I3(c_IBUF),
        .I4(data0[0]),
        .I5(enable_IBUF[0]),
        .O(\rx_OBUF[3]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD22D0000D22D)) 
    \rx_OBUF[3]_inst_i_14 
       (.I0(rx2_IBUF[2]),
        .I1(Op_IBUF[2]),
        .I2(rx2_IBUF[3]),
        .I3(Op_IBUF[3]),
        .I4(enable_IBUF[1]),
        .I5(data0[3]),
        .O(\rx_OBUF[3]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD22D0000D22D)) 
    \rx_OBUF[3]_inst_i_15 
       (.I0(rx2_IBUF[1]),
        .I1(Op_IBUF[1]),
        .I2(rx2_IBUF[2]),
        .I3(Op_IBUF[2]),
        .I4(enable_IBUF[1]),
        .I5(data0[2]),
        .O(\rx_OBUF[3]_inst_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h5569AA69)) 
    \rx_OBUF[3]_inst_i_16 
       (.I0(\rx_OBUF[3]_inst_i_13_n_0 ),
        .I1(rx2_IBUF[1]),
        .I2(Op_IBUF[1]),
        .I3(enable_IBUF[1]),
        .I4(data0[1]),
        .O(\rx_OBUF[3]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h11111EE1EEEE1EE1)) 
    \rx_OBUF[3]_inst_i_17 
       (.I0(enable_IBUF[1]),
        .I1(Op_IBUF[0]),
        .I2(data0[0]),
        .I3(c_IBUF),
        .I4(enable_IBUF[0]),
        .I5(rx2_IBUF[0]),
        .O(\rx_OBUF[3]_inst_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rx_OBUF[3]_inst_i_18 
       (.I0(rx2_IBUF[3]),
        .I1(Op_IBUF[3]),
        .O(\rx_OBUF[3]_inst_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rx_OBUF[3]_inst_i_19 
       (.I0(rx2_IBUF[2]),
        .I1(Op_IBUF[2]),
        .O(\rx_OBUF[3]_inst_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \rx_OBUF[3]_inst_i_2 
       (.I0(data2[3]),
        .I1(enable_IBUF[1]),
        .I2(data1[3]),
        .I3(enable_IBUF[0]),
        .I4(data0[3]),
        .O(\rx_OBUF[3]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rx_OBUF[3]_inst_i_20 
       (.I0(rx2_IBUF[1]),
        .I1(Op_IBUF[1]),
        .O(\rx_OBUF[3]_inst_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rx_OBUF[3]_inst_i_21 
       (.I0(rx2_IBUF[0]),
        .I1(Op_IBUF[0]),
        .O(\rx_OBUF[3]_inst_i_21_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \rx_OBUF[3]_inst_i_3 
       (.CI(1'b0),
        .CO({\rx_OBUF[3]_inst_i_3_n_0 ,\rx_OBUF[3]_inst_i_3_n_1 ,\rx_OBUF[3]_inst_i_3_n_2 ,\rx_OBUF[3]_inst_i_3_n_3 }),
        .CYINIT(p_0_in),
        .DI(rx2_IBUF[3:0]),
        .O(data2[3:0]),
        .S({\rx_OBUF[3]_inst_i_7_n_0 ,\rx_OBUF[3]_inst_i_8_n_0 ,\rx_OBUF[3]_inst_i_9_n_0 ,\rx_OBUF[3]_inst_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \rx_OBUF[3]_inst_i_4 
       (.CI(1'b0),
        .CO({\rx_OBUF[3]_inst_i_4_n_0 ,\rx_OBUF[3]_inst_i_4_n_1 ,\rx_OBUF[3]_inst_i_4_n_2 ,\rx_OBUF[3]_inst_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\rx_OBUF[3]_inst_i_11_n_0 ,\rx_OBUF[3]_inst_i_12_n_0 ,\rx_OBUF[3]_inst_i_13_n_0 ,1'b0}),
        .O(data1[3:0]),
        .S({\rx_OBUF[3]_inst_i_14_n_0 ,\rx_OBUF[3]_inst_i_15_n_0 ,\rx_OBUF[3]_inst_i_16_n_0 ,\rx_OBUF[3]_inst_i_17_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rx_OBUF[3]_inst_i_5 
       (.CI(1'b0),
        .CO({\rx_OBUF[3]_inst_i_5_n_0 ,\rx_OBUF[3]_inst_i_5_n_1 ,\rx_OBUF[3]_inst_i_5_n_2 ,\rx_OBUF[3]_inst_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(rx2_IBUF[3:0]),
        .O(data0[3:0]),
        .S({\rx_OBUF[3]_inst_i_18_n_0 ,\rx_OBUF[3]_inst_i_19_n_0 ,\rx_OBUF[3]_inst_i_20_n_0 ,\rx_OBUF[3]_inst_i_21_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_OBUF[3]_inst_i_6 
       (.I0(Op_IBUF[0]),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h9)) 
    \rx_OBUF[3]_inst_i_7 
       (.I0(rx2_IBUF[3]),
        .I1(Op_IBUF[3]),
        .O(\rx_OBUF[3]_inst_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \rx_OBUF[3]_inst_i_8 
       (.I0(rx2_IBUF[2]),
        .I1(Op_IBUF[2]),
        .O(\rx_OBUF[3]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \rx_OBUF[3]_inst_i_9 
       (.I0(rx2_IBUF[1]),
        .I1(Op_IBUF[1]),
        .O(\rx_OBUF[3]_inst_i_9_n_0 ));
  OBUF \rx_OBUF[4]_inst 
       (.I(rx_OBUF[4]),
        .O(rx[4]));
  LUT6 #(
    .INIT(64'hDE60FFFFDE600000)) 
    \rx_OBUF[4]_inst_i_1 
       (.I0(enable_IBUF[1]),
        .I1(enable_IBUF[0]),
        .I2(rx2_IBUF[4]),
        .I3(Op_IBUF[4]),
        .I4(enable_IBUF[2]),
        .I5(\rx_OBUF[4]_inst_i_2_n_0 ),
        .O(rx_OBUF[4]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \rx_OBUF[4]_inst_i_2 
       (.I0(data2[4]),
        .I1(enable_IBUF[1]),
        .I2(data1[4]),
        .I3(enable_IBUF[0]),
        .I4(data0[4]),
        .O(\rx_OBUF[4]_inst_i_2_n_0 ));
  OBUF \rx_OBUF[5]_inst 
       (.I(rx_OBUF[5]),
        .O(rx[5]));
  LUT6 #(
    .INIT(64'hDE60FFFFDE600000)) 
    \rx_OBUF[5]_inst_i_1 
       (.I0(enable_IBUF[1]),
        .I1(enable_IBUF[0]),
        .I2(rx2_IBUF[5]),
        .I3(Op_IBUF[5]),
        .I4(enable_IBUF[2]),
        .I5(\rx_OBUF[5]_inst_i_2_n_0 ),
        .O(rx_OBUF[5]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \rx_OBUF[5]_inst_i_2 
       (.I0(data2[5]),
        .I1(enable_IBUF[1]),
        .I2(data1[5]),
        .I3(enable_IBUF[0]),
        .I4(data0[5]),
        .O(\rx_OBUF[5]_inst_i_2_n_0 ));
  OBUF \rx_OBUF[6]_inst 
       (.I(rx_OBUF[6]),
        .O(rx[6]));
  LUT6 #(
    .INIT(64'hDE60FFFFDE600000)) 
    \rx_OBUF[6]_inst_i_1 
       (.I0(enable_IBUF[1]),
        .I1(enable_IBUF[0]),
        .I2(rx2_IBUF[6]),
        .I3(Op_IBUF[6]),
        .I4(enable_IBUF[2]),
        .I5(\rx_OBUF[6]_inst_i_2_n_0 ),
        .O(rx_OBUF[6]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \rx_OBUF[6]_inst_i_2 
       (.I0(data2[6]),
        .I1(enable_IBUF[1]),
        .I2(data1[6]),
        .I3(enable_IBUF[0]),
        .I4(data0[6]),
        .O(\rx_OBUF[6]_inst_i_2_n_0 ));
  OBUF \rx_OBUF[7]_inst 
       (.I(rx_OBUF[7]),
        .O(rx[7]));
  LUT6 #(
    .INIT(64'hDE60FFFFDE600000)) 
    \rx_OBUF[7]_inst_i_1 
       (.I0(enable_IBUF[1]),
        .I1(enable_IBUF[0]),
        .I2(rx2_IBUF[7]),
        .I3(Op_IBUF[7]),
        .I4(enable_IBUF[2]),
        .I5(\rx_OBUF[7]_inst_i_2_n_0 ),
        .O(rx_OBUF[7]));
  LUT3 #(
    .INIT(8'h04)) 
    \rx_OBUF[7]_inst_i_10 
       (.I0(Op_IBUF[5]),
        .I1(rx2_IBUF[5]),
        .I2(enable_IBUF[1]),
        .O(\rx_OBUF[7]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \rx_OBUF[7]_inst_i_11 
       (.I0(Op_IBUF[4]),
        .I1(rx2_IBUF[4]),
        .I2(enable_IBUF[1]),
        .O(\rx_OBUF[7]_inst_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \rx_OBUF[7]_inst_i_12 
       (.I0(Op_IBUF[3]),
        .I1(rx2_IBUF[3]),
        .I2(enable_IBUF[1]),
        .O(\rx_OBUF[7]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB88BB88B8BB8B88B)) 
    \rx_OBUF[7]_inst_i_13 
       (.I0(data0[7]),
        .I1(enable_IBUF[1]),
        .I2(Op_IBUF[7]),
        .I3(rx2_IBUF[7]),
        .I4(rx2_IBUF[6]),
        .I5(Op_IBUF[6]),
        .O(\rx_OBUF[7]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD22D0000D22D)) 
    \rx_OBUF[7]_inst_i_14 
       (.I0(rx2_IBUF[5]),
        .I1(Op_IBUF[5]),
        .I2(rx2_IBUF[6]),
        .I3(Op_IBUF[6]),
        .I4(enable_IBUF[1]),
        .I5(data0[6]),
        .O(\rx_OBUF[7]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD22D0000D22D)) 
    \rx_OBUF[7]_inst_i_15 
       (.I0(rx2_IBUF[4]),
        .I1(Op_IBUF[4]),
        .I2(rx2_IBUF[5]),
        .I3(Op_IBUF[5]),
        .I4(enable_IBUF[1]),
        .I5(data0[5]),
        .O(\rx_OBUF[7]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD22D0000D22D)) 
    \rx_OBUF[7]_inst_i_16 
       (.I0(rx2_IBUF[3]),
        .I1(Op_IBUF[3]),
        .I2(rx2_IBUF[4]),
        .I3(Op_IBUF[4]),
        .I4(enable_IBUF[1]),
        .I5(data0[4]),
        .O(\rx_OBUF[7]_inst_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rx_OBUF[7]_inst_i_17 
       (.I0(Op_IBUF[7]),
        .I1(rx2_IBUF[7]),
        .O(\rx_OBUF[7]_inst_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rx_OBUF[7]_inst_i_18 
       (.I0(rx2_IBUF[6]),
        .I1(Op_IBUF[6]),
        .O(\rx_OBUF[7]_inst_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rx_OBUF[7]_inst_i_19 
       (.I0(rx2_IBUF[5]),
        .I1(Op_IBUF[5]),
        .O(\rx_OBUF[7]_inst_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \rx_OBUF[7]_inst_i_2 
       (.I0(data2[7]),
        .I1(enable_IBUF[1]),
        .I2(data1[7]),
        .I3(enable_IBUF[0]),
        .I4(data0[7]),
        .O(\rx_OBUF[7]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rx_OBUF[7]_inst_i_20 
       (.I0(rx2_IBUF[4]),
        .I1(Op_IBUF[4]),
        .O(\rx_OBUF[7]_inst_i_20_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \rx_OBUF[7]_inst_i_3 
       (.CI(\rx_OBUF[3]_inst_i_3_n_0 ),
        .CO({\NLW_rx_OBUF[7]_inst_i_3_CO_UNCONNECTED [3],\rx_OBUF[7]_inst_i_3_n_1 ,\rx_OBUF[7]_inst_i_3_n_2 ,\rx_OBUF[7]_inst_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,rx2_IBUF[6:4]}),
        .O(data2[7:4]),
        .S({\rx_OBUF[7]_inst_i_6_n_0 ,\rx_OBUF[7]_inst_i_7_n_0 ,\rx_OBUF[7]_inst_i_8_n_0 ,\rx_OBUF[7]_inst_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \rx_OBUF[7]_inst_i_4 
       (.CI(\rx_OBUF[3]_inst_i_4_n_0 ),
        .CO({\NLW_rx_OBUF[7]_inst_i_4_CO_UNCONNECTED [3],\rx_OBUF[7]_inst_i_4_n_1 ,\rx_OBUF[7]_inst_i_4_n_2 ,\rx_OBUF[7]_inst_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\rx_OBUF[7]_inst_i_10_n_0 ,\rx_OBUF[7]_inst_i_11_n_0 ,\rx_OBUF[7]_inst_i_12_n_0 }),
        .O(data1[7:4]),
        .S({\rx_OBUF[7]_inst_i_13_n_0 ,\rx_OBUF[7]_inst_i_14_n_0 ,\rx_OBUF[7]_inst_i_15_n_0 ,\rx_OBUF[7]_inst_i_16_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rx_OBUF[7]_inst_i_5 
       (.CI(\rx_OBUF[3]_inst_i_5_n_0 ),
        .CO({\NLW_rx_OBUF[7]_inst_i_5_CO_UNCONNECTED [3],\rx_OBUF[7]_inst_i_5_n_1 ,\rx_OBUF[7]_inst_i_5_n_2 ,\rx_OBUF[7]_inst_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,rx2_IBUF[6:4]}),
        .O(data0[7:4]),
        .S({\rx_OBUF[7]_inst_i_17_n_0 ,\rx_OBUF[7]_inst_i_18_n_0 ,\rx_OBUF[7]_inst_i_19_n_0 ,\rx_OBUF[7]_inst_i_20_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \rx_OBUF[7]_inst_i_6 
       (.I0(Op_IBUF[7]),
        .I1(rx2_IBUF[7]),
        .O(\rx_OBUF[7]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \rx_OBUF[7]_inst_i_7 
       (.I0(rx2_IBUF[6]),
        .I1(Op_IBUF[6]),
        .O(\rx_OBUF[7]_inst_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \rx_OBUF[7]_inst_i_8 
       (.I0(rx2_IBUF[5]),
        .I1(Op_IBUF[5]),
        .O(\rx_OBUF[7]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \rx_OBUF[7]_inst_i_9 
       (.I0(rx2_IBUF[4]),
        .I1(Op_IBUF[4]),
        .O(\rx_OBUF[7]_inst_i_9_n_0 ));
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
