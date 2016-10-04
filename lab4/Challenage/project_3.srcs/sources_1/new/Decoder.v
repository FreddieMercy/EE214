`timescale 1ns / 1ps

module Decoder (
    
    input [3:0] X,
    output reg[7:0] seg//,
    //output reg an

);

always @ (X)
    begin    
    seg = 8'b00000000;        
        case (X)
                
                4'd1:
                        seg = 8'b01111001;
                4'd2:
                        seg = 8'b00100100;
                4'd3:
                        seg = 8'b00110000;
                4'd4:
                        seg = 8'b00011001;
                4'd5:
                        seg = 8'b00010010;
                4'd6:
                        seg = 8'b00000010;
                4'd7:
                        seg = 8'b01111000;
                4'd8:
                        seg = 8'b00000000;
                4'd9:
                        seg = 8'b00010000;
                4'd10:
                        seg = 8'b00001000;
                4'd11:
                        seg = 8'b00000011;
                4'd12:
                        seg = 8'b01000110;
                4'd13:
                        seg = 8'b00100001;
                4'd14:
                        seg = 8'b00000110;
                4'd15:
                        seg = 8'b00001110;
                
                default:
                        seg = 8'b01000000;
        endcase
        
        //an = seg;
    end
 
endmodule
