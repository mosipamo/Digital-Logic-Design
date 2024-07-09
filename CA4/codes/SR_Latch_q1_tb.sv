`timescale 1ns/1ns
module tbq1();
    logic S=0,R=1;
    wire Q, QB;
    wire QQ, QQB;
    SRL_q1_2inp u(S, R, Q, QB);
    SRL_q1_3inp ut(S, R, S, R, QQ, QQB);

    initial begin
        #100 S = 0; R = 0;
        #100 S = 1; R = 1;
        #100 S = 1; R = 0;
        #100 S = 1; R = 1;
	#100 S = 0; R = 0;
	#100 S = 1; R = 1;
        #100 S = 0; R = 1;	
        #100 $stop;
    end

endmodule
