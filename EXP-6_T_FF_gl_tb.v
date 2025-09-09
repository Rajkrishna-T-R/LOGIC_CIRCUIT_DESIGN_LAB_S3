// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

module testbench;
  
  wire Q,Qbar;
  reg T;
  reg pre_bar,clr_bar;
  reg clk;
  
  T_ff_gl uut(.T(T),.clr_bar(clr_bar),.pre_bar(pre_bar),.Q(Q),.clk(clk),.Qbar(Qbar));
  
  
  
  initial begin  clk=1'b0; forever #3 clk=~clk; end
      
      
  
  initial 
    	
    begin
       pre_bar=1'b1;
       clr_bar=1'b0; T=1'b0;#10; // assign known values for T before clr is released
       clr_bar=1'b1;
      
      
      
     
      
      T=1'b1;#10;
      T=1'b0;#10;
      pre_bar=1'b0; #10; pre_bar=1'b1;
      T=1'b0;#10;
      T=1'b1;#30;
       
       
       
      
      
    end
  
  initial 
    
       begin
         
         $monitor("time=%g\t,T=%b\t,pre_bar=%b,clr_bar=%b,Q=%b\t,Qbar=%b\t,clk=%b",$time,T,pre_bar,clr_bar,Q,Qbar,clk);
         
         
       end
  
  initial begin #100; $finish; end
  initial begin $dumpvars(0,testbench); $dumpfile("waveform.vcd"); end
  
  
endmodule
