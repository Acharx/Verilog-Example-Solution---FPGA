`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2023 21:02:20
// Design Name: 
// Module Name: blocking_nonblocking
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


module blocking_nonblocking(x,y,clk);

input x,clk;
output reg[5:0] y;

initial y=6'b000000;

always @ (posedge clk)
begin

//blocking assignment
y[0] = x;
y[1] = y[0];
y[2] = y[1];

//nonblocking assignment
y[3] <= x;
y[4] <= y[3];
y[5] <= y[4];

end

//Result
// when x=1;
// y[0]=1 
// y[1]=1  ==> Blocking
// y[2]=1

// y[3]=1  y3 could not affect remaining output
// y[4]=0  ==> Nonblocking
// y[5]=0

endmodule
