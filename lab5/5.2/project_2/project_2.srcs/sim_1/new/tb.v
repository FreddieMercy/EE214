`timescale 1ns / 1ps

module tb(

    );
    
reg S;
reg R;
wire Q;
wire Qn;
    
sr_latch top(

    .S(S),
    .R(R),
    .Q(Q),
    .Qn(Qn)

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
