module MUX_4to1(
                   Y,
                  
                   A,
                   
                   B,
                   
                   C,
                   
                   D,
                   
                   S0,
                   
                   S1
                   
                   );
  
    input  A,B,C,D;
    
    input S0,S1;
    
    output reg Y;
    
    always@(*)
    
        begin
        
            case({S1,S0})
            
            2'b00:Y=A;
            
            2'b01:Y=B;
            
            2'b10:Y=C;
            
            2'b11:Y=D;
            
            default:Y=1'bx;
            
            endcase
            
        end
  
        
endmodule
