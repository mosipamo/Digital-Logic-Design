`timescale 1ns/1ns
module mux(output signed[15:0]out,input [1:0]opc,input signed[15:0]a,b,c,d);
    assign out= (opc==2'b00) ? a:
                (opc==2'b01) ? b:
                (opc==2'b10) ? c:
                (opc==2'b11) ? d:16'b0;
endmodule

module mux_c(output out,input [2:0] opc,input inC);
    assign out = 
        ((opc[1:0] == 2'b00) || (opc[1:0] == 2'b01)) ? 1'b1:
        (opc[1:0] == 2'b10) ? inC:
        (opc[1:0] == 2'b11) ? 1'b0:
        1'b0;
endmodule

module and_op (output signed[15:0]out,input signed[15:0]a,b);
    assign out=a&b;   
endmodule


module or_op (output signed[15:0]out,input signed[15:0]a,b);
    assign out=a|b;   
endmodule

module not_op (output signed[15:0]out,input signed[15:0]a);
    assign out=~a;   
endmodule

module shift_right_op (output signed[15:0]out,input signed[15:0]a);
    assign out= a>>>1;   
endmodule

module adder_op (output signed[15:0]out,input cin,input signed[15:0]a,b);
    assign out=a+b+cin;   
endmodule

module concat_op(output signed[15:0]out,input signed[15:0]a,b);
    assign out={a[7:0],b[7:0]};   
endmodule

module Q2_ALU(input signed [15:0]inA,inB ,input inC,input [2:0] opc
,output reg signed [15:0]outW ,output zer,neg);
    wire signed[15:0] anded_wire,ored_wire,concat_wire,not_wire,shift_wire,res3,res2,res1,adddd;
    wire i;
    and_op and0(anded_wire,inA,inB);
    or_op or0(ored_wire,inA,inB);
    concat_op concat0(concat_wire,inA,inB);
    not_op not0(not_wire,inA);
    shift_right_op shifter(shift_wire,inB);
    mux mux1(res3,opc[1:0],anded_wire,ored_wire,concat_wire,16'b0);
    mux mux2(res2,opc[1:0],not_wire,inA,inA,inA);
    mux mux3(res1,opc[1:0],16'b0,16'b0,inB,shift_wire);
    mux_c mux4(i,opc,inC);
    adder_op adder0(adddd,i,res2,res1);
    assign outW=(opc[2]==0)?adddd:res3;

    assign neg=outW[15];
    assign zer= ~|outW;

endmodule
