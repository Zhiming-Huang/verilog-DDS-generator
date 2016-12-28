module phaseadd(clk,k,address);
input clk;
input[8:0]k;
output[9:0]address;
reg[9:0]address=10'b0000000000;
always @(posedge clk)
begin
	if(address==10'b1111111111)
   address<=10'b0000000000;
	else
 	address<=address+k;
end
//assign address=10'b0000000000+k;
endmodule
