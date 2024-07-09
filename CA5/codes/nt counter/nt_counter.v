// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

// DATE "12/30/2023 20:18:50"

// 
// Device: Altera EP4CGX15BF14A7 Package FBGA169
// 

// 
// This Verilog file should be used for ModelSim-Altera (Verilog) only
// 

`timescale 1 ps/ 1 ps

module nt_counter (
	co3,
	ldcnt3,
	clk,
	cnten3,
	rst,
	shiftout,
	serin);
output 	co3;
input 	ldcnt3;
input 	clk;
input 	cnten3;
input 	rst;
output 	[7:0] shiftout;
input 	serin;

// Design Ports Information
// co3	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
// shiftout[7]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
// shiftout[6]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
// shiftout[5]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
// shiftout[4]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
// shiftout[3]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
// shiftout[2]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
// shiftout[1]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
// shiftout[0]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
// clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
// rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
// ldcnt3	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
// cnten3	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
// serin	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default


wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
wire \co3~output_o ;
wire \shiftout[7]~output_o ;
wire \shiftout[6]~output_o ;
wire \shiftout[5]~output_o ;
wire \shiftout[4]~output_o ;
wire \shiftout[3]~output_o ;
wire \shiftout[2]~output_o ;
wire \shiftout[1]~output_o ;
wire \shiftout[0]~output_o ;
wire \clk~input_o ;
wire \clk~inputclkctrl_outclk ;
wire \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout ;
wire \~GND~combout ;
wire \rst~input_o ;
wire \rst~inputclkctrl_outclk ;
wire \ldcnt3~input_o ;
wire \cnten3~input_o ;
wire \inst|LPM_COUNTER_component|auto_generated|_~0_combout ;
wire \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT ;
wire \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout ;
wire \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT ;
wire \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout ;
wire \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT ;
wire \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout ;
wire \serin~input_o ;
wire \inst1|LPM_SHIFTREG_component|dffs[7]~feeder_combout ;
wire \inst1|LPM_SHIFTREG_component|dffs[6]~feeder_combout ;
wire \inst1|LPM_SHIFTREG_component|dffs[5]~feeder_combout ;
wire \inst1|LPM_SHIFTREG_component|dffs[4]~feeder_combout ;
wire \inst1|LPM_SHIFTREG_component|dffs[3]~feeder_combout ;
wire \inst1|LPM_SHIFTREG_component|dffs[2]~feeder_combout ;
wire \inst1|LPM_SHIFTREG_component|dffs[1]~feeder_combout ;
wire \inst1|LPM_SHIFTREG_component|dffs[0]~feeder_combout ;
wire [2:0] \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit ;
wire [7:0] \inst1|LPM_SHIFTREG_component|dffs ;


hard_block auto_generated_inst(
	.devpor(devpor),
	.devclrn(devclrn),
	.devoe(devoe));

// Location: IOOBUF_X20_Y0_N2
cycloneiv_io_obuf \co3~output (
	.i(\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\co3~output_o ),
	.obar());
// synopsys translate_off
defparam \co3~output .bus_hold = "false";
defparam \co3~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X33_Y10_N2
cycloneiv_io_obuf \shiftout[7]~output (
	.i(\inst1|LPM_SHIFTREG_component|dffs [7]),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\shiftout[7]~output_o ),
	.obar());
// synopsys translate_off
defparam \shiftout[7]~output .bus_hold = "false";
defparam \shiftout[7]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X33_Y14_N9
cycloneiv_io_obuf \shiftout[6]~output (
	.i(\inst1|LPM_SHIFTREG_component|dffs [6]),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\shiftout[6]~output_o ),
	.obar());
// synopsys translate_off
defparam \shiftout[6]~output .bus_hold = "false";
defparam \shiftout[6]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X33_Y15_N9
cycloneiv_io_obuf \shiftout[5]~output (
	.i(\inst1|LPM_SHIFTREG_component|dffs [5]),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\shiftout[5]~output_o ),
	.obar());
// synopsys translate_off
defparam \shiftout[5]~output .bus_hold = "false";
defparam \shiftout[5]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X33_Y15_N2
cycloneiv_io_obuf \shiftout[4]~output (
	.i(\inst1|LPM_SHIFTREG_component|dffs [4]),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\shiftout[4]~output_o ),
	.obar());
// synopsys translate_off
defparam \shiftout[4]~output .bus_hold = "false";
defparam \shiftout[4]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X33_Y12_N9
cycloneiv_io_obuf \shiftout[3]~output (
	.i(\inst1|LPM_SHIFTREG_component|dffs [3]),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\shiftout[3]~output_o ),
	.obar());
// synopsys translate_off
defparam \shiftout[3]~output .bus_hold = "false";
defparam \shiftout[3]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X33_Y11_N2
cycloneiv_io_obuf \shiftout[2]~output (
	.i(\inst1|LPM_SHIFTREG_component|dffs [2]),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\shiftout[2]~output_o ),
	.obar());
// synopsys translate_off
defparam \shiftout[2]~output .bus_hold = "false";
defparam \shiftout[2]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X33_Y14_N2
cycloneiv_io_obuf \shiftout[1]~output (
	.i(\inst1|LPM_SHIFTREG_component|dffs [1]),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\shiftout[1]~output_o ),
	.obar());
// synopsys translate_off
defparam \shiftout[1]~output .bus_hold = "false";
defparam \shiftout[1]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X33_Y11_N9
cycloneiv_io_obuf \shiftout[0]~output (
	.i(\inst1|LPM_SHIFTREG_component|dffs [0]),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\shiftout[0]~output_o ),
	.obar());
// synopsys translate_off
defparam \shiftout[0]~output .bus_hold = "false";
defparam \shiftout[0]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOIBUF_X16_Y0_N15
cycloneiv_io_ibuf \clk~input (
	.i(clk),
	.ibar(gnd),
	.o(\clk~input_o ));
// synopsys translate_off
defparam \clk~input .bus_hold = "false";
defparam \clk~input .simulate_z_as = "z";
// synopsys translate_on

// Location: CLKCTRL_G17
cycloneiv_clkctrl \clk~inputclkctrl (
	.ena(vcc),
	.inclk({vcc,vcc,vcc,\clk~input_o }),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(\clk~inputclkctrl_outclk ));
// synopsys translate_off
defparam \clk~inputclkctrl .clock_type = "global clock";
defparam \clk~inputclkctrl .ena_register_mode = "none";
// synopsys translate_on

// Location: LCCOMB_X21_Y1_N16
cycloneiv_lcell_comb \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0 (
// Equation(s):
// \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout  = \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit [0] $ (VCC)
// \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT  = CARRY(\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit [0])

	.dataa(gnd),
	.datab(\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit [0]),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout ),
	.cout(\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT ));
// synopsys translate_off
defparam \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0 .lut_mask = 16'h33CC;
defparam \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X21_Y1_N26
cycloneiv_lcell_comb \~GND (
// Equation(s):
// \~GND~combout  = GND

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\~GND~combout ),
	.cout());
// synopsys translate_off
defparam \~GND .lut_mask = 16'h0000;
defparam \~GND .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X16_Y0_N22
cycloneiv_io_ibuf \rst~input (
	.i(rst),
	.ibar(gnd),
	.o(\rst~input_o ));
// synopsys translate_off
defparam \rst~input .bus_hold = "false";
defparam \rst~input .simulate_z_as = "z";
// synopsys translate_on

// Location: CLKCTRL_G19
cycloneiv_clkctrl \rst~inputclkctrl (
	.ena(vcc),
	.inclk({vcc,vcc,vcc,\rst~input_o }),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(\rst~inputclkctrl_outclk ));
// synopsys translate_off
defparam \rst~inputclkctrl .clock_type = "global clock";
defparam \rst~inputclkctrl .ena_register_mode = "none";
// synopsys translate_on

// Location: IOIBUF_X20_Y0_N8
cycloneiv_io_ibuf \ldcnt3~input (
	.i(ldcnt3),
	.ibar(gnd),
	.o(\ldcnt3~input_o ));
// synopsys translate_off
defparam \ldcnt3~input .bus_hold = "false";
defparam \ldcnt3~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X22_Y0_N1
cycloneiv_io_ibuf \cnten3~input (
	.i(cnten3),
	.ibar(gnd),
	.o(\cnten3~input_o ));
// synopsys translate_off
defparam \cnten3~input .bus_hold = "false";
defparam \cnten3~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X21_Y1_N28
cycloneiv_lcell_comb \inst|LPM_COUNTER_component|auto_generated|_~0 (
// Equation(s):
// \inst|LPM_COUNTER_component|auto_generated|_~0_combout  = (\ldcnt3~input_o ) # (\cnten3~input_o )

	.dataa(gnd),
	.datab(gnd),
	.datac(\ldcnt3~input_o ),
	.datad(\cnten3~input_o ),
	.cin(gnd),
	.combout(\inst|LPM_COUNTER_component|auto_generated|_~0_combout ),
	.cout());
// synopsys translate_off
defparam \inst|LPM_COUNTER_component|auto_generated|_~0 .lut_mask = 16'hFFF0;
defparam \inst|LPM_COUNTER_component|auto_generated|_~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X21_Y1_N17
dffeas \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[0] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout ),
	.asdata(\~GND~combout ),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(\ldcnt3~input_o ),
	.ena(\inst|LPM_COUNTER_component|auto_generated|_~0_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit [0]),
	.prn(vcc));
// synopsys translate_off
defparam \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[0] .is_wysiwyg = "true";
defparam \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[0] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X21_Y1_N18
cycloneiv_lcell_comb \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1 (
// Equation(s):
// \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout  = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit [1] & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT )) # 
// (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit [1] & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT ) # (GND)))
// \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT  = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT ) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit [1]))

	.dataa(gnd),
	.datab(\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit [1]),
	.datac(gnd),
	.datad(vcc),
	.cin(\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT ),
	.combout(\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout ),
	.cout(\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT ));
// synopsys translate_off
defparam \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1 .lut_mask = 16'h3C3F;
defparam \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X21_Y1_N19
dffeas \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[1] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout ),
	.asdata(\~GND~combout ),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(\ldcnt3~input_o ),
	.ena(\inst|LPM_COUNTER_component|auto_generated|_~0_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit [1]),
	.prn(vcc));
// synopsys translate_off
defparam \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[1] .is_wysiwyg = "true";
defparam \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[1] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X21_Y1_N20
cycloneiv_lcell_comb \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2 (
// Equation(s):
// \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout  = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit [2] & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT  $ (GND))) # 
// (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit [2] & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT  & VCC))
// \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT  = CARRY((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit [2] & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT ))

	.dataa(gnd),
	.datab(\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit [2]),
	.datac(gnd),
	.datad(vcc),
	.cin(\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT ),
	.combout(\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout ),
	.cout(\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT ));
// synopsys translate_off
defparam \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2 .lut_mask = 16'hC30C;
defparam \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X21_Y1_N21
dffeas \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[2] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout ),
	.asdata(\~GND~combout ),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(\ldcnt3~input_o ),
	.ena(\inst|LPM_COUNTER_component|auto_generated|_~0_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit [2]),
	.prn(vcc));
// synopsys translate_off
defparam \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[2] .is_wysiwyg = "true";
defparam \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[2] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X21_Y1_N22
cycloneiv_lcell_comb \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0 (
// Equation(s):
// \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout  = \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT 

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT ),
	.combout(\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout ),
	.cout());
// synopsys translate_off
defparam \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0 .lut_mask = 16'hF0F0;
defparam \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: IOIBUF_X33_Y10_N8
cycloneiv_io_ibuf \serin~input (
	.i(serin),
	.ibar(gnd),
	.o(\serin~input_o ));
// synopsys translate_off
defparam \serin~input .bus_hold = "false";
defparam \serin~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X32_Y14_N12
cycloneiv_lcell_comb \inst1|LPM_SHIFTREG_component|dffs[7]~feeder (
// Equation(s):
// \inst1|LPM_SHIFTREG_component|dffs[7]~feeder_combout  = \serin~input_o 

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(\serin~input_o ),
	.cin(gnd),
	.combout(\inst1|LPM_SHIFTREG_component|dffs[7]~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \inst1|LPM_SHIFTREG_component|dffs[7]~feeder .lut_mask = 16'hFF00;
defparam \inst1|LPM_SHIFTREG_component|dffs[7]~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X32_Y14_N13
dffeas \inst1|LPM_SHIFTREG_component|dffs[7] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\inst1|LPM_SHIFTREG_component|dffs[7]~feeder_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst1|LPM_SHIFTREG_component|dffs [7]),
	.prn(vcc));
// synopsys translate_off
defparam \inst1|LPM_SHIFTREG_component|dffs[7] .is_wysiwyg = "true";
defparam \inst1|LPM_SHIFTREG_component|dffs[7] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X32_Y14_N2
cycloneiv_lcell_comb \inst1|LPM_SHIFTREG_component|dffs[6]~feeder (
// Equation(s):
// \inst1|LPM_SHIFTREG_component|dffs[6]~feeder_combout  = \inst1|LPM_SHIFTREG_component|dffs [7]

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(\inst1|LPM_SHIFTREG_component|dffs [7]),
	.cin(gnd),
	.combout(\inst1|LPM_SHIFTREG_component|dffs[6]~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \inst1|LPM_SHIFTREG_component|dffs[6]~feeder .lut_mask = 16'hFF00;
defparam \inst1|LPM_SHIFTREG_component|dffs[6]~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X32_Y14_N3
dffeas \inst1|LPM_SHIFTREG_component|dffs[6] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\inst1|LPM_SHIFTREG_component|dffs[6]~feeder_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst1|LPM_SHIFTREG_component|dffs [6]),
	.prn(vcc));
// synopsys translate_off
defparam \inst1|LPM_SHIFTREG_component|dffs[6] .is_wysiwyg = "true";
defparam \inst1|LPM_SHIFTREG_component|dffs[6] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X32_Y14_N0
cycloneiv_lcell_comb \inst1|LPM_SHIFTREG_component|dffs[5]~feeder (
// Equation(s):
// \inst1|LPM_SHIFTREG_component|dffs[5]~feeder_combout  = \inst1|LPM_SHIFTREG_component|dffs [6]

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(\inst1|LPM_SHIFTREG_component|dffs [6]),
	.cin(gnd),
	.combout(\inst1|LPM_SHIFTREG_component|dffs[5]~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \inst1|LPM_SHIFTREG_component|dffs[5]~feeder .lut_mask = 16'hFF00;
defparam \inst1|LPM_SHIFTREG_component|dffs[5]~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X32_Y14_N1
dffeas \inst1|LPM_SHIFTREG_component|dffs[5] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\inst1|LPM_SHIFTREG_component|dffs[5]~feeder_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst1|LPM_SHIFTREG_component|dffs [5]),
	.prn(vcc));
// synopsys translate_off
defparam \inst1|LPM_SHIFTREG_component|dffs[5] .is_wysiwyg = "true";
defparam \inst1|LPM_SHIFTREG_component|dffs[5] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X32_Y14_N10
cycloneiv_lcell_comb \inst1|LPM_SHIFTREG_component|dffs[4]~feeder (
// Equation(s):
// \inst1|LPM_SHIFTREG_component|dffs[4]~feeder_combout  = \inst1|LPM_SHIFTREG_component|dffs [5]

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(\inst1|LPM_SHIFTREG_component|dffs [5]),
	.cin(gnd),
	.combout(\inst1|LPM_SHIFTREG_component|dffs[4]~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \inst1|LPM_SHIFTREG_component|dffs[4]~feeder .lut_mask = 16'hFF00;
defparam \inst1|LPM_SHIFTREG_component|dffs[4]~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X32_Y14_N11
dffeas \inst1|LPM_SHIFTREG_component|dffs[4] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\inst1|LPM_SHIFTREG_component|dffs[4]~feeder_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst1|LPM_SHIFTREG_component|dffs [4]),
	.prn(vcc));
// synopsys translate_off
defparam \inst1|LPM_SHIFTREG_component|dffs[4] .is_wysiwyg = "true";
defparam \inst1|LPM_SHIFTREG_component|dffs[4] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X32_Y14_N16
cycloneiv_lcell_comb \inst1|LPM_SHIFTREG_component|dffs[3]~feeder (
// Equation(s):
// \inst1|LPM_SHIFTREG_component|dffs[3]~feeder_combout  = \inst1|LPM_SHIFTREG_component|dffs [4]

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(\inst1|LPM_SHIFTREG_component|dffs [4]),
	.cin(gnd),
	.combout(\inst1|LPM_SHIFTREG_component|dffs[3]~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \inst1|LPM_SHIFTREG_component|dffs[3]~feeder .lut_mask = 16'hFF00;
defparam \inst1|LPM_SHIFTREG_component|dffs[3]~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X32_Y14_N17
dffeas \inst1|LPM_SHIFTREG_component|dffs[3] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\inst1|LPM_SHIFTREG_component|dffs[3]~feeder_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst1|LPM_SHIFTREG_component|dffs [3]),
	.prn(vcc));
// synopsys translate_off
defparam \inst1|LPM_SHIFTREG_component|dffs[3] .is_wysiwyg = "true";
defparam \inst1|LPM_SHIFTREG_component|dffs[3] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X32_Y14_N18
cycloneiv_lcell_comb \inst1|LPM_SHIFTREG_component|dffs[2]~feeder (
// Equation(s):
// \inst1|LPM_SHIFTREG_component|dffs[2]~feeder_combout  = \inst1|LPM_SHIFTREG_component|dffs [3]

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(\inst1|LPM_SHIFTREG_component|dffs [3]),
	.cin(gnd),
	.combout(\inst1|LPM_SHIFTREG_component|dffs[2]~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \inst1|LPM_SHIFTREG_component|dffs[2]~feeder .lut_mask = 16'hFF00;
defparam \inst1|LPM_SHIFTREG_component|dffs[2]~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X32_Y14_N19
dffeas \inst1|LPM_SHIFTREG_component|dffs[2] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\inst1|LPM_SHIFTREG_component|dffs[2]~feeder_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst1|LPM_SHIFTREG_component|dffs [2]),
	.prn(vcc));
// synopsys translate_off
defparam \inst1|LPM_SHIFTREG_component|dffs[2] .is_wysiwyg = "true";
defparam \inst1|LPM_SHIFTREG_component|dffs[2] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X32_Y14_N20
cycloneiv_lcell_comb \inst1|LPM_SHIFTREG_component|dffs[1]~feeder (
// Equation(s):
// \inst1|LPM_SHIFTREG_component|dffs[1]~feeder_combout  = \inst1|LPM_SHIFTREG_component|dffs [2]

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(\inst1|LPM_SHIFTREG_component|dffs [2]),
	.cin(gnd),
	.combout(\inst1|LPM_SHIFTREG_component|dffs[1]~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \inst1|LPM_SHIFTREG_component|dffs[1]~feeder .lut_mask = 16'hFF00;
defparam \inst1|LPM_SHIFTREG_component|dffs[1]~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X32_Y14_N21
dffeas \inst1|LPM_SHIFTREG_component|dffs[1] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\inst1|LPM_SHIFTREG_component|dffs[1]~feeder_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst1|LPM_SHIFTREG_component|dffs [1]),
	.prn(vcc));
// synopsys translate_off
defparam \inst1|LPM_SHIFTREG_component|dffs[1] .is_wysiwyg = "true";
defparam \inst1|LPM_SHIFTREG_component|dffs[1] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X32_Y14_N14
cycloneiv_lcell_comb \inst1|LPM_SHIFTREG_component|dffs[0]~feeder (
// Equation(s):
// \inst1|LPM_SHIFTREG_component|dffs[0]~feeder_combout  = \inst1|LPM_SHIFTREG_component|dffs [1]

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(\inst1|LPM_SHIFTREG_component|dffs [1]),
	.cin(gnd),
	.combout(\inst1|LPM_SHIFTREG_component|dffs[0]~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \inst1|LPM_SHIFTREG_component|dffs[0]~feeder .lut_mask = 16'hFF00;
defparam \inst1|LPM_SHIFTREG_component|dffs[0]~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X32_Y14_N15
dffeas \inst1|LPM_SHIFTREG_component|dffs[0] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\inst1|LPM_SHIFTREG_component|dffs[0]~feeder_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst1|LPM_SHIFTREG_component|dffs [0]),
	.prn(vcc));
// synopsys translate_off
defparam \inst1|LPM_SHIFTREG_component|dffs[0] .is_wysiwyg = "true";
defparam \inst1|LPM_SHIFTREG_component|dffs[0] .power_up = "low";
// synopsys translate_on

assign co3 = \co3~output_o ;

assign shiftout[7] = \shiftout[7]~output_o ;

assign shiftout[6] = \shiftout[6]~output_o ;

assign shiftout[5] = \shiftout[5]~output_o ;

assign shiftout[4] = \shiftout[4]~output_o ;

assign shiftout[3] = \shiftout[3]~output_o ;

assign shiftout[2] = \shiftout[2]~output_o ;

assign shiftout[1] = \shiftout[1]~output_o ;

assign shiftout[0] = \shiftout[0]~output_o ;

endmodule

module hard_block (

	devpor,
	devclrn,
	devoe);

// Design Ports Information
// ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
// ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
// ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
// ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
// ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default

input 	devpor;
input 	devclrn;
input 	devoe;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

wire \~ALTERA_DATA0~~padout ;
wire \~ALTERA_ASDO~~padout ;
wire \~ALTERA_NCSO~~padout ;
wire \~ALTERA_DATA0~~ibuf_o ;
wire \~ALTERA_ASDO~~ibuf_o ;
wire \~ALTERA_NCSO~~ibuf_o ;


endmodule
