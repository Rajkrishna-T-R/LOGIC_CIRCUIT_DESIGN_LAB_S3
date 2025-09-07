module SR_ff_gl(S,R,clk,Q,Qbar);
  
  input S;
  input R;
  input clk;
  
  output Q;
  output Qbar;
  

  wire t1,t2;
  
 // Cross coupled nand gates
  
  nand nand1(Q,Qbar,t1);
  nand nand2(Qbar,Q,t2);
  
 // Input nand gates 
  
  nand nand3(t1,clk,S);
  nand nand4(t2,clk,R);
  
endmodule
