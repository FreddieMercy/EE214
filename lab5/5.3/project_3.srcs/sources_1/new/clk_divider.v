`timescale 1ns / 1ps
module clk_divider(
    input clk,
    input rst,
    output led,
    input [1:0] sw
    );
 
wire [26:0] din;
wire [26:0] clkdiv;
 
dff dff_inst0 (
    .clk(clk),
    .rst(rst),
    .D(din[0]),
    .Q(clkdiv[0])
);
 
genvar i;
generate
for (i = 1; i < 27; i=i+1)
begin : dff_gen_label
    dff dff_inst (
        .clk(clkdiv[i-1]),
        .rst(rst),
        .D(din[i]),
        .Q(clkdiv[i])
    );
    end
endgenerate;
 
assign din = ~clkdiv;
 
assign led = (sw == 3) ? clkdiv[23] : ((sw == 2) ? clkdiv[24] : ((sw == 1) ? clkdiv[25] : clkdiv[26]));
 
endmodule