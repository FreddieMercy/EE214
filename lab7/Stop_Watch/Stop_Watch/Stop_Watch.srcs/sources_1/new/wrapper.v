`timescale 1ns / 1ps

module wrapper(

    input clk,
    input rst,
    input start,
    input stop,
    input inc,
    output reg [3:0] an,// = 4'b1110,
    output reg [7:0] seg
    
);

wire clkdiv;
wire clk_div;

reg [1:0] tmp=0;

wire [7:0] s1;
wire [7:0] s2;
wire [7:0] s3;
wire [7:0] s4;

counter CTR(

    .clk(clk_div),
    .rst(rst),
    .inc(inc),
    .s1(s1),
    .s2(s2),
    .s3(s3),
    .s4(s4)
);

Clkdiv div(

    .clk(clk),
    .rst(rst),
    .clk_div(clk_div),
    .clkdiv(clkdiv)
);


always @ (posedge(clkdiv))//, posedge(rst))
begin
    case(tmp)
        2'd0:
        begin
            an = 4'b1011;
            seg=s3;
        end
        2'd1:
        begin
            an = 4'b1101;
            seg=s2;
        end
        2'd2:
        begin
            an = 4'b1110;
            seg=s1; 
        end

        2'd3:
        begin
            an = 4'b0111;
            seg=s4; 
        end
        default:
        begin
            an = 4'b0111;
            seg=s3;
        end
        
    endcase
    
    if(tmp > 2 | rst == 1)
    begin
        tmp=0;
    end
    else
    begin
        tmp = tmp+1;
        
    end
end

endmodule

                            