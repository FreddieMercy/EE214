`timescale 1ns / 1ps

module counter(
    input clk,
    input rst,
    input inc,
    output reg [7:0] s1,
    output reg [7:0] s2,
    output reg [7:0] s3,
    output reg [7:0] s4
    
    );
    
reg [3:0] ge = 0;
reg [3:0] shi = 0;
reg [3:0] bai = 0;
reg [3:0] qian = 0;
reg [13:0] Q = 0;

 
always @ (posedge(clk), posedge(rst), posedge(inc))   // When will Always Block Be Triggered
begin
        if (rst == 1'b1)
        begin
            Q = 13'b01100011110000;
            ge = 0;
            shi = 0;
            bai = 0;
            s1 = 8'b11000000;
            s2 = 8'b11000000;
            s3 = 8'b11000000;
            s4 = 8'b11000000;
        end
        else if(inc == 1)
        begin
            Q = Q + 1;
        end
        else
        begin
                   
                    if(Q == 13'b01100011110000)
                    begin
                        Q = 0;
                        ge = 1;
                        shi = 0;
                        bai = 0;    
                        s1 = 8'b11000000;
                        s2 = 8'b11000000;
                        s3 = 8'b11000000;
                        s3 = 8'b11000000;
                        Q = Q + 1;
                        
                    end
                    else
                    begin
                         
                         if(ge < 4'd10)
                         begin
                             case (ge)
                                 4'd0:
                                         s1 = 8'b11000000;
                                 4'd1:
                                         s1 = 8'b11111001;
                                 4'd2:
                                         s1 = 8'b10100100;
                                 4'd3:
                                         s1 = 8'b10110000;
                                 4'd4:
                                         s1 = 8'b10011001;
                                 4'd5:
                                         s1 = 8'b10010010;
                                 4'd6:
                                         s1 = 8'b10000010;
                                 4'd7:
                                         s1 = 8'b11111000;
                                 4'd8:
                                         s1 = 8'b10000000;
                                 4'd9:
                                         s1 = 8'b10010000;
                                 
                                 default:
                                         s1 = 8'b11000000;
                             endcase
                             
                             ge = ge+1;
                             Q = Q + 1;
                             
                         end
                         else
                         begin
                             ge = 1;
                             s1 = 8'b11000000;
                             shi = shi+1;
                             Q = Q+1;
                             if(shi < 4'd10)
                             begin
                                 //shi = shi+1;
                                 case (shi)
                                     4'd0:
                                             s2 = 8'b11000000;
                                     4'd1:
                                             s2 = 8'b11111001;
                                     4'd2:
                                             s2 = 8'b10100100;
                                     4'd3:
                                             s2 = 8'b10110000;
                                     4'd4:
                                             s2 = 8'b10011001;
                                     4'd5:
                                             s2 = 8'b10010010;
                                     4'd6:
                                             s2 = 8'b10000010;
                                     4'd7:
                                             s2 = 8'b11111000;
                                     4'd8:
                                             s2 = 8'b10000000;
                                     4'd9:
                                             s2 = 8'b10010000;    
                                     default:
                                             s2 = 8'b11000000;
                                 endcase
                             end
                             else
                             begin
                                if(bai < 4'd10)
                                begin
                                     bai = bai+1;
                                     Q = Q +1;
                                     shi = 0;
                                     s2 = 8'b11000000;
                                     case (bai)
                                         4'd0:
                                                 s3 = 8'b11000000;
                                         4'd1:
                                                 s3 = 8'b11111001;
                                         4'd2:
                                                 s3 = 8'b10100100;
                                         4'd3:
                                                 s3 = 8'b10110000;
                                         4'd4:
                                                 s3 = 8'b10011001;
                                         4'd5:
                                                 s3 = 8'b10010010;
                                         4'd6:
                                                 s3 = 8'b10000010;
                                         4'd7:
                                                 s3 = 8'b11111000;
                                         4'd8:
                                                 s3 = 8'b10000000;
                                         4'd9:
                                                 s3 = 8'b10010000;
                                         
                                         default:
                                                 s3 = 8'b11000000;
                                     endcase
                                 end
                                 else
                                 begin
                                  qian = qian+1;
                                  bai = 0;
                                  Q = Q +1;
                                  s3 = 8'b11000000;
                                  case (qian)
                                      4'd0:
                                              s4 = 8'b01000000;
                                      4'd1:
                                              s4 = 8'b01111001;
                                      4'd2:
                                              s4 = 8'b01100100;
                                      4'd3:
                                              s4 = 8'b00110000;
                                      4'd4:
                                              s4 = 8'b00011001;
                                      4'd5:
                                              s4 = 8'b00010010;
                                      4'd6:
                                              s4 = 8'b00000010;
                                      4'd7:
                                              s4 = 8'b01111000;
                                      4'd8:
                                              s4 = 8'b00000000;
                                      4'd9:
                                              s4 = 8'b00010000;
                                      
                                      default:
                                              s4 = 8'b01000000;
                                  endcase
                                 end
                             end
                         end
                end
    end
end

endmodule
