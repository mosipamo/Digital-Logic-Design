`timescale 1ns/1ns
module seq_detectorTB();
    reg serialin = 0, clk = 0, rst = 0, detect = 1;
    wire serialout, serialoutQ;
    wire [2:0] state1, state2;
    seq_detector UUT(serialin, detect, clk, rst, serialout, state1);
    seq_detectorQ UUT1(serialin, detect, clk, rst, serialoutQ, state2);
    initial forever #100 clk = ~clk;
    initial begin
            #50
            #200 serialin = 0; 
            #200 serialin = 1; 
            #200 serialin = 1; 
            #200 serialin = 1; 
            #200 serialin = 1; 
            #200 serialin = 1; 
            #200 serialin = 0;
            #200 serialin = 1;
            #200 detect = 0;
            #200 serialin = 0; 
            #200 serialin = 0; 
            #200 serialin = 1; 
            #200 serialin = 1; 
            #200 serialin = 1; 
            #200 serialin = 1; 
            #200 serialin = 1; 
            #200 serialin = 0;
            #200 $stop;
    end
endmodule




