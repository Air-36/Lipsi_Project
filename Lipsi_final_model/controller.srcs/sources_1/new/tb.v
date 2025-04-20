`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2025 18:42:06
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
     wire [7:0] accu_out;
     wire [7:0] mem1 , mem2, mem3, mem4, mem5;
     reg [15:0] sw;
     wire [7:0]rd_data, rd_addr, wr_addr, wr_data, alu_out,  adder_out, PC_out, ins_store;
    wire [3:0] alu_select;
    wire wr_en, PC_en, A_en, addr_mux, data_mux, addr_select, mem_select, ins_store_en;
    wire [1:0] PC_mux, state;
    wire [15:0] led;
    
    lipsi_top2 dut (clk, reset, sw, accu_out, mem1 , mem2, mem3, mem4, mem5, rd_data, rd_addr, wr_addr, wr_data, alu_out,  adder_out, PC_out, ins_store,
                    alu_select, wr_en, PC_en, A_en, addr_mux, data_mux, addr_select, mem_select, ins_store_en, 
                    PC_mux, state, led);
    
    always #10 clk = ~clk;
    initial begin
       sw = 16'b0000010000000100;
       clk = 0;
       reset = 1;
       #23
       reset = 1'b0;
    end
endmodule