module clk_div_by_100K(
    input wire clk, 
    output reg clk_1k 
);
   reg [19:0] counter;
   initial begin
        counter = 0;
    end
    always @(posedge clk) begin
     counter <= counter + 1;  
     if (counter == 49999) begin  //dividing frequency by 100k times
         counter <= 0;
         clk_1k <= ~clk_1k;
     end
    end 
endmodule