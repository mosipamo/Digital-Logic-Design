`timescale 1ns/1ns
module cont_Q1 (
    input clk,rst,y_bigger,start, output reg cnt_en, cnt_set, x_ld, t_ld, t_init, r_ld, r_init, mux_sel,ready);
    reg[2:0] ns,ps;
    parameter [2:0]  Idle = 0, Wait = 1,  Init = 2, Mult1 = 3, Mult2 = 4, Add = 5;
    always @(ps,y_bigger) begin
        {cnt_en, cnt_set, x_ld, t_ld, t_init , r_ld, r_init, mux_sel, ready} = 9'b0;
        case(ps)
            Idle : begin
                ns = start ? Wait : Idle; 
                ready = 1'b1; 
            end
            Wait : begin 
                ns = start ? Wait : Init; 
            end
            Init : begin 
                ns = Mult1; 
                t_init = 1'b1; 
                r_init = 1'b1; 
                x_ld = 1'b1; 
                cnt_set  = 1'b1; 
            end
            Mult1 : begin 
                ns = Mult2; 
					 mux_sel = 1'b0;
                t_ld = 1'b1; 
            end
            Mult2 : begin 
                ns = Add; 
                mux_sel = 1'b1;
                t_ld = 1'b1; 
            end
            Add : begin 
                ns = y_bigger ? Idle : Mult1; 
                r_ld = 1'b1; 
                cnt_en = 1'b1; 
            end            
        endcase
    end
    always @(posedge clk,posedge rst) begin
        if(rst)
            ps <= Idle;
        else
            ps <= ns;        
    end
endmodule 