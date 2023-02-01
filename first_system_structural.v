`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2023 20:34:15
// Design Name: 
// Module Name: first_system_structural
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


module first_system_structural(out1,out2,in1,in2);

//port definition
input in1,in2;
output out1,out2;

//description of the digital system
//structural modeling

wire and_out,or_out;

and gate_and(and_out,in1,in2);
or gate_or(or_out,in1,in2);
xor gate_xor(out1,and_out,or_out);
not gate_not(out2,in2);


endmodule
