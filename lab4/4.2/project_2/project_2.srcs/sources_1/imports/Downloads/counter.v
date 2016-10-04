module counter (
	input clk,
	output Y1, Y0
);

reg [27:0] counter;

always @ (posedge clk)
begin
	counter <= counter + 1;
end

assign Y1 = counter[27];
assign Y0 = counter[26];

endmodule

