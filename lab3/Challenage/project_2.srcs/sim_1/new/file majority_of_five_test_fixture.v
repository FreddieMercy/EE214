`timescale 1ns / 1ps

module majority_of_five_text_fixture;
 
// Inputs
reg [7:0] sw;
// Outputs
wire led;
 
// Declare loop index variable
integer k;
 
// Apply input stimulus
initial
begin
    sw = 0;
 
    for (k=0; k<256; k=k+1)
        #20 sw = k;
 
    #20 $finish;
end
 
endmodule