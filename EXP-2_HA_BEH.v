module ha_beh(a,b,s,cout);
  
  input a;
  
  input b;
  
  output reg s;
  
  output reg cout;
  
  always@(*)
    
    begin
      	
      	s=a^b;
         
        cout=a&b;
      
    end
  
endmodule




      

