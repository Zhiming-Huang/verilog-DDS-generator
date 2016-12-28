module keygenerator(keyin,keyout,rst,clk);
input  keyin;
input rst,clk;
output [8:0]keyout;
reg [21:0] count;
reg [8:0] key_scan=9'd10;

//reg [8:0]keyout=b;

//always @(posedge clk)
//begin
//if (!rst||keyout==400)
//keyout<=b;
//else if (keyin==3'b110) keyout<=keyout+9'b000000001; // 频率为0.1Mhz增加
//else if (keyin==3'b101) keyout<=keyout+9'b000001010; //频率为 1Mhz 增加
//else if (keyin==3'b011) keyout<=keyout+9'b001100100; //频率为 10Mh增加
//else  keyout<=keyout;
//end
always @(negedge clk)     //检测时钟的上升沿
begin
   if((!rst)||(key_scan==9'd100))                //复位信号低有效, k最高为100
	begin
      count<=22'd0;        //计数器清0
		key_scan<=9'd10;        //k清零
	end		
   else
      begin
         if(count ==22'd9_999_999)   //实测中乱改的消抖计数器，反正有效
            begin
               count <= 22'b0;  			//，计数器清零
					if(keyin==0)					//当key按下即keyin为低电平时候		
					key_scan <= key_scan+9'b1; //k+1，即增加10khz
            end
         else
            count <= count + 22'b1; //计数器加1
     end
end



//assign keyout=9'b1;
assign keyout=key_scan;
endmodule