`timescale 1ns / 1ps

module majority_of_five_text_fixture;
 
// Inputs
reg [4:0] sw;
// Outputs
wire led;
 wire led2;
// Instantiate the Unit Under Test (UUT)
project0_demo uut (
    .sw(sw),
    .led(led),
    .led2(led2)
);
 
// Declare loop index variable
integer k;
 
// Apply input stimulus
initial
begin
    sw = 0;
 
    for (k=0; k<32; k=k+1)
        #20 sw = k;
 
    #20 $finish;
end
 
endmodule