`timescale 1ns / 1ps

module dec_tb();

reg [3:0] I;
reg Ein;
wire [1:0] Y;
wire GS;
wire Eout;


dec tb(

    .I(I),
    .Ein(Ein),
    .Y(Y),
    .GS(GS),
    .Eout(Eout)
    
);

integer i;
integer j;


initial
begin

Ein=0;
I=0;
    for(i=0;i<2;i=i+1)
    begin
        #20 I=0;
        #20 Ein=i;
        for(j=0;j<16;j=j+1)
        begin
            #20 I=j;
        end
    end

end

endmodule
