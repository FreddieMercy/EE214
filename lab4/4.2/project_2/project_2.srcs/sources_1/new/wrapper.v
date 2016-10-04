`timescale 1ns / 1ps

module wrapper (
input clk,
input I3, I2, I1, I0,
output [3:0] Y,
output reg TDATA
);
 
// Structural Description of wrapper
wire sdata;
wire [3:0] t;
wire [1:0] S;

mux input_mux (
    .I3(I3),
    .I2(I2),
    .I1(I1),
    .I0(I0),
    .S(S),
    .Y(sdata)
);
 
demux output_demux (
    .En(sdata),
    .X(S),
    .Ys(t)
);

latch store(

    .I(t),
    .O(Y),
    .S(S)

);

counter ctr(

    .clk(clk),
    .Y0(S[0]),
    .Y1(S[1])
);

always @(*)
begin

    TDATA=sdata;

end

endmodule