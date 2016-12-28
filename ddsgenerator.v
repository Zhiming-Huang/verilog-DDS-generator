// Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus II License Agreement,
// the Altera MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Altera and sold by Altera or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"
// CREATED		"Wed Dec 28 14:22:09 2016"

module ddsgenerator(
	clock,
	rst1,
	sw9,
	keys,
	select,
	DA,
	dec,
	ge,
	hundred,
	unit
);


input wire	clock;
input wire	rst1;
input wire	sw9;
input wire	keys;
input wire	[1:0] select;
output wire	[7:0] DA;
output wire	[6:0] dec;
output wire	[6:0] ge;
output wire	[6:0] hundred;
output wire	[6:0] unit;

wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	[9:0] SYNTHESIZED_WIRE_3;
wire	[8:0] SYNTHESIZED_WIRE_9;





pll	b2v_inst(
	.refclk(clock),
	.rst(sw9),
	.outclk_0(SYNTHESIZED_WIRE_7));


keygenerator	b2v_inst1(
	.keyin(keys),
	.rst(rst1),
	.clk(SYNTHESIZED_WIRE_7),
	.keyout(SYNTHESIZED_WIRE_9));


fenpin	b2v_inst2(
	.clk(SYNTHESIZED_WIRE_7),
	.rst(rst1),
	.outclk(SYNTHESIZED_WIRE_8));


romchoose	b2v_inst4(
	.clk(SYNTHESIZED_WIRE_8),
	.addrin(SYNTHESIZED_WIRE_3),
	.select(select),
	.signalout(DA));


phaseadd	b2v_inst5(
	.clk(SYNTHESIZED_WIRE_8),
	.k(SYNTHESIZED_WIRE_9),
	.address(SYNTHESIZED_WIRE_3));


freshow	b2v_inst8(
	.keyin(SYNTHESIZED_WIRE_9),
	.dec(dec),
	.ge(ge),
	.hundr(hundred),
	.uni(unit));


endmodule
