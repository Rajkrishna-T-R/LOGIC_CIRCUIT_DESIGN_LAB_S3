
`timescale 1ns/1ps

module testbench;
  
  wire Q,Qbar;
  reg D;
  
  reg clk;
  
  D_ff_gl uut(.D(D),.Q(Q),.clk(clk),.Qbar(Qbar));
  
  
  
  initial begin  clk=1'b0; forever #5 clk=~clk; end
      
      
  
  initial 
    	
    begin
       #10; D=1;
       #10; D=0;
      #10 ; D=1;
      
    end
  
  initial 
    
       begin
         
         $monitor("time=%g\t,D=%b\t,Q=%b\t,Qbar=%b\t,clk=%b",$time,D,Q,Qbar,clk);
         
         
       end
  
  initial begin #100; $finish; end
  initial begin $dumpvars(0,testbench); $dumpfile("waveform.vcd"); end
  
  
endmodule
