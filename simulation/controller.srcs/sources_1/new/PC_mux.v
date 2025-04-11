module PC_mux(
input [7:0] rd_data, accumulator, adder, PC_out,
input [1:0] select,
output [7:0] PC
    );
 

//initial PC = 8'b00000000;

//   always @(select) begin     
//         case(select)
//           2'b00: PC = rd_data;
//           2'b01: PC = accumulator;
//           2'b10: PC = adder;
//           2'b11: PC = 0;
//           default PC = adder;
//          endcase
//   end 
   
   assign PC = (select[1])? (select[0]? PC_out : adder) : (select[0]? accumulator : rd_data);
      
endmodule
