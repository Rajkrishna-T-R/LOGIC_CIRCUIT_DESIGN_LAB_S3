// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

module testbench;
  
  reg A,B,C,D,E,F,G,H;
  
  
  
  wire Y;
  
  integer k;
  
  reg P,Q,R,S;
  
  MUX_8to1 uut(.Y(Y),.A(A),.B(B),.C(C),.D(D),.E(E),.F(F),.G(G),.H(H),.S1(S),.S2(R),.S3(Q));
  
  initial 
    
    begin
      
      k=0;
      
      
      
      
      // logical exp==> sigma(1,3,6,8,10,11,14)
      
     
      
      // MSB variabe P on data line, R,S,T on select line
   
      {P,Q,R,S}=4'b0;
      
      
      for (k=0;k<=4'd15;k=k+1)
         
        begin
          
          #10;
          {P,Q,R,S}=k[3:0];
          
          
          
        end
      
      
      
    end
  
  initial 
    
    begin
      
      $monitor("time=%g \t P=%b \t Q=%b \t R=%b \t S=%b \t  Y=%b",$time,P,Q,R,S,Y);
     
      
    end
  
  initial 
    
    begin
      
    $dumpfile("waves.vcd"); 
      
    $dumpvars(0, testbench);
      
    end
  
  initial  begin #600; $finish; end
  
  always @(*) 
    begin
      A = P;
      B = ~P;
      C = P;       
      D = 1'b1;
      E = 1'b0;
      F = 1'b0;
      G = 1'b1;
      H = 1'b0;
   end

  
endmodule
