module ALU(
input reset, clk,
input [3:0] alu_select,
input [7:0] rd_data, accu_out, 
output reg [7:0] alu_out,
output reg c3
    );
    
    reg c;
    
    
   always @(*) begin
    if (reset) begin
     alu_out = 8'b00000000;
     c <= 1'b0;
     end
    else begin
      case(alu_select)
       4'b0000 : {c, alu_out}  = accu_out + rd_data;
       4'b0001 : {c, alu_out}  = accu_out - rd_data;
       4'b0010 : {c, alu_out}  = accu_out + rd_data + c3;
       4'b0011 : {c, alu_out}  = accu_out - rd_data - c3; 
       4'b0100 : alu_out = accu_out & rd_data;
       4'b0101 : alu_out = accu_out | rd_data;
       4'b0110 : alu_out = accu_out ^ rd_data;
       4'b0111 : alu_out = rd_data;
       4'b1000 : alu_out = accu_out >> 1'b1;      // Logical Right Shift
       4'b1001 : alu_out = accu_out << 1'b1;      // Logical Left Shift
       4'b1010 : alu_out = accu_out >>> 1'b1;      // Arithmetic Right Shift
      endcase 
    end
   end 
    
    always @(posedge clk) c3 <= c;
    
endmodule