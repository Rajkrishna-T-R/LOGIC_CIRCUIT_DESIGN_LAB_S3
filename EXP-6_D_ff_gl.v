module D_ff_gl(D,clk,Q,Qbar);
  
  input D;
  
  input clk;
  
  output Q;
  output Qbar;
  

  wire t1,t2,Dbar;
  
  not not1(Dbar,D);
  
 // Cross coupled nand gates
  
  nand nand1(Q,Qbar,t1);
  nand nand2(Qbar,Q,t2);
  
 // Input nand gates 
  
  nand nand3(t1,clk,D);
  nand nand4(t2,clk,Dbar);
  
  
endmodule
