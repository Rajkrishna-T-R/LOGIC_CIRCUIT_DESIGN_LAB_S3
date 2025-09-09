



module T_ff_gl(T,pre_bar,clr_bar,clk,Q,Qbar);

input T,clk,clr_bar,pre_bar;
  
output Q,Qbar;
  
wire clk_bar;

  
not inv(clk_bar,clk);
    
wire t1,t2,t3,t4,t5,t6;
  
  nand m1(t1,T,clk,Qbar);
  nand m2(t2,T,clk,Q);
  
  nand m3(t3,t4,t1,pre_bar);
  nand m4(t4,t3,t2,clr_bar);
  
  
  nand s1(t5,t3,clk_bar);
  nand s2(t6,t4,clk_bar);
  
  nand s3(Q,t5,Qbar,pre_bar);
  nand s4(Qbar,t6,Q,clr_bar);
  
  
  
  

  
endmodule
  
// Overall the flip flop is Negative edge trigeered since it uses a master slave flip flop

module upcounter_4_bit(
                        input clk,
                        input pre_bar,
                        input clr_bar,
                       output  Q0,
                       output  Q1,
                       output  Q2,
                       output  Q3,
                       output  Q0_bar,
                       output  Q1_bar,
                       output  Q2_bar,
                       output  Q3_bar
                      );
  
  wire high=1'b1;
  wire t1,t2,t3,t4;
  wire t5,t6,t7,t8;
  
  wire n1,n2,n3;
  
  and andgate1(t2,n2,t1);
  and andgate2(t3,t1,n2,n3);
  
  T_ff_gl T0(.T(high),.pre_bar(pre_bar),.clr_bar(clr_bar),.clk(clk),.Q(t1),.Qbar(t5));
  T_ff_gl T1(.T(t1),.pre_bar(pre_bar),.clr_bar(clr_bar),.clk(clk),.Q(n2),.Qbar(t6));
  T_ff_gl T2(.T(t2),.pre_bar(pre_bar),.clr_bar(clr_bar),.clk(clk),.Q(n3),.Qbar(t7));
  T_ff_gl T3(.T(t3),.pre_bar(pre_bar),.clr_bar(clr_bar),.clk(clk),.Q(t4),.Qbar(t8));
  
 
     assign Q0=t1;
     assign   Q1=n2;
     assign   Q2=n3;
     assign Q3=t4;
     assign Q0_bar=t5;
     assign Q1_bar=t6;
     assign  Q2_bar=t7;
     assign Q3_bar=t8;
    
  
endmodule
