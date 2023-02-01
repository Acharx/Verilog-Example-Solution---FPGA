`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2023 23:13:58
// Design Name: 
// Module Name: concatenate_replicate
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


module concatenate_replicate(num1,num2,res1,res2);

input [7:0] num1;
input [7:0] num2;
output [15:0] res1;
output [15:0] res2;

//concatenate
assign res1={num1,num2};

//replicate
assign res2={2{num1}};

endmodule
