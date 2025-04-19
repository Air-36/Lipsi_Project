`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2025 07:14:07 PM
// Design Name: 
// Module Name: controller
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module controller(
    input clk, reset,
    input [7:0] instruction, accumulator,
    output reg [3:0] alu_select,
    output reg wr_en, PC_en, A_en, ins_store_en,
    output reg addr_mux, data_mux, 
    output reg [1:0] PC_mux, state, pin, s2,
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
        if (reset) begin
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
//        state <=  2'b11;
        ns <= 2'b11;
        pin <= 2'b00;
        s2 <= 2'b00;
       end
        else if (state == D) begin
            PC_en =  1'b0;
            A_en =  1'b0;
            wr_en =  1'b0;
            addr_mux =  1'b0;
            data_mux =  1'b0;
            PC_mux =  2'b11;
         //   alu_select =  4'b0111;
            ins_store_en =  1'b1;
            addr_select =  1'b0;
            mem_select =  1'b1;
            ns =  A;
             s2 = 2'b00;
        end
        else if (ins_store[7] == 0) begin
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
               //     pin = 2'b01;
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
               //     pin = 2'b10;
                end
            endcase 
        end
        else begin
            case (ins_store[7:4])
                4'b1000: begin
                    case (state)                  
                        A: begin    
                            addr_mux =  1'b0;
                            data_mux =  1'b1;
                            wr_en =  1'b1;
                            PC_en =  1'b0;
                            A_en =  1'b0;
                            PC_mux =  2'b11;
                          //  alu_select =  3'b000;
                            ins_store_en =  1'b0;
                            addr_select =  1'b1;
                            mem_select =  1'b0;
                            ns =  B;
                            s2 = 2'b00;
                    //        pin = 2'b01;
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
                       //     pin = 2'b10;
                           end
                    endcase
                  end
                
                4'b1001: begin
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
                
                4'b1010: begin
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
                    //        pin = 2'b01;
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
                        //    pin = 2'b10;
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
                
                4'b1011: begin
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
                     //       pin = 2'b01;
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
                     //       pin = 2'b10;
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
                        2'b00: begin
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
                         //           pin = 2'b01;
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
                            //        pin = 2'b10;
                                end
                            endcase 
                        end
                        
                        2'b10: begin
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
                            //        pin = 2'b01;
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
                            //        pin = 2'b10; 
                                end
                            endcase 
                        end
                        
                        2'b11: begin
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
                            //        pin = 2'b01;
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
                   
                4'b1110: begin
                    case (state)
                        A: begin
                            PC_en =  1'b1;
                            A_en =  1'b1;
                            wr_en =  1'b0;
                            addr_mux =  1'b0;
                            data_mux =  1'b0;
                            PC_mux =  2'b10;
                            alu_select =  {2'b10, ins_store[1:0]};
                          //  alu_select =  ins_store[2:0];
                            ins_store_en =  1'b0;
                            addr_select =  1'b0;
                            mem_select =  1'b1;
                            ns =  D;
                            pin = 2'b01;
                        end
                     endcase
                end
                
               
                
                4'b1100: begin
                    case (state)
                        A: begin
                            PC_en =  1'b1;
                            A_en =  1'b0;
                            wr_en =  1'b0;
                            addr_mux =  1'b0;
                            data_mux =  1'b0;
                            PC_mux =  2'b10;
                      //      alu_select =  4'b0000;
                          //  alu_select =  ins_store[2:0];
                            ins_store_en =  1'b0;
                            addr_select =  1'b0;
                            mem_select =  1'b1;
                            ns =  B;
                         //   pin = 2'b01;
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
                      //      pin = 2'b10;
                        end
                    endcase 
                end
                
              4'b1111: begin
                 case (ins_store[3:0])
                    4'b0000: begin
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
                            pin = 2'b01;
                            led[7:0] = accumulator;
                        end
                     endcase
                     
                    end
                    4'b0001: begin
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
                            pin = 2'b01;
                            led[15:8] = accumulator;
                        end
                     endcase
                    end    
                    
                    4'b1000: begin
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
                     //       pin = 2'b01;
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
                     //       pin = 2'b10;
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
                               
                    4'b1111: begin
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
                         //   pin = 2'b11;
                      end
                                
            endcase
       end
    end
    
    
endmodule