`timescale 1ns/1ns
module Q6_2(input [6:0] a, output [2:0] y);
    wire [3:0] p;
    wire r;

    OC_Q4_y0 u0 (.a(a[4]), .b(a[5]), .c(a[6]), .y0(p[2]));
    OC_Q4_y1 u1 (.a(a[4]), .b(a[5]), .c(a[6]), .y1(p[3]));
    OC_Q4_y0  uu0 (.a(a[1]), .b(a[2]), .c(a[3]), .y0(p[0]));
    OC_Q4_y1 uu1 (.a(a[1]), .b(a[2]), .c(a[3]), .y1(p[1]));

    OC_Q4_y0 uuu0 (.a(a[0]), .b(p[0]), .c(p[2]), .y0(y[0])); 
    OC_Q4_y1 uuu1 (.a(a[0]), .b(p[0]), .c(p[2]), .y1(r)); 

    OC_Q4_y0  uuuu0 (.a(r), .b(p[1]), .c(p[3]), .y0(y[1]));
    OC_Q4_y1 uuuu1 (.a(r), .b(p[1]), .c(p[3]), .y1(y[2]));

endmodule