module memory(
    input clk100m,
    input wr_en, reset,
    input [7:0] rd_addr,
    input [7:0] wr_addr,
    input [7:0] wr_data,
    input addr_select, mem_select,
    output reg [7:0] rd_data, 
    output [7:0] mem1 , mem2, mem3, mem4, mem5
    );
    reg [7:0] data_mem [511:0];             // data_mem[0:15] --> reg file.     data_mem[16:255] --> data mem.          data_mem[256:511] --> instruction mem.
    integer i,j;
    reg [7:0]read;
    
    assign mem1 = data_mem[1];         // for test
    assign mem2 = data_mem[2];
    assign mem3 = data_mem[3];
    assign mem4 = data_mem[4];
    assign mem5 = data_mem[5];
      
    always @(posedge clk100m, posedge reset) begin
       if (reset) begin
       //instruction to count number on ones in a given 16 bit input from switches
            data_mem[256] <= 8'hf8;             
            data_mem[257] <= 8'h01;           
            data_mem[258] <= 8'hf9;
            data_mem[259] <= 8'h02;
            data_mem[260] <= 8'hc7;
            data_mem[261] <= 8'h00;
            data_mem[262] <= 8'h83;
            data_mem[263] <= 8'h71;
            data_mem[264] <= 8'hc4;
            data_mem[265] <= 8'h01;
            data_mem[266] <= 8'h03;
            data_mem[267] <= 8'h83;
            data_mem[268] <= 8'h71;
            data_mem[269] <= 8'he8;
            data_mem[270] <= 8'h81;
            data_mem[271] <= 8'hd3;
            data_mem[272] <= 8'h07;
            data_mem[273] <= 8'h72;
            data_mem[274] <= 8'hc4;
            data_mem[275] <= 8'h01;
            data_mem[276] <= 8'h03;
            data_mem[277] <= 8'h83;
            data_mem[278] <= 8'h72;
            data_mem[279] <= 8'he8;
            data_mem[280] <= 8'h82;
            data_mem[281] <= 8'hd3;
            data_mem[282] <= 8'h11;
            data_mem[283] <= 8'h73;
            data_mem[284] <= 8'hf0;
            data_mem[285] <= 8'hff;
        
         for (i = 0; i < 256; i = i + 1) begin
                data_mem[i] <= 0;
            end
          
         rd_data <= 8'b00000000;
       end
       else begin
        if(mem_select) begin
                    rd_data <= data_mem[{mem_select, rd_addr}];
            end
            else if( addr_select==1)
                begin
                    if(wr_en) begin
                        data_mem[{mem_select, 4'b0,wr_addr[3:0]}] <= wr_data;
                    end
                    else begin
                        rd_data <= data_mem[{mem_select, 4'b0, rd_addr[3:0]}];
                    end        
           
                end
            else begin
                if(wr_en) begin
                    data_mem[{mem_select, wr_addr}] <= wr_data;
                end
                else begin
                    rd_data <= data_mem[{mem_select,rd_addr}];
                end
          end
        end  
     end
endmodule