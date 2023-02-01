module one_bit_half_adder(s,co,x,y);

//port definiton
input x,y;
output s,co;

//structural modeling
and g1(co,x,y);
xor g2(s,x,y);

//dataflow modeling
assign co = x & y;
assign s = x ^ y;

endmodule