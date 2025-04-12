module clk_div_by_50M(
 input wire clk_100M,  // input
    output reg clk_2Hz  // output
    );
    reg [25:0] counter;
  // reg [3:0] counter;
   
   always @(posedge clk_100M) begin   
   
      if (counter == 24999999) begin //dividing frequency by 50M times
         counter <= 0;
         clk_2Hz <= ~clk_2Hz;
     end
     else 
      counter <= counter + 1; 
   end      
endmodule
