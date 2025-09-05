// Code your testbench here
// or browse Examples
`timescale 1ns / 1ps

module tb;


reg D,PRE,CLR,CLK; wire Q,Qbar;

D_FF dut(.D(D),.PRE(PRE),.CLR(CLR),.CLK(CLK),.Q(Q),.Qbar(Qbar));

initial begin CLK=0;  forever #10 CLK=~CLK; end

initial begin D=0;CLR=0;PRE=0; end
initial 
    begin
        #10;
        #15 D=0;CLR=0;PRE=0;
        #15 D=0;CLR=0;PRE=1;
        #15 D=0;CLR=0;PRE=0;
        #15 D=1;CLR=0;PRE=0;
        #15 D=1;CLR=1;PRE=0;
        #15 D=1;CLR=1;PRE=0;
        #15 D=1;CLR=0;PRE=0;
        #15 D=1;CLR=0;PRE=0;
        #15 D=0;CLR=0;PRE=0;
        #10;
        
    end
  initial begin $monitor("Time =%g\t D=%b\tPRE=%b\tCLR=%b\tCLK=%b\tQ=%b\tQbar=%b\t",$time,D,PRE,CLR,CLK,Q,Qbar); end
    
    initial begin #500 $finish; end
  initial begin $dumpfile("waveform.vcd");$dumpvars(0,tb);end
  

endmodule
