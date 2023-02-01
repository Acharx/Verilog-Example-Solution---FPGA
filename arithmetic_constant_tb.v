`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2023 22:58:08
// Design Name: 
// Module Name: arithmetic_constant_tb
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


module arithmetic_constant_tb;

reg [7:0] in1;
wire [7:0] out1;
wire [7:0] out2;
wire [7:0] out3;
wire [7:0] out4;
wire [7:0] out5;

arithmetic_constant UUT (.num(in1), .res1(out1), .res2(out2), .res3(out3), .res4(out4), .res5(out5));

initial begin
in1= 8'h07;

#100;
end

endmodule
