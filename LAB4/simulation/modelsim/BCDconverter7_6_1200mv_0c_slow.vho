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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/16/2023 12:26:39"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BCDconverter7 IS
    PORT (
	flag_N : OUT std_logic;
	S : OUT std_logic_vector(3 DOWNTO 0);
	op_sel : IN std_logic_vector(1 DOWNTO 0);
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	flag_Z : OUT std_logic;
	displayOut : OUT std_logic
	);
END BCDconverter7;

-- Design Ports Information
-- flag_N	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flag_Z	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displayOut	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_sel[1]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_sel[0]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BCDconverter7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_flag_N : std_logic;
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_op_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_flag_Z : std_logic;
SIGNAL ww_displayOut : std_logic;
SIGNAL \flag_N~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \flag_Z~output_o\ : std_logic;
SIGNAL \displayOut~output_o\ : std_logic;
SIGNAL \op_sel[0]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \op_sel[1]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \inst12|inst3[3]~5_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \inst7|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst12|inst3[3]~4_combout\ : std_logic;
SIGNAL \inst12|inst3[3]~11_combout\ : std_logic;
SIGNAL \inst12|inst3[2]~6_combout\ : std_logic;
SIGNAL \inst12|inst3[2]~12_combout\ : std_logic;
SIGNAL \inst12|inst3[1]~7_combout\ : std_logic;
SIGNAL \inst12|inst3[1]~8_combout\ : std_logic;
SIGNAL \inst12|inst3[1]~9_combout\ : std_logic;
SIGNAL \inst12|inst3[0]~10_combout\ : std_logic;
SIGNAL \inst5~0_combout\ : std_logic;
SIGNAL \inst1|inst4~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst5~0_combout\ : std_logic;

BEGIN

flag_N <= ww_flag_N;
S <= ww_S;
ww_op_sel <= op_sel;
ww_A <= A;
ww_B <= B;
flag_Z <= ww_flag_Z;
displayOut <= ww_displayOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst5~0_combout\ <= NOT \inst5~0_combout\;

-- Location: IOOBUF_X0_Y26_N23
\flag_N~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst3[3]~11_combout\,
	devoe => ww_devoe,
	o => \flag_N~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\S[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst3[3]~11_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\S[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst3[2]~12_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\S[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst3[1]~9_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\S[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst3[0]~10_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\flag_Z~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst5~0_combout\,
	devoe => ww_devoe,
	o => \flag_Z~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\displayOut~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4~0_combout\,
	devoe => ww_devoe,
	o => \displayOut~output_o\);

-- Location: IOIBUF_X0_Y26_N1
\op_sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_sel(0),
	o => \op_sel[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\op_sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_sel(1),
	o => \op_sel[1]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X1_Y21_N20
\inst12|inst3[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst3[3]~5_combout\ = (\A[3]~input_o\ & (\op_sel[0]~input_o\ $ (((\op_sel[1]~input_o\) # (!\B[3]~input_o\))))) # (!\A[3]~input_o\ & ((\op_sel[0]~input_o\ & ((\op_sel[1]~input_o\))) # (!\op_sel[0]~input_o\ & (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \op_sel[1]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst12|inst3[3]~5_combout\);

-- Location: IOIBUF_X0_Y25_N15
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X1_Y21_N16
\inst7|inst1|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst5~0_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\B[1]~input_o\ & (\B[0]~input_o\ & (\A[1]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst7|inst1|inst5~0_combout\);

-- Location: LCCOMB_X1_Y21_N2
\inst12|inst3[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst3[3]~4_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\) # (\inst7|inst1|inst5~0_combout\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & \inst7|inst1|inst5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \inst7|inst1|inst5~0_combout\,
	combout => \inst12|inst3[3]~4_combout\);

-- Location: LCCOMB_X1_Y21_N12
\inst12|inst3[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst3[3]~11_combout\ = \inst12|inst3[3]~5_combout\ $ (((!\op_sel[0]~input_o\ & (!\op_sel[1]~input_o\ & \inst12|inst3[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datab => \inst12|inst3[3]~5_combout\,
	datac => \op_sel[1]~input_o\,
	datad => \inst12|inst3[3]~4_combout\,
	combout => \inst12|inst3[3]~11_combout\);

-- Location: LCCOMB_X1_Y21_N22
\inst12|inst3[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst3[2]~6_combout\ = (\A[2]~input_o\ & (\op_sel[0]~input_o\ $ (((\op_sel[1]~input_o\) # (!\B[2]~input_o\))))) # (!\A[2]~input_o\ & ((\op_sel[0]~input_o\ & ((\op_sel[1]~input_o\))) # (!\op_sel[0]~input_o\ & (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \op_sel[1]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst12|inst3[2]~6_combout\);

-- Location: LCCOMB_X1_Y21_N14
\inst12|inst3[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst3[2]~12_combout\ = \inst12|inst3[2]~6_combout\ $ (((!\op_sel[1]~input_o\ & (!\op_sel[0]~input_o\ & \inst7|inst1|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst3[2]~6_combout\,
	datab => \op_sel[1]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \inst7|inst1|inst5~0_combout\,
	combout => \inst12|inst3[2]~12_combout\);

-- Location: LCCOMB_X1_Y21_N24
\inst12|inst3[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst3[1]~7_combout\ = (\A[1]~input_o\ & (\op_sel[0]~input_o\ $ (((\op_sel[1]~input_o\) # (!\B[1]~input_o\))))) # (!\A[1]~input_o\ & ((\op_sel[0]~input_o\ & (\op_sel[1]~input_o\)) # (!\op_sel[0]~input_o\ & ((\B[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[0]~input_o\,
	datab => \op_sel[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \inst12|inst3[1]~7_combout\);

-- Location: LCCOMB_X1_Y21_N10
\inst12|inst3[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst3[1]~8_combout\ = (\op_sel[1]~input_o\) # (\op_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[1]~input_o\,
	datac => \op_sel[0]~input_o\,
	combout => \inst12|inst3[1]~8_combout\);

-- Location: LCCOMB_X1_Y21_N28
\inst12|inst3[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst3[1]~9_combout\ = \inst12|inst3[1]~7_combout\ $ (((\A[0]~input_o\ & (\B[0]~input_o\ & !\inst12|inst3[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \inst12|inst3[1]~7_combout\,
	datac => \B[0]~input_o\,
	datad => \inst12|inst3[1]~8_combout\,
	combout => \inst12|inst3[1]~9_combout\);

-- Location: LCCOMB_X1_Y21_N30
\inst12|inst3[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst3[0]~10_combout\ = (\A[0]~input_o\ & (\op_sel[0]~input_o\ $ (((\op_sel[1]~input_o\) # (!\B[0]~input_o\))))) # (!\A[0]~input_o\ & ((\op_sel[0]~input_o\ & ((\op_sel[1]~input_o\))) # (!\op_sel[0]~input_o\ & (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \op_sel[1]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst12|inst3[0]~10_combout\);

-- Location: LCCOMB_X1_Y21_N0
\inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5~0_combout\ = (\inst12|inst3[0]~10_combout\) # ((\inst12|inst3[1]~9_combout\) # ((\inst12|inst3[2]~12_combout\) # (\inst12|inst3[3]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst3[0]~10_combout\,
	datab => \inst12|inst3[1]~9_combout\,
	datac => \inst12|inst3[2]~12_combout\,
	datad => \inst12|inst3[3]~11_combout\,
	combout => \inst5~0_combout\);

-- Location: LCCOMB_X1_Y21_N26
\inst1|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst4~0_combout\ = (\inst12|inst3[0]~10_combout\ & (!\inst12|inst3[3]~11_combout\ & (\inst12|inst3[1]~9_combout\ $ (!\inst12|inst3[2]~12_combout\)))) # (!\inst12|inst3[0]~10_combout\ & (!\inst12|inst3[1]~9_combout\ & (\inst12|inst3[2]~12_combout\ $ 
-- (!\inst12|inst3[3]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst3[0]~10_combout\,
	datab => \inst12|inst3[1]~9_combout\,
	datac => \inst12|inst3[2]~12_combout\,
	datad => \inst12|inst3[3]~11_combout\,
	combout => \inst1|inst4~0_combout\);

ww_flag_N <= \flag_N~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(0) <= \S[0]~output_o\;

ww_flag_Z <= \flag_Z~output_o\;

ww_displayOut <= \displayOut~output_o\;
END structure;


