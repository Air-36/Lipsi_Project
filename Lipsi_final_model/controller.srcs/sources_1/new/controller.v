
module controller(
    input clk, reset,
    input [7:0] instruction, accumulator,
    output reg [3:0] alu_select,
    output reg wr_en, PC_en, A_en, ins_store_en,
    output reg addr_mux, data_mux, 
    output reg [1:0] PC_mux, state, s2,
    output reg addr_select, mem_select,
    output reg [7:0] ins_store,
    output reg [15:0] led
    );
   
    reg [1:0] ns;
   
 
    parameter A = 2'b00, B = 2'b01, C = 2'b10, D = 2'b11;
    always @(posedge clk) begin
        state  =  ns;
         ins_store = ins_store_en ?  instruction : ins_store;
    end

    
    always @(ins_store, state, instruction) begin
        if (reset) begin       //reset state
        PC_en <=  1'b1;
        A_en <=  1'b0;
        wr_en <=  1'b0;
        addr_mux <=  1'b0;
        data_mux <=  1'b0;
        PC_mux <=  2'b11;
        alu_select <=  4'b0111;
        addr_select <=  1'b0;     // 1'b0 --> 8bit. 1'b1 --> 4bit
        mem_select <=  1'b1;
        ins_store_en <=  1'b1;
        led <= 16'h0000;
        ns <= 2'b11;
        s2 <= 2'b00;
       end
        else if (state == D) begin  // general state for all instructions
            PC_en =  1'b0;
            A_en =  1'b0;
            wr_en =  1'b0;
            addr_mux =  1'b0;
            data_mux =  1'b0;
            PC_mux =  2'b11;
            alu_select =  4'b0111;
            ins_store_en =  1'b1;
            addr_select =  1'b0;
            mem_select =  1'b1;
            ns =  A;
             s2 = 2'b00;
        end
        else if (ins_store[7] == 0) begin  // ALU instr
            case (state)
                A: begin
                    PC_en =  1'b0;
                    A_en =  1'b0;
                    wr_en =  1'b0;
                    addr_mux =  1'b1;
                    data_mux =  1'b0;
                    PC_mux =  2'b00;
                 //   alu_select =  4'b0;
                    ins_store_en =  1'b0;
                    addr_select =  1'b1;
                    mem_select =  1'b0;
                    ns =  B;

                end
                B: begin
                    PC_en =  1'b1;
                    A_en =  1'b1;
                    wr_en =  1'b0;
                    addr_mux =  1'b1;
                    data_mux =  1'b0;
                    PC_mux =  2'b10;
                    alu_select =  {1'b0, ins_store[6:4]};
                    ins_store_en =  1'b0;
                    addr_select =  1'b0;
                    mem_select =  1'b1;
                    ns =  D;
                end
            endcase 
        end
        else begin
            case (ins_store[7:4])
                4'b1000: begin              //Store instr
                    case (state)                  
                        A: begin    
                            addr_mux =  1'b0;
                            data_mux =  1'b1;
                            wr_en =  1'b1;
                            PC_en =  1'b0;
                            A_en =  1'b0;
                            PC_mux =  2'b11;
                          //  alu_select =  4'b0000;
                            ins_store_en =  1'b0;
                            addr_select =  1'b1;
                            mem_select =  1'b0;
                            ns =  B;
                            s2 = 2'b00;
                           end
                         B: begin
                            addr_mux =  1'b0;
                            data_mux =  1'b1;
                            wr_en =  1'b1;
                            PC_en =  1'b1;
                            A_en =  1'b0;
                            PC_mux =  2'b10;
                       //     alu_select =  4'b0000;
                            ins_store_en =  1'b0;
                            addr_select =  1'b0;
                            mem_select =  1'b1;
                            ns =  D;
                              s2 = 2'b00;
                           end
                    endcase
                  end
                
                4'b1001: begin             //branch and link
                    case (state)
                        A: begin
                            addr_mux =  1'b0;
                            data_mux =  1'b0;
                            wr_en =  1'b1;
                            PC_en =  1'b0;
                            A_en =  1'b0;
                            PC_mux =  2'b11;
                       //     alu_select =  4'b0000;
                            ins_store_en =  1'b0;
                            addr_select =  1'b1;
                            mem_select =  1'b0;
                            ns = B;
                        end
                        B: begin
                            addr_mux =  1'b0;
                            data_mux =  1'b0;
                            wr_en =  1'b1;
                            PC_en =  1'b1;
                            A_en =  1'b0;
                            PC_mux =  2'b01;
                       //     alu_select =  4'b0000;
                            ins_store_en =  1'b0;
                            addr_select =  1'b0;
                            mem_select =  1'b1;
                            ns =  D;
                        end
                    endcase
                end
                
                4'b1010: begin                 //load indirect
                    case (state)
                        A: begin
                            addr_mux =  1'b0;
                            data_mux =  1'b0;
                            wr_en =  1'b0;
                            PC_en =  1'b0;
                            A_en =  1'b0;
                            PC_mux =  2'b00;
                      //      alu_select =  4'b0000;
                            ins_store_en =  1'b0;
                            addr_select =  1'b1;
                            mem_select =  1'b0;
                            ns =  B;
                           end
                        B: begin
                            addr_mux =  1'b0;
                            data_mux =  1'b0;
                            wr_en =  1'b0;
                            PC_en =  1'b0;
                            A_en =  1'b0;
                            PC_mux =  2'b00;
                      //      alu_select =  4'b0000;
                            ins_store_en =  1'b0;
                            addr_select =  1'b0;
                            ns =  C;
                           end
                        C: begin
                            addr_mux =  1'b0;
                            data_mux =  1'b0;
                            wr_en =  1'b0;
                            PC_en =  1'b1;
                            A_en =  1'b1;
                            PC_mux =  2'b10;
                            alu_select =  4'b0111;
                            ins_store_en =  1'b0;
                            addr_select =  1'b0;
                            mem_select =  1'b1;
                            ns =  D;
                           end    
                    endcase            
                end
                
                4'b1011: begin                 //store indirect
                    case (state)
                        A: begin
                            addr_mux =  1'b0;
                            data_mux =  1'b0;
                            wr_en =  1'b0;
                            PC_en =  1'b0;
                            A_en =  1'b0;
                            PC_mux =  2'b00;
                   //         alu_select =  4'b0000;
                            ins_store_en =  1'b0;
                            addr_select =  1'b1;
                            mem_select =  1'b0;
                            ns =  B;
                          end
                        B: begin
                            addr_mux =  1'b0;
                            data_mux =  1'b1;
                            wr_en =  1'b1;
                            PC_en =  1'b0;
                            A_en =  1'b0;
                            PC_mux =  2'b11;
                   //         alu_select =  4'b0000;
                            ins_store_en =  1'b0;
                            addr_select =  1'b0;
                            mem_select =  1'b0;
                            ns =  C;
                          end
                          C: begin
                            addr_mux =  1'b0;
                            data_mux =  1'b1;
                            wr_en =  1'b1;
                            PC_en =  1'b1;
                            A_en =  1'b0;
                            PC_mux =  2'b10;
                     //       alu_select =  4'b0000;
                            ins_store_en =  1'b0;
                            addr_select =  1'b0;
                            mem_select =  1'b1;
                            ns =  D;
                          end
                    endcase            
                end
                
                4'b1101: begin                       
                    case (ins_store[1:0])
                        2'b00: begin                       //branch
                            case (state)
                                A: begin
                                    addr_mux =  1'b0;
                                    data_mux =  1'b0;
                                    wr_en =  1'b0;
                                    PC_en =  1'b1;
                                    A_en =  1'b0;
                                    PC_mux =  2'b10;
                           //         alu_select =  4'b0000;
                                    ins_store_en =  1'b0;
                                    addr_select =  1'b0;
                                    mem_select =  1'b1;
                                    ns =  B;
                                end
                                B: begin
                                    addr_mux =  1'b0;
                                    data_mux =  1'b0;
                                    wr_en =  1'b0;
                                    PC_en =  1'b1;
                                    A_en =  1'b0;
                                    PC_mux =  2'b00;
                             //       alu_select =  4'b0000;
                                    ins_store_en =  1'b0;
                                    addr_select =  1'b0;
                                    mem_select =  1'b1;
                                    ns =  D;
                                end
                            endcase 
                        end
                        
                        2'b10: begin                        //branch if A is zero
                            case (state)
                                A: begin
                                    addr_mux =  1'b0;
                                    data_mux =  1'b0;
                                    wr_en =  1'b0;
                                    PC_en =  1'b1;
                                    A_en =  1'b0;
                                    PC_mux =  2'b10;
                             //       alu_select =  4'b0000;
                                    ins_store_en =  1'b0;
                                    addr_select =  1'b0;
                                    mem_select =  1'b1;
                                    ns =  B;
                                end
                                B: begin
                                    addr_mux =  1'b0;
                                    data_mux =  1'b0;
                                    wr_en =  1'b0;
                                    PC_en =  1'b1;
                                    A_en =  1'b0;
                                    if (accumulator == 0) 
                                    PC_mux =  2'b00;
                                    else
                                    PC_mux =  2'b10;
                             //       alu_select =  4'b0000;
                                    ins_store_en =  1'b0;
                                    addr_select =  1'b0;
                                    mem_select =  1'b1;
                                    ns =  D;
                                end
                            endcase 
                        end
                        
                        2'b11: begin                          //branch if A is not zero
                            case (state)
                                A: begin
                                    addr_mux =  1'b0;
                                    data_mux =  1'b0;
                                    wr_en =  1'b0;
                                    PC_en =  1'b1;
                                    A_en =  1'b0;
                                    PC_mux =  2'b10;
                            //        alu_select =  4'b0000;
                                    ins_store_en =  1'b0;
                                    addr_select =  1'b0;
                                    mem_select =  1'b1;
                                    ns =  B;
                                end
                                B: begin
                                    addr_mux =  1'b0;
                                    data_mux =  1'b0;
                                    wr_en =  1'b0;
                                    PC_en =  1'b1;
                                    A_en =  1'b0;
                                    if (accumulator != 0) 
                                    PC_mux =  2'b00;
                                    else
                                    PC_mux =  2'b10;
                             //       alu_select =  4'b0000;
                                    ins_store_en =  1'b0;
                                    addr_select =  1'b0;
                                    mem_select =  1'b1;
                                    ns =  D;
                                end
                            endcase 
                        end
                    endcase                    
                end
                   
                4'b1110: begin                         //ALU shift
                    case (state)
                        A: begin
                            PC_en =  1'b1;
                            A_en =  1'b1;
                            wr_en =  1'b0;
                            addr_mux =  1'b0;
                            data_mux =  1'b0;
                            PC_mux =  2'b10;
                            alu_select =  {1'b1, ins_store[2:0]};
                          //  alu_select =  ins_store[2:0];
                            ins_store_en =  1'b0;
                            addr_select =  1'b0;
                            mem_select =  1'b1;
                            ns =  D;
                        end
                     endcase
                end
                
               
                
                4'b1100: begin                       //ALU immediate
                    case (state)
                        A: begin
                            PC_en =  1'b1;
                            A_en =  1'b0;
                            wr_en =  1'b0;
                            addr_mux =  1'b0;
                            data_mux =  1'b0;
                            PC_mux =  2'b10;
                        //    alu_select =  4'b0000;
                            ins_store_en =  1'b0;
                            addr_select =  1'b0;
                            mem_select =  1'b1;
                            ns =  B;
                        end
                        B: begin
                            PC_en =  1'b1;
                            A_en =  1'b1;
                            wr_en =  1'b0;
                            addr_mux =  1'b0;
                            data_mux =  1'b0;
                            PC_mux =  2'b10;
                            alu_select =  {1'b0, ins_store[2:0]};
                            ins_store_en =  1'b0;
                            addr_select =  1'b0;
                            mem_select =  1'b1;
                            ns =  D;
                        end
                    endcase 
                end
                 
              4'b1111: begin                 // Inputs, outputs and exit
                 case (ins_store[3:0])
                    4'b0000: begin               //display on LED[7:0]
                        case (state)
                        A: begin
                            PC_en =  1'b1;
                            A_en =  1'b0;
                            wr_en =  1'b0;
                            addr_mux =  1'b0;
                            data_mux =  1'b0;
                            PC_mux =  2'b10;
                          //  alu_select =  4'b0111;
                            ins_store_en =  1'b0;
                            addr_select =  1'b0;
                            mem_select =  1'b1;
                            ns =  D;
                            led[7:0] = accumulator;
                        end
                     endcase
                     
                    end
                    4'b0001: begin                    //display on LED[15:8]
                        case (state)
                        A: begin
                            PC_en =  1'b1;
                            A_en =  1'b0;
                            wr_en =  1'b0;
                            addr_mux =  1'b0;
                            data_mux =  1'b0;
                            PC_mux =  2'b10;
                          //  alu_select =  4'b0111;
                            ins_store_en =  1'b0;
                            addr_select =  1'b0;
                            mem_select =  1'b1;
                            ns =  D;
                            led[15:8] = accumulator;
                        end
                     endcase
                    end    
                    
                    4'b1000: begin               //input from switches [7:0]
                    case (state)
                        A: begin
                            addr_mux =  1'b0;
                            data_mux =  1'b0;
                            wr_en =  1'b0;
                            PC_en =  1'b1;
                            A_en =  1'b0;
                            PC_mux =  2'b10;
                            s2 = 2'b10;
                   //         alu_select =  4'b0000;
                            ins_store_en =  1'b0;
                            addr_select =  1'b0;
                            mem_select =  1'b1;
                            ns =  B;
                          end
                        B: begin
                            addr_mux =  1'b0;
                            data_mux =  1'b1;
                            wr_en =  1'b1;
                            PC_en =  1'b0;
                            A_en =  1'b0;
                            PC_mux =  2'b11;
                            s2 = 2'b10;
                   //         alu_select =  4'b0000;
                            ins_store_en =  1'b0;
                            addr_select =  1'b0;
                            mem_select =  1'b0;
                            ns =  C;
                          end
                          C: begin
                            addr_mux =  1'b0;
                            data_mux =  1'b1;
                            wr_en =  1'b0;
                            PC_en =  1'b1;
                            A_en =  1'b0;
                            PC_mux =  2'b10;
                     //       alu_select =  4'b0000;
                            ins_store_en =  1'b0;
                            addr_select =  1'b0;
                            mem_select =  1'b1;
                            ns =  D;
                          end
                    endcase            
                end
                  
               4'b1001: begin                         //input from switches [15:8]
                    case (state)
                        A: begin
                            addr_mux =  1'b0;
                            data_mux =  1'b0;
                            wr_en =  1'b0;
                            PC_en =  1'b1;
                            A_en =  1'b0;
                            PC_mux =  2'b10;
                            s2 = 2'b11;
                   //         alu_select =  4'b0000;
                            ins_store_en =  1'b0;
                            addr_select =  1'b0;
                            mem_select =  1'b1;
                            ns =  B;
                          end
                        B: begin
                            addr_mux =  1'b0;
                            data_mux =  1'b1;
                            wr_en =  1'b1;
                            PC_en =  1'b0;
                            A_en =  1'b0;
                            PC_mux =  2'b11;
                            s2 = 2'b11;
                   //         alu_select =  4'b0000;
                            ins_store_en =  1'b0;
                            addr_select =  1'b0;
                            mem_select =  1'b0;
                            ns =  C;
                          end
                          C: begin
                            addr_mux =  1'b0;
                            data_mux =  1'b1;
                            wr_en =  1'b0;
                            PC_en =  1'b1;
                            A_en =  1'b0;
                            PC_mux =  2'b10;
                     //       alu_select =  4'b0000;
                            ins_store_en =  1'b0;
                            addr_select =  1'b0;
                            mem_select =  1'b1;
                            ns =  D;
                          end
                    endcase            
                end   
                               
                    4'b1111: begin                       // exit 
                        PC_en =  1'b0;
                        A_en =  1'b0;
                        wr_en =  1'b0;
                        addr_mux =  1'b0;
                        data_mux =  1'b0;
                        PC_mux =  2'b00;
                   //     alu_select =  4'b0000;
                        ins_store_en =  1'b0;
                        addr_select =  1'b0;
                     end
                  endcase
                end 
                
                default: begin
                            PC_en =  1'b1;
                            A_en =  1'b0;
                            wr_en =  1'b0;
                            addr_mux =  1'b0;
                            data_mux =  1'b0;
                            PC_mux =  2'b10;
                            alu_select =  4'b0111;
                            ins_store_en =  1'b0;
                            addr_select =  1'b0;     // 1'b0 --> 8bit. 1'b1 --> 4bit
                            mem_select =  1'b1;
                            ns = D;
                      end
                                
            endcase
       end
    end
    
    
endmodule