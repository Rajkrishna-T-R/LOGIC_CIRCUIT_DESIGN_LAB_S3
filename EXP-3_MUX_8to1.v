
module MUX_8to1(A,B,C,D,E,F,G,H,S,Y);
  
  input A,B,C,D,E,F,G,H;
  
  input [2:0]S;
  
  output reg Y;
  
 
  always@(*)
    
    begin
      
      case (S)
        
        3'b000: Y = A;
        
        3'b001: Y = B;
        
        3'b010: Y = C;
        
        3'b011: Y = D;
        
        3'b100: Y = E;
        
        3'b101: Y = F;
        
        3'b110: Y = G;
        
        3'b111: Y = H;
        
        default : Y = 1'bx;
        
      endcase 
      
    end
        
    
endmodule
           
        
   
 
     
      
      
