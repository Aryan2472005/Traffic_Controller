`timescale 1ns / 1ps


module top( 
            input clk, rst,
            output reg MR, MY, MG, SR,SY,SG
    );
    parameter state_in = 3'b000, state1 = 3'b001, state2 = 3'b010, state3 = 3'b011, state4 = 3'b100;
    reg [2:0] state = state_in;
    
    always @(posedge clk) begin
        if(rst)begin
            state <= state_in; 
            MR <= 0; MY <= 0; MG <= 0; SR <= 0; SY <= 0;SG <= 0;
        end
        else  begin
            case(state)
                state_in : begin
                    state <= state1; 
                    MR <= 0; MY <= 0; MG <= 0; SR <= 0; SY <= 0;SG <= 0;
                end
                
                state1 : begin
                    state  <= state2;
                    MR <= 0; MY <= 0; MG <= 1; SR <= 1; SY <= 0;SG <= 0;    
                end 
                
                state2 : begin
                    state  <= state3;
                    MR <= 1; MY <= 0; MG <= 0; SR <= 0; SY <= 1;SG <= 0;    
                end 
                
                state3 : begin
                    state  <= state4;
                    MR <= 1; MY <= 0; MG <= 0; SR <= 0; SY <= 0;SG <= 1;    
                end 
                
                state4 : begin
                    state  <= state1;
                    MR <= 0; MY <= 1; MG <= 0; SR <= 1; SY <= 0;SG <= 0;    
                end 
                
             endcase
        end
    end
    
endmodule
