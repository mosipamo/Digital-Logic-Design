`timescale 1ns/1ns

module Q1_ALU(input signed [15:0] inA, inB, 
        input inC, input [2:0] opc,
        output reg [15:0] outW, 
        output zero, neg
    );

    
    always @(inA, inB, inC, opc) begin
        outW = 16'd0;
        case (opc)
            3'b000: outW = ~inA + 1;
            3'b001: outW = inA + 1;
            3'b010: outW = inA + inB + inC;
            3'b011: outW = inA + (inB >>> 1);
            3'b100: outW = inA & inB;
            3'b101: outW = inA | inB;
            3'b110: outW = {inA[7:0], inB[7:0]};
            3'b111: outW = 16'd0;
        
            default: outW = 16'bx;
        endcase
    end
    assign neg = outW[15];
    assign zero = ~|outW;


endmodule