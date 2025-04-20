module PC_mux(
input [7:0] rd_data, accumulator, adder, PC_out, 
input [1:0] select,
output [7:0] PC
    );
 // takes input from accumulator ,PC , adder, and read data depending on select line
   assign PC = (select[1])? (select[0]?  PC_out : adder) : (select[0]? accumulator : rd_data);
      
endmodule
