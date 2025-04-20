module accumulator(
input [7:0] alu_out,
input accu_en, clk, reset,
output reg [7:0] accu_out
    );
    
    always @(posedge clk, posedge reset) begin
     if (reset)
      accu_out <= 8'b00000000;
     else
      if(accu_en) accu_out <= alu_out;  //takes input only when enabble in triggered
     
    end
endmodule