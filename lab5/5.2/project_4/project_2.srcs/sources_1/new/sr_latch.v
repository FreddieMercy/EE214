`timescale 1ns / 1ps
module sr_latch(
    input D,
    input G,
    output Q,
    output Qn
    );
 
wire topAnd, botAnd, topOR, botOR, inv;

assign #1 topAnd=~(D&G);
assign #1 inv = ~D;
assign #1 botAnd=~(inv & G);
assign #1 topOR = ~topAnd | ~botOR;
assign #1 botOR = ~(botAnd & topOR);
assign Q = topOR;
assign Qn = botOR;

endmodule