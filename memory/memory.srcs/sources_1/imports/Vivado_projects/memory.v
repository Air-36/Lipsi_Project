module memory(
    input clk100m,
    input wr_en, reset,
    input [7:0] rd_addr,
    input [7:0] wr_addr,
    input [7:0] wr_data,
    output [7:0] rd_data
    );
    reg [7:0] data_mem [511:0];             // data_mem[0:15] --> reg file.     data_mem[16:255] --> data mem.          data_mem[256:511] --> instruction mem.
    integer i;
    always @(posedge clk100m, posedge reset) begin
        if (reset) begin
            for (i = 0; i < 512; i = i + 1) begin
                    data_mem[i] <= 0;
            end
        end
        else if (wr_en == 1) begin
            data_mem[wr_addr] <= wr_data;
        end
    end
    
    assign rd_data = data_mem[rd_addr];
endmodule
