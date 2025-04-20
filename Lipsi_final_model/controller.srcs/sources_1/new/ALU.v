module ALU(
input reset, clk,
input [3:0] alu_select,
input [7:0] rd_data, accu_out, 
output reg [7:0] alu_out
    );
    
    reg c,c3;
    
    
   always @(*) begin
    if (reset) begin
     alu_out = 8'b00000000;
     c <= 1'b0;
     end
    else begin
      case(alu_select)
       4'b0000 : {c, alu_out}  = accu_out + rd_data;            //addition
       4'b0001 : {c, alu_out}  = accu_out - rd_data;            //subtraction
       4'b0010 : {c, alu_out}  = accu_out + rd_data + c3;       //addition with carry
       4'b0011 : {c, alu_out}  = accu_out - rd_data - c3;       //subtraction eith borrow
       4'b0100 : alu_out = accu_out & rd_data;                  // bitwise AND
       4'b0101 : alu_out = accu_out | rd_data;                  // bitwise OR
       4'b0110 : alu_out = accu_out ^ rd_data;                  // bitwise XOR
       4'b0111 : alu_out = rd_data;                             // load
       4'b1000 : alu_out = accu_out >> 1'b1;                    // Logical Right Shift
       4'b1001 : alu_out = accu_out << 1'b1;                    // Logical Left Shift
       4'b1010 : alu_out = {accu_out[6:0] , accu_out[7]};       //Left rotate
       4'b1011 : alu_out = {accu_out[0] , accu_out[7:1]};       //Right rotate
       4'b1100 : alu_out = {accu_out[7], accu_out[7:1]};        // Arithmetic Right Shift 
       default : alu_out = alu_out;
      endcase 
    end
   end 
    
    always @(posedge clk) c3 <= c;
    
endmodule