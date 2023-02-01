module one_bit_full_adder(s,co,x,y,ci);

//port definition
input x,y,ci;
//for structural and fuctional modeling
output s,co;

//for structural modeling
wire o1,o2,o3;

//structural modeling
and g1(o1,x,y);
xor g2(o2,x,y);
xor g3(s,o1,ci);
and g4(o3,o1,ci);
or g5(co,o2,o3);

//dataflow modeling
assign co = (x & y) | (ci & (x^y));
assign s = x^y^ci;

endmodule