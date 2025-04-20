module counter(
 input [7:0] PC_out,
 output [7:0] PC_mux
    );
    assign PC_mux = PC_out + 1; // always send a one value than PC keeping read for next instr to be read
    
endmodule
