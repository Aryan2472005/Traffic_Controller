`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2025 23:03:55
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb;

reg clk =0; 
reg rst;
wire MR, MY, MG, SR, SY, SG;

top traffic_controller(clk, rst, MR, MY, MG, SR,SY,SG);

always #5 clk = ~clk;

initial begin 
#20 rst = 1;
#25 rst =0;
end
endmodule
