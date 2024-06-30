`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Companb: 
// Engineer: 
// 
// Create Date: 30.06.2024 20:17:52
// Design Name:krishna
// Module Name: half_test
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


module half_test;
reg a=0,b=0;
wire s,c; /*never assign values of the outputs if they are net type*/
half_adder n1(.a(a),.b(b),.s(s),.c(c));
initial
$monitor($time,"\t a=%b,b=%b,s=%b,c=%b \n",a,b,s,c);
initial
begin 
#5 a=1'b0;b=1'b0;
#5 a=1'b0;b=1'b1;
#5 a=1'b1;b=1'b0;
#5 a=1'b1;b=1'b1;
#20 $finish;
end 
endmodule
