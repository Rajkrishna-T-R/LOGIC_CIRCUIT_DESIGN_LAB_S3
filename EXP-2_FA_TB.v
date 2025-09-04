`timescale 1ns/1ps
module testbench;
  
  reg A,B,C;
  
  wire S,Cout;
  
  integer k;
  
  
  fa_str uut(.A(A),.B(B),.C(C),.S(S),.Cout(Cout));
  
  initial 
    
    begin
      
      k=0;
      
      A=1'b0;
      B=1'b0;
      C=1'b0;
      
      for (k=0;k<=3'd7;k=k+1)
         
        begin
          
          {A,B,C}=k[2:0];
          #5;
          
        end
      
      
      
    end
  
  initial 
    
    begin
      
      $monitor("time=%g\tA=%b\tB=%b\tC=%b\tS=%b\tCout=%b",$time,A,B,C,S,Cout);
     
      
    end
  
  initial 
    
    begin
      
      
    $dumpfile("waves.vcd"); 
      
    $dumpvars(0, testbench);
      
    end
  
  initial  begin #200; $finish; end
  
  
endmodule
