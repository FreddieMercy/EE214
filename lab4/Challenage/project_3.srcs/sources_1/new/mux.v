`timescale 1ns / 1ps

module mux (
I0, I1, S, Y

);
 
input I0;
input I1;

input S;
output reg Y;
 
always @ (I1,I0, S)
 begin
    Y = (S == 1'd0) ? I0 : I1;
 end
endmodule
