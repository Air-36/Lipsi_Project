module data_mux(
 input [7:0] A, PC,
 input select, reset,
 output [7:0] mem_data
    );

    assign mem_data = select? A : PC;
   
endmodule