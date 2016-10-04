`timescale 1ns / 1ps

module wrapper (

//    X, an, seg, I0, I1, S, Y

);
 /*
input I1, I0, S;
input [3:0] X;
output Y, an;
output reg [7:0] seg;
wire sdata;
 
mux input_mux ( 
    .I0(I0),
    .I1(I1),
    .S(S),
    .Y(sdata)
);
 
Decoder output_decode (
    .an(sdata),
    .X(X),
    .Y(Y)
);
*/
endmodule