module N_bit_comparator_withIfElse (comp,x,y);

parameter N = 4;

input [N-1:0] x,y;
output reg[2:0] com;

initial 
comp = 3'b0;

always @ (x or y)
if(x>y) comp = 3'b100;
else if(x==y) comp = 3'b010;
else if(x<y) comp = 3'b001;
else comp = 3'b111;
    
endmodule