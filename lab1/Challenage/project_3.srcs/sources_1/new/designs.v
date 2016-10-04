`timescale 1ns / 1ps
module designs(
    
    input [3:0] led,
    output [3:0] an,
    output [7:0] seg
    );
begin
assign seg = 8'b00000000;

assign an[0] = led[0];
assign an[1] = led[1];
assign an[2] = led[2];
assign an[3] = led[3];
end
endmodule
