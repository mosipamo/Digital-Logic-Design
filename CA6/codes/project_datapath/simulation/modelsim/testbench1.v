`timescale 1ns/1ns
module cosx_tb();
    reg Start=0,clk=0,rst=0;
    reg [7:0] y=8'b11111111;
    reg [15:0] x=16'b0000000110000000;//cos(1.5) -> exact ansewr: 0.0707 -> my answer: 0.082 (21/255 = 0.082)
    wire [15:0] cosx;
    wire ready;
    cos_Q1 CUT(ready,clk,rst,y,x,Start,cosx);
    always begin #41;clk=~clk;end
    initial begin
        #82;
        #82;
        #82;
        #20; Start = 1;
        #82; Start=0;
        #1640;
        #82;
        #82;
        #1640;
        #82;
        #82;
        #82;#82; y=8'b00000001; x=16'b0000000111100010;//cos(1.882) -> exact ansewr: -0.306 -> my answer: -0.301 (The precision has increased with decreasing y)(-77/255 = -0.301)
        #82; Start = 1;
        #82; Start=0;
        #1640;
        #82;
        #82;
        #82;
        #82;
        $stop;
    end
endmodule