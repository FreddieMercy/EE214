`timescale 1ns / 1ps

module demux (

En, X, Ys

);

input En;
input [1:0] X;
output reg [3:0] Ys;

always @ (X, En)
begin    
            case (X)
                2'd0:
                    Ys = 4'd1;
                2'd1:
                    Ys = 4'd2;
                2'd2:
                    Ys = 4'd4;
                2'd3:
                    Ys = 4'd8;
        
                default:
                    Ys = 4'd0;

end
 
endmodule
