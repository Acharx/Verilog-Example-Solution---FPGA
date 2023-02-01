`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2023 20:01:09
// Design Name: 
// Module Name: fist_system_tb
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


module fist_system_tb;
//inputs
reg in1t,in2t;

//outputs
wire out1t,out2t;

//instantiate the unit under test(uut)
first_system UUT(.out1(out1t), .out2(out2t), .in1(in1t), .in2(in2t));

//providing input to the UUT
initial begin
//initialize inputs
in1t = 0;
in2t = 0;

//wait 100 ns for global reset to finish
#100;

//add stimulus here
repeat(4)
#100 {in1t,in2t} = {in1t,in2t} + 1'b1;
end

//display the result on the Tcl console (optinoal)
initial begin
$display(" in1 in2 out1 out2");
$monitor("\t%b \t%b \t%b \t%b" , in1t, in2t, out1t,out2t);
end

endmodule
