//This page is worked on VSCODE.
//Not worked and simulated.
//Aim is only show syntax.

//  NOT GATE

    //structural modeling

    not not_gate(y,x);

    //Dataflow modeling

    assign y = ~x;

    //Behavioral modeling

    y = ~x;


//  OR  GATE

    //structural modeling

    or or_gate(z,x,y);

    //dataflow modeling

    assign z = x | y;

    //behavioral modeling

    z = x | y;


//  AND GATE

    //structural modeling

    and and_gate(z,x,y);

    //dataflow modeling

    assign z = x & y;

    //behavioral modeling

    z = x & y;

//  XOR GATE

    //structural modeling

    xor xor_gate(z,x,y);

    //dataflow modeling

    assign z = x ^ y;

    //behavioral modeling

    z = x ^ y;
    