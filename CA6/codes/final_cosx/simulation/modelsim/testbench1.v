`timescale 1ns/1ns
module cosx_tb();
    reg Start=0,clk=0,rst=0;
    reg [7:0] y=8'b11111111;
    reg [15:0] x=16'b0000000110000000; //cos(1.5) = 0.0707 -> 0.082
    wire [15:0] cosx;
    wire ready;
    final_cosx_Q1 CUT(ready,clk,rst,x,y,Start,cosx);
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
        #82;#82; y=8'b00000001; x=16'b0000001000000000; //cos(2) = -0.41 -> -0.41
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

