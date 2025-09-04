// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

module testbench;
  
  wire Q,Qbar;
  reg J,K,rst;
  
  reg clk;
  
  JK_FF uut(.J(J),.K(K),.Q(Q),.clk(clk),.Qbar(Qbar),.rst(rst));
  
  initial
    
    begin
      
      
      J=1'b0;
      
      K=1'b0;
      
      
     
      
      
      
    end
  
  
  initial begin  clk=1'b0; forever #5 clk=~clk; end
      
      
  
  initial 
    	
    begin
      
      rst=1'b0;
      #5;
      rst=1'b1;
      #5 rst=1'b0;
      #2 J=1'b0; K=1'b0;
      #10 J=1'b1; K=1'b0;
      #10 J=1'b0; K=1'b1;
      #10 J=1'b0; K=1'b0;
      #10 J=1'b1; K=1'b1;
      
    end
  
  initial 
    
       begin
         
         $monitor("time=%g\t,J=%b\t,K=%b\t,Q=%b\t,Qbar=%b\t,rst=%b",$time,J,K,Q,Qbar,rst);
         
         
       end
  
  initial begin #60; $finish; end
  initial begin $dumpfile("waveform.vcd");  $dumpvars(0,testbench); end
  
  
endmodule
