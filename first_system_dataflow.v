`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2023 20:40:08
// Design Name: 
// Module Name: first_system_dataflow
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


module first_system_dataflow(out1,out2,in1,in2);

//port definition
input in1,in2;
output out1,out2;

//description of the digital system
//dataflow modeling

wire and_out,or_out;

assign and_out = in1 & in2;
assign or_out = in1 | in2 ;
assign out1 = and_out ^ or_out;
assign out2 = ~in2;


endmodule
