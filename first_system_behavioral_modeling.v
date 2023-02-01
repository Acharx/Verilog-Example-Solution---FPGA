`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2023 20:46:50
// Design Name: 
// Module Name: first_system_behavioral_modeling
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


module first_system_behavioral_modeling(out1,out2,in1,in2);

//port definition
input in1,in2;
output out1,out2;

//descriotion of the digital system
//behavioral modeling

reg out1,out2;
//reg keywords; keep previous value 


initial
begin
out1 = 0;
out2 = 0;
end

always @ (in1,in2)
begin
out1 = (in1 & in2) ^(in1 | in2);
out2 = ~in2;
end

endmodule
