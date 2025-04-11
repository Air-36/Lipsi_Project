`timescale 1ns / 1ps
module tb;
 reg [2:0] enable;
 reg [7:0] Op, rx2;
 reg c;
 wire [7:0] rx;
 integer i;
 ALU alu (.enable(enable),.Op(Op),.c(c),.rx2(rx2),.rx(rx));

initial begin
enable <= 3'b000;
Op <= 8'b10110110;
rx2 <= 8'b11011000;
c <= 1;   
end
initial begin
 for(i = 0; i < 9; i = i + 1) begin
  enable = enable + 1;
  #10;
 end
$finish;
end

endmodule
