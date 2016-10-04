`timescale 1ns / 1ps


module mux(
        input [1:0] I0,
        input [1:0] I1,
        input [1:0] I2,
        input [1:0] I3,
        input [1:0] Sel,
        output [1:0] Y
    );
    
    assign Y = (Sel == 2'd0) ? I0 : (
                    (Sel == 2'd1) ? I1 : (
                        (Sel == 2'd2) ? I2 : I3
                    )
                );
    
endmodule
