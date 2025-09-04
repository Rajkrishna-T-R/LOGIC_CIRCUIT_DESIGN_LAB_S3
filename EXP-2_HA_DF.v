module ha_df(a,b,s,cout);
  
  input a;
  
  input b;
  
  output s;
  
  output cout;
  
    assign s = a^b ;
  
    assign cout = a&b;
  
endmodule
      	
      
