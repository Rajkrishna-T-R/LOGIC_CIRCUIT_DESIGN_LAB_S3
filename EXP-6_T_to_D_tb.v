
`timescale 1ns/1ps

module testbench;
  
  wire Q,Qbar;
  reg D;
  reg pre_bar,clr_bar;
  reg clk;
  
  T_to_D uut(.D(D),.Q(Q),.pre_bar(pre_bar),.clr_bar(clr_bar),.clk(clk),.Qbar(Qbar));
  
  
  
  initial begin  clk=1'b0; forever #5 clk=~clk; end
      
      
  
  initial 
    	
    begin
       pre_bar=1'b1;
       clr_bar=1'b1;
      
       #5 clr_bar=1'b0; D=1'b0; #10;clr_bar=1'b1;
      
      
       #10; D=1'b1;
       #10; D=1'b0;
       #10; D=1'b1;
       #10; D=1'b0;
       #10; pre_bar=1'b0;#10;pre_bar=1'b1;
       #10 D=1'b0;
       #10 D=1'b1;
      
      
      
      
    end
  
  initial 
    
       begin
         
         $monitor("time=%g\t,D=%b\t,pre_bar=%b\t,clr_bar=%b,\tQ=%b\t,Qbar=%b\t,clk=%b",$time,D,pre_bar,clr_bar,Q,Qbar,clk);
         
         
       end
  
  initial begin #150; $finish; end
  initial begin $dumpvars(0,testbench); $dumpfile("waveform.vcd"); end
  
  
endmodule
