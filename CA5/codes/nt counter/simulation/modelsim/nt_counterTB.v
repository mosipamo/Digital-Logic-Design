`timescale 1ns/1ns
module nt_counterTB();
    reg cnten3 = 0 ,clk = 0, rst = 0, serin = 1, ldcnt3 = 0;
    wire co3;
    wire [7:0] shiftout;
    wire[2:0] out;
    nt_counter UUT(co3, ldcnt3, clk, cnten3, rst, out, shiftout, serin);
    initial forever #100 clk = ~clk;
    initial begin
            #50
            #200 cnten3 = 1; 
            #200 serin = 1; 
            #200 serin = 1; 
            #200 serin = 1; 
            #200 serin = 0;
            #200 serin = 1;
            #200 serin = 0;
            #200 ldcnt3 = 1; 
            #200 ldcnt3 = 0;
            #200 serin = 1; 
            #200 serin = 1; 
            #200 serin = 0;
            #200 serin = 1;
            #200 serin = 0;
            #2000 $stop;
    end
endmodule
