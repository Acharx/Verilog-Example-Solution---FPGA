`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2023 23:23:01
// Design Name: 
// Module Name: concatenate_replicate_tb
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


module concatenate_replicate_tb;

reg [7:0] in1;
reg [7:0] in2;
wire [15:0] out1;
wire [15:0] out2;

concatenate_replicate UUT(.num1(in1), .num2(in2), .res1(out1), .res2(out2) );

initial begin
in1 = 8'hFA;
in2 = 8'h0F;

#100;
end

endmodule
