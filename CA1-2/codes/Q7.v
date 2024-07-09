`timescale 1ns/1ns
module Q7(input [14:0] a, output [3:0] y);
    wire [5:0] p;
    wire r, s;

    Q6 u0 (.a(a[14:8]), .y(p[5:3]));
    Q6 u1 (.a(a[7:1]), .y(p[2:0]));

    OC_y0 uu0 (.a(a[0]), .b(p[0]), .c(p[3]), .y0(y[0]));
    OC_y1 uu1 (.a(a[0]), .b(p[0]), .c(p[3]), .y1(r));

    OC_y0 uuu0 (.a(r), .b(p[1]), .c(p[4]), .y0(y[1])); 
    OC_y1 uuu1 (.a(r), .b(p[1]), .c(p[4]), .y1(s)); 

    OC_y0 uuuu0 (.a(s), .b(p[2]), .c(p[5]), .y0(y[2]));
    OC_y1 uuuu1 (.a(s), .b(p[2]), .c(p[5]), .y1(y[3]));

endmodule
