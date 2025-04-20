module seven_segment(
    input clk, reset,
    input [15:0] sw,
    output reg [6:0] seg, // Active-low 7-segment output
    output reg [3:0] an,
    output [15:0] led
);
wire clk1k, clk20Hz;
  wire [7:0] accu_out, mem2;
  reg [3:0] digit;  // 4-bit input (hex digit)
  reg [1:0] count;
   initial begin
     digit[3:0] = 4'b0000;
     an = 4'b1110;
     count = 2'b00;
     end 

   clk_div_by_100K k(.clk(clk),.clk_1k(clk1k));
   clk_div_by_5M h(.clk_100M(clk),.clk_20Hz(clk20Hz));
   lipsi_top2 l(.clk(clk20Hz), .reset(reset), .accu_out(accu_out), .mem2(mem2), .led(led), .sw(sw));
   
   
    always @(*) begin
        case (digit)          // display on Seven Segment
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
            4'hB: seg = 7'b0000011; // B
            4'hC: seg = 7'b1000110; // C
            4'hD: seg = 7'b0100001; // D
            4'hE: seg = 7'b0000110; // E
            4'hF: seg = 7'b0001110; // F
            default: seg = 7'b1111111; // Blank (all segments off)
        endcase
    end
    
     always @(posedge clk1k)
     begin                           // conversion of data on accumulator and one of the 
        if(count == 2'b00) begin     // memory element to hexadecimal display on Seven segment
         an = 4'b1110;
         digit = accu_out[3:0];
         count = count+1;
        end
        else if(count == 2'b01) begin
         an = 4'b1101;
         digit = accu_out[7:4];
         count = count+1;
        end
        else if(count == 2'b10) begin
         an = 4'b1011;
         digit = mem2[3:0];
         count = count+1;
        end 
        else if(count == 2'b11) begin
         an = 4'b0111;
         digit = mem2[7:4];
         count = count+1;
        end
    end   
       
endmodule
