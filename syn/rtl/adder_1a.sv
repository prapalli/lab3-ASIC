module adder_assign
(
 input A,
 input B,
 input Cin,
 
 output SUM, 
 output Cout
 );
 
assign {Cout,SUM} =  Cin + A + B;
 
endmodule

module adder_1a(A,B,Cin,SUM,Cout);
input logic [3:0] A;
input logic [3:0] B;
input logic Cin;
output [3:0] SUM;
output Cout;

wire c0,c1,c2;
	
  adder_assign A1(A[0],B[0],Cin,SUM[0],c0);
  adder_assign A2(A[1],B[1],c0,SUM[1],c1);
  adder_assign A3(A[2],B[2],c1,SUM[2],c2);
  adder_assign A4(A[3],B[3],c2,SUM[3],Cout);
	
endmodule
