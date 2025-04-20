module addr_mux(
 input [7:0] rd_data,
 input select, 
 output [7:0] mem_addr
    );
    
    assign mem_addr = select? 0 : rd_data; //triggered only when a address is read for data to be stored directly or indirectly
   
endmodule
