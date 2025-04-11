module clk_div_100m_to_1Hz(
 input wire clk_100M,  // inputs
    output reg clk_1Hz  // output
    );
     reg [25:0] counter;
   
   always @(posedge clk_100M) begin   //setting asynchronous reset as well 
     if (counter == 49999999) begin //dividing frequency by 100M times
         counter <= 0;
         clk_1Hz <= ~clk_1Hz;
     end
     else 
      counter <= counter + 1; 
   end      
endmodule





