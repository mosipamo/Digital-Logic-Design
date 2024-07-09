`timescale 1ns/1ns
module Q6_TB();
    reg [6:0] a = 7'b0000000;
    wire [2:0] y;
    wire [2:0] yy;

    Q6 u (.a(a), .y(y));
    Q6_2 uu (.a(a), .y(yy));

    initial begin
	#200
	a[0] = 1;
	#200
	a[1] = 1;
	#200
	a[2] = 1;
	#200
	a[3] = 1;
	#200
	a[4] = 1;
	#200
	a[5] = 1;
	#200
	a[6] = 1;

	#200
        a[0] = 0;
	#200
	a[1] = 0;
	#200
	a[1] = 0;
	#200
	a[2] = 0;
	#200
	a[3] = 0;
	#200
	a[4] = 0;
	#200
	a[5] = 0;
	#200
	a[6] = 0;
	#200 $stop;
    end
endmodule

module Q6_TB_simple();
    reg [6:0] a = 7'b0000000;
    wire [2:0] y;
    wire [2:0] yy;

    Q6 u (.a(a), .y(y));
    Q6_2 uu (.a(a), .y(yy));

    initial begin
	#200 a[14]=1;
	#200 a[0]=1;
	#200 $stop;
    end
	
endmodule
    
