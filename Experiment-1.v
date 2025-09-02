// VERILOG MODULE FOR LOGIC GATES
module logic_gates(a,b,c,yor,yand,ynand,yxor,ynot,ynor);
  input a, b, c;
  output yor, yand, ynand, yxor, ynot, ynor;
  
  assign yor   = a | b;
  assign ynot  = ~c;
  assign ynor  = ~(a | b);
  assign yand  = a & b;
  assign ynand = ~(a & b);
  assign yxor  = a ^ b;
endmodule



//  TEST BENCH
`timescale 1ns/1ps
module testbench;
  reg a, b, c;
  wire yor, yand, ynand, yxor, ynot, ynor;
  

  logic_gates uut (
    .a(a), .b(b), .c(c),
    .yor(yor), .yand(yand), .ynand(ynand),
    .yxor(yxor), .ynot(ynot), .ynor(ynor)
  );
  
  initial begin
    $dumpfile("waves.vcd"); 
    $dumpvars(0, testbench);
  end
  
  initial 
    	begin
          a = 0; b = 0; c = 0;

          // not gate 
          #5 c = 0;
          #5 c = 1;
          #5 c = 0;
          // logic gates
          #5 a = 0; b = 0;
          #5 a = 0; b = 1;
          #5 a = 1; b = 0;
          #5 a = 1; b = 1;

          #10 $finish;
      end
  
  initial 
      begin
          $monitor("T=%0t\ta=%b\tb=%b\tc=%b\tOR=%b\tAND=%b\tNAND=%b\tXOR=%b\tNOT=%b\tNOR=%b",
                   $time, a, b, c, yor, yand, ynand, yxor, ynot, ynor);
      end
endmodule
