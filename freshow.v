module freshow(keyin,hundr,dec,uni,ge);
input [8:0]keyin;
output [6:0]dec,uni,hundr,ge;
wire [3:0]b,c,d;
wire [8:0]e;
reg [6:0]dec,uni,hundr;
assign e=keyin/16;
assign b=e/100;
assign c=(e%100)/10;
assign d=e%10;
assign ge=7'b1000000;
always @(e)
begin
case(b)
4'd0:hundr=7'b1000000;
4'd1:hundr=7'b1111001;
4'd2:hundr=7'b0100100;
4'd3:hundr=7'b0110000;
4'd4:hundr=7'b0011001;
4'd5:hundr=7'b0010010;
4'd6:hundr=7'b0000010;
4'd7:hundr=7'b1111000;
4'd8:hundr=7'b0000000;
4'd9:hundr=7'b0010000;
endcase
end

always @(e)
begin
case(c)
4'd0:dec=7'b1000000;
4'd1:dec=7'b1111001;
4'd2:dec=7'b0100100;
4'd3:dec=7'b0110000;
4'd4:dec=7'b0011001;
4'd5:dec=7'b0010010;
4'd6:dec=7'b0000010;
4'd7:dec=7'b1111000;
4'd8:dec=7'b0000000;
4'd9:dec=7'b0010000;
endcase
end

always @(e)
begin
case(d)
4'd0:uni=7'b1000000;
4'd1:uni=7'b1111001;
4'd2:uni=7'b0100100;
4'd3:uni=7'b0110000;
4'd4:uni=7'b0011001;
4'd5:uni=7'b0010010;
4'd6:uni=7'b0000010;
4'd7:uni=7'b1111000;
4'd8:uni=7'b0000000;
4'd9:uni=7'b0010000;
endcase
end
endmodule
