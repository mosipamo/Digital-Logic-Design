`timescale 1ns/1ns
module tbq3();
    logic D = 0, clk = 0, pre = 1, clr = 1;
    wire Q, Qb;
    Q3_pre_clr DFFPC(D, clk, pre , clr, Q, Qb);
    always #100 clk = ~clk;
    initial begin
	repeat (20) #150 {D, pre, clr} = $random;
	#200 $stop;
    end
endmodule
