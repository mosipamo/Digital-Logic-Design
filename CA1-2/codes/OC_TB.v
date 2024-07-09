`timescale 1ns/1ns
module tb_OC_1();
    reg aa=0, bb=0, cc=0;
    wire y0, y1;
    
    OC_y0 u0 (.a(aa), .b(bb), .c(cc), .y0(y0));
    OC_y1 u1 (.a(aa), .b(bb), .c(cc), .y1(y1));
    
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

module tb_OC_simple_1();
    reg aa=0, bb=0, cc=0;
    wire y0, y1;
    
    OC_y0 u0 (.a(aa), .b(bb), .c(cc), .y0(y0));
    OC_y1 u1 (.a(aa), .b(bb), .c(cc), .y1(y1));
    
    initial begin
        #79 aa=1;
        #79 bb=1;
        #50 $stop;
    end
endmodule