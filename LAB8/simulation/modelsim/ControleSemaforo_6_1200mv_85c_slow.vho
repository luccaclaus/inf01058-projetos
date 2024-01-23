-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "01/22/2024 23:48:13"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ControleSemaforo IS
    PORT (
	verde : OUT std_logic;
	clock : IN std_logic;
	clear : IN std_logic;
	amarelo : OUT std_logic;
	vermelho : OUT std_logic
	);
END ControleSemaforo;

-- Design Ports Information
-- verde	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amarelo	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vermelho	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ControleSemaforo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_verde : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_amarelo : std_logic;
SIGNAL ww_vermelho : std_logic;
SIGNAL \clear~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst79~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst79~q\ : std_logic;
SIGNAL \inst|inst77~q\ : std_logic;
SIGNAL \inst|inst73~q\ : std_logic;
SIGNAL \inst|inst71~q\ : std_logic;
SIGNAL \inst|inst69~q\ : std_logic;
SIGNAL \inst|inst67~q\ : std_logic;
SIGNAL \inst|inst63~q\ : std_logic;
SIGNAL \inst|inst65~q\ : std_logic;
SIGNAL \inst|inst61~q\ : std_logic;
SIGNAL \inst|inst58~q\ : std_logic;
SIGNAL \inst|inst54~q\ : std_logic;
SIGNAL \inst|inst52~q\ : std_logic;
SIGNAL \inst|inst50~q\ : std_logic;
SIGNAL \inst|inst48~q\ : std_logic;
SIGNAL \inst|inst44~q\ : std_logic;
SIGNAL \inst|inst46~q\ : std_logic;
SIGNAL \inst|inst43~q\ : std_logic;
SIGNAL \inst|inst39~q\ : std_logic;
SIGNAL \inst|inst35~q\ : std_logic;
SIGNAL \inst|inst33~q\ : std_logic;
SIGNAL \inst|inst31~q\ : std_logic;
SIGNAL \inst|inst29~q\ : std_logic;
SIGNAL \inst|inst25~q\ : std_logic;
SIGNAL \inst|inst27~q\ : std_logic;
SIGNAL \inst|inst~q\ : std_logic;
SIGNAL \inst|inst79~0_combout\ : std_logic;
SIGNAL \inst|inst77~0_combout\ : std_logic;
SIGNAL \inst|inst73~0_combout\ : std_logic;
SIGNAL \inst|inst71~0_combout\ : std_logic;
SIGNAL \inst|inst69~0_combout\ : std_logic;
SIGNAL \inst|inst67~0_combout\ : std_logic;
SIGNAL \inst|inst63~0_combout\ : std_logic;
SIGNAL \inst|inst65~0_combout\ : std_logic;
SIGNAL \inst|inst61~0_combout\ : std_logic;
SIGNAL \inst|inst58~0_combout\ : std_logic;
SIGNAL \inst|inst54~0_combout\ : std_logic;
SIGNAL \inst|inst52~0_combout\ : std_logic;
SIGNAL \inst|inst50~0_combout\ : std_logic;
SIGNAL \inst|inst48~0_combout\ : std_logic;
SIGNAL \inst|inst44~0_combout\ : std_logic;
SIGNAL \inst|inst46~0_combout\ : std_logic;
SIGNAL \inst|inst43~0_combout\ : std_logic;
SIGNAL \inst|inst39~0_combout\ : std_logic;
SIGNAL \inst|inst35~0_combout\ : std_logic;
SIGNAL \inst|inst33~0_combout\ : std_logic;
SIGNAL \inst|inst31~0_combout\ : std_logic;
SIGNAL \inst|inst29~0_combout\ : std_logic;
SIGNAL \inst|inst25~0_combout\ : std_logic;
SIGNAL \inst|inst27~0_combout\ : std_logic;
SIGNAL \inst|inst~0_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \inst|inst79~clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst79~feeder_combout\ : std_logic;
SIGNAL \inst|inst77~feeder_combout\ : std_logic;
SIGNAL \inst|inst71~feeder_combout\ : std_logic;
SIGNAL \inst|inst63~feeder_combout\ : std_logic;
SIGNAL \inst|inst61~feeder_combout\ : std_logic;
SIGNAL \inst|inst58~feeder_combout\ : std_logic;
SIGNAL \inst|inst54~feeder_combout\ : std_logic;
SIGNAL \inst|inst52~feeder_combout\ : std_logic;
SIGNAL \inst|inst48~feeder_combout\ : std_logic;
SIGNAL \inst|inst44~feeder_combout\ : std_logic;
SIGNAL \inst|inst46~feeder_combout\ : std_logic;
SIGNAL \inst|inst39~feeder_combout\ : std_logic;
SIGNAL \inst|inst35~feeder_combout\ : std_logic;
SIGNAL \inst|inst33~feeder_combout\ : std_logic;
SIGNAL \inst|inst29~feeder_combout\ : std_logic;
SIGNAL \inst|inst25~feeder_combout\ : std_logic;
SIGNAL \verde~output_o\ : std_logic;
SIGNAL \amarelo~output_o\ : std_logic;
SIGNAL \vermelho~output_o\ : std_logic;
SIGNAL \inst7|inst|inst3~0_combout\ : std_logic;
SIGNAL \inst7|inst|inst9~0_combout\ : std_logic;
SIGNAL \inst7|inst|inst9~q\ : std_logic;
SIGNAL \inst9|inst1~0_combout\ : std_logic;
SIGNAL \inst9|inst1~combout\ : std_logic;
SIGNAL \inst7|inst|inst3~q\ : std_logic;
SIGNAL \inst7|inst|inst6~0_combout\ : std_logic;
SIGNAL \inst7|inst|inst6~q\ : std_logic;
SIGNAL \inst9|inst6~0_combout\ : std_logic;
SIGNAL \inst9|inst6~1_combout\ : std_logic;
SIGNAL \inst13|inst7~combout\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \clear~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst17|inst1~q\ : std_logic;
SIGNAL \inst17|inst~0_combout\ : std_logic;
SIGNAL \inst17|inst~q\ : std_logic;
SIGNAL \inst15|inst2~combout\ : std_logic;
SIGNAL \inst15|inst1~0_combout\ : std_logic;
SIGNAL \inst15|inst~combout\ : std_logic;
SIGNAL \inst9|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst15|ALT_INV_inst2~combout\ : std_logic;

BEGIN

verde <= ww_verde;
ww_clock <= clock;
ww_clear <= clear;
amarelo <= ww_amarelo;
vermelho <= ww_vermelho;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clear~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clear~input_o\);

\inst|inst79~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|inst79~q\);
\inst9|ALT_INV_inst1~combout\ <= NOT \inst9|inst1~combout\;
\inst15|ALT_INV_inst2~combout\ <= NOT \inst15|inst2~combout\;

-- Location: FF_X20_Y3_N5
\inst|inst79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst77~q\,
	d => \inst|inst79~feeder_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst79~q\);

-- Location: FF_X20_Y3_N13
\inst|inst77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst73~q\,
	d => \inst|inst77~feeder_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77~q\);

-- Location: FF_X21_Y3_N23
\inst|inst73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71~q\,
	asdata => \inst|inst73~0_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst73~q\);

-- Location: FF_X21_Y3_N29
\inst|inst71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst69~q\,
	d => \inst|inst71~feeder_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst71~q\);

-- Location: FF_X21_Y7_N23
\inst|inst69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst67~q\,
	asdata => \inst|inst69~0_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst69~q\);

-- Location: FF_X21_Y7_N25
\inst|inst67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst63~q\,
	asdata => \inst|inst67~0_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst67~q\);

-- Location: FF_X22_Y8_N31
\inst|inst63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst65~q\,
	d => \inst|inst63~feeder_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst63~q\);

-- Location: FF_X23_Y8_N5
\inst|inst65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst61~q\,
	asdata => \inst|inst65~0_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst65~q\);

-- Location: FF_X23_Y8_N11
\inst|inst61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst58~q\,
	d => \inst|inst61~feeder_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst61~q\);

-- Location: FF_X26_Y24_N27
\inst|inst58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst54~q\,
	d => \inst|inst58~feeder_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst58~q\);

-- Location: FF_X26_Y24_N25
\inst|inst54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst52~q\,
	d => \inst|inst54~feeder_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst54~q\);

-- Location: FF_X27_Y24_N7
\inst|inst52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst50~q\,
	d => \inst|inst52~feeder_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52~q\);

-- Location: FF_X28_Y24_N5
\inst|inst50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst48~q\,
	asdata => \inst|inst50~0_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst50~q\);

-- Location: FF_X28_Y24_N11
\inst|inst48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst44~q\,
	d => \inst|inst48~feeder_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst48~q\);

-- Location: FF_X29_Y24_N15
\inst|inst44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst46~q\,
	d => \inst|inst44~feeder_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst44~q\);

-- Location: FF_X29_Y24_N23
\inst|inst46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst43~q\,
	d => \inst|inst46~feeder_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst46~q\);

-- Location: FF_X30_Y27_N31
\inst|inst43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst39~q\,
	asdata => \inst|inst43~0_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst43~q\);

-- Location: FF_X30_Y27_N29
\inst|inst39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst35~q\,
	d => \inst|inst39~feeder_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst39~q\);

-- Location: FF_X29_Y27_N15
\inst|inst35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst33~q\,
	d => \inst|inst35~feeder_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst35~q\);

-- Location: FF_X29_Y27_N11
\inst|inst33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31~q\,
	d => \inst|inst33~feeder_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst33~q\);

-- Location: FF_X28_Y27_N7
\inst|inst31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst29~q\,
	asdata => \inst|inst31~0_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31~q\);

-- Location: FF_X28_Y27_N31
\inst|inst29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst25~q\,
	d => \inst|inst29~feeder_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst29~q\);

-- Location: FF_X27_Y27_N7
\inst|inst25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst27~q\,
	d => \inst|inst25~feeder_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst25~q\);

-- Location: FF_X26_Y27_N9
\inst|inst27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst~q\,
	asdata => \inst|inst27~0_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst27~q\);

-- Location: FF_X26_Y27_N11
\inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \inst|inst~0_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst~q\);

-- Location: LCCOMB_X20_Y3_N14
\inst|inst79~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst79~0_combout\ = !\inst|inst79~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst79~q\,
	combout => \inst|inst79~0_combout\);

-- Location: LCCOMB_X20_Y3_N6
\inst|inst77~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77~0_combout\ = !\inst|inst77~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77~q\,
	combout => \inst|inst77~0_combout\);

-- Location: LCCOMB_X21_Y3_N26
\inst|inst73~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst73~0_combout\ = !\inst|inst73~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst73~q\,
	combout => \inst|inst73~0_combout\);

-- Location: LCCOMB_X21_Y3_N20
\inst|inst71~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst71~0_combout\ = !\inst|inst71~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst71~q\,
	combout => \inst|inst71~0_combout\);

-- Location: LCCOMB_X21_Y7_N26
\inst|inst69~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst69~0_combout\ = !\inst|inst69~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst69~q\,
	combout => \inst|inst69~0_combout\);

-- Location: LCCOMB_X21_Y7_N20
\inst|inst67~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst67~0_combout\ = !\inst|inst67~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst67~q\,
	combout => \inst|inst67~0_combout\);

-- Location: LCCOMB_X22_Y8_N28
\inst|inst63~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst63~0_combout\ = !\inst|inst63~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst63~q\,
	combout => \inst|inst63~0_combout\);

-- Location: LCCOMB_X23_Y8_N26
\inst|inst65~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst65~0_combout\ = !\inst|inst65~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst65~q\,
	combout => \inst|inst65~0_combout\);

-- Location: LCCOMB_X23_Y8_N6
\inst|inst61~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst61~0_combout\ = !\inst|inst61~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst61~q\,
	combout => \inst|inst61~0_combout\);

-- Location: LCCOMB_X26_Y24_N30
\inst|inst58~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst58~0_combout\ = !\inst|inst58~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst58~q\,
	combout => \inst|inst58~0_combout\);

-- Location: LCCOMB_X26_Y24_N28
\inst|inst54~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst54~0_combout\ = !\inst|inst54~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst54~q\,
	combout => \inst|inst54~0_combout\);

-- Location: LCCOMB_X27_Y24_N0
\inst|inst52~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst52~0_combout\ = !\inst|inst52~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst52~q\,
	combout => \inst|inst52~0_combout\);

-- Location: LCCOMB_X28_Y24_N26
\inst|inst50~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst50~0_combout\ = !\inst|inst50~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst50~q\,
	combout => \inst|inst50~0_combout\);

-- Location: LCCOMB_X28_Y24_N6
\inst|inst48~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst48~0_combout\ = !\inst|inst48~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst48~q\,
	combout => \inst|inst48~0_combout\);

-- Location: LCCOMB_X29_Y24_N30
\inst|inst44~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst44~0_combout\ = !\inst|inst44~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst44~q\,
	combout => \inst|inst44~0_combout\);

-- Location: LCCOMB_X29_Y24_N16
\inst|inst46~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst46~0_combout\ = !\inst|inst46~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst46~q\,
	combout => \inst|inst46~0_combout\);

-- Location: LCCOMB_X30_Y27_N26
\inst|inst43~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst43~0_combout\ = !\inst|inst43~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst43~q\,
	combout => \inst|inst43~0_combout\);

-- Location: LCCOMB_X30_Y27_N24
\inst|inst39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst39~0_combout\ = !\inst|inst39~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst39~q\,
	combout => \inst|inst39~0_combout\);

-- Location: LCCOMB_X29_Y27_N22
\inst|inst35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst35~0_combout\ = !\inst|inst35~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst35~q\,
	combout => \inst|inst35~0_combout\);

-- Location: LCCOMB_X29_Y27_N12
\inst|inst33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst33~0_combout\ = !\inst|inst33~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33~q\,
	combout => \inst|inst33~0_combout\);

-- Location: LCCOMB_X28_Y27_N26
\inst|inst31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst31~0_combout\ = !\inst|inst31~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31~q\,
	combout => \inst|inst31~0_combout\);

-- Location: LCCOMB_X28_Y27_N22
\inst|inst29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst29~0_combout\ = !\inst|inst29~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst29~q\,
	combout => \inst|inst29~0_combout\);

-- Location: LCCOMB_X27_Y27_N0
\inst|inst25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst25~0_combout\ = !\inst|inst25~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst25~q\,
	combout => \inst|inst25~0_combout\);

-- Location: LCCOMB_X26_Y27_N26
\inst|inst27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst27~0_combout\ = !\inst|inst27~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst27~q\,
	combout => \inst|inst27~0_combout\);

-- Location: LCCOMB_X26_Y27_N18
\inst|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst~0_combout\ = !\inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst~q\,
	combout => \inst|inst~0_combout\);

-- Location: IOIBUF_X26_Y29_N22
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G19
\inst|inst79~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|inst79~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|inst79~clkctrl_outclk\);

-- Location: LCCOMB_X20_Y3_N4
\inst|inst79~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst79~feeder_combout\ = \inst|inst79~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst79~0_combout\,
	combout => \inst|inst79~feeder_combout\);

-- Location: LCCOMB_X20_Y3_N12
\inst|inst77~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77~feeder_combout\ = \inst|inst77~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77~0_combout\,
	combout => \inst|inst77~feeder_combout\);

-- Location: LCCOMB_X21_Y3_N28
\inst|inst71~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst71~feeder_combout\ = \inst|inst71~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst71~0_combout\,
	combout => \inst|inst71~feeder_combout\);

-- Location: LCCOMB_X22_Y8_N30
\inst|inst63~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst63~feeder_combout\ = \inst|inst63~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst63~0_combout\,
	combout => \inst|inst63~feeder_combout\);

-- Location: LCCOMB_X23_Y8_N10
\inst|inst61~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst61~feeder_combout\ = \inst|inst61~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst61~0_combout\,
	combout => \inst|inst61~feeder_combout\);

-- Location: LCCOMB_X26_Y24_N26
\inst|inst58~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst58~feeder_combout\ = \inst|inst58~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst58~0_combout\,
	combout => \inst|inst58~feeder_combout\);

-- Location: LCCOMB_X26_Y24_N24
\inst|inst54~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst54~feeder_combout\ = \inst|inst54~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst54~0_combout\,
	combout => \inst|inst54~feeder_combout\);

-- Location: LCCOMB_X27_Y24_N6
\inst|inst52~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst52~feeder_combout\ = \inst|inst52~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst52~0_combout\,
	combout => \inst|inst52~feeder_combout\);

-- Location: LCCOMB_X28_Y24_N10
\inst|inst48~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst48~feeder_combout\ = \inst|inst48~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst48~0_combout\,
	combout => \inst|inst48~feeder_combout\);

-- Location: LCCOMB_X29_Y24_N14
\inst|inst44~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst44~feeder_combout\ = \inst|inst44~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst44~0_combout\,
	combout => \inst|inst44~feeder_combout\);

-- Location: LCCOMB_X29_Y24_N22
\inst|inst46~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst46~feeder_combout\ = \inst|inst46~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst46~0_combout\,
	combout => \inst|inst46~feeder_combout\);

-- Location: LCCOMB_X30_Y27_N28
\inst|inst39~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst39~feeder_combout\ = \inst|inst39~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst39~0_combout\,
	combout => \inst|inst39~feeder_combout\);

-- Location: LCCOMB_X29_Y27_N14
\inst|inst35~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst35~feeder_combout\ = \inst|inst35~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst35~0_combout\,
	combout => \inst|inst35~feeder_combout\);

-- Location: LCCOMB_X29_Y27_N10
\inst|inst33~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst33~feeder_combout\ = \inst|inst33~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33~0_combout\,
	combout => \inst|inst33~feeder_combout\);

-- Location: LCCOMB_X28_Y27_N30
\inst|inst29~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst29~feeder_combout\ = \inst|inst29~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst29~0_combout\,
	combout => \inst|inst29~feeder_combout\);

-- Location: LCCOMB_X27_Y27_N6
\inst|inst25~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst25~feeder_combout\ = \inst|inst25~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst25~0_combout\,
	combout => \inst|inst25~feeder_combout\);

-- Location: IOOBUF_X0_Y10_N9
\verde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|ALT_INV_inst2~combout\,
	devoe => ww_devoe,
	o => \verde~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\amarelo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|inst1~0_combout\,
	devoe => ww_devoe,
	o => \amarelo~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\vermelho~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|inst~combout\,
	devoe => ww_devoe,
	o => \vermelho~output_o\);

-- Location: LCCOMB_X1_Y10_N28
\inst7|inst|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inst|inst3~0_combout\ = !\inst7|inst|inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst|inst3~q\,
	combout => \inst7|inst|inst3~0_combout\);

-- Location: LCCOMB_X1_Y10_N22
\inst7|inst|inst9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inst|inst9~0_combout\ = \inst7|inst|inst9~q\ $ (((\inst7|inst|inst3~q\ & \inst7|inst|inst6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst|inst3~q\,
	datac => \inst7|inst|inst9~q\,
	datad => \inst7|inst|inst6~q\,
	combout => \inst7|inst|inst9~0_combout\);

-- Location: FF_X1_Y10_N23
\inst7|inst|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst79~clkctrl_outclk\,
	d => \inst7|inst|inst9~0_combout\,
	clrn => \inst9|ALT_INV_inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst|inst9~q\);

-- Location: LCCOMB_X1_Y10_N0
\inst9|inst1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|inst1~0_combout\ = (!\inst17|inst1~q\ & (\inst17|inst~q\ & (!\inst7|inst|inst6~q\ & \inst7|inst|inst3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst1~q\,
	datab => \inst17|inst~q\,
	datac => \inst7|inst|inst6~q\,
	datad => \inst7|inst|inst3~q\,
	combout => \inst9|inst1~0_combout\);

-- Location: LCCOMB_X1_Y10_N6
\inst9|inst1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|inst1~combout\ = (!\inst7|inst|inst9~q\ & \inst9|inst1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst|inst9~q\,
	datad => \inst9|inst1~0_combout\,
	combout => \inst9|inst1~combout\);

-- Location: FF_X1_Y10_N29
\inst7|inst|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst79~clkctrl_outclk\,
	d => \inst7|inst|inst3~0_combout\,
	clrn => \inst9|ALT_INV_inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst|inst3~q\);

-- Location: LCCOMB_X1_Y10_N14
\inst7|inst|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inst|inst6~0_combout\ = \inst7|inst|inst6~q\ $ (\inst7|inst|inst3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst|inst6~q\,
	datad => \inst7|inst|inst3~q\,
	combout => \inst7|inst|inst6~0_combout\);

-- Location: FF_X1_Y10_N15
\inst7|inst|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst79~clkctrl_outclk\,
	d => \inst7|inst|inst6~0_combout\,
	clrn => \inst9|ALT_INV_inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst|inst6~q\);

-- Location: LCCOMB_X1_Y10_N30
\inst9|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|inst6~0_combout\ = (\inst7|inst|inst6~q\ & (\inst7|inst|inst3~q\ & (\inst17|inst1~q\ $ (!\inst17|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst1~q\,
	datab => \inst17|inst~q\,
	datac => \inst7|inst|inst6~q\,
	datad => \inst7|inst|inst3~q\,
	combout => \inst9|inst6~0_combout\);

-- Location: LCCOMB_X1_Y10_N12
\inst9|inst6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|inst6~1_combout\ = (\inst7|inst|inst9~q\ & (\inst9|inst6~0_combout\)) # (!\inst7|inst|inst9~q\ & ((\inst9|inst1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|inst9~q\,
	datac => \inst9|inst6~0_combout\,
	datad => \inst9|inst1~0_combout\,
	combout => \inst9|inst6~1_combout\);

-- Location: LCCOMB_X1_Y10_N26
\inst13|inst7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|inst7~combout\ = (\inst17|inst1~q\ & ((!\inst9|inst6~1_combout\))) # (!\inst17|inst1~q\ & (\inst17|inst~q\ & \inst9|inst6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst~q\,
	datac => \inst17|inst1~q\,
	datad => \inst9|inst6~1_combout\,
	combout => \inst13|inst7~combout\);

-- Location: IOIBUF_X0_Y14_N1
\clear~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: CLKCTRL_G4
\clear~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clear~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clear~inputclkctrl_outclk\);

-- Location: FF_X1_Y10_N27
\inst17|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst79~clkctrl_outclk\,
	d => \inst13|inst7~combout\,
	clrn => \clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|inst1~q\);

-- Location: LCCOMB_X1_Y10_N8
\inst17|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|inst~0_combout\ = (\inst9|inst6~1_combout\ & (!\inst17|inst1~q\)) # (!\inst9|inst6~1_combout\ & ((\inst17|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|inst1~q\,
	datac => \inst17|inst~q\,
	datad => \inst9|inst6~1_combout\,
	combout => \inst17|inst~0_combout\);

-- Location: FF_X1_Y10_N9
\inst17|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst79~clkctrl_outclk\,
	d => \inst17|inst~0_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|inst~q\);

-- Location: LCCOMB_X1_Y10_N24
\inst15|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|inst2~combout\ = (\inst17|inst~q\) # (\inst17|inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst~q\,
	datad => \inst17|inst1~q\,
	combout => \inst15|inst2~combout\);

-- Location: LCCOMB_X1_Y10_N18
\inst15|inst1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|inst1~0_combout\ = (\inst17|inst~q\ & !\inst17|inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst~q\,
	datad => \inst17|inst1~q\,
	combout => \inst15|inst1~0_combout\);

-- Location: LCCOMB_X1_Y10_N20
\inst15|inst\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|inst~combout\ = (\inst17|inst~q\ & \inst17|inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst~q\,
	datad => \inst17|inst1~q\,
	combout => \inst15|inst~combout\);

ww_verde <= \verde~output_o\;

ww_amarelo <= \amarelo~output_o\;

ww_vermelho <= \vermelho~output_o\;
END structure;


