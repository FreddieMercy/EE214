`timescale 1ns / 1ps

module sft_tb();

reg [3:0] I;
reg D;
reg R;
reg F;
reg En;
wire [3:0] Y;

sft tb(

    .I(I),
    .D(D),
    .R(R),
    .F(F),
    .En(En),
    .Y(Y)

);

integer i;
integer d;
integer r;
integer f;
integer en;

initial 
begin

    I=0;
    D=0;
    R=0;
    F=0;
    En=0;
    
    for(en=0;en<2;en=en+1)
    begin
        #20 En=en;
        for(r=0;r<2;r=r+1)
        begin
            #20 R=r;
            for(d=0;d<2;d=d+1)
            begin
                #20 D=d;
                for(f=0;f<2;f=f+1)
                begin
                    #20 F=f;
                    for(i=0; i<16;i=i+1)
                    begin
                        #20 I = i;
                    end
                end
            end
        end
    end
end
endmodule
