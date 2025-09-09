`timescale 1ns/1ps
module testbench;
  reg clk;
  reg pre_bar;
  reg clr_bar;
  
  wire Q0,Q1,Q2,Q3,Q0_bar,Q1_bar,Q2_bar,Q3_bar;
  
  downcounter_4_bit uut ( .clk(clk),
                       .pre_bar(pre_bar),
                       .clr_bar(clr_bar),
                       .Q0(Q0),
                       .Q1(Q1),
                       .Q2(Q2),
                       .Q3(Q3),
                       .Q0_bar(Q0_bar),
                       .Q1_bar(Q1_bar),
                       .Q2_bar(Q2_bar),
                       .Q3_bar(Q3_bar)
                      );
  
  
  initial begin 
    pre_bar=1'b1;clr_bar=1'b1;
    #20;
    clr_bar=1'b0;#10;
    clr_bar=1'b1;
    
    #40;
    
    pre_bar=1'b0;
    #10;
    pre_bar=1'b1;
    
    
    
  end
  
  initial begin  clk=1'b0; forever #3 clk=~clk; end
  initial begin $monitor("time=%g\tclk=%b\tpre_bar=%b\tclr_bar=%b\tQ0=%b\tQ1=%b\tQ2=%b\tQ3=%b\t",$time,clk,pre_bar,clr_bar,Q0,Q1,Q2,Q3);
  
  end
   initial 
    
    begin
      
      
    $dumpfile("waves.vcd"); 
      
    $dumpvars(0, testbench);
      
    end
  
  initial  begin #200; $finish; end
endmodule
