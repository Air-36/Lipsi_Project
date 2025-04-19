module memory(
    input clk100m,
    input wr_en, reset,
    input [7:0] rd_addr,
    input [7:0] wr_addr,
    input [7:0] wr_data,
    input addr_select, mem_select,
    output reg [7:0] rd_data, 
    output [7:0] v, w, x, y, z 
    );
    reg [7:0] data_mem [511:0];             // data_mem[0:15] --> reg file.     data_mem[16:255] --> data mem.          data_mem[256:511] --> instruction mem.
    integer i,j;
    reg [7:0]read;
    
    assign v = data_mem[1];
    assign w = data_mem[2];
    assign x = data_mem[3];
    assign y = data_mem[4];
    assign z = data_mem[5];
      
//    initial begin
//        data_mem[256] <= 8'b11000111;
//        data_mem[257] <= 8'b00001010;
//        data_mem[258] <= 8'b10000001;
//        data_mem[259] <= 8'b10000010;
//        data_mem[260] <= 8'b11000001;
//        data_mem[261] <= 8'b00000001;
//        data_mem[262] <= 8'b10000001;
//        data_mem[263] <= 8'b00000010;
//        data_mem[264] <= 8'b10000010;
//        data_mem[265] <= 8'b01110001;
//        data_mem[266] <= 8'b11010011;
//        data_mem[267] <= 8'b00000100;
//        data_mem[268] <= 8'b01110010;
//        data_mem[269] <= 8'b11111111;
//        for (i = 0; i < 256; i = i + 1) begin
//                data_mem[i] = 0;
//            end
//    end
    
    always @(posedge clk100m, posedge reset) begin
       if (reset) begin
//        data_mem[256] <= 8'b11000111;
//        data_mem[257] <= 8'b00001010;
//        data_mem[258] <= 8'b10000001;
//        data_mem[259] <= 8'b10000010;
//        data_mem[260] <= 8'b11000001;
//        data_mem[261] <= 8'b00000001;
//        data_mem[262] <= 8'b10000001;
//        data_mem[263] <= 8'b00000010;
//        data_mem[264] <= 8'b10000010;
//        data_mem[265] <= 8'b01110001;
//        data_mem[266] <= 8'b11010011;
//        data_mem[267] <= 8'b00000100;
//        data_mem[268] <= 8'b01110010;
//        data_mem[269] <= 8'b11111111;
//        data_mem[1] <= 8'b00000101;

            data_mem[256] <= 8'b11111000;
            data_mem[257] <= 8'b00000001;
            data_mem[258] <= 8'b01110001;
            data_mem[259] <= 8'b10000010;
            data_mem[260] <= 8'b11000001;
            data_mem[261] <= 8'b00000001;
            data_mem[262] <= 8'b10000001;
            data_mem[263] <= 8'b00000010;
            data_mem[264] <= 8'b10000010;
            data_mem[265] <= 8'b01110001;
            data_mem[266] <= 8'b11010011;
            data_mem[267] <= 8'b00000100;
            data_mem[268] <= 8'b01110010;
            data_mem[269] <= 8'b11110001;           
            data_mem[270] <= 8'b11111111;


        
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