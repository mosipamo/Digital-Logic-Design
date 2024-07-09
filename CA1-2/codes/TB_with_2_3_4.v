`timescale 1ns/1ns
module tb_OC_2_3_4();
    reg aa=0, bb=0, cc=0;
    wire y0, y1, yy0, yy1, yyy0, yyy1;

    OC_y0 u0 (.a(aa), .b(bb), .c(cc), .y0(y0));
    OC_y1 u1 (.a(aa), .b(bb), .c(cc), .y1(y1));
   
    OC_Q3_y0 uu0 (.a(aa), .b(bb), .c(cc), .y0(yy0));
    OC_Q3_y1 uu1 (.a(aa), .b(bb), .c(cc), .y1(yy1));

    OC_Q4_y0 uuu0 (.a(aa), .b(bb), .c(cc), .y0(yyy0));
    OC_Q4_y1 uuu1 (.a(aa), .b(bb), .c(cc), .y1(yyy1));
    
   
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


module tb_OC_simple_2_3_4();
    reg aa=0, bb=0, cc=0;
    wire y0, y1, yy0, yy1, yyy0, yyy1;

    OC_y0 u0 (.a(aa), .b(bb), .c(cc), .y0(y0));
    OC_y1 u1 (.a(aa), .b(bb), .c(cc), .y1(y1));
   
    OC_Q3_y0 uu0 (.a(aa), .b(bb), .c(cc), .y0(yy0));
    OC_Q3_y1 uu1 (.a(aa), .b(bb), .c(cc), .y1(yy1));

    OC_Q4_y0 uuu0 (.a(aa), .b(bb), .c(cc), .y0(yyy0));
    OC_Q4_y1 uuu1 (.a(aa), .b(bb), .c(cc), .y1(yyy1));
    
   
    initial begin
        #79 aa=1;
        #79 bb=1;
        #50 $stop;
    end
endmodule