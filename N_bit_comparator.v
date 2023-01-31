`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2023 00:26:19
// Design Name: 
// Module Name: N_bit_comparator
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


module N_bit_comparator(comp,x,y);

parameter N=4;
input [N-1:0]x,y;
output reg [2:0] comp;

initial
comp = 3'b0;

always @ (x or y)
if (x>y) comp = 3'b100;
else if(x==y) comp = 3'b010;
else if(x<y) comp = 3'b001;
else comp = 3'b111;



endmodule
