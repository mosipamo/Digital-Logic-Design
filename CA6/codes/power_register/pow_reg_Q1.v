`timescale 1ns/1ns
module pow_reg_Q1(input clk, rst, ld, input[15:0] reg_in, output reg[15:0] reg_out);
    always@(posedge clk, posedge rst) begin
        if(rst)
            reg_out <= 16'b0;
        else
            reg_out <= (ld) ? reg_in : reg_out;
    end
endmodule