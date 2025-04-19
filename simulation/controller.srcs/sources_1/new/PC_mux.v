module PC_mux(
input [7:0] rd_data, accumulator, adder, PC_out, load,
input [1:0] select,
output [7:0] PC
    );
 
   assign PC = (select[1])? (select[0]?  PC_out : adder) : (select[0]? accumulator : rd_data);
      
endmodule
