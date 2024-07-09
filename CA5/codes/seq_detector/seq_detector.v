`timescale 1ns/1ns
module seq_detector(input serin,detect,clk,rst, output serout , output [2:0] state);
    reg[2:0]ns,ps;
    parameter [2:0] A = 3'b000, B = 3'b001, C = 3'b010, D = 3'b011, E = 3'b100, F = 3'b101, G = 3'b110;

    always @(ps,serin) begin
        ns=A;
        case(ps)
            A:ns = serin ? A : B;
            B:ns = serin ? C : B;
            C:ns = serin ? D : B;
            D:ns = serin ? E : B;
            E:ns = serin ? F : B;
            F:ns = serin ? G : B;
            G:ns = serin ? A : B;
            default:ns = A;
        endcase
    end

    always @(posedge clk,posedge rst)begin
        if(rst)
            ps <= A;
        else if(detect)
            ps <= ns;
    end

    assign serout = (ps == G)? ~serin : 1'b0;
	 assign state = ps;

endmodule