`timescale 1ns / 1ps

module dec_tb();

reg [2:0] I;
wire [7:0] Y;
dec tb(

    .I(I),
    .Y(Y)
    
);

integer k;

initial
begin

    I=0;
    
    for(k=0;k<8;k=k+1)
    begin
        #20 I=k;
    
    end

end

endmodule
