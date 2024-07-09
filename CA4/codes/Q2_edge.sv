`timescale 1ns/1ns
module Q2_edge(input D, clk, output Q, Qb);
    wire G1_out, G2_out, G3_out, G4_out;
    SRL_q1_2inp G1_G2(G4_out, clk, G1_out, G2_out);
    SRL_q1_3inp	G3_G4(G2_out, D, clk, D, G3_out, G4_out);
    SRL_q1_2inp G5_G6(G2_out, G3_out, Q, Qb);
endmodule