module lipsi_top2(
    input clk, reset,
    input [15:0] sw,
    output [7:0] accu_out, v, w, x, y, z,
    output [7:0]rd_data, rd_addr, wr_addr, wr_data, alu_out,  adder_out, PC_out, ins_store,
    output [3:0] alu_select,
    output wr_en, PC_en, A_en, addr_mux, data_mux, addr_select, mem_select, ins_store_en, c2,
    output [1:0] PC_mux, state, pin, s2,
    output [15:0] led
    );
   
//    wire [7:0]rd_data, rd_addr, wr_addr, wr_data, alu_out,  adder_out, PC_out, ins_store;
//    wire [2:0] alu_select;
//    wire wr_en, PC_en, A_en, addr_mux, data_mux, addr_select, mem_select, ins_store_en;
//    wire [1:0] PC_mux, state, pin;
    
    controller ctrl_unit(.instruction(rd_data), .clk(clk), .accumulator(accu_out), .alu_select(alu_select), 
    .wr_en(wr_en), .PC_en(PC_en), .A_en(A_en), .addr_mux(addr_mux), .data_mux(data_mux), .addr_select(addr_select), 
    .mem_select(mem_select), .PC_mux(PC_mux), .reset(reset),.state(state), .pin(pin),.s2(s2) ,.ins_store(ins_store), .ins_store_en(ins_store_en), .led(led));
    
    memory mem(.clk100m(clk), .rd_data(rd_data), .rd_addr(rd_addr), .wr_addr(wr_addr), .wr_data(wr_data), 
    .addr_select(addr_select), .mem_select(mem_select), .reset(reset), .wr_en(wr_en), .v(v), .w(w), .x(x), .y(y), .z(z));
    
    accumulator accu(.alu_out(alu_out), .accu_out(accu_out), .clk(clk), .accu_en(A_en), .reset(reset));
    
    PC_mux mux1(.rd_data(rd_data), .accumulator(accu_out), .adder(adder_out), .select(PC_mux), .PC(rd_addr),.PC_out(PC_out));
    
    PC program_counter(.clk(clk), .PC_en(PC_en), .mux_out(rd_addr), .PC_out(PC_out), .reset(reset));
    
    addr_mux mux2(.rd_data(rd_data), .select(addr_mux), .mem_addr(wr_addr));
    
    counter adder(.PC_out(PC_out), .PC_mux(adder_out));
    
    data_mux mux3(.A(accu_out),.sw(sw), .PC(PC_out),.s2(s2), .select(data_mux), .mem_data(wr_data));
    
    ALU alu(.alu_select(alu_select), .rd_data(rd_data), .accu_out(accu_out), .alu_out(alu_out), .reset(reset), .clk(clk), .c3(c2));
    
  //  addr_ctrl_reg adr_ctr(.clk(clk),.reset(reset), .mux_out(mux_out), .rd_addr(rd_addr));
    
endmodule