module sr_latch ( s, r, q, q_plus );
 input s, r;
 output q_plus, q;
 
 nor (q_plus, r, q);
 nor (q, s, q_plus);

endmodule

module mod6 ( ce, q2, q1, q0, inc, clr, clk ); // ce is the Rollover
 input inc, clr, clk;
 output q0, q1, q2, ce; wire n2, n1, n0; assign n0 = (~q1 & ~q0) | (~q2 & ~q0);
 
 assign n1 = (~q2 & ~q1 & q0) | (~q2 & q1 & ~q0);
 assign n2 = (q2 & ~q1 & ~q0) | (~q2 & q1 & q0);
 assign ce = (~clr & inc & q2 & ~q1 & q0); 
 
 FF_DCE F0 (q0, clk, n0, clr, inc); FF_DCE F1 (q1, clk, n1, clr, inc);
 FF_DCE F2 (q2, clk, n2, clr, inc);

endmodule 
module mod10 ( ce, q3, q2, q1, q0, inc, clr, clk ); // ce is the Rollover
 input inc, clr, clk;
 output q0, q1, q2, q3, ce;
 wire n0, n1, n2, n3;

 assign n0 = (~q3 & ~q0) | (~q2 & ~q1 & ~q0);
 assign n1 = (~q3 & ~q1 & q0) | (~q3 & q1 & ~q0);
 assign n2 = (~q3 & q2 & ~q1) | (~q3 & q2 & ~q0) | (~q3 & ~q2 & q1 & q0);
 assign n3 = (q3 & ~q2 & ~q1 & ~q0) | (~q3 & q2 & q1 & q0);
 assign ce = (inc & ~clr & q3 & ~q2 & ~q1 & q0);

 FF_DCE FF0 (q0, clk, n0, clr, inc);
 FF_DCE FF1 (q1, clk, n1, clr, inc);
 FF_DCE FF2 (q2, clk, n2, clr, inc);
 FF_DCE FF3 (q3, clk, n3, clr, inc);

endmodule 

module FF_DCE(q, clk, d, clr, en);
 input clk, clr, en, d;
 output reg q;
 
 always @(posedge clk)
 if (clr) q <= 0;
 else if (en) q <= d;

endmodule

module counter_block ( Digit4TENTHS, Digit3SECOND_ONES, Digit2SECOND_TENS, Digit1MIN_ONES, inc, clr, clk );
 input inc, clr, clk;
 output[3:0] Digit4TENTHS, Digit3SECOND_ONES, Digit2SECOND_TENS, Digit1MIN_ONES;
 wire rollover1, rollover2, rollover3, last_rollover; // last_rollover used for leds [my own fun]
 wire q0, q1, q2, a0, a1, a2, a3, b0, b1, b2, c0, c1, c2, c3;

 mod6 TENTHS ( rollover1, q2, q1, q0, inc, clr, clk ); assign Digit4TENTHS = {1'b0, q2, q1, q0}; //making it a 4 bit number.
 mod10 SECOND_ONES ( rollover2, a3, a2, a1, a0, rollover1, clr, clk );
 mod10 MIN_ONES ( last_rollover, c3, c2, c1, c0, rollover3, clr, clk );

 assign Digit3SECOND_ONES = {a3, a2, a1, a0}; mod6 TENS ( rollover3, b2, b1, b0, rollover2, clr, clk );
 assign Digit2SECOND_TENS = {1'b0, b2, b1, b0};
 assign Digit1MIN_ONES = {c3, c2, c1, c0};

endmodule

module prog_timer (clk, reset, clken, load_number, counter, zero, tp); 
 input clk, reset, clken;
 input [23:0] load_number; 
 output reg [23:0] counter; 
 output reg zero, tp;
 
wire cnt0; 

assign cnt0 = ~(|counter); // is current count = 0?

always @(posedge clk or posedge reset)
  if (reset == 1'b1) // on reset
 begin
 counter = load_number-1; // initialize counter with preload
 zero = 1'b0; // clear ceo output
 tp = 1'b0; // clear tp output
 end
 else if (cnt0 & clken) // if count is 0
 begin
 counter = load_number-1; // initialize counter with preload
 zero = 1'b1; // set the ceo output
 tp = ~tp; // toggle the tp output
 end
 else if (clken) begin
 counter = counter - 24'h000001; // decrement the counter
 zero = 1'b0; // clear the ceo output
 tp = tp; // maintain the tp output
 end

endmodule 
