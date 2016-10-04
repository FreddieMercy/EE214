`timescale 1ns / 1ps
module design(
    
    input [3:0] led,
    output [3:0} an,
    output [7:0] seg
    );
     
assign an[0] = led[0];
assign seg[0] = led[0];
assign seg[1] = led[0];
assign an[1] = led[1];
assign seg[2] = led[1];
assign seg[3] = led[1];
assign an[2] = led[2];
assign seg[4] = led[2];
assign seg[5] = led[2];
assign an[3] = led[3];
assign seg[6] = led[[3];
assign seg[7] = led[3];
endmodule
