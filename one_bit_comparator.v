module one_bit_comparator(g,e,l,x,y);

input x,y;
output g,e,l;

//for structural modeling
wire o1 ,o2 ,o3;

//structural modeling
not g1(o1,y);
and g2(g,o1,x);
xor g3(o2,x,y);
not g4(e,o2);
not g5(o3,x);
and g6(l,o3,y);

//dataflow modeling
assign g= x & ~y;
assign e = ~(x^y);
assign l = ~x & y;

endmodule