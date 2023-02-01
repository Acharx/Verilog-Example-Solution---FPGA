`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2023 22:01:44
// Design Name: 
// Module Name: hierarchical_module_representation
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
module and_module(and_out,in1,in2);

input in1,in2;
output and_out;

assign and_out = in1 & in2;
endmodule

module or_module(or_out,in1,in2);

input in1,in2;
output or_out;

assign or_out = in1 | in2;
endmodule

module hierarchical_module_representation(out1,out2,in1,in2);

input in1,in2;
output out1,out2;

wire and_out,or_out;

and_module U1(and_out,in1,in2);
or_module U2(or_not,in1,in2);

assign out1 = and_out ^ or_out;
assign out2 = ~ in2;

endmodule
