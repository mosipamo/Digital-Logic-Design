`timescale 1ns/1ns
module transmitorTB();
    reg cnt_8_en = 0, clk = 0, rst = 0, load = 0, serIn = 0;
    reg [7:0]parin_8_cnt = 8'b00000011;
    wire cout, serOut;
    wire [7:0]parout_8_cnt;
    bitt_transmittor UUT (
	serOut,
	serIn,
	cnt_8_en,
	cout,
	load,
	clk,
	rst,
	parin_8_cnt,
	parout_8_cnt);
    initial forever #100 clk = ~clk;
    initial begin
            #50
            #200 load = 1; 
            #200 load = 0;
            #200 cnt_8_en = 1;
            #200 serIn = 1;
            #200 serIn = 0;
            #200 serIn = 1;
            #200 serIn = 1;
            #200 serIn = 0;
            #200 serIn = 1;  
            #2000 $stop;
    end
endmodule


