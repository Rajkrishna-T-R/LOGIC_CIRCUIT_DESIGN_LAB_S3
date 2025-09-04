module ha_str(a,b,s,cout);
  
  input a;
  
  input b;
  
  output s;
  
  output cout;
  
  xor xor1(s,a,b);
  and and1(cout,a,b);
  
endmodule 
