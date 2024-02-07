-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "06/05/2023 11:37:50"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ArithmeticUnit IS
    PORT (
	dataIn0 : IN std_logic_vector(7 DOWNTO 0);
	dataIn1 : IN std_logic_vector(7 DOWNTO 0);
	dataIn2 : IN std_logic_vector(7 DOWNTO 0);
	dataIn3 : IN std_logic_vector(7 DOWNTO 0);
	filterEnb : IN std_logic;
	byteSelect : IN std_logic_vector(1 DOWNTO 0);
	round : IN std_logic_vector(1 DOWNTO 0);
	zeroForce : IN std_logic;
	result : OUT std_logic_vector(7 DOWNTO 0)
	);
END ArithmeticUnit;

ARCHITECTURE structure OF ArithmeticUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dataIn0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dataIn1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dataIn2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dataIn3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_filterEnb : std_logic;
SIGNAL ww_byteSelect : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_round : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_zeroForce : std_logic;
SIGNAL ww_result : std_logic_vector(7 DOWNTO 0);
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \dataIn1[2]~input_o\ : std_logic;
SIGNAL \dataIn0[2]~input_o\ : std_logic;
SIGNAL \dataIn1[1]~input_o\ : std_logic;
SIGNAL \dataIn0[1]~input_o\ : std_logic;
SIGNAL \dataIn1[0]~input_o\ : std_logic;
SIGNAL \dataIn0[0]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \dataIn3[2]~input_o\ : std_logic;
SIGNAL \dataIn2[2]~input_o\ : std_logic;
SIGNAL \dataIn3[1]~input_o\ : std_logic;
SIGNAL \dataIn2[1]~input_o\ : std_logic;
SIGNAL \dataIn3[0]~input_o\ : std_logic;
SIGNAL \dataIn2[0]~input_o\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \filterEnb~input_o\ : std_logic;
SIGNAL \zeroForce~input_o\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \byteSelect[0]~input_o\ : std_logic;
SIGNAL \byteSelect[1]~input_o\ : std_logic;
SIGNAL \s_result~0_combout\ : std_logic;
SIGNAL \s_result~1_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \round[1]~input_o\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \s_sum[0]~0_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~7_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \round[0]~input_o\ : std_logic;
SIGNAL \Add3~4_cout\ : std_logic;
SIGNAL \Add3~6_cout\ : std_logic;
SIGNAL \Add3~7_combout\ : std_logic;
SIGNAL \Add3~9_combout\ : std_logic;
SIGNAL \dataIn1[3]~input_o\ : std_logic;
SIGNAL \dataIn0[3]~input_o\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \dataIn3[3]~input_o\ : std_logic;
SIGNAL \dataIn2[3]~input_o\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~9_combout\ : std_logic;
SIGNAL \Add2~11_combout\ : std_logic;
SIGNAL \s_result~2_combout\ : std_logic;
SIGNAL \s_result~3_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~8\ : std_logic;
SIGNAL \Add3~11_combout\ : std_logic;
SIGNAL \Add3~13_combout\ : std_logic;
SIGNAL \dataIn1[4]~input_o\ : std_logic;
SIGNAL \dataIn0[4]~input_o\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \dataIn3[4]~input_o\ : std_logic;
SIGNAL \dataIn2[4]~input_o\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \s_result~4_combout\ : std_logic;
SIGNAL \s_result~5_combout\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add3~12\ : std_logic;
SIGNAL \Add3~15_combout\ : std_logic;
SIGNAL \Add3~17_combout\ : std_logic;
SIGNAL \dataIn1[5]~input_o\ : std_logic;
SIGNAL \dataIn0[5]~input_o\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \dataIn3[5]~input_o\ : std_logic;
SIGNAL \dataIn2[5]~input_o\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~15_combout\ : std_logic;
SIGNAL \Add2~17_combout\ : std_logic;
SIGNAL \s_result~6_combout\ : std_logic;
SIGNAL \s_result~7_combout\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~16\ : std_logic;
SIGNAL \Add3~19_combout\ : std_logic;
SIGNAL \Add3~21_combout\ : std_logic;
SIGNAL \dataIn1[6]~input_o\ : std_logic;
SIGNAL \dataIn0[6]~input_o\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \dataIn3[6]~input_o\ : std_logic;
SIGNAL \dataIn2[6]~input_o\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add2~16\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \s_result~8_combout\ : std_logic;
SIGNAL \s_result~9_combout\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~20\ : std_logic;
SIGNAL \Add3~23_combout\ : std_logic;
SIGNAL \Add3~25_combout\ : std_logic;
SIGNAL \dataIn1[7]~input_o\ : std_logic;
SIGNAL \dataIn0[7]~input_o\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \dataIn3[7]~input_o\ : std_logic;
SIGNAL \dataIn2[7]~input_o\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~21_combout\ : std_logic;
SIGNAL \Add2~23_combout\ : std_logic;
SIGNAL \s_result~10_combout\ : std_logic;
SIGNAL \s_result~11_combout\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add3~24\ : std_logic;
SIGNAL \Add3~27_combout\ : std_logic;
SIGNAL \Add3~29_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \s_result~12_combout\ : std_logic;
SIGNAL \s_result~13_combout\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add3~28\ : std_logic;
SIGNAL \Add3~31_combout\ : std_logic;
SIGNAL \Add3~33_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~27_combout\ : std_logic;
SIGNAL \Add2~29_combout\ : std_logic;
SIGNAL \s_result~14_combout\ : std_logic;
SIGNAL \s_result~15_combout\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \Add3~32\ : std_logic;
SIGNAL \Add3~35_combout\ : std_logic;
SIGNAL \Add3~37_combout\ : std_logic;

BEGIN

ww_dataIn0 <= dataIn0;
ww_dataIn1 <= dataIn1;
ww_dataIn2 <= dataIn2;
ww_dataIn3 <= dataIn3;
ww_filterEnb <= filterEnb;
ww_byteSelect <= byteSelect;
ww_round <= round;
ww_zeroForce <= zeroForce;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~9_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~13_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~17_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~21_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

\result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~25_combout\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

\result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~29_combout\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

\result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~33_combout\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

\result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~37_combout\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

\dataIn1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn1(2),
	o => \dataIn1[2]~input_o\);

\dataIn0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn0(2),
	o => \dataIn0[2]~input_o\);

\dataIn1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn1(1),
	o => \dataIn1[1]~input_o\);

\dataIn0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn0(1),
	o => \dataIn0[1]~input_o\);

\dataIn1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn1(0),
	o => \dataIn1[0]~input_o\);

\dataIn0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn0(0),
	o => \dataIn0[0]~input_o\);

\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\dataIn1[0]~input_o\ & (\dataIn0[0]~input_o\ $ (VCC))) # (!\dataIn1[0]~input_o\ & (\dataIn0[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\dataIn1[0]~input_o\ & \dataIn0[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn1[0]~input_o\,
	datab => \dataIn0[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\dataIn1[1]~input_o\ & ((\dataIn0[1]~input_o\ & (\Add0~1\ & VCC)) # (!\dataIn0[1]~input_o\ & (!\Add0~1\)))) # (!\dataIn1[1]~input_o\ & ((\dataIn0[1]~input_o\ & (!\Add0~1\)) # (!\dataIn0[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\dataIn1[1]~input_o\ & (!\dataIn0[1]~input_o\ & !\Add0~1\)) # (!\dataIn1[1]~input_o\ & ((!\Add0~1\) # (!\dataIn0[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn1[1]~input_o\,
	datab => \dataIn0[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\dataIn1[2]~input_o\ $ (\dataIn0[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\dataIn1[2]~input_o\ & ((\dataIn0[2]~input_o\) # (!\Add0~3\))) # (!\dataIn1[2]~input_o\ & (\dataIn0[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn1[2]~input_o\,
	datab => \dataIn0[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

\dataIn3[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn3(2),
	o => \dataIn3[2]~input_o\);

\dataIn2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn2(2),
	o => \dataIn2[2]~input_o\);

\dataIn3[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn3(1),
	o => \dataIn3[1]~input_o\);

\dataIn2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn2(1),
	o => \dataIn2[1]~input_o\);

\dataIn3[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn3(0),
	o => \dataIn3[0]~input_o\);

\dataIn2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn2(0),
	o => \dataIn2[0]~input_o\);

\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\dataIn3[0]~input_o\ & (\dataIn2[0]~input_o\ $ (VCC))) # (!\dataIn3[0]~input_o\ & (\dataIn2[0]~input_o\ & VCC))
-- \Add1~1\ = CARRY((\dataIn3[0]~input_o\ & \dataIn2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn3[0]~input_o\,
	datab => \dataIn2[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\dataIn3[1]~input_o\ & ((\dataIn2[1]~input_o\ & (\Add1~1\ & VCC)) # (!\dataIn2[1]~input_o\ & (!\Add1~1\)))) # (!\dataIn3[1]~input_o\ & ((\dataIn2[1]~input_o\ & (!\Add1~1\)) # (!\dataIn2[1]~input_o\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\dataIn3[1]~input_o\ & (!\dataIn2[1]~input_o\ & !\Add1~1\)) # (!\dataIn3[1]~input_o\ & ((!\Add1~1\) # (!\dataIn2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn3[1]~input_o\,
	datab => \dataIn2[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\dataIn3[2]~input_o\ $ (\dataIn2[2]~input_o\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\dataIn3[2]~input_o\ & ((\dataIn2[2]~input_o\) # (!\Add1~3\))) # (!\dataIn3[2]~input_o\ & (\dataIn2[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn3[2]~input_o\,
	datab => \dataIn2[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\Add0~0_combout\ & (\Add1~0_combout\ $ (VCC))) # (!\Add0~0_combout\ & (\Add1~0_combout\ & VCC))
-- \Add2~1\ = CARRY((\Add0~0_combout\ & \Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add1~0_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Add0~2_combout\ & ((\Add1~2_combout\ & (\Add2~1\ & VCC)) # (!\Add1~2_combout\ & (!\Add2~1\)))) # (!\Add0~2_combout\ & ((\Add1~2_combout\ & (!\Add2~1\)) # (!\Add1~2_combout\ & ((\Add2~1\) # (GND)))))
-- \Add2~3\ = CARRY((\Add0~2_combout\ & (!\Add1~2_combout\ & !\Add2~1\)) # (!\Add0~2_combout\ & ((!\Add2~1\) # (!\Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add1~2_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\Add0~4_combout\ $ (\Add1~4_combout\ $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\Add0~4_combout\ & ((\Add1~4_combout\) # (!\Add2~3\))) # (!\Add0~4_combout\ & (\Add1~4_combout\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add1~4_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

\filterEnb~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_filterEnb,
	o => \filterEnb~input_o\);

\zeroForce~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_zeroForce,
	o => \zeroForce~input_o\);

\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Add2~4_combout\ & (\filterEnb~input_o\ & !\zeroForce~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \filterEnb~input_o\,
	datad => \zeroForce~input_o\,
	combout => \Add2~6_combout\);

\byteSelect[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_byteSelect(0),
	o => \byteSelect[0]~input_o\);

\byteSelect[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_byteSelect(1),
	o => \byteSelect[1]~input_o\);

\s_result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_result~0_combout\ = (\byteSelect[1]~input_o\ & ((\byteSelect[0]~input_o\) # ((\dataIn2[0]~input_o\)))) # (!\byteSelect[1]~input_o\ & (!\byteSelect[0]~input_o\ & (\dataIn0[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \byteSelect[1]~input_o\,
	datab => \byteSelect[0]~input_o\,
	datac => \dataIn0[0]~input_o\,
	datad => \dataIn2[0]~input_o\,
	combout => \s_result~0_combout\);

\s_result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_result~1_combout\ = (\byteSelect[0]~input_o\ & ((\s_result~0_combout\ & ((\dataIn3[0]~input_o\))) # (!\s_result~0_combout\ & (\dataIn1[0]~input_o\)))) # (!\byteSelect[0]~input_o\ & (((\s_result~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn1[0]~input_o\,
	datab => \dataIn3[0]~input_o\,
	datac => \byteSelect[0]~input_o\,
	datad => \s_result~0_combout\,
	combout => \s_result~1_combout\);

\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (!\filterEnb~input_o\ & !\zeroForce~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filterEnb~input_o\,
	datad => \zeroForce~input_o\,
	combout => \Add3~0_combout\);

\round[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_round(1),
	o => \round[1]~input_o\);

\Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = (\filterEnb~input_o\ & (!\zeroForce~input_o\ & !\round[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filterEnb~input_o\,
	datac => \zeroForce~input_o\,
	datad => \round[1]~input_o\,
	combout => \Add3~1_combout\);

\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\Add2~6_combout\ & ((\Add3~1_combout\) # ((\s_result~1_combout\ & \Add3~0_combout\)))) # (!\Add2~6_combout\ & (\s_result~1_combout\ & (\Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \s_result~1_combout\,
	datac => \Add3~0_combout\,
	datad => \Add3~1_combout\,
	combout => \Add3~2_combout\);

\s_sum[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sum[0]~0_combout\ = (\filterEnb~input_o\ & !\zeroForce~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filterEnb~input_o\,
	datad => \zeroForce~input_o\,
	combout => \s_sum[0]~0_combout\);

\Add2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~7_combout\ = (\Add2~2_combout\ & (\filterEnb~input_o\ & !\zeroForce~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \filterEnb~input_o\,
	datad => \zeroForce~input_o\,
	combout => \Add2~7_combout\);

\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\Add2~0_combout\ & (\filterEnb~input_o\ & !\zeroForce~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \filterEnb~input_o\,
	datad => \zeroForce~input_o\,
	combout => \Add2~8_combout\);

\round[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_round(0),
	o => \round[0]~input_o\);

\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_cout\ = CARRY((\Add2~8_combout\ & \round[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \round[0]~input_o\,
	datad => VCC,
	cout => \Add3~4_cout\);

\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_cout\ = CARRY((\Add2~7_combout\ & (!\round[1]~input_o\ & !\Add3~4_cout\)) # (!\Add2~7_combout\ & ((!\Add3~4_cout\) # (!\round[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~7_combout\,
	datab => \round[1]~input_o\,
	datad => VCC,
	cin => \Add3~4_cout\,
	cout => \Add3~6_cout\);

\Add3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~7_combout\ = (\Add2~6_combout\ & (\Add3~6_cout\ $ (GND))) # (!\Add2~6_combout\ & (!\Add3~6_cout\ & VCC))
-- \Add3~8\ = CARRY((\Add2~6_combout\ & !\Add3~6_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datad => VCC,
	cin => \Add3~6_cout\,
	combout => \Add3~7_combout\,
	cout => \Add3~8\);

\Add3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~9_combout\ = (\Add3~2_combout\) # ((\s_sum[0]~0_combout\ & (\round[1]~input_o\ & \Add3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \s_sum[0]~0_combout\,
	datac => \round[1]~input_o\,
	datad => \Add3~7_combout\,
	combout => \Add3~9_combout\);

\dataIn1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn1(3),
	o => \dataIn1[3]~input_o\);

\dataIn0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn0(3),
	o => \dataIn0[3]~input_o\);

\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\dataIn1[3]~input_o\ & ((\dataIn0[3]~input_o\ & (\Add0~5\ & VCC)) # (!\dataIn0[3]~input_o\ & (!\Add0~5\)))) # (!\dataIn1[3]~input_o\ & ((\dataIn0[3]~input_o\ & (!\Add0~5\)) # (!\dataIn0[3]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\dataIn1[3]~input_o\ & (!\dataIn0[3]~input_o\ & !\Add0~5\)) # (!\dataIn1[3]~input_o\ & ((!\Add0~5\) # (!\dataIn0[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn1[3]~input_o\,
	datab => \dataIn0[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

\dataIn3[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn3(3),
	o => \dataIn3[3]~input_o\);

\dataIn2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn2(3),
	o => \dataIn2[3]~input_o\);

\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\dataIn3[3]~input_o\ & ((\dataIn2[3]~input_o\ & (\Add1~5\ & VCC)) # (!\dataIn2[3]~input_o\ & (!\Add1~5\)))) # (!\dataIn3[3]~input_o\ & ((\dataIn2[3]~input_o\ & (!\Add1~5\)) # (!\dataIn2[3]~input_o\ & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\dataIn3[3]~input_o\ & (!\dataIn2[3]~input_o\ & !\Add1~5\)) # (!\dataIn3[3]~input_o\ & ((!\Add1~5\) # (!\dataIn2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn3[3]~input_o\,
	datab => \dataIn2[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

\Add2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~9_combout\ = (\Add0~6_combout\ & ((\Add1~6_combout\ & (\Add2~5\ & VCC)) # (!\Add1~6_combout\ & (!\Add2~5\)))) # (!\Add0~6_combout\ & ((\Add1~6_combout\ & (!\Add2~5\)) # (!\Add1~6_combout\ & ((\Add2~5\) # (GND)))))
-- \Add2~10\ = CARRY((\Add0~6_combout\ & (!\Add1~6_combout\ & !\Add2~5\)) # (!\Add0~6_combout\ & ((!\Add2~5\) # (!\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add1~6_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~9_combout\,
	cout => \Add2~10\);

\Add2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~11_combout\ = (\filterEnb~input_o\ & (\Add2~9_combout\ & !\zeroForce~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filterEnb~input_o\,
	datab => \Add2~9_combout\,
	datad => \zeroForce~input_o\,
	combout => \Add2~11_combout\);

\s_result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_result~2_combout\ = (\byteSelect[1]~input_o\ & ((\byteSelect[0]~input_o\) # ((\dataIn2[1]~input_o\)))) # (!\byteSelect[1]~input_o\ & (!\byteSelect[0]~input_o\ & (\dataIn0[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \byteSelect[1]~input_o\,
	datab => \byteSelect[0]~input_o\,
	datac => \dataIn0[1]~input_o\,
	datad => \dataIn2[1]~input_o\,
	combout => \s_result~2_combout\);

\s_result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_result~3_combout\ = (\byteSelect[0]~input_o\ & ((\s_result~2_combout\ & ((\dataIn3[1]~input_o\))) # (!\s_result~2_combout\ & (\dataIn1[1]~input_o\)))) # (!\byteSelect[0]~input_o\ & (((\s_result~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn1[1]~input_o\,
	datab => \dataIn3[1]~input_o\,
	datac => \byteSelect[0]~input_o\,
	datad => \s_result~2_combout\,
	combout => \s_result~3_combout\);

\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\Add3~0_combout\ & ((\s_result~3_combout\) # ((\Add3~1_combout\ & \Add2~11_combout\)))) # (!\Add3~0_combout\ & (\Add3~1_combout\ & (\Add2~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \Add3~1_combout\,
	datac => \Add2~11_combout\,
	datad => \s_result~3_combout\,
	combout => \Add3~10_combout\);

\Add3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~11_combout\ = (\Add2~11_combout\ & (!\Add3~8\)) # (!\Add2~11_combout\ & ((\Add3~8\) # (GND)))
-- \Add3~12\ = CARRY((!\Add3~8\) # (!\Add2~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~11_combout\,
	datad => VCC,
	cin => \Add3~8\,
	combout => \Add3~11_combout\,
	cout => \Add3~12\);

\Add3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~13_combout\ = (\Add3~10_combout\) # ((\s_sum[0]~0_combout\ & (\round[1]~input_o\ & \Add3~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \s_sum[0]~0_combout\,
	datac => \round[1]~input_o\,
	datad => \Add3~11_combout\,
	combout => \Add3~13_combout\);

\dataIn1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn1(4),
	o => \dataIn1[4]~input_o\);

\dataIn0[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn0(4),
	o => \dataIn0[4]~input_o\);

\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\dataIn1[4]~input_o\ $ (\dataIn0[4]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\dataIn1[4]~input_o\ & ((\dataIn0[4]~input_o\) # (!\Add0~7\))) # (!\dataIn1[4]~input_o\ & (\dataIn0[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn1[4]~input_o\,
	datab => \dataIn0[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

\dataIn3[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn3(4),
	o => \dataIn3[4]~input_o\);

\dataIn2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn2(4),
	o => \dataIn2[4]~input_o\);

\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\dataIn3[4]~input_o\ $ (\dataIn2[4]~input_o\ $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\dataIn3[4]~input_o\ & ((\dataIn2[4]~input_o\) # (!\Add1~7\))) # (!\dataIn3[4]~input_o\ & (\dataIn2[4]~input_o\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn3[4]~input_o\,
	datab => \dataIn2[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = ((\Add0~8_combout\ $ (\Add1~8_combout\ $ (!\Add2~10\)))) # (GND)
-- \Add2~13\ = CARRY((\Add0~8_combout\ & ((\Add1~8_combout\) # (!\Add2~10\))) # (!\Add0~8_combout\ & (\Add1~8_combout\ & !\Add2~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add1~8_combout\,
	datad => VCC,
	cin => \Add2~10\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\filterEnb~input_o\ & (\Add2~12_combout\ & !\zeroForce~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filterEnb~input_o\,
	datab => \Add2~12_combout\,
	datad => \zeroForce~input_o\,
	combout => \Add2~14_combout\);

\s_result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_result~4_combout\ = (\byteSelect[1]~input_o\ & ((\byteSelect[0]~input_o\) # ((\dataIn2[2]~input_o\)))) # (!\byteSelect[1]~input_o\ & (!\byteSelect[0]~input_o\ & (\dataIn0[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \byteSelect[1]~input_o\,
	datab => \byteSelect[0]~input_o\,
	datac => \dataIn0[2]~input_o\,
	datad => \dataIn2[2]~input_o\,
	combout => \s_result~4_combout\);

\s_result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_result~5_combout\ = (\byteSelect[0]~input_o\ & ((\s_result~4_combout\ & ((\dataIn3[2]~input_o\))) # (!\s_result~4_combout\ & (\dataIn1[2]~input_o\)))) # (!\byteSelect[0]~input_o\ & (((\s_result~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn1[2]~input_o\,
	datab => \dataIn3[2]~input_o\,
	datac => \byteSelect[0]~input_o\,
	datad => \s_result~4_combout\,
	combout => \s_result~5_combout\);

\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\Add3~0_combout\ & ((\s_result~5_combout\) # ((\Add3~1_combout\ & \Add2~14_combout\)))) # (!\Add3~0_combout\ & (\Add3~1_combout\ & (\Add2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \Add3~1_combout\,
	datac => \Add2~14_combout\,
	datad => \s_result~5_combout\,
	combout => \Add3~14_combout\);

\Add3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~15_combout\ = (\Add2~14_combout\ & (\Add3~12\ $ (GND))) # (!\Add2~14_combout\ & (!\Add3~12\ & VCC))
-- \Add3~16\ = CARRY((\Add2~14_combout\ & !\Add3~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datad => VCC,
	cin => \Add3~12\,
	combout => \Add3~15_combout\,
	cout => \Add3~16\);

\Add3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~17_combout\ = (\Add3~14_combout\) # ((\s_sum[0]~0_combout\ & (\round[1]~input_o\ & \Add3~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~14_combout\,
	datab => \s_sum[0]~0_combout\,
	datac => \round[1]~input_o\,
	datad => \Add3~15_combout\,
	combout => \Add3~17_combout\);

\dataIn1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn1(5),
	o => \dataIn1[5]~input_o\);

\dataIn0[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn0(5),
	o => \dataIn0[5]~input_o\);

\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\dataIn1[5]~input_o\ & ((\dataIn0[5]~input_o\ & (\Add0~9\ & VCC)) # (!\dataIn0[5]~input_o\ & (!\Add0~9\)))) # (!\dataIn1[5]~input_o\ & ((\dataIn0[5]~input_o\ & (!\Add0~9\)) # (!\dataIn0[5]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\dataIn1[5]~input_o\ & (!\dataIn0[5]~input_o\ & !\Add0~9\)) # (!\dataIn1[5]~input_o\ & ((!\Add0~9\) # (!\dataIn0[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn1[5]~input_o\,
	datab => \dataIn0[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

\dataIn3[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn3(5),
	o => \dataIn3[5]~input_o\);

\dataIn2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn2(5),
	o => \dataIn2[5]~input_o\);

\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\dataIn3[5]~input_o\ & ((\dataIn2[5]~input_o\ & (\Add1~9\ & VCC)) # (!\dataIn2[5]~input_o\ & (!\Add1~9\)))) # (!\dataIn3[5]~input_o\ & ((\dataIn2[5]~input_o\ & (!\Add1~9\)) # (!\dataIn2[5]~input_o\ & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\dataIn3[5]~input_o\ & (!\dataIn2[5]~input_o\ & !\Add1~9\)) # (!\dataIn3[5]~input_o\ & ((!\Add1~9\) # (!\dataIn2[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn3[5]~input_o\,
	datab => \dataIn2[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

\Add2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~15_combout\ = (\Add0~10_combout\ & ((\Add1~10_combout\ & (\Add2~13\ & VCC)) # (!\Add1~10_combout\ & (!\Add2~13\)))) # (!\Add0~10_combout\ & ((\Add1~10_combout\ & (!\Add2~13\)) # (!\Add1~10_combout\ & ((\Add2~13\) # (GND)))))
-- \Add2~16\ = CARRY((\Add0~10_combout\ & (!\Add1~10_combout\ & !\Add2~13\)) # (!\Add0~10_combout\ & ((!\Add2~13\) # (!\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add1~10_combout\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~15_combout\,
	cout => \Add2~16\);

\Add2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~17_combout\ = (\filterEnb~input_o\ & (\Add2~15_combout\ & !\zeroForce~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filterEnb~input_o\,
	datab => \Add2~15_combout\,
	datad => \zeroForce~input_o\,
	combout => \Add2~17_combout\);

\s_result~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_result~6_combout\ = (\byteSelect[1]~input_o\ & ((\byteSelect[0]~input_o\) # ((\dataIn2[3]~input_o\)))) # (!\byteSelect[1]~input_o\ & (!\byteSelect[0]~input_o\ & (\dataIn0[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \byteSelect[1]~input_o\,
	datab => \byteSelect[0]~input_o\,
	datac => \dataIn0[3]~input_o\,
	datad => \dataIn2[3]~input_o\,
	combout => \s_result~6_combout\);

\s_result~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_result~7_combout\ = (\byteSelect[0]~input_o\ & ((\s_result~6_combout\ & ((\dataIn3[3]~input_o\))) # (!\s_result~6_combout\ & (\dataIn1[3]~input_o\)))) # (!\byteSelect[0]~input_o\ & (((\s_result~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn1[3]~input_o\,
	datab => \dataIn3[3]~input_o\,
	datac => \byteSelect[0]~input_o\,
	datad => \s_result~6_combout\,
	combout => \s_result~7_combout\);

\Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (\Add3~0_combout\ & ((\s_result~7_combout\) # ((\Add3~1_combout\ & \Add2~17_combout\)))) # (!\Add3~0_combout\ & (\Add3~1_combout\ & (\Add2~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \Add3~1_combout\,
	datac => \Add2~17_combout\,
	datad => \s_result~7_combout\,
	combout => \Add3~18_combout\);

\Add3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~19_combout\ = (\Add2~17_combout\ & (!\Add3~16\)) # (!\Add2~17_combout\ & ((\Add3~16\) # (GND)))
-- \Add3~20\ = CARRY((!\Add3~16\) # (!\Add2~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~17_combout\,
	datad => VCC,
	cin => \Add3~16\,
	combout => \Add3~19_combout\,
	cout => \Add3~20\);

\Add3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~21_combout\ = (\Add3~18_combout\) # ((\s_sum[0]~0_combout\ & (\round[1]~input_o\ & \Add3~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~18_combout\,
	datab => \s_sum[0]~0_combout\,
	datac => \round[1]~input_o\,
	datad => \Add3~19_combout\,
	combout => \Add3~21_combout\);

\dataIn1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn1(6),
	o => \dataIn1[6]~input_o\);

\dataIn0[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn0(6),
	o => \dataIn0[6]~input_o\);

\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\dataIn1[6]~input_o\ $ (\dataIn0[6]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\dataIn1[6]~input_o\ & ((\dataIn0[6]~input_o\) # (!\Add0~11\))) # (!\dataIn1[6]~input_o\ & (\dataIn0[6]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn1[6]~input_o\,
	datab => \dataIn0[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

\dataIn3[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn3(6),
	o => \dataIn3[6]~input_o\);

\dataIn2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn2(6),
	o => \dataIn2[6]~input_o\);

\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\dataIn3[6]~input_o\ $ (\dataIn2[6]~input_o\ $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\dataIn3[6]~input_o\ & ((\dataIn2[6]~input_o\) # (!\Add1~11\))) # (!\dataIn3[6]~input_o\ & (\dataIn2[6]~input_o\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn3[6]~input_o\,
	datab => \dataIn2[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = ((\Add0~12_combout\ $ (\Add1~12_combout\ $ (!\Add2~16\)))) # (GND)
-- \Add2~19\ = CARRY((\Add0~12_combout\ & ((\Add1~12_combout\) # (!\Add2~16\))) # (!\Add0~12_combout\ & (\Add1~12_combout\ & !\Add2~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add1~12_combout\,
	datad => VCC,
	cin => \Add2~16\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (\filterEnb~input_o\ & (\Add2~18_combout\ & !\zeroForce~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filterEnb~input_o\,
	datab => \Add2~18_combout\,
	datad => \zeroForce~input_o\,
	combout => \Add2~20_combout\);

\s_result~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_result~8_combout\ = (\byteSelect[1]~input_o\ & ((\byteSelect[0]~input_o\) # ((\dataIn2[4]~input_o\)))) # (!\byteSelect[1]~input_o\ & (!\byteSelect[0]~input_o\ & (\dataIn0[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \byteSelect[1]~input_o\,
	datab => \byteSelect[0]~input_o\,
	datac => \dataIn0[4]~input_o\,
	datad => \dataIn2[4]~input_o\,
	combout => \s_result~8_combout\);

\s_result~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_result~9_combout\ = (\byteSelect[0]~input_o\ & ((\s_result~8_combout\ & ((\dataIn3[4]~input_o\))) # (!\s_result~8_combout\ & (\dataIn1[4]~input_o\)))) # (!\byteSelect[0]~input_o\ & (((\s_result~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn1[4]~input_o\,
	datab => \dataIn3[4]~input_o\,
	datac => \byteSelect[0]~input_o\,
	datad => \s_result~8_combout\,
	combout => \s_result~9_combout\);

\Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (\Add3~0_combout\ & ((\s_result~9_combout\) # ((\Add3~1_combout\ & \Add2~20_combout\)))) # (!\Add3~0_combout\ & (\Add3~1_combout\ & (\Add2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \Add3~1_combout\,
	datac => \Add2~20_combout\,
	datad => \s_result~9_combout\,
	combout => \Add3~22_combout\);

\Add3~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~23_combout\ = (\Add2~20_combout\ & (\Add3~20\ $ (GND))) # (!\Add2~20_combout\ & (!\Add3~20\ & VCC))
-- \Add3~24\ = CARRY((\Add2~20_combout\ & !\Add3~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~20_combout\,
	datad => VCC,
	cin => \Add3~20\,
	combout => \Add3~23_combout\,
	cout => \Add3~24\);

\Add3~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~25_combout\ = (\Add3~22_combout\) # ((\s_sum[0]~0_combout\ & (\round[1]~input_o\ & \Add3~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~22_combout\,
	datab => \s_sum[0]~0_combout\,
	datac => \round[1]~input_o\,
	datad => \Add3~23_combout\,
	combout => \Add3~25_combout\);

\dataIn1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn1(7),
	o => \dataIn1[7]~input_o\);

\dataIn0[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn0(7),
	o => \dataIn0[7]~input_o\);

\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\dataIn1[7]~input_o\ & ((\dataIn0[7]~input_o\ & (\Add0~13\ & VCC)) # (!\dataIn0[7]~input_o\ & (!\Add0~13\)))) # (!\dataIn1[7]~input_o\ & ((\dataIn0[7]~input_o\ & (!\Add0~13\)) # (!\dataIn0[7]~input_o\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\dataIn1[7]~input_o\ & (!\dataIn0[7]~input_o\ & !\Add0~13\)) # (!\dataIn1[7]~input_o\ & ((!\Add0~13\) # (!\dataIn0[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn1[7]~input_o\,
	datab => \dataIn0[7]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

\dataIn3[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn3(7),
	o => \dataIn3[7]~input_o\);

\dataIn2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn2(7),
	o => \dataIn2[7]~input_o\);

\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\dataIn3[7]~input_o\ & ((\dataIn2[7]~input_o\ & (\Add1~13\ & VCC)) # (!\dataIn2[7]~input_o\ & (!\Add1~13\)))) # (!\dataIn3[7]~input_o\ & ((\dataIn2[7]~input_o\ & (!\Add1~13\)) # (!\dataIn2[7]~input_o\ & ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((\dataIn3[7]~input_o\ & (!\dataIn2[7]~input_o\ & !\Add1~13\)) # (!\dataIn3[7]~input_o\ & ((!\Add1~13\) # (!\dataIn2[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn3[7]~input_o\,
	datab => \dataIn2[7]~input_o\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

\Add2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~21_combout\ = (\Add0~14_combout\ & ((\Add1~14_combout\ & (\Add2~19\ & VCC)) # (!\Add1~14_combout\ & (!\Add2~19\)))) # (!\Add0~14_combout\ & ((\Add1~14_combout\ & (!\Add2~19\)) # (!\Add1~14_combout\ & ((\Add2~19\) # (GND)))))
-- \Add2~22\ = CARRY((\Add0~14_combout\ & (!\Add1~14_combout\ & !\Add2~19\)) # (!\Add0~14_combout\ & ((!\Add2~19\) # (!\Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add1~14_combout\,
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~21_combout\,
	cout => \Add2~22\);

\Add2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~23_combout\ = (\filterEnb~input_o\ & (\Add2~21_combout\ & !\zeroForce~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filterEnb~input_o\,
	datab => \Add2~21_combout\,
	datad => \zeroForce~input_o\,
	combout => \Add2~23_combout\);

\s_result~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_result~10_combout\ = (\byteSelect[1]~input_o\ & ((\byteSelect[0]~input_o\) # ((\dataIn2[5]~input_o\)))) # (!\byteSelect[1]~input_o\ & (!\byteSelect[0]~input_o\ & (\dataIn0[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \byteSelect[1]~input_o\,
	datab => \byteSelect[0]~input_o\,
	datac => \dataIn0[5]~input_o\,
	datad => \dataIn2[5]~input_o\,
	combout => \s_result~10_combout\);

\s_result~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_result~11_combout\ = (\byteSelect[0]~input_o\ & ((\s_result~10_combout\ & ((\dataIn3[5]~input_o\))) # (!\s_result~10_combout\ & (\dataIn1[5]~input_o\)))) # (!\byteSelect[0]~input_o\ & (((\s_result~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn1[5]~input_o\,
	datab => \dataIn3[5]~input_o\,
	datac => \byteSelect[0]~input_o\,
	datad => \s_result~10_combout\,
	combout => \s_result~11_combout\);

\Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (\Add3~0_combout\ & ((\s_result~11_combout\) # ((\Add3~1_combout\ & \Add2~23_combout\)))) # (!\Add3~0_combout\ & (\Add3~1_combout\ & (\Add2~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \Add3~1_combout\,
	datac => \Add2~23_combout\,
	datad => \s_result~11_combout\,
	combout => \Add3~26_combout\);

\Add3~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~27_combout\ = (\Add2~23_combout\ & (!\Add3~24\)) # (!\Add2~23_combout\ & ((\Add3~24\) # (GND)))
-- \Add3~28\ = CARRY((!\Add3~24\) # (!\Add2~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~23_combout\,
	datad => VCC,
	cin => \Add3~24\,
	combout => \Add3~27_combout\,
	cout => \Add3~28\);

\Add3~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~29_combout\ = (\Add3~26_combout\) # ((\s_sum[0]~0_combout\ & (\round[1]~input_o\ & \Add3~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~26_combout\,
	datab => \s_sum[0]~0_combout\,
	datac => \round[1]~input_o\,
	datad => \Add3~27_combout\,
	combout => \Add3~29_combout\);

\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\dataIn1[7]~input_o\ $ (\dataIn0[7]~input_o\ $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\dataIn1[7]~input_o\ & ((\dataIn0[7]~input_o\) # (!\Add0~15\))) # (!\dataIn1[7]~input_o\ & (\dataIn0[7]~input_o\ & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn1[7]~input_o\,
	datab => \dataIn0[7]~input_o\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = \dataIn3[7]~input_o\ $ (\dataIn2[7]~input_o\ $ (!\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn3[7]~input_o\,
	datab => \dataIn2[7]~input_o\,
	cin => \Add1~15\,
	combout => \Add1~16_combout\);

\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = ((\Add0~16_combout\ $ (\Add1~16_combout\ $ (!\Add2~22\)))) # (GND)
-- \Add2~25\ = CARRY((\Add0~16_combout\ & ((\Add1~16_combout\) # (!\Add2~22\))) # (!\Add0~16_combout\ & (\Add1~16_combout\ & !\Add2~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add1~16_combout\,
	datad => VCC,
	cin => \Add2~22\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\filterEnb~input_o\ & (\Add2~24_combout\ & !\zeroForce~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filterEnb~input_o\,
	datab => \Add2~24_combout\,
	datad => \zeroForce~input_o\,
	combout => \Add2~26_combout\);

\s_result~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_result~12_combout\ = (\byteSelect[1]~input_o\ & ((\byteSelect[0]~input_o\) # ((\dataIn2[6]~input_o\)))) # (!\byteSelect[1]~input_o\ & (!\byteSelect[0]~input_o\ & (\dataIn0[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \byteSelect[1]~input_o\,
	datab => \byteSelect[0]~input_o\,
	datac => \dataIn0[6]~input_o\,
	datad => \dataIn2[6]~input_o\,
	combout => \s_result~12_combout\);

\s_result~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_result~13_combout\ = (\byteSelect[0]~input_o\ & ((\s_result~12_combout\ & ((\dataIn3[6]~input_o\))) # (!\s_result~12_combout\ & (\dataIn1[6]~input_o\)))) # (!\byteSelect[0]~input_o\ & (((\s_result~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn1[6]~input_o\,
	datab => \dataIn3[6]~input_o\,
	datac => \byteSelect[0]~input_o\,
	datad => \s_result~12_combout\,
	combout => \s_result~13_combout\);

\Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (\Add3~0_combout\ & ((\s_result~13_combout\) # ((\Add3~1_combout\ & \Add2~26_combout\)))) # (!\Add3~0_combout\ & (\Add3~1_combout\ & (\Add2~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \Add3~1_combout\,
	datac => \Add2~26_combout\,
	datad => \s_result~13_combout\,
	combout => \Add3~30_combout\);

\Add3~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~31_combout\ = (\Add2~26_combout\ & (\Add3~28\ $ (GND))) # (!\Add2~26_combout\ & (!\Add3~28\ & VCC))
-- \Add3~32\ = CARRY((\Add2~26_combout\ & !\Add3~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~26_combout\,
	datad => VCC,
	cin => \Add3~28\,
	combout => \Add3~31_combout\,
	cout => \Add3~32\);

\Add3~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~33_combout\ = (\Add3~30_combout\) # ((\s_sum[0]~0_combout\ & (\round[1]~input_o\ & \Add3~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~30_combout\,
	datab => \s_sum[0]~0_combout\,
	datac => \round[1]~input_o\,
	datad => \Add3~31_combout\,
	combout => \Add3~33_combout\);

\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \dataIn1[7]~input_o\ $ (\dataIn0[7]~input_o\ $ (\Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn1[7]~input_o\,
	datab => \dataIn0[7]~input_o\,
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

\Add2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~27_combout\ = \Add0~18_combout\ $ (\Add1~16_combout\ $ (\Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Add1~16_combout\,
	cin => \Add2~25\,
	combout => \Add2~27_combout\);

\Add2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~29_combout\ = (\filterEnb~input_o\ & (\Add2~27_combout\ & !\zeroForce~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filterEnb~input_o\,
	datab => \Add2~27_combout\,
	datad => \zeroForce~input_o\,
	combout => \Add2~29_combout\);

\s_result~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_result~14_combout\ = (\byteSelect[1]~input_o\ & ((\byteSelect[0]~input_o\) # ((\dataIn2[7]~input_o\)))) # (!\byteSelect[1]~input_o\ & (!\byteSelect[0]~input_o\ & (\dataIn0[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \byteSelect[1]~input_o\,
	datab => \byteSelect[0]~input_o\,
	datac => \dataIn0[7]~input_o\,
	datad => \dataIn2[7]~input_o\,
	combout => \s_result~14_combout\);

\s_result~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_result~15_combout\ = (\byteSelect[0]~input_o\ & ((\s_result~14_combout\ & ((\dataIn3[7]~input_o\))) # (!\s_result~14_combout\ & (\dataIn1[7]~input_o\)))) # (!\byteSelect[0]~input_o\ & (((\s_result~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn1[7]~input_o\,
	datab => \dataIn3[7]~input_o\,
	datac => \byteSelect[0]~input_o\,
	datad => \s_result~14_combout\,
	combout => \s_result~15_combout\);

\Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (\Add3~0_combout\ & ((\s_result~15_combout\) # ((\Add3~1_combout\ & \Add2~29_combout\)))) # (!\Add3~0_combout\ & (\Add3~1_combout\ & (\Add2~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \Add3~1_combout\,
	datac => \Add2~29_combout\,
	datad => \s_result~15_combout\,
	combout => \Add3~34_combout\);

\Add3~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~35_combout\ = \Add2~29_combout\ $ (\Add3~32\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~29_combout\,
	cin => \Add3~32\,
	combout => \Add3~35_combout\);

\Add3~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~37_combout\ = (\Add3~34_combout\) # ((\s_sum[0]~0_combout\ & (\round[1]~input_o\ & \Add3~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~34_combout\,
	datab => \s_sum[0]~0_combout\,
	datac => \round[1]~input_o\,
	datad => \Add3~35_combout\,
	combout => \Add3~37_combout\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;
END structure;


