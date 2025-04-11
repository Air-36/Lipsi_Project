module accumulator(
input [7:0] alu_out,
input accu_en, clk,
output reg [7:0] accu_out
    );
    
    always @(clk) if(accu_en) accu_out <= alu_out;
    
endmodule