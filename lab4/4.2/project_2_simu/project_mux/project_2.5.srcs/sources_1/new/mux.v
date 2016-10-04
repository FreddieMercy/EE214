`timescale 1ns / 1ps

module mux (
I0, I1, I2, I3, S, Y

);
 
input I0;
input I1;
input I2;
input I3;
input [1:0] S;
output reg Y;
 
always @ (*)
begin
    if(S == 2'd0)
    begin
        Y = I0;
    end
    else if(S == 2'd1)
    begin
        Y= I1;
    end
    else if(S == 2'd2)
    begin
        Y=I2;
    end
    else
    begin
        Y=I3;
    end
 end
endmodule
