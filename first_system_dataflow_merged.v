`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2023 20:42:48
// Design Name: 
// Module Name: first_system_dataflow_merged
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


module first_system_dataflow_merged(out1,out2,in1,in2);

//port definition
input in1,in2;
output out1,out2;

//description of the digital system
// dataflow modeling in merged form

assign out1 = (in1 & in2) ^ (in1 | in2);
assign out2 = ~ in2;

endmodule
