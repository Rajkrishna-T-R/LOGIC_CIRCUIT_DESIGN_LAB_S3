
module JK_FF(J,K,Q,clk,Qbar,rst);
  
 input J,K,clk,rst;
  
 output reg Q;

  output Qbar;
  
  assign Qbar=~Q;
  
  always@(posedge clk or posedge rst)
    
    begin
      
      if(rst==1'b1)
        Q<=1'b0;
      else 
       Q <= ((J)&(~Q)) | ((~K)&(Q));
      
    end

endmodule
