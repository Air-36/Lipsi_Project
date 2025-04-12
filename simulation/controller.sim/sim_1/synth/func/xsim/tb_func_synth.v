// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Apr 11 19:51:42 2025
// Host        : Shri running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/shrin/Desktop/Vivado_projects/Lipsi_Project/simulation/controller.sim/sim_1/synth/func/xsim/tb_func_synth.v
// Design      : lipsi_top2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module controller
   (ins_store_OBUF,
    Q,
    clk_IBUF_BUFG,
    reset_IBUF,
    wr_addr_OBUF);
  output [0:0]ins_store_OBUF;
  output [1:0]Q;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input [0:0]wr_addr_OBUF;

  wire [1:0]Q;
  wire clk_IBUF_BUFG;
  wire \ins_store[7]_i_1_n_0 ;
  wire [0:0]ins_store_OBUF;
  wire [1:0]ns;
  wire \ns_reg[1]__0_i_1_n_0 ;
  wire reset_IBUF;
  wire [0:0]wr_addr_OBUF;

  LUT3 #(
    .INIT(8'hB8)) 
    \ins_store[7]_i_1 
       (.I0(ins_store_OBUF),
        .I1(reset_IBUF),
        .I2(wr_addr_OBUF),
        .O(\ins_store[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ins_store_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ins_store[7]_i_1_n_0 ),
        .Q(ins_store_OBUF),
        .R(1'b0));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \ns_reg[0] 
       (.CLR(1'b0),
        .D(1'b1),
        .G(Q[1]),
        .GE(1'b1),
        .Q(ns[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ns_reg[0]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(\ns_reg[1]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(ns[0]));
  FDPE #(
    .INIT(1'b0)) 
    \ns_reg[0]__1 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ns[0]),
        .PRE(reset_IBUF),
        .Q(ns[0]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \ns_reg[1] 
       (.CLR(1'b0),
        .D(Q[0]),
        .G(Q[1]),
        .GE(1'b1),
        .Q(ns[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ns_reg[1]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(\ns_reg[1]__0_i_1_n_0 ),
        .GE(1'b1),
        .Q(ns[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ns_reg[1]__0_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\ns_reg[1]__0_i_1_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ns_reg[1]__1 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ns[1]),
        .PRE(reset_IBUF),
        .Q(ns[1]));
  FDPE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ns[0]),
        .PRE(reset_IBUF),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ns[1]),
        .PRE(reset_IBUF),
        .Q(Q[1]));
endmodule

(* NotValidForBitStream *)
module lipsi_top2
   (clk,
    reset,
    rd_data,
    rd_addr,
    wr_addr,
    wr_data,
    alu_out,
    adder_out,
    PC_out,
    accu_out,
    v,
    w,
    x,
    y,
    z,
    ins_store,
    alu_select,
    wr_en,
    PC_en,
    A_en,
    addr_mux,
    data_mux,
    addr_select,
    mem_select,
    ins_store_en,
    PC_mux,
    state,
    pin);
  input clk;
  input reset;
  output [7:0]rd_data;
  output [7:0]rd_addr;
  output [7:0]wr_addr;
  output [7:0]wr_data;
  output [7:0]alu_out;
  output [7:0]adder_out;
  output [7:0]PC_out;
  output [7:0]accu_out;
  output [7:0]v;
  output [7:0]w;
  output [7:0]x;
  output [7:0]y;
  output [7:0]z;
  output [7:0]ins_store;
  output [2:0]alu_select;
  output wr_en;
  output PC_en;
  output A_en;
  output addr_mux;
  output data_mux;
  output addr_select;
  output mem_select;
  output ins_store_en;
  output [1:0]PC_mux;
  output [1:0]state;
  output [1:0]pin;

  wire A_en;
  wire PC_en;
  wire [1:0]PC_mux;
  wire [7:0]PC_out;
  wire [7:0]accu_out;
  wire [7:0]adder_out;
  wire addr_mux;
  wire addr_select;
  wire [7:0]alu_out;
  wire [0:0]alu_out_OBUF;
  wire [2:0]alu_select;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire data_mux;
  wire [7:0]ins_store;
  wire [0:0]ins_store_OBUF;
  wire ins_store_en;
  wire mem_select;
  wire [1:0]pin;
  wire [7:0]rd_addr;
  wire [7:0]rd_data;
  wire reset;
  wire reset_IBUF;
  wire [1:0]state;
  wire [1:0]state_OBUF;
  wire [7:0]v;
  wire [7:0]w;
  wire [7:0]wr_addr;
  wire [0:0]wr_addr_OBUF;
  wire [7:0]wr_data;
  wire wr_en;
  wire [7:0]x;
  wire [7:0]y;
  wire [7:0]z;

  OBUF A_en_OBUF_inst
       (.I(1'b0),
        .O(A_en));
  OBUF PC_en_OBUF_inst
       (.I(1'b1),
        .O(PC_en));
  OBUF \PC_mux_OBUF[0]_inst 
       (.I(1'b1),
        .O(PC_mux[0]));
  OBUF \PC_mux_OBUF[1]_inst 
       (.I(1'b1),
        .O(PC_mux[1]));
  OBUF \PC_out_OBUF[0]_inst 
       (.I(1'b0),
        .O(PC_out[0]));
  OBUF \PC_out_OBUF[1]_inst 
       (.I(1'b0),
        .O(PC_out[1]));
  OBUF \PC_out_OBUF[2]_inst 
       (.I(1'b0),
        .O(PC_out[2]));
  OBUF \PC_out_OBUF[3]_inst 
       (.I(1'b0),
        .O(PC_out[3]));
  OBUF \PC_out_OBUF[4]_inst 
       (.I(1'b0),
        .O(PC_out[4]));
  OBUF \PC_out_OBUF[5]_inst 
       (.I(1'b0),
        .O(PC_out[5]));
  OBUF \PC_out_OBUF[6]_inst 
       (.I(1'b0),
        .O(PC_out[6]));
  OBUF \PC_out_OBUF[7]_inst 
       (.I(1'b0),
        .O(PC_out[7]));
  OBUF \accu_out_OBUF[0]_inst 
       (.I(1'b0),
        .O(accu_out[0]));
  OBUF \accu_out_OBUF[1]_inst 
       (.I(1'b0),
        .O(accu_out[1]));
  OBUF \accu_out_OBUF[2]_inst 
       (.I(1'b0),
        .O(accu_out[2]));
  OBUF \accu_out_OBUF[3]_inst 
       (.I(1'b0),
        .O(accu_out[3]));
  OBUF \accu_out_OBUF[4]_inst 
       (.I(1'b0),
        .O(accu_out[4]));
  OBUF \accu_out_OBUF[5]_inst 
       (.I(1'b0),
        .O(accu_out[5]));
  OBUF \accu_out_OBUF[6]_inst 
       (.I(1'b0),
        .O(accu_out[6]));
  OBUF \accu_out_OBUF[7]_inst 
       (.I(1'b0),
        .O(accu_out[7]));
  OBUF \adder_out_OBUF[0]_inst 
       (.I(1'b1),
        .O(adder_out[0]));
  OBUF \adder_out_OBUF[1]_inst 
       (.I(1'b0),
        .O(adder_out[1]));
  OBUF \adder_out_OBUF[2]_inst 
       (.I(1'b0),
        .O(adder_out[2]));
  OBUF \adder_out_OBUF[3]_inst 
       (.I(1'b0),
        .O(adder_out[3]));
  OBUF \adder_out_OBUF[4]_inst 
       (.I(1'b0),
        .O(adder_out[4]));
  OBUF \adder_out_OBUF[5]_inst 
       (.I(1'b0),
        .O(adder_out[5]));
  OBUF \adder_out_OBUF[6]_inst 
       (.I(1'b0),
        .O(adder_out[6]));
  OBUF \adder_out_OBUF[7]_inst 
       (.I(1'b0),
        .O(adder_out[7]));
  OBUF addr_mux_OBUF_inst
       (.I(1'b0),
        .O(addr_mux));
  OBUF addr_select_OBUF_inst
       (.I(1'b0),
        .O(addr_select));
  OBUF \alu_out_OBUF[0]_inst 
       (.I(alu_out_OBUF),
        .O(alu_out[0]));
  OBUF \alu_out_OBUF[1]_inst 
       (.I(alu_out_OBUF),
        .O(alu_out[1]));
  OBUF \alu_out_OBUF[2]_inst 
       (.I(alu_out_OBUF),
        .O(alu_out[2]));
  OBUF \alu_out_OBUF[3]_inst 
       (.I(1'b0),
        .O(alu_out[3]));
  OBUF \alu_out_OBUF[4]_inst 
       (.I(1'b0),
        .O(alu_out[4]));
  OBUF \alu_out_OBUF[5]_inst 
       (.I(1'b0),
        .O(alu_out[5]));
  OBUF \alu_out_OBUF[6]_inst 
       (.I(alu_out_OBUF),
        .O(alu_out[6]));
  OBUF \alu_out_OBUF[7]_inst 
       (.I(alu_out_OBUF),
        .O(alu_out[7]));
  OBUF \alu_select_OBUF[0]_inst 
       (.I(1'b0),
        .O(alu_select[0]));
  OBUF \alu_select_OBUF[1]_inst 
       (.I(1'b0),
        .O(alu_select[1]));
  OBUF \alu_select_OBUF[2]_inst 
       (.I(1'b0),
        .O(alu_select[2]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  controller ctrl_unit
       (.Q(state_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ins_store_OBUF(ins_store_OBUF),
        .reset_IBUF(reset_IBUF),
        .wr_addr_OBUF(wr_addr_OBUF));
  OBUF data_mux_OBUF_inst
       (.I(1'b0),
        .O(data_mux));
  OBUF \ins_store_OBUF[0]_inst 
       (.I(ins_store_OBUF),
        .O(ins_store[0]));
  OBUF \ins_store_OBUF[1]_inst 
       (.I(ins_store_OBUF),
        .O(ins_store[1]));
  OBUF \ins_store_OBUF[2]_inst 
       (.I(ins_store_OBUF),
        .O(ins_store[2]));
  OBUF \ins_store_OBUF[3]_inst 
       (.I(1'b0),
        .O(ins_store[3]));
  OBUF \ins_store_OBUF[4]_inst 
       (.I(1'b0),
        .O(ins_store[4]));
  OBUF \ins_store_OBUF[5]_inst 
       (.I(1'b0),
        .O(ins_store[5]));
  OBUF \ins_store_OBUF[6]_inst 
       (.I(ins_store_OBUF),
        .O(ins_store[6]));
  OBUF \ins_store_OBUF[7]_inst 
       (.I(ins_store_OBUF),
        .O(ins_store[7]));
  OBUF ins_store_en_OBUF_inst
       (.I(1'b1),
        .O(ins_store_en));
  memory mem
       (.alu_out_OBUF(alu_out_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .reset_IBUF(reset_IBUF),
        .wr_addr_OBUF(wr_addr_OBUF));
  OBUF mem_select_OBUF_inst
       (.I(1'b1),
        .O(mem_select));
  OBUF \pin_OBUF[0]_inst 
       (.I(1'b0),
        .O(pin[0]));
  OBUF \pin_OBUF[1]_inst 
       (.I(1'b0),
        .O(pin[1]));
  OBUF \rd_addr_OBUF[0]_inst 
       (.I(1'b0),
        .O(rd_addr[0]));
  OBUF \rd_addr_OBUF[1]_inst 
       (.I(1'b0),
        .O(rd_addr[1]));
  OBUF \rd_addr_OBUF[2]_inst 
       (.I(1'b0),
        .O(rd_addr[2]));
  OBUF \rd_addr_OBUF[3]_inst 
       (.I(1'b0),
        .O(rd_addr[3]));
  OBUF \rd_addr_OBUF[4]_inst 
       (.I(1'b0),
        .O(rd_addr[4]));
  OBUF \rd_addr_OBUF[5]_inst 
       (.I(1'b0),
        .O(rd_addr[5]));
  OBUF \rd_addr_OBUF[6]_inst 
       (.I(1'b0),
        .O(rd_addr[6]));
  OBUF \rd_addr_OBUF[7]_inst 
       (.I(1'b0),
        .O(rd_addr[7]));
  OBUF \rd_data_OBUF[0]_inst 
       (.I(wr_addr_OBUF),
        .O(rd_data[0]));
  OBUF \rd_data_OBUF[1]_inst 
       (.I(wr_addr_OBUF),
        .O(rd_data[1]));
  OBUF \rd_data_OBUF[2]_inst 
       (.I(wr_addr_OBUF),
        .O(rd_data[2]));
  OBUF \rd_data_OBUF[3]_inst 
       (.I(1'b0),
        .O(rd_data[3]));
  OBUF \rd_data_OBUF[4]_inst 
       (.I(1'b0),
        .O(rd_data[4]));
  OBUF \rd_data_OBUF[5]_inst 
       (.I(1'b0),
        .O(rd_data[5]));
  OBUF \rd_data_OBUF[6]_inst 
       (.I(wr_addr_OBUF),
        .O(rd_data[6]));
  OBUF \rd_data_OBUF[7]_inst 
       (.I(wr_addr_OBUF),
        .O(rd_data[7]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF \state_OBUF[0]_inst 
       (.I(state_OBUF[0]),
        .O(state[0]));
  OBUF \state_OBUF[1]_inst 
       (.I(state_OBUF[1]),
        .O(state[1]));
  OBUF \v_OBUF[0]_inst 
       (.I(1'b0),
        .O(v[0]));
  OBUF \v_OBUF[1]_inst 
       (.I(1'b0),
        .O(v[1]));
  OBUF \v_OBUF[2]_inst 
       (.I(1'b0),
        .O(v[2]));
  OBUF \v_OBUF[3]_inst 
       (.I(1'b0),
        .O(v[3]));
  OBUF \v_OBUF[4]_inst 
       (.I(1'b0),
        .O(v[4]));
  OBUF \v_OBUF[5]_inst 
       (.I(1'b0),
        .O(v[5]));
  OBUF \v_OBUF[6]_inst 
       (.I(1'b0),
        .O(v[6]));
  OBUF \v_OBUF[7]_inst 
       (.I(1'b0),
        .O(v[7]));
  OBUF \w_OBUF[0]_inst 
       (.I(1'b0),
        .O(w[0]));
  OBUF \w_OBUF[1]_inst 
       (.I(1'b0),
        .O(w[1]));
  OBUF \w_OBUF[2]_inst 
       (.I(1'b0),
        .O(w[2]));
  OBUF \w_OBUF[3]_inst 
       (.I(1'b0),
        .O(w[3]));
  OBUF \w_OBUF[4]_inst 
       (.I(1'b0),
        .O(w[4]));
  OBUF \w_OBUF[5]_inst 
       (.I(1'b0),
        .O(w[5]));
  OBUF \w_OBUF[6]_inst 
       (.I(1'b0),
        .O(w[6]));
  OBUF \w_OBUF[7]_inst 
       (.I(1'b0),
        .O(w[7]));
  OBUF \wr_addr_OBUF[0]_inst 
       (.I(wr_addr_OBUF),
        .O(wr_addr[0]));
  OBUF \wr_addr_OBUF[1]_inst 
       (.I(wr_addr_OBUF),
        .O(wr_addr[1]));
  OBUF \wr_addr_OBUF[2]_inst 
       (.I(wr_addr_OBUF),
        .O(wr_addr[2]));
  OBUF \wr_addr_OBUF[3]_inst 
       (.I(1'b0),
        .O(wr_addr[3]));
  OBUF \wr_addr_OBUF[4]_inst 
       (.I(1'b0),
        .O(wr_addr[4]));
  OBUF \wr_addr_OBUF[5]_inst 
       (.I(1'b0),
        .O(wr_addr[5]));
  OBUF \wr_addr_OBUF[6]_inst 
       (.I(wr_addr_OBUF),
        .O(wr_addr[6]));
  OBUF \wr_addr_OBUF[7]_inst 
       (.I(wr_addr_OBUF),
        .O(wr_addr[7]));
  OBUF \wr_data_OBUF[0]_inst 
       (.I(1'b0),
        .O(wr_data[0]));
  OBUF \wr_data_OBUF[1]_inst 
       (.I(1'b0),
        .O(wr_data[1]));
  OBUF \wr_data_OBUF[2]_inst 
       (.I(1'b0),
        .O(wr_data[2]));
  OBUF \wr_data_OBUF[3]_inst 
       (.I(1'b0),
        .O(wr_data[3]));
  OBUF \wr_data_OBUF[4]_inst 
       (.I(1'b0),
        .O(wr_data[4]));
  OBUF \wr_data_OBUF[5]_inst 
       (.I(1'b0),
        .O(wr_data[5]));
  OBUF \wr_data_OBUF[6]_inst 
       (.I(1'b0),
        .O(wr_data[6]));
  OBUF \wr_data_OBUF[7]_inst 
       (.I(1'b0),
        .O(wr_data[7]));
  OBUF wr_en_OBUF_inst
       (.I(1'b0),
        .O(wr_en));
  OBUF \x_OBUF[0]_inst 
       (.I(1'b1),
        .O(x[0]));
  OBUF \x_OBUF[1]_inst 
       (.I(1'b1),
        .O(x[1]));
  OBUF \x_OBUF[2]_inst 
       (.I(1'b1),
        .O(x[2]));
  OBUF \x_OBUF[3]_inst 
       (.I(1'b0),
        .O(x[3]));
  OBUF \x_OBUF[4]_inst 
       (.I(1'b0),
        .O(x[4]));
  OBUF \x_OBUF[5]_inst 
       (.I(1'b0),
        .O(x[5]));
  OBUF \x_OBUF[6]_inst 
       (.I(1'b1),
        .O(x[6]));
  OBUF \x_OBUF[7]_inst 
       (.I(1'b1),
        .O(x[7]));
  OBUF \y_OBUF[0]_inst 
       (.I(1'b0),
        .O(y[0]));
  OBUF \y_OBUF[1]_inst 
       (.I(1'b1),
        .O(y[1]));
  OBUF \y_OBUF[2]_inst 
       (.I(1'b0),
        .O(y[2]));
  OBUF \y_OBUF[3]_inst 
       (.I(1'b1),
        .O(y[3]));
  OBUF \y_OBUF[4]_inst 
       (.I(1'b0),
        .O(y[4]));
  OBUF \y_OBUF[5]_inst 
       (.I(1'b0),
        .O(y[5]));
  OBUF \y_OBUF[6]_inst 
       (.I(1'b0),
        .O(y[6]));
  OBUF \y_OBUF[7]_inst 
       (.I(1'b0),
        .O(y[7]));
  OBUF \z_OBUF[0]_inst 
       (.I(1'b1),
        .O(z[0]));
  OBUF \z_OBUF[1]_inst 
       (.I(1'b0),
        .O(z[1]));
  OBUF \z_OBUF[2]_inst 
       (.I(1'b0),
        .O(z[2]));
  OBUF \z_OBUF[3]_inst 
       (.I(1'b0),
        .O(z[3]));
  OBUF \z_OBUF[4]_inst 
       (.I(1'b0),
        .O(z[4]));
  OBUF \z_OBUF[5]_inst 
       (.I(1'b0),
        .O(z[5]));
  OBUF \z_OBUF[6]_inst 
       (.I(1'b0),
        .O(z[6]));
  OBUF \z_OBUF[7]_inst 
       (.I(1'b1),
        .O(z[7]));
endmodule

module memory
   (wr_addr_OBUF,
    alu_out_OBUF,
    clk_IBUF_BUFG,
    reset_IBUF);
  output [0:0]wr_addr_OBUF;
  output [0:0]alu_out_OBUF;
  input clk_IBUF_BUFG;
  input reset_IBUF;

  wire [0:0]alu_out_OBUF;
  wire clk_IBUF_BUFG;
  wire reset_IBUF;
  wire [0:0]wr_addr_OBUF;

  LUT2 #(
    .INIT(4'h2)) 
    \alu_out_OBUF[7]_inst_i_1 
       (.I0(wr_addr_OBUF),
        .I1(reset_IBUF),
        .O(alu_out_OBUF));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(1'b1),
        .Q(wr_addr_OBUF));
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
