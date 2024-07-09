`timescale 1ns/1ns

module Q6_2_TB_simple();
    reg [6:0] a = 7'b0000000;
    wire [2:0] y;

    Q6_2 u (.a(a), .y(y));
    

    initial begin
	#120
            a = 7'b0000001;
	#120
	    a = 7'b1010110;
	#120 $stop;
    end
endmodule


module Q6_2_TB();
    reg [6:0] a = 7'b0000000;
    wire [2:0] y;

    Q6_2 u (.a(a), .y(y));

    initial begin
	#120
            a = 7'b0000001;
	#120
	    a = 7'b0000011;
        #120
	    a = 7'b0000111;
        #120
	    a = 7'b0001111;
        #120
	    a = 7'b0011111;
        #120
	    a = 7'b0111111;
        #120
	    a = 7'b1111111;
        #120
	    a = 7'b0111111;
        #120
	    a = 7'b0011111;
        #120
	    a = 7'b0001111;
        #120
	    a = 7'b0000111;
        #120
	    a = 7'b0000011;
        #120
	    a = 7'b0000001;
        #120
	    a = 7'b0000000;
	#120 $stop;
    end
endmodule
