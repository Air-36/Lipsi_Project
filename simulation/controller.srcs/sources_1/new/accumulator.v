module accumulator(
input [7:0] alu_out,
input accu_en, clk, reset,
output reg [7:0] accu_out
    );
//    initial accu_out = 8'b0;
    always @(posedge clk, posedge reset) begin
     if (reset)
      accu_out <= 8'b00000000;
     else
      if(accu_en) accu_out <= alu_out;
     
    end
endmodule