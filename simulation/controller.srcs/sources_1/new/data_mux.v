module data_mux(
 input [7:0] A, PC,
 input select, reset,
 output [7:0] mem_data
    );
    
//    always @(select, reset) begin
//    if (!reset)
//      if (select)
//       mem_data = A;    
//      else
//       mem_data = PC;
//    end 
    
//   always @(posedge reset) begin
//    if(reset)
//    mem_data = 8'b00000000;
//   end 

    assign mem_data = select? A : PC;
   
endmodule