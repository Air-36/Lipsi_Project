module PC(
input clk, PC_en,
input [7:0] mux_out,
output [7:0] PC_out
    );
 
 always @(clk) if(PC_en) PC_out <= mux_out;
  
endmodule
