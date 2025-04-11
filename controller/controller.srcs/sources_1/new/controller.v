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
    input clk,
    input [7:0] instruction, accumulator,
    output reg [2:0] alu_select,
    output reg wr_en, PC_en, A_en,
    output reg addr_mux,
    output reg data_mux,
    output reg [1:0] PC_mux
    );
    reg [1:0] state = 2'b00;
    reg [1:0] ns = 2'b00;
    reg [7:0] ins_store;
    reg ins_store_en = 1'b0;
    parameter A = 2'b00, B = 2'b01, C = 2'b10, D = 2'b11;
    always @(posedge clk) begin
        state <= ns;
        if (ins_store_en) ins_store = instruction;
//        PC_en = 1'b0;
//        A_en = 1'b0;
//        wr_en = 1'b0;
//        addr_mux = 1'b0;
//        data_mux = 1'b0;
//        PC_mux = 2'b00;
//        alu_select = 3'b000;
    end
    always @(*) begin
        if (ins_store[7] == 0) begin
            case (state)
                A: begin
                    PC_en = 1'b0;
                    A_en = 1'b0;
                    wr_en = 1'b0;
                    addr_mux = 1'b0;
                    data_mux = 1'b0;
                    PC_mux = 2'b00;
                    alu_select = 3'b000;
                    ins_store_en = 1'b0;
                    ns = B;
                end
                B: begin
                    PC_en = 1'b1;
                    A_en = 1'b1;
                    wr_en = 1'b0;
                    addr_mux = 1'b0;
                    data_mux = 1'b0;
                    PC_mux = 2'b10;
                    alu_select = ins_store[6:4];
                    ins_store_en = 1'b1;
                    ns = A;
                end
            endcase 
        end
        else begin
            case (ins_store[7:4])
                4'b1000: begin
                    addr_mux = 1'b0;
                    data_mux = 1'b1;
                    wr_en = 1'b1;
                    PC_en = 1'b1;
                    A_en = 1'b0;
                    PC_mux = 2'b10;
                    alu_select = 3'b000;
                    ins_store_en = 1'b1;
                end
                4'b1001: begin
                    addr_mux = 1'b0;
                    data_mux = 1'b0;
                    wr_en = 1'b1;
                    PC_en = 1'b1;
                    A_en = 1'b0;
                    PC_mux = 2'b01;
                    alu_select = 3'b000;
                    ins_store_en = 1'b1;
                end
                4'b1010: begin
                    case (state)
                        A: begin
                            addr_mux = 1'b0;
                            data_mux = 1'b0;
                            wr_en = 1'b0;
                            PC_en = 1'b0;
                            A_en = 1'b0;
                            PC_mux = 2'b00;
                            alu_select = 3'b000;
                            ins_store_en = 1'b0;
                            ns = B;
                        end
                        B: begin
                            addr_mux = 1'b0;
                            data_mux = 1'b0;
                            wr_en = 1'b0;
                            PC_en = 1'b0;
                            A_en = 1'b0;
                            PC_mux = 2'b00;
                            alu_select = 3'b000;
                            ins_store_en = 1'b0;
                            ns = C;
                        end
                        C: begin
                            addr_mux = 1'b0;
                            data_mux = 1'b0;
                            wr_en = 1'b0;
                            PC_en = 1'b1;
                            A_en = 1'b1;
                            PC_mux = 2'b10;
                            alu_select = 3'b111;
                            ins_store_en = 1'b1;
                            ns = A;
                        end    
                    endcase            
                end
                4'b1011: begin
                    case (state)
                        A: begin
                            addr_mux = 1'b0;
                            data_mux = 1'b0;
                            wr_en = 1'b0;
                            PC_en = 1'b0;
                            A_en = 1'b0;
                            PC_mux = 2'b00;
                            alu_select = 3'b000;
                            ins_store_en = 1'b0;
                            ns = B;
                        end
                        B: begin
                            addr_mux = 1'b0;
                            data_mux = 1'b1;
                            wr_en = 1'b1;
                            PC_en = 1'b1;
                            A_en = 1'b0;
                            PC_mux = 2'b10;
                            alu_select = 3'b000;
                            ins_store_en = 1'b1;
                            ns = A;
                        end
                    endcase            
                end
                4'b1101: begin
                    case (ins_store[1:0])
                        2'b00: begin
                            case (state)
                                A: begin
                                    addr_mux = 1'b0;
                                    data_mux = 1'b0;
                                    wr_en = 1'b0;
                                    PC_en = 1'b1;
                                    A_en = 1'b0;
                                    PC_mux = 2'b10;
                                    alu_select = 3'b000;
                                    ins_store_en = 1'b0;
                                    ns = B;
                                end
                                B: begin
                                    addr_mux = 1'b0;
                                    data_mux = 1'b0;
                                    wr_en = 1'b0;
                                    PC_en = 1'b1;
                                    A_en = 1'b0;
                                    PC_mux = 2'b00;
                                    alu_select = 3'b000;
                                    ins_store_en = 1'b1;
                                    ns = A;
                                end
                            endcase 
                        end
                        2'b10: begin
                            case (state)
                                A: begin
                                    addr_mux = 1'b0;
                                    data_mux = 1'b0;
                                    wr_en = 1'b0;
                                    PC_en = 1'b1;
                                    A_en = 1'b0;
                                    PC_mux = 2'b10;
                                    alu_select = 3'b000;
                                    ins_store_en = 1'b0;
                                    ns = B;
                                end
                                B: begin
                                    addr_mux = 1'b0;
                                    data_mux = 1'b0;
                                    wr_en = 1'b0;
                                    PC_en = 1'b1;
                                    A_en = 1'b0;
                                    if (accumulator == 0) 
                                    PC_mux = 2'b00;
                                    else
                                    PC_mux = 2'b10;
                                    alu_select = 3'b000;
                                    ins_store_en = 1'b1;
                                    ns = A;
                                end
                            endcase 
                        end
                        2'b11: begin
                            case (state)
                                A: begin
                                    addr_mux = 1'b0;
                                    data_mux = 1'b0;
                                    wr_en = 1'b0;
                                    PC_en = 1'b1;
                                    A_en = 1'b0;
                                    PC_mux = 2'b10;
                                    alu_select = 3'b000;
                                    ins_store_en = 1'b0;
                                    ns = B;
                                end
                                B: begin
                                    addr_mux = 1'b0;
                                    data_mux = 1'b0;
                                    wr_en = 1'b0;
                                    PC_en = 1'b1;
                                    A_en = 1'b0;
                                    if (accumulator != 0) 
                                    PC_mux = 2'b00;
                                    else
                                    PC_mux = 2'b10;
                                    alu_select = 3'b000;
                                    ins_store_en = 1'b1;
                                    ns = A;
                                end
                            endcase 
                        end
                    endcase                    
                end
                   
        //        4'b1110: begin
        //            case (instruction[1:0])
        //                2'b00:
        //        end
                4'b1111: begin
                    PC_en = 1'b0;
                    A_en = 1'b0;
                    wr_en = 1'b0;
                    addr_mux = 1'b0;
                    data_mux = 1'b0;
                    PC_mux = 2'b00;
                    alu_select = 3'b000;
                    ins_store_en = 1'b1;
                end
                4'b1100: begin
                    case (state)
                        A: begin
                            PC_en = 1'b1;
                            A_en = 1'b0;
                            wr_en = 1'b0;
                            addr_mux = 1'b0;
                            data_mux = 1'b0;
                            PC_mux = 2'b10;
                            alu_select = 3'b000;
                            ns = B;
                            ins_store_en = 1'b0;
                        end
                        B: begin
                            PC_en = 1'b1;
                            A_en = 1'b1;
                            wr_en = 1'b0;
                            addr_mux = 1'b0;
                            data_mux = 1'b0;
                            PC_mux = 2'b10;
                            alu_select = ins_store[6:4];
                            ins_store_en = 1'b1;
                            ns = A;
                        end
                    endcase 
                end
                
            endcase
       end
    end
endmodule