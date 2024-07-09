module Q3_pre_clr(input D, clk, pre, clr, output Q, Qb);
    wire G1_out, G2_out, G3_out, G4_out;
    SRL_q1_3inp G1_G2(G4_out, clk, pre, clr, G1_out, G2_out);
    SRL_q1_3inp G3_G4(clk, D, G2_out, clr, G3_out, G4_out);
    SRL_q1_3inp G5_G6(pre, G3_out, G2_out, clr, Q, Qb);
endmodule