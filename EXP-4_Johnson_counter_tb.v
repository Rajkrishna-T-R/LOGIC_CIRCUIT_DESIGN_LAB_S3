// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
`timescale 1ns / 1ps

module tb;


  reg clk,rst,pre1,pre_234;
 
  wire [3:0]Q,Qbar;

 Johnson_counter  uut (clk, rst, pre1, pre_234, Q,Qbar);
  
  

  initial begin clk=0;  forever #5 clk=~clk; end

  initial begin     rst=1'b0;pre1=1'b0;pre_234=1'b0; #5 rst=1'b1; #20                              rst=1'b0; 
  
                     pre1=1'b1;#10;
                     pre1=1'b0;
                     
    
                    #50; 
                   
                    
              
                      rst=1'b1; #20   rst=1'b0; 
                       pre1=1'b1; #10; pre1=1'b0;
  
                 
                    
                    
          end

  initial begin $monitor("time=%g,\tclk=%b,\tpre1=%b\tpre_234=%b\t,Q=%b\t,rst=%b",$time,clk,pre1,pre_234,Q,rst); end
    
  initial begin #500 $finish; end
  
  initial begin $dumpfile("waveform.vcd");$dumpvars(0,tb);end
  

endmodule
