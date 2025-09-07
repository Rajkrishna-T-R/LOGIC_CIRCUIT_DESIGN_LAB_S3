
`timescale 1ns/1ps

module testbench;
  
  wire Q,Qbar;
  reg J,K;
  reg pre_bar,clr_bar;
  reg clk;
  
  JK_ff_gl uut(.J(J),.K(K),.pre_bar(pre_bar),.clr_bar(clr_bar),.Q(Q),.clk(clk),.Qbar(Qbar));
  
  
  
  initial begin  clk=1'b0; forever #5 clk=~clk; end
      
      
  
  initial 
    	
    begin
       pre_bar=1'b1;
       clr_bar=1'b1;
      
      
       J=1'b0;K=1'b0;#10;
       pre_bar=1'b0;#10;
       pre_bar=1'b1;#10;
       clr_bar=1'b0;#10;
       clr_bar=1'b1;#10;
       J=1'b1;K=1'b0;#10;
       J=1'b0;K=1'b1;#10;
       J=1'b1;K=1'b1;#10;
       J=1'b0;K=1'b0;#10;
       J=1'b1;K=1'b1;#30;
       
       
       
      
      
    end
  
  initial 
    
       begin
         
         $monitor("time=%g\t,J=%b\t,K=%b\t,pre_bar=%b,clr_bar=%b,Q=%b\t,Qbar=%b\t,clk=%b",$time,J,K,pre_bar,clr_bar,Q,Qbar,clk);
         
         
       end
  
  initial begin #100; $finish; end
  initial begin $dumpvars(0,testbench); $dumpfile("waveform.vcd"); end
  
  
endmodule
