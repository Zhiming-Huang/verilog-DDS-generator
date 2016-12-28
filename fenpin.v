module fenpin(clk,rst,outclk);
input clk,rst;
output outclk;
reg [3:0]cnt; //计数子
reg outclk; //输出640khz的时钟

always @ (posedge clk or negedge rst) 
  if (!rst) 
    cnt <= 0; 
  else 
    if (cnt == 15) 
      cnt <= 0; 
    else 
      cnt <= cnt + 1'b1; 

                         // 640kHz 时钟 

always @ (posedge clk or negedge rst) 
  if (!rst) 
    outclk <= 0; 
  else 
    if (cnt <= 7)                      // 7 = 16/2 - 1 
      outclk <= 0; 
    else 
      outclk <= 1;       
endmodule
