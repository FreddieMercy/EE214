`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2016 09:13:37 PM
// Design Name: 
// Module Name: lights
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lights(
    input [3:0] sw,
    output led
    );
    
    
    assign led = ( sw[0] & ~sw[1] & ~sw[2] & ~sw[3])|
                 (~sw[0] &  sw[1] & ~sw[2] & ~sw[3])|
                 (~sw[0] & ~sw[1] &  sw[2] & ~sw[3])|
                 (~sw[0] & ~sw[1] & ~sw[2] &  sw[3])|
                 (~sw[0] &  sw[1] &  sw[2] &  sw[3])|
                 ( sw[0] & ~sw[1] &  sw[2] &  sw[3])|
                 ( sw[0] &  sw[1] & ~sw[2] &  sw[3])|
                 ( sw[0] &  sw[1] &  sw[2] & ~sw[3]);
endmodule
