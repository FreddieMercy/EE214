`timescale 1ns / 1ps

module abc(
    
    input [7:0] sw,
    output led
);

assign led = ((sw[7] & ~sw[6] & ~sw[5])&
                           (~sw[4] |
                           (sw[4] & (~sw[3] | (~sw[2] & ~sw[1] ) ) ) ) );

endmodule