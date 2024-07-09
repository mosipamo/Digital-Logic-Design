`timescale 1ns/1ns
module controller(input clk,rst,seroutval,co3,co8,output reg detect,cnt3en,cnt8en,ldcnt3,ldcnt8);
    parameter [2:0] detecting = 0, loading_cnt3 = 1, nt_collecting = 2, loading_cnt8 = 3, transmitting = 4;
    reg [2:0] p_state,n_state;
    always @(p_state, seroutval, co3, co8) begin
        n_state = 0;
        {detect, cnt3en, cnt8en, ldcnt3, ldcnt8} = 6'b0;
        case(p_state)
            detecting:begin 
					detect = 1; n_state = seroutval ? loading_cnt3 : detecting; 
				end
			   loading_cnt3:begin 
					ldcnt3 = 1; n_state = nt_collecting;  
				end
            nt_collecting:begin 
					cnt3en = 1; n_state = co3 ? loading_cnt8 : nt_collecting; 
				end
            loading_cnt8:begin 
					ldcnt8 = 1; n_state = transmitting;  
				end
            transmitting:begin 
					cnt8en = 1; n_state = co8 ? detecting : transmitting; 
				end
            default: n_state = detecting;
        endcase
    end
    always@(posedge clk, posedge rst) begin
        if(rst)
            p_state <= detecting;
        else
            p_state <= n_state;
    end
endmodule