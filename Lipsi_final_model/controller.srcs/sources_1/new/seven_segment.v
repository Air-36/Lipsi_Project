module seven_segment(
    input clk, reset, str_stp,
    output reg [6:0] seg, // Active-low 7-segment output
    output reg [3:0] an,
    output clk1k,
    output [5:0] led
);
wire clk_1Hz;
  wire [5:0] Q;
  reg [5:0] digit;  
  reg count;
   initial begin
     digit[5:0] = 6'b000000;
     an = 4'b1110;
     count = 1'b0;
     end 

   clk_div_by_100K k(.clk(clk),.clk_1k(clk1k));
   mod60_counter m(.clk(clk_1Hz),.reset(reset),.str_stp(str_stp),.Q(Q));
   clk_div_100m_to_1Hz c(.clk_100M(clk),.clk_1Hz(clk_1Hz));
     
     assign led = Q;
     
    always @(*) begin
        case (digit[3:0])          // display on Seven Segment
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
     begin                            
        if(count == 1'b0) begin     
             an = 4'b1110;
                 if( Q < 6'd10)
                 digit = Q;
                 else if ((Q > 6'd9) & (Q < 6'd20))
                 digit = Q - 6'd10;
                 else if ((Q > 6'd19) & (Q < 6'd30))
                 digit = Q - 6'd20;
                 else if ((Q > 6'd29) & (Q < 6'd40))
                 digit = Q - 6'd30;
                 else if ((Q > 6'd39) & (Q < 6'd50))
                 digit = Q - 6'd40;
                 else if ((Q > 6'd49) & (Q < 6'd60))
                 digit = Q - 6'd50;
             count = ~count;
        end
        else if(count == 1'b1) begin
             an = 4'b1101;
                 if( Q < 6'd10)
                 digit = 0;
                 else if ( Q >= 6'd10 & Q < 6'd20)
                 digit = 6'd1;
                 else if ( Q >= 6'd20 & Q < 6'd30)
                 digit = 6'd2;
                 else if ( Q >= 6'd30 & Q < 6'd40)
                 digit = 6'd3;
                 else if ( Q >= 6'd40 & Q < 6'd50)
                 digit = 6'd4;
                 else if ( Q >= 6'd50 & Q < 6'd60)
                 digit = 6'd5;
             count = ~count;
        end
    end   
       
endmodule
