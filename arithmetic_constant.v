`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2023 22:55:02
// Design Name: 
// Module Name: arithmetic_constant
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


module arithmetic_constant(num,res1,res2,res3,res4,res5);

input [7:0] num;
output [7:0] res1;
output [7:0] res2;
output [7:0] res3;
output [7:0] res4;
output [7:0] res5;

parameter coef=8'h02;

//addition
assign res1=coef+num;

//subtarction
assign res2 =num-coef;

//multiplication
assign res3=coef*num;

//division
assign res4 = num/coef;

//modulus
assign res5=num%coef;

endmodule
