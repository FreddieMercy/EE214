`timescale 1ns / 1ps

module stopwatch_testbench ( Ca, Cb, Cc, Cd, Ce, Cf, Cg, AN0, AN1, AN2, AN3, DP, start, stop, reset, clk); //Dp0, Dp1, Dp2, Dp3
 input start, stop, reset, clk;
 output Ca, Cb, Cc, Cd, Ce, Cf, Cg, AN0, AN1, AN2, AN3, DP;

 wire q_plus, q;
 wire zero; 
 wire[3:0]Digit4TENTHS, Digit3SECOND_ONES, Digit2SECOND_TENS, Digit1MIN_ONES; //sr_latch ( s, r, q, q_plus );

 sr_latch ONOROFF (start, stop, q, q_plus);

 prog_timer STOPWATCH (clk, reset, q_plus, 24'd4999999, , zero, ); 
 counter_block COUNT ( Digit1MIN_ONES, Digit2SECOND_TENS, Digit3SECOND_ONES, Digit4TENTHS, zero, reset, clk ); 

 segment_control4to7 CONTROL ( Ca, Cb, Cc, Cd, Ce, Cf, Cg, AN0, AN1, AN2, AN3, DP,
 Digit4TENTHS, Digit3SECOND_ONES, Digit2SECOND_TENS, Digit1MIN_ONES, clk, 1'b0, 1'b1, 1'b0, 1'b1 ); 

endmodule

