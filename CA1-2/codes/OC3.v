`timescale 1ns/1ns
module OC_Q3_y0(input a, b, c, output y0);
    wire w1, w2, w3, w4, w5, w6, w7;

    nand #(10, 8) N1(w1, ~b, c), 
    N2(w2, b, ~c), N3(w3, w1, w2),
    N4(w4, w3, ~a), N5(w5, b, c), 
    N6(w6, ~b, ~c), N7(w7, w5, w6), 
    N8(w8, w7, a), N9(y0, w4, w8);

endmodule

module OC_Q3_y1(input a, b, c, output y1);
    wire w1, w2, w3;

    nand #(10, 8) N1(w1, ~b, ~c),
    N2(w2, a, w1), N3(w3, b, c),
    N4(y1, w3, w2);

endmodule