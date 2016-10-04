`timescale 1ns / 1ps

module abc_tb();
    
reg [7:0] sw;
wire led;
    
abc uut (
        .sw(sw),
        .led(led)
    );
    
integer k;
     
    // Apply input stimulus
initial
begin
    sw = 0;
     
    for (k=0; k<256; k=k+1)
        #20 sw = k;
        /*$display("sw: ", sw);
        led = ((sw[7] & ~sw[6] & ~sw[5])&
                                   (~sw[4] |
                                   (sw[4] & (~sw[3] | (~sw[2] & ~sw[1] ) ) ) ) );
        assign led = ((sw[7] & ~sw[6] & ~sw[5])&
                           (~sw[4] |
                           (sw[4] & (~sw[3] | (~sw[2] & ~sw[1] ) ) ) ) );*/

    #20 $finish;
end
    
endmodule
