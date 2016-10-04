`timescale 1ns / 1ps

module tb(

    );
    
reg E;
reg D;
wire Q;
wire Qn;
    
sr_latch top(

    .G(E),
    .D(D),
    .Q(Q),
    .Qn(Qn)

);
    
initial 
begin
        // Initialize Inputs
        E = 0;
        D = 0;
     
        // Add stimulus here
        #100 E=1;
        #100 D=1;
        #100 E=0;
        #100 D=0;
        #100 E=1;
             D=1;
        #100 E=0;
        #100 D=0;
        #100 E=1;
        #100 D=1;
        #100 E=0;
        #100 D=0;
        #100 D=1;
             E=1;
        
end
    
    
    
endmodule
