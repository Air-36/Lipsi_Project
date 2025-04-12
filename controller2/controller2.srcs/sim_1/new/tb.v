`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.04.2025 11:22:19
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb(

    );
    reg clk, reset;
    reg [7:0] instruction, accumulator;
    wire [2:0] alu_select;
    wire wr_en, PC_en, A_en, ins_store_en;
    wire addr_mux;
    wire data_mux;
    wire [1:0] PC_mux, state, pin;
    wire addr_select, mem_select;
    wire [7:0] ins_store;
    controller dut(.clk(clk), .instruction(instruction), .accumulator(accumulator), .alu_select(alu_select),
    .wr_en(wr_en), .PC_en(PC_en), .A_en(A_en), .ins_store_en(ins_store_en), .addr_mux(addr_mux),
    .data_mux(data_mux), .PC_mux(PC_mux), .state(state), .pin(pin), .addr_select(addr_select), 
    .mem_select(mem_select), .ins_store(ins_store));
    
    always #50 clk = ~clk;
    
    initial begin
//        ins_store_en = 1'b1;
        clk = 0;
        instruction = 8'b00000111;
        accumulator = 8'b0;
        reset = 1'b0; #1
        reset = 1'b1; #220
        reset = 1'b0;
    end
    
endmodule
