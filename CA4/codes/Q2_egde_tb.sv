`timescale 1ns/1ns
module tbq2();
    logic D = 0, clk = 0;
    wire Q, Qb;
    Q2_edge DFF(D, clk, Q, Qb);
    always #100 clk = ~clk;
    initial begin
	repeat (15) #120 D = $random;
	#100 $stop;  
    end
endmodule
