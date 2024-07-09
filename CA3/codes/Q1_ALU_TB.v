`timescale 1ns/1ns
module tb_ALU;
  reg signed [15:0] inpA, inpB;
  reg inpC;
  reg [2:0] opcode;
  wire signed [15:0] outputW, outputWW;
  wire zero_flag, neg_flag, zero_flag_y, neg_flag_y;

  Q1_ALU uut(inpA,inpB,inpC, opcode,outputW,zero_flag,neg_flag);
  // Q1_ALU_yosys cut(inpA,inpB,inpC,opcode,outputWW,zero_flag_y,neg_flag_y);

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