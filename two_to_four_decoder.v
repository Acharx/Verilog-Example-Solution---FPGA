module two_to_four_decoder(y,x);

input[1:0]x;
output[3:0]y;

//for structural modeling
wire o1,o2;

//stuctural modeling
not g1(o1,x[0]);
not g2(o2,x[1]);
and g3(y[0],o1,o2);
and g4(y[1],x[0],o2);
and g5(y[2],o1,x[1]);
and g6(y[3],x[0],x[1]);


//dataflow modeling
assign y[0] = ~x[0] & ~x[1] 
assign y[1] = ~x[0] & x[1] 
assign y[2] = x[0] & ~x[1] 
assign y[3] = x[0] & x[1] 