// Code your testbench here
// or browse Examples
`timescale 1ns / 1ps

module tb;


  reg CLK,CLR;
  wire [3:0]count;

  decade_counter uut(.count(count),.clk(CLK),.clr(CLR));

  initial begin CLK=0;  forever #5 CLK=~CLK; end

  initial begin CLR=1'b1; #15 CLR=1'b0; 
  
  
                    #30 CLR=1'b1; #15 CLR=1'b0; 
          end

  initial begin $monitor("time=%g,clk=%b,count=%b,clr",$time,CLK,count,CLR); end
    
  initial begin #500 $finish; end
  
  initial begin $dumpfile("waveform.vcd");$dumpvars(0,tb);end
  

endmodule
