`timescale 1ns / 1ps

module max_tb();

reg [1:0] I0;
reg [1:0] I1;
reg [1:0] I2;
reg [1:0] I3;
reg [1:0] Sel;
wire [1:0] Y;

mux tb(

.I0(I0),
.I1(I1),
.I2(I2),
.I3(I3),
.Sel(Sel),
.Y(Y)

);

integer i;
integer j;
reg [7:0] isw;

initial
begin
    isw=0;
    I0=0;
    I1=0;
    I2=0;
    I3=0;
    for(i=0; i<4; i=i+1)
    begin
        #20 Sel=i;
        for(j=0; j<256; j=j+1)
        begin
            #20 isw = j;
            #20 I0=isw[1:0];
            #20 I1=isw[3:2];
            #20 I2=isw[5:4];
            #20 I3=isw[7:6];
        
        //#20 $finish;
        end
    //#20 $finish;
    end


end

endmodule
