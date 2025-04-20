`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2025 00:34:47
// Design Name: 
// Module Name: addr_ctrl_reg
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


module addr_ctrl_reg(
 input clk, reset,
 input [7:0] mux_out,
 output reg [7:0] rd_addr
    );
    
    always @(posedge clk, posedge reset) begin
     if (reset)
      rd_addr <= 8'b00000000;
     else 
      rd_addr <= mux_out;
    end
    
endmodule