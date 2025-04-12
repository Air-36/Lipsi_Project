module addr_mux(
 input [7:0] rd_data,
 input select, reset,
 output [7:0] mem_addr
    );
    

    assign mem_addr = select? 0 : rd_data;
   
endmodule
