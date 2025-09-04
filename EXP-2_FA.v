module ha_str(a,b,s,cout);
  
  input a;
  
  input b;
  
  output s;
  
  output cout;
  
  xor xor1(s,a,b);
  
  and and1(cout,a,b);
  
endmodule 


module fa_str(A,B,C,S,Cout);
  
  input A;
  
  input B;
  
  input C;
  
  output S;
  
  output Cout;
  
  wire t1,t2,t3;
  
  ha_str ha_1(.s(t1),.cout(t2),.a(A),.b(B));
  
  ha_str ha_2(.s(S),.cout(t3),.a(t1),.b(C));
  
  or or_1(Cout,t2,t3);
  
endmodule
  
  
