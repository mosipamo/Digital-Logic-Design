`timescale 1ns/1ns
module tb_OC_2();
    reg aa=0, bb=0, cc=0;
    wire yy0, yy1;

    
    OC_Q3_y0 uu0(.a(aa), .b(bb), .c(cc), .y0(yy0));
    OC_Q4_y1 uu1(.a(aa), .b(bb), .c(cc), .y1(yy1));
    

    initial begin
        #79 aa=0;bb=0;cc=1;
        #79 aa=0;bb=1;cc=0;
        #79 aa=0;bb=1;cc=1;
        #79 aa=1;bb=0;cc=0;
        #79 aa=1;bb=0;cc=1;
        #79 aa=1;bb=1;cc=0;	
        #79 aa=1;bb=1;cc=1;	
        #50 $stop;
    end

endmodule

module tb_OC_simple_2();
    reg aa=0, bb=0, cc=0;
    wire yy0, yy1;

    
    OC_Q3_y0 uu0(.a(aa), .b(bb), .c(cc), .y0(yy0));
    OC_Q4_y1 uu1(.a(aa), .b(bb), .c(cc), .y1(yy1));
    

    initial begin
	#79 aa=1;
	#79 bb=1;
	#50 $stop;
    end

endmodule