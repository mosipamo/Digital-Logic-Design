`timescale 1ns/1ns
module OC_Q4_y0(input a, b, c, output y0);
    assign #(40, 32) y0 = (~a & (~b & c | b & ~c)) | (a & (b & c | ~b & ~c));

endmodule

module OC_Q4_y1(input a, b, c, output y1);
    assign #(30, 24) y1 = ((a & (b | c)) | b & c);

endmodule