`timescale 1ns / 1ps

module tb(

    );
    
reg S;
reg R;
wire NOR_Q;
wire NOR_Qn;
wire NAND_Q;
wire NAND_Qn;

sr_latch top(

    .S(S),
    .R(R),
    .NOR_Q(NOR_Q),
    .NOR_Qn(NOR_Qn),
    .NAND_Q(NAND_Q),
    .NAND_Qn(NAND_Qn)

);
    
initial 
begin
        // Initialize Inputs
S = 1;
R = 1;

// Add stimulus here
#100 S = 0;
#100 S = 1;
     R = 0;

#100 R = 1;

#100 S = 0;
     R = 0;
#100 S = 1;
     R = 1;
     
     
#100 S = 0;
     R = 0;
     
//700 ns     
#100 R = 1;
#100 S = 1;
     R = 0;
end
    
    
    
endmodule
