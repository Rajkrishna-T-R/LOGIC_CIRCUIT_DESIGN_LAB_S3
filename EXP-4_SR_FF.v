
module SR_FF(S,R,Q,clk,Qbar);
  
 input S,R,clk;
  
 output reg Q;

  output Qbar;
  
  assign Qbar=~Q;
  
  always@(posedge clk)
    
    begin
      
      Q <= (S | ((~R) & Q));
      
    end

endmodule
