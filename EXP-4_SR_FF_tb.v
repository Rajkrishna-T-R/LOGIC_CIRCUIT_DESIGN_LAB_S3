
`timescale 1ns/1ps

module testbench;
  
  wire Q,Qbar;
  reg S,R;
  
  reg clk;
  
  SR_FF uut(.S(S),.R(R),.Q(Q),.clk(clk),.Qbar(Qbar));
  
  initial
    
    begin
      
      
      S=1'b0;
      
      R=1'b0;
      
     
      
      
      
    end
  
  
  initial begin  clk=1'b0; forever #5 clk=~clk; end
      
      
  
  initial 
    	
    begin
      
      #6	
      #5 S=1'b0; R=1'b0;
      #10 S=1'b1; R=1'b0;
      #10 S=1'b0; R=1'b1;
      #10 S=1'b0; R=1'b0;
      #10 S=1'b1; R=1'b1;
      
    end
  
  initial 
    
       begin
         
         $monitor("time=%g\t,S=%b\t,R=%b\t,Q=%b\t,Qbar=%b\t,clk=%b",$time,S,R,Q,Qbar,clk);
         
         
       end
  
  initial begin #60; $finish; end
  initial begin $dumpvars(0,testbench); $dumpfile("waveform.vcd"); end
  
  
endmodule
