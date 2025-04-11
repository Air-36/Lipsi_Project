module ALU(
input reset,
input [2:0] enable,
input [7:0] Op, rx2, 
output reg [7:0] rx
    );
    reg c;
    initial begin
     rx <= 8'b00000000;
    end
   always @(*) begin
    if (reset)
     rx = 8'b00000000;
    else begin
      case(enable)
       3'b000 : {c, rx}  = rx2 + Op;
       3'b001 : {c, rx}  = rx2 - Op;
       3'b010 : {c, rx}  = rx2 + Op + c;
       3'b011 : {c, rx}  = rx2 - Op - c; 
       3'b100 : rx = rx2 & Op;
       3'b101 : rx = rx2 | Op;
       3'b110 : rx = rx2 ^ Op;
       3'b111 : rx = Op;
      endcase 
    end
   end 
    
endmodule
