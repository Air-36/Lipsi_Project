module ALU(
input [2:0] enable,
input [7:0] Op, rx2, 
input c,
output reg [7:0] rx
    );
    
   always @(enable) begin
    
    case(enable)
    3'b000 : rx = rx2 + Op;
    3'b001 : rx = rx2 - Op;
    3'b010 : rx = rx2 + Op + c;
    3'b011 : rx = rx2 - Op - c; 
    3'b100 : rx = rx2 & Op;
    3'b101 : rx = rx2 | Op;
    3'b110 : rx = rx2 ^ Op;
    3'b111 : rx = Op;
    endcase 
   
   end 
    
endmodule
