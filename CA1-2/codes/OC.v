`timescale 1ns/1ns
module OC_y0(input a, b, c, output y0);
    wire w1, w2, w3, w4, w5, w6, w7, w8, w9;
    supply1 vdd;
    supply0 Gnd;

    pmos #(5, 6, 7) p1 (w1, vdd, ~b);
    pmos #(5, 6, 7) p2 (w2, vdd, b);
    pmos #(5, 6, 7) p3 (w3, w1, c);
    pmos #(5, 6, 7) p4 (w3, w2, ~c);
    pmos #(5, 6, 7) p5 (y0, w3, a);
   
    pmos #(5, 6, 7) p6 (w4, vdd, ~b);
    pmos #(5, 6, 7) p7 (w5, vdd, b);
    pmos #(5, 6, 7) p8 (w6, w4, ~c);
    pmos #(5, 6, 7) p9 (w6, w5, c);
    pmos #(5, 6, 7) p10 (y0, w6, ~a);


    nmos #(3, 4, 5) n10 (w8, Gnd, ~a);
    nmos #(3, 4, 5) n9 (w7, Gnd, c);
    nmos #(3, 4, 5) n8 (w7, Gnd, b);
    nmos #(3, 4, 5) n7 (w8, w7, ~c);
    nmos #(3, 4, 5) n6 (w8, w7, ~b);

    nmos #(3, 4, 5) n5 (y0, w8, a);
    nmos #(3, 4, 5) n4 (w9, w8, ~c);
    nmos #(3, 4, 5) n3 (w9, w8, b);
    nmos #(3, 4, 5) n2 (y0, w9, c);
    nmos #(3, 4, 5) n1 (y0, w9, ~b);

endmodule

`timescale 1ns/1ns
module OC_y1(input a, b, c, output y1);

    wire w1, w2, w3, w4;
    supply1 vdd;
    supply0 Gnd;

    pmos #(5, 6, 7) p1 (w1, vdd, ~b);
    pmos #(5, 6, 7) p2 (w1, vdd, ~c);
    pmos #(5, 6, 7) p3 (y1, w1, ~a);
    pmos #(5, 6, 7) p4 (w2, vdd, ~b);
    pmos #(5, 6, 7) p5 (y1, w2, ~c);

    nmos #(3, 4, 5) n5 (w3, Gnd, ~b);
    nmos #(3, 4, 5) n4 (w3, Gnd, ~c);
    nmos #(3, 4, 5) n3 (y1, w3, ~a);
    nmos #(3, 4, 5) n2 (w4, w3, ~c);
    nmos #(3, 4, 5) n1 (y1, w4, ~b);

endmodule