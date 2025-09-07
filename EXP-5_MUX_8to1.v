// Code your design here
module MUX_8to1(A,B,C,D,E,F,G,H,S1,S2,S3,Y);
  // select lines
  input S1;
  input S2;
  input S3; // MSB
  
  // Data lines
  input A;
  input B;
  input C;
  input D;
  input E;
  input F;
  input G;
  input H;
  
  // Output line
  output Y;
  
  wire S1bar,S2bar,S3bar; // inverse of select lines
  
  wire R1,R2,R3,R4,R5,R6,R7,R8;  // output of first and gate level
  
  
  not notS1(S1bar,S1);
  not notS2(S2bar,S2);
  not notS3(S3bar,S3);
  
  
  
  and and1(R1,A,S3bar,S2bar,S1bar);
  and and2(R2,B,S3bar,S2bar,S1);
  and and3(R3,C,S3bar,S2,S1bar);
  and and4(R4,D,S3bar,S2,S1);
  and and5(R5,E,S3,S2bar,S1bar);
  and and6(R6,F,S3,S2bar,S1);
  and and7(R7,G,S3,S2,S1bar);
  and and8(R8,H,S3,S2,S1);
  
  or orlast(Y,R1,R2,R3,R4,R5,R6,R7,R8);
  
  
endmodule
  
  
  
