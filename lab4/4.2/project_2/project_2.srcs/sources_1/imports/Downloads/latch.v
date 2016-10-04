module latch (
input [3:0] I,
input [1:0] S,
output reg [3:0] O
);

always @ (I, S) 
begin
    case (S)
        2'b00:
            O[0] = I[0];
        2'b01:
            O[1] = I[1];
        2'b10:
            O[2] = I[2];
        2'b11:
            O[3] = I[3];
    endcase
end
endmodule