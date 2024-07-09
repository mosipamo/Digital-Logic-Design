`timescale 1ns/1ns
module tbq2_c_d();
    logic D = 0, clk = 0;
    wire Q, Qb;
    Q2_edge DFF (D, clk, Q, Qb);
    always #100 clk = ~clk;
    initial begin
        #50 D = 0;
        #200 D = 1; 
	#50 D = 0;
        #300 $stop;
    end
endmodule