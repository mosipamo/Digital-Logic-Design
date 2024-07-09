`timescale 1ns/1ns
module SRL_q1_2inp (input S, R, output Q, Qb);
    nand #8 N1(Q, Qb, S);
    nand #8 N2(Qb, Q, R);
endmodule

`timescale 1ns/1ns
module SRL_q1_3inp (input S, R, inp_s, inp_r, output Q, Qb);
    nand #12 N1(Q, S, inp_s, Qb);
    nand #12 N2(Qb, R, inp_r, Q);
endmodule