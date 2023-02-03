module adder_1d (Ain,Bin,Cin,SUM,Cout);
input reg [3:0] Ain,Bin;
input reg Cin; 
output reg [3:0] SUM;
output reg Cout;

always_comb 
begin
	{Cout,SUM}=Ain+Bin+Cin;
end

endmodule
