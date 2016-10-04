`timescale 1ns / 1ps

module demux_tb ();

reg [1:0] S;
wire [3:0] Y;
reg en;

demux de (
    .En(en),
    .X(S),
    .Ys(Y)
);

integer k;
integer e;

initial
begin
    S = 0;
    en = 0;
    
    for (e = 0; e < 2; e=e+1)
    begin
        #20 en = e;
        for (k=0; k<4; k=k+1)
        begin
            #20 S = k;
    
        end
    end
end

endmodule