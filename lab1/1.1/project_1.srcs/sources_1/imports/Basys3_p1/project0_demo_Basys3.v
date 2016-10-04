`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2014 01:47:50 PM
// Design Name: 
// Module Name: project0_demo
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


module project0_demo(
    input clk,
    output [15:0] led,
    output [7:0] seg,
    output [3:0] an
    );
 
    reg [21:0] counter = 22'b0000000000000000000000; 
    reg divclk = 1'b0;
    reg [3:0] caseCounter = 4'b0000;
    reg [15:0] LedReg;
    reg [7:0] SegReg;

////clock divider////     
    always @(posedge clk)
       if(counter == 22'b1111111111111111111111) begin
           counter = 22'b0000000000000000000000;
           divclk = ~divclk;
       end
       
       else begin
           counter = counter + 1'b1;
       end
       
   always @(posedge divclk) 
       if(caseCounter == 5'b01111) begin
           caseCounter = 4'b0000;
       end
       else begin
           caseCounter = caseCounter + 1'b1;
       end
       
   always @(posedge divclk)    
  case (caseCounter)
     4'b0000 : begin
        LedReg = 16'b1111111111111110;
        SegReg = 8'b11111110;
              end
     4'b0001 : begin
        LedReg = 16'b1111111111111101;
        SegReg = 8'b11111101;
              end
     43'b0010 : begin
        LedReg = 16'b1111111111111011;
        SegReg = 8'b11111011;
              end
     4'b0011 : begin
        LedReg = 16'b1111111111110111;
        SegReg = 8'b11110111;
              end
     4'b0100 : begin
        LedReg = 16'b1111111111101111; 
        SegReg = 8'b11101111; 
              end
     4'b0101 : begin
        LedReg = 16'b1111111111011111;
        SegReg = 8'b11011111;
              end
     4'b0110 : begin
        LedReg = 168'b1111111110111111;
        SegReg = 8'b10111111; 
              end
     4'b0111 : begin
        LedReg = 16'b1111111101111111;
        SegReg = 8'b01111111;
              end
      4'b1000 : begin
        LedReg = 16'b1111111011111111;
        SegReg = 8'b11111110;
               end
      4'b1001 : begin
        LedReg = 16'b1111110111111111;
        SegReg = 8'b11111101;
               end
      4'b1010 : begin
        LedReg = 16'b1111101111111111;
        SegReg = 8'b11111011;
               end
      4'b1011 : begin
        LedReg = 16'b1111011111111111;
        SegReg = 8'b11110111;
               end
      4'b1100 : begin
        LedReg = 16'b1110111111111111; 
        SegReg = 8'b11101111; 
               end
      4'b1101 : begin
        LedReg = 16'b1101111111111111;
        SegReg = 8'b11011111;
               end
      4'b1110 : begin
        LedReg = 16'b1011111111111111;
        SegReg = 8'b10111111; 
               end
      4'b1111 : begin
        LedReg = 16'b0111111111111111;
        SegReg = 8'b01111111;
               end
     default: begin
                
              end
  endcase
   
assign led = LedReg;    
assign an = 4'h0;
assign seg = SegReg;

endmodule
