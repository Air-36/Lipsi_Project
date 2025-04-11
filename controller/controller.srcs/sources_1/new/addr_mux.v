module addr_mux(
 input [7:0] rd_data,
 input select,
 output reg [7:0] mem_addr
    );
    
    always @(select) begin
      if (select)
       mem_addr = rd_data;    
      else
       mem_addr = 0;
    end 
    
endmodule
