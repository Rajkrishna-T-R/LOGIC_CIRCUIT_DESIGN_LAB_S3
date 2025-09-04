`timescale 1ns/1ps

module testbench;
  
  reg A,B,C,D;
  
  reg [1:0]S;
  
  wire Y;
  
  integer k;
  
  
  MUX_4to1 uut(.Y(Y),.A(A),.B(B),.C(C),.D(D),.S0(S[0]),.S1(S[1]));
  
  initial 
    
    begin
      
      k=0;
      
      A=1'b0;
      B=1'b0;
      C=1'b0;
      D=1'b0;
      S=2'b0;
      
      for (k=0;k<=63;k=k+1)
         
        begin
          
          {A,B,C,D,S[1],S[0]}=k[6:0];
          
          #5;
          
        end
      
      
      
    end
  
  initial 
    
    begin
      
         $monitor("time=%g\tA=%b\tB=%b\tC=%b\tD=%b\tS=%b\tY=%b",$time,A,B,C,D,S,Y);
     
      
    end
  
  initial 
    
    begin
      
      
    $dumpfile("waves.vcd"); 
      
    $dumpvars(0, testbench);
      
    end
  
  initial  begin #500; $finish; end
  
  
endmodule
