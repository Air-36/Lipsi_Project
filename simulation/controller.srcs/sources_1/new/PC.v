module PC(
input clk, PC_en, reset,
input [7:0] mux_out,
output reg [7:0] PC_out
    );
 initial PC_out = 8'b0;
 
 always @(posedge clk, posedge reset) begin
  if (reset)
   PC_out <= 8'hff;
  else
   if(PC_en) PC_out <= mux_out;
 
 end 
endmodule
