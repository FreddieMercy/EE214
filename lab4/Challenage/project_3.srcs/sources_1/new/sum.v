`timescale 1ns / 1ps

module sum (clk, X, an, seg);
    input clk;
    input [7:0] X;
    output reg [3:0] an;
    output [7:0] seg;

   
    
reg [3:0] Y;
wire tmp;
//reg [3:0] tmp2;

counter Counter ( .Y(tmp), .clk(clk) );

always @ (X, seg)
begin

    //an = (X > 7'd15) ? 4'b0111 : 4'b1011; 
    //Y = (X > 7'd15) ? X[7:4] : X[3:0];
    
    an = (tmp == 1'b1) ? 4'b0111 : 4'b1011; 
    Y = (tmp == 1'b1) ? X[7:4] : X[3:0];
    

end

//assign an = tmp;
Decoder inputs(.X(Y), .seg(seg));
//assign an = 4'b0011;
endmodule
