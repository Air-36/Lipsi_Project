module addr_mux(
 input [7:0] rd_data,
 input select, reset,
 output [7:0] mem_addr
    );
    
//    always @(select) begin
//     if(!reset) begin
//      if (select)
//       mem_addr = rd_data;    
//      else
//       mem_addr = 0;
//     end 
//    end
    
//   always @(posedge reset) begin
//    if(reset)
//    mem_addr = 8'b00000000; 
//   end

    assign mem_addr = select? 0 : rd_data;
   
endmodule
