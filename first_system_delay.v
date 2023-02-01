`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2023 21:46:11
// Design Name: 
// Module Name: first_system_delay
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


module first_system_delay(out1,out2,in1,in2);

//port definitions
input in1,in2;
output out1,out2;

//description of the digital system
//dataflow modeling

assign out1 = in1 & ^ in1 | in2;
assign #20 out2 = ~ in2;

//Output 20ns geç iþleniyor

endmodule
