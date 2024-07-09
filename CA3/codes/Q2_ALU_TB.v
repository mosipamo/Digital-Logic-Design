`timescale 1ns/1ns
module tb_ALU_2();
  reg signed [15:0] inpA, inpB;
  reg inpC;
  reg [2:0] opcode;
  wire signed [15:0] outputWQ1,outputWQ1Y,outputWQ2,outputWQ2Y;
  wire zero_flagQ1, neg_flagQ1,zero_flagQ1Y, neg_flagQ1Y,zero_flagQ2, neg_flagQ2,zero_flagQ2Y, neg_flagQ2Y;
  
  
  Q1_ALU uut(inpA,inpB,inpC, opcode,outputWQ1,zero_flagQ1,neg_flagQ1);
  Q1_ALU_yosys cut(inpA,inpB,inpC,opcode,outputWQ1Y,zero_flagQ1Y,neg_flagQ1Y);
  Q2_ALU uuut(inpA,inpB,inpC,opcode,outputWQ2,zero_flagQ2,neg_flagQ2);  
  Q2_ALUy ccut(inpA,inpB,inpC,opcode,outputWQ2Y,zero_flagQ2Y,neg_flagQ2Y);
  

  initial begin
    #100
    opcode = 3'b000;
    inpC = 1'b1;
    inpA = 16'd7;
    inpB = 16'd64;

    #100 inpC = 1'b0;
    #100 opcode = 3'b001;
    #100 opcode = 3'b010;
    #100 opcode = 3'b011;
    #100 opcode = 3'b100;
    #100 opcode = 3'b101;
    #100 opcode = 3'b110;
    #100 opcode = 3'b111;
    #100
    opcode = 3'b000;
    inpB = $random;
    repeat(5) begin
	#100
	opcode = $random;
	inpA = $random;
    end
    #100 $stop;
    
  end
endmodule