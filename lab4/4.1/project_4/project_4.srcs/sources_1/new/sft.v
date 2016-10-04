`timescale 1ns / 1ps

module sft(
    input [3:0] I,
input D,
input R,
input F,
input En,
output [3:0] Y
    );
    
    reg [3:0] Y;
     
    always @ (I, En)
    begin
        if (En == 0)
        begin
            Y = I;
        end
        else
        begin
            if (R == 0)
            begin
                Y = (D == 0) ? {I[2:0], F} : {F, I[3:1]};
            end
            else
            begin
                Y = (D == 0) ? {I[2:0], I[3]} : {I[0], I[3:1]};
            end
        end
    end
    
endmodule
