module top;
logic [3:0] A;
logic [3:0] B;
logic Cin;
logic [3:0] SUM;
logic Cout;

adder_1a a1(A,B,Cin,SUM,Cout);


initial 
begin
   for (int i=0;i<=15;i++)
	for (int j=0;j<=15;j++)
		begin
		A=i;
		B=j;
		Cin=$random;
		#1;
          $display ("Given inputs are A=%b and B=%b Cin=%b Outputs are SUM =%b  and Cout=%b",A,B,Cin,SUM,Cout);
		end
	 
end
			   
 endmodule
