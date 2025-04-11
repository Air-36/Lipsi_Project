module PC_mux(
input [7:0] rd_data, accumulator, adder,
input [1:0] select,
output reg PC
    );
    
    always @(select) begin
      case(select)
       2'b00: PC = rd_data;
       2'b01: PC = accumulator;
       2'b10: PC = adder;
       default PC = adder;
      endcase
    end 
    
endmodule
