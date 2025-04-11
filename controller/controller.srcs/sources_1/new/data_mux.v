module data_mux(
 input [7:0] A, PC,
 input select,
 output reg [7:0] mem_data
    );
    
    always @(select) begin
      if (select)
       mem_data = A;    
      else
       mem_data = PC;
    end 
    
endmodule