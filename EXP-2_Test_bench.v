module testbench;
  
  reg a,b;
  wire s,cout;
  
  ha_str uut(.a(a),.b(b),.s(s),.cout(cout));
  
  initial 
    
    begin
      
     
      
      a=1'b0;
      b=1'b0;
      
      #5 a=1'b0; b=1'b0;
      #5 a=1'b0; b=1'b1;
      #5 a=1'b1; b=1'b0;
      #5 a=1'b1; b=1'b1;
      
      
    end
  
  initial 
    
    begin
      
      $monitor("time=%g\ta=%b\tb=%b\ts=%b\tcout=%b",$time,a,b,s,cout);
      #100; $finish;
      
    end
  
  initial 
    
    begin
      
      
    $dumpfile("waves.vcd"); 
      
    $dumpvars(0, testbench);
      
    end
  
  
endmodule
