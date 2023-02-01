`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2023 22:22:16
// Design Name: 
// Module Name: vector_defn_tb
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


module vector_defn_tb;

reg [7:0] in1;
wire out1;
wire [3:0] out2;
wire [0:7] out3;

vector_defn UUT(.num1(in1), .res1(out1), .res2(out2), .res3(out3));

initial begin
in1 = 8'hFA;
#100;
end

endmodule
