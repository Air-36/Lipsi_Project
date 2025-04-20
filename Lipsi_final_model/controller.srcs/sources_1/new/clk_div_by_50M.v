module clk_div_by_50M(
 input wire clk_100M,  // input
    output reg clk_20Hz  // output
    );
    reg [17:0] counter;
   
   always @(posedge clk_100M) begin   
   
      if (counter == 2499999) begin //dividing frequency by 50M times
         counter <= 0;
         clk_20Hz <= ~clk_20Hz;
     end
     else 
      counter <= counter + 1; 
   end      
endmodule
