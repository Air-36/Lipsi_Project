module data_mux(
 input [7:0] A, PC,
 input [15:0] sw,
 input select,
 input [1:0] s2,
 output [7:0] mem_data
    );
    
  // selects between PC, accumulator and input from switches depending on selection
    assign mem_data = select? (s2[1] ? (s2[0] ? sw[15:8] : sw[7:0]) : A): PC;
   
endmodule