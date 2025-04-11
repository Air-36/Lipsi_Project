module counter(
 input [7:0] PC_out,
 output [7:0] PC_mux
    );
    assign PC_mux = PC_out + 1;
    
endmodule
