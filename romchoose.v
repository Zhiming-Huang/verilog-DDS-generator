module romchoose (clk,addrin,select,signalout);
input[9:0] addrin;
input clk;
input[1:0] select;
output [7:0]signalout;

reg [7:0] signalout;
wire [7:0]q1,q2,q3;

sinrom sin_inst(.address(addrin),.clock(clk),.q(q1));
square square_inst(.address(addrin),.clock(clk),.q(q2));
triangle tri_inst(.address(addrin),.clock(clk),.q(q3));


always @ (select)
begin
	case(select)
	2'b00:signalout<=q1;
	2'b01:signalout<=q2;
	2'b10:signalout<=q3;
	endcase
end

endmodule