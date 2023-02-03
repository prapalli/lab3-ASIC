module Onebitadder_case (A,B,Cin,SUM,Cout);
        input A,B,Cin;
	output reg  SUM,Cout;
always_comb 
begin
	case({A,B,Cin})
	
	 3'b000: 
		begin 
		SUM = 0; 
		Cout =0;
		end
         3'b001: 
     		begin 
		SUM = 1;
		Cout = 0;
		end 
	 3'b010: 
		begin
		SUM = 1;  
		Cout =0;
		end
    	 3'b011:
		begin 
		SUM = 0;
		Cout = 1;
		end
    	 3'b100:
		begin 
		 SUM = 1; 
		 Cout =0;
		end
     	 3'b101: 
		begin 
		 SUM = 0; 
		 Cout = 1;
		end
     	 3'b110: 
		begin 
		 SUM = 0; 
		 Cout =1;
		end
     	 3'b111:
		begin 
		 SUM = 1; 
		 Cout = 1;
		end
        default:
          begin
          SUM = 0;
          Cout = 0;
          end
 	 
	endcase
        end
        endmodule

module adder_1c(A,B,Cin,SUM,Cout);
input [3:0] A;
input [3:0] B;
input Cin;
output [3:0] SUM;
output Cout;

wire C0,C1,C2;
	
  Onebitadder_case Add1 (A[0],B[0],Cin,SUM[0],C0);
  Onebitadder_case Add2 (A[1],B[1],C0,SUM[1],C1);
  Onebitadder_case Add3 (A[2],B[2],C1,SUM[2],C2);
  Onebitadder_case Add4 (A[3],B[3],C2,SUM[3],Cout);
	
endmodule
	

