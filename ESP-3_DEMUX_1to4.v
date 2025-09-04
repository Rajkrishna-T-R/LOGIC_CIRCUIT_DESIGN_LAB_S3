module DEMUX1to4(
  
                 input IN, 
  
                 input S1, 
  
                 input S0,
  
                 output D3,
  
                 output D2,
  
                 output D1,
  
                 output D0
  
                );
  
wire S1_n,S0_n;
  
not no1(S1_n,S1), no0(S0_n,S0);
  
and line0(D0,IN,S1_n,S0_n), line1(D1,IN,S1_n,S0), line2(D2,IN,S1,S0_n), line3(D3,IN,S1,S0);
  
endmodule
