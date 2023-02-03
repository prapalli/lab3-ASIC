module adder_pre
(
 input Ain,
 input Bin,
 input Cin,
 
 output SUM, 
 output Cout
 );
 
wire  p,r,s;
	xor (p,Ain,Bin);
	xor (SUM,p,Cin);
	and(r,p,Cin);
	and(s,Ain,Bin);
	or(Cout,r,s);
 
endmodule





module adder_1b(a,b,cin,sum,cout);
input logic [3:0] a;
input logic [3:0] b;
input logic cin;
output [3:0] sum;
output cout;

wire c0,c1,c2;
	
  adder_pre A1(a[0],b[0],cin,sum[0],c0);
  adder_pre A2(a[1],b[1],c0,sum[1],c1);
  adder_pre A3(a[2],b[2],c1,sum[2],c2);
  adder_pre A4(a[3],b[3],c2,sum[3],cout);
	
endmodule
