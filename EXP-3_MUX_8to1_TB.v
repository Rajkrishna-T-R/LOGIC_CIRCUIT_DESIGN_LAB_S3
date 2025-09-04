`timescale 1ns/1ps

module testbench;
  
  reg A,B,C,D,E,F,G,H;
  
  reg [2:0]S;
  
  wire Y;
  
  integer k;
  
  
  MUX_8to1 uut(.Y(Y),.A(A),.B(B),.C(C),.D(D),.E(E),.F(F),.G(G),.H(H),.S(S));
  
  initial 
    
    begin
      
      k=0;
      
      {H,G,F,E,D,C,B,A}=8'b10101010; // data for checking 
   
      S=3'b0;
      
      
      for (k=0;k<=3'd7;k=k+1)
         
        begin
          
          
          S=k[2:0];
          
          #5;
          
        end
      
      
      
    end
  
  initial 
    
    begin
      
      $monitor("time=%g\tA=%b\tB=%b\tC=%b\tD=%b\tE=%b\tF=%b\tG=%b\tH=%b\tS=%b\tY=%b",$time,A,B,C,D,E,F,G,H,S,Y);
     
      
    end
  
  initial 
    
    begin
      
    $dumpfile("waves.vcd"); 
      
    $dumpvars(0, testbench);
      
    end
  
  initial  begin #500; $finish; end
  
  
endmodule
