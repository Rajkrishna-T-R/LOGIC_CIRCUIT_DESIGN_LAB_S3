`timescale 1ns/1ps

module testbench;
  
  wire D3,D2,D1,D0;
  
  reg S0,S1;
  
  reg IN;
  
  integer k;
  
  
  DEMUX1to4 uut(.IN(IN),.D3(D3),.D2(D2),.D1(D1),.D0(D0),.S0(S0),.S1(S1));
  
  initial 
    
    begin
      
      k=0;
       
      IN = 1'b1;

      {S1,S0}=2'b0;
      
      for (k=0;k<=3;k=k+1)
         
        begin
         
          {S1,S0}=k;
          
          #5;
          
        end
      
      
      
    end
  
  initial 
    
    begin
      
      $monitor("time=%g\tIN=%b\tS1=%b\tS0=%b\tD0=%b\tD1=%b\tD2=%b\tD3=%b",$time,IN,S1,S0,D0,D1,D2,D3);
     
      
    end
  
  initial 
    
    begin
      
      
    $dumpfile("waves.vcd"); 
      
    $dumpvars(0, testbench);
      
    end
  
  initial  begin #500; $finish; end
  
  
endmodule
