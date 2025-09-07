module JK_ff_gl(J,K,pre_bar,clr_bar,clk,Q,Qbar);
  
  input J;
  input K;
  
  input pre_bar;
  input clr_bar;
  
  input clk;
  
  output Q;
  output Qbar;
  

  wire t1,t2;
  

  
 // Cross coupled nand gates
  
  nand nand1(Q,Qbar,t1,pre_bar);
  nand nand2(Qbar,Q,t2,clr_bar);
  
 // Input nand gates 
  
  nand nand3(t1,clk,J,Qbar);
  nand nand4(t2,clk,K,Q);
  
  
endmodule
