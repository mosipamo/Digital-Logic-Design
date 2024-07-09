`timescale 1ns/1ns
module finalsystTB();
    reg serin = 0, clk = 0, rst = 0;
    wire serout, co3, co8, detect;
    wire [2:0] state, ntcout;
    wire [7:0] shift, inputcounter8;
    finalsyst UUT(
	serout,
	clk,
	rst,
	serin,
	co3,
	detect,
	co8,
	inputcounter8,
        ntcout,
	shift,
	state);
    initial forever #100 clk = ~clk;
    initial begin
            #50
            #200 serin = 0; 
            #200 serin = 1;
            #200 serin = 1; 
            #200 serin = 1; 
            #200 serin = 1; 
            #200 serin = 1; 
            #200 serin = 0;
            #200 serin = 1;
            #200 serin = 1; 
            #200 serin = 1;
            #200 serin = 0;
            #200 serin = 0; 
            #200 serin = 0; 
            #200 serin = 0; 
            #200 serin = 0; 
            #200 serin = 0; 
            #200 serin = 1;
            #200 serin = 0; 
            #200 serin = 1;
            #200 serin = 1;
            #200 serin = 0; 
            #200 serin = 1; 
            #200 serin = 0; 
            #200 serin = 1;
            #200 serin = 0; 
            #200 serin = 1;
            #200 serin = 1;
            #200 serin = 0;        
            #200 serin = 0; 
            #200 serin = 1;
            #200 serin = 0; 
            #200 serin = 1;
            #200 serin = 1;
            #200 serin = 0; 
            #2000 $stop;
    end
endmodule

