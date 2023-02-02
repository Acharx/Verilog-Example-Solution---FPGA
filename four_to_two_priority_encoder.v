module four_to_twi_priority_encoder(y,v,x);

input [3:0] x;
output [1:0] y;
output v;

//for structural modeling
wire o1,o2;

//structural modeling
or g1(y[0],x[2],x[3]);
not g2(o1,x[2]);
and g3(o2,o1,x[1]);
or g4(y[1],x[3],o2);
or g5(v,x[3],x[2],x[1],x[0]);

//dataflow modeling
assign y[0] = x[2] | x[3];
assign y[1] = x[3] | (x[1] & ~x[2]);
assign v= x[0] | x[1] | x[2] | x[3] ;

endmodule