`timescale 1ns / 1ps
module dff(
    input D,
    input clk,
    input rst,
    output reg Q
    );

always @ (posedge(clk)/*, posedge(rst)*/)
begin
/*
    if (rst == 1)
        Q <= 1'b1;
    else
    begin*/
            Q <= D;
    //end
end



endmodule