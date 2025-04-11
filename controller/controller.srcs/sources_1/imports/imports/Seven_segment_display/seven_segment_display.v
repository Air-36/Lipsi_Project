
module seven_seg_display (
    input clk100M,
    output reg [6:0] seg, // Active-low 7-segment output
    input [8:0] q,
    output reg [3:0] an
);
wire clk1k;

  reg [3:0] digit;  // 4-bit input (hex digit)
  reg count;
   initial begin
     digit[3:0] = 4'b0000;
     an = 4'b1110;
     count = 1'b0;
     end 

   clk_100M_to_1K k(.clk(clk100M),.clk_1k(clk1k));
   
   
    always @(*) begin
        case (digit)
            4'h0: seg = 7'b1000000; // 0
            4'h1: seg = 7'b1111001; // 1
            4'h2: seg = 7'b0100100; // 2
            4'h3: seg = 7'b0110000; // 3
            4'h4: seg = 7'b0011001; // 4
            4'h5: seg = 7'b0010010; // 5
            4'h6: seg = 7'b0000010; // 6
            4'h7: seg = 7'b1111000; // 7
            4'h8: seg = 7'b0000000; // 8
            4'h9: seg = 7'b0010000; // 9
            4'hA: seg = 7'b0001000; // A
            4'hB: seg = 7'b0000011; // b
            4'hC: seg = 7'b1000110; // C
            4'hD: seg = 7'b0100001; // d
            4'hE: seg = 7'b0000110; // E
            4'hF: seg = 7'b0001110; // F
            default: seg = 7'b1111111; // Blank (all segments off)
        endcase
    end
    
      always @(posedge clk1k)
     begin
        if(count == 1'b0) begin
         an = 4'b1110;
         digit = q[3:0];
         count = ~count;
        end
        else if(count == 1'b1) begin
         an = 4'b1101;
         digit = q[7:0];
         count = ~count;
        end
    end          
       
endmodule

