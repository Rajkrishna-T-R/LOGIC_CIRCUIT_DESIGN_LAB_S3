

module JK_MS_ff_gl(J,K,pre_bar,clr_bar,clk,Q,Qbar);

input J,K,clk,clr_bar,pre_bar;
  
output Q,Qbar;
  
wire clk_bar;
  
not inv(clk_bar,clk);
    
wire t1,t2,t3,t4,t5,t6;
  
  nand m1(t1,J,clk,Qbar);
  nand m2(t2,K,clk,Q);
  
  nand m3(t3,t4,t1,pre_bar);
  nand m4(t4,t3,t2,clr_bar);
  
  
  nand s1(t5,t3,clk_bar);
  nand s2(t6,t4,clk_bar);
  
  nand s3(Q,t5,Qbar,pre_bar);
  nand s4(Qbar,t6,Q,clr_bar);
  
  
  
  

  
endmodule
  

module JK_to_D(D,clk,pre_bar,clr_bar,Q,Qbar);
  input D,clk,pre_bar,clr_bar;
  output Q,Qbar;
  
  wire J,K,Dbar;
  not n1(Dbar,D);
  
  JK_MS_ff_gl JK_to_D(.J(D),.K(Dbar),.pre_bar(pre_bar),.clr_bar(clr_bar),.clk(clk),.Q(Q),.Qbar(Qbar));
  
  
endmodule
