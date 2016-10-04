`timescale 1ns / 1ps
module sr_latch(
    input S,
    input R,
    output NOR_Q,
    output NOR_Qn,
    output NAND_Q,
    output NAND_Qn
    );
 
wire Q_int, Qn_int;
wire A, B;
 
assign #1 Q_int = ~(S | Qn_int);
assign #1 Qn_int = ~(R | Q_int);
assign NOR_Q = Q_int;
assign NOR_Qn = Qn_int;

assign #1 A = ~(S & B);
assign #1 B = ~(R & A);
assign NAND_Q = A;
assign NAND_Qn = B;

endmodule