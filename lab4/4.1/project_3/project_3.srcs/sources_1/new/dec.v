`timescale 1ns / 1ps

module dec(
    input [3:0] I,
input Ein,
output [1:0] Y,
output GS,
output Eout
    );
    
    reg [1:0] Y;
    reg GS;
    reg Eout;
     
    always @ (I, Ein)
    begin
        if(Ein == 1)
        begin
        
            if(I[3] == 1)
            begin
                Y= 3;
                Eout= 1'b0;
                GS=1'b1;
            end
            else if(I[2] == 1) 
            begin
                Y = 2;
                Eout=0;
                GS=1;
            end
            else if (I[1] == 1) 
            begin
                Y = 1;
                Eout=0;
                GS=1;
            end
            else if (I[0] == 1)
            begin 
                Y = 0;
                Eout=0;
                GS=1;
            end
            else
            begin
                Y=0;
                Eout=1;
                GS=0;
            end
        end
        else
        begin
            Y = 0;
            Eout=0;
            GS=0;
        end
    end
    
endmodule
