// Code your testbench here
// or browse Examples
`timescale 1ns / 1ps

module tb;


reg T,CLR,CLK; wire Q,Qbar;

  T_FF dut(.T(T),.CLR(CLR),.CLK(CLK),.Q(Q),.Qbar(Qbar));

initial begin CLK=0;  forever #10 CLK=~CLK; end

initial begin T=0;CLR=0; end
initial 
    begin
        
        #10;
        #15 T=0;CLR=1;
        #15 T=0;CLR=0;
        #15 T=0;CLR=0;
        #15 T=1;CLR=0;
        #15 T=1;CLR=1;
        #15 T=1;CLR=1;
        #15 T=1;CLR=0;
        #15 T=1;CLR=0;
        #15 T=0;CLR=0;
        #15 T=1;CLR=0;
         
        #10;
        
    end
  initial begin $monitor("Time =%g\t T=%b\tCLR=%b\tCLK=%b\tQ=%b\tQbar=%b\t",$time,T,CLR,CLK,Q,Qbar); end
    
    initial begin #200 $finish; end
  initial begin $dumpfile("waveform.vcd");$dumpvars(0,tb);end
  

endmodule
