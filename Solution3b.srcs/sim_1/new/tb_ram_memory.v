`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2021 23:08:58
// Design Name: 
// Module Name: tb_ram_memory
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_ram_memory;
reg [1:0]address;
reg enable;
reg readwrite;
reg input_1;
reg input_2;
reg input_3;
reg input_4;
wire output_1;
wire output_2;   
wire output_3;
wire output_4; 

ram_memory dut(.address(address),.enable(enable),.readwrite(readwrite),.input_1(input_1),.input_2(input_2),.input_3(input_3),.input_4(input_4),.output_1(output_1),.output_2(output_2),.output_3(output_3),.output_4(output_4));


initial begin
#10 enable<=1;
#20 address <= 2'b00;
#20 address <= 2'b01;
#20 address <= 2'b10;
#20 address <= 2'b11;
#20 readwrite <= 1'b0;
end



initial begin
forever begin
 
  input_1<=0;
  input_2<=1;
  input_3<=0;
  input_4<=1;
  #30 input_1<=0;
  #30 input_1<=1;
  #30 input_1<=1;
  #30 input_1<=1;
  
  #50 input_2<=1;
  #50 input_2<=0;
  #50 input_2<=0;
  #50 input_2<=0;
  
  #20 input_3<=1;
  #20 input_3<=1;
  #20 input_3<=1;
  #20 input_3<=1;
  
  #10 input_4<=1;
  #10 input_4<=0;
  #10 input_4<=1;
  #10 input_4<=1;
   
  
end 
end  
endmodule
