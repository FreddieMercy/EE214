`timescale 1ns / 1ps

module tb();

reg I3, I2, I1, I0;
reg [1:0] S;
wire sdata;
reg [3:0] sw;
 
mux mux (
    .I3(I3),
    .I2(I2),
    .I1(I1),
    .I0(I0),
    .S(S),
    .Y(sdata)
);
 

integer k;
integer j;

initial
begin
    S = 0;
    I0 = 0;
    I1 = 0;
    I2 = 0;
    I3 = 0;
    sw = 0;
    
        for (k=0; k<4; k=k+1)
        begin
            #20 S = k;
            for (j = 0; j < 16; j=j+1)
            begin
                #20 sw = j;
                #20 I0 = sw[0];
                #20 I1 = sw[1];
                #20 I2 = sw[2];
                #20 I3 = sw[3];
            end
        end
            //#20 $finish;
    
        //#20 $finish;

end




endmodule