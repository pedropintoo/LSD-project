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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/15/2023 16:26:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          AddressGenerator
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY AddressGenerator_vhd_vec_tst IS
END AddressGenerator_vhd_vec_tst;
ARCHITECTURE AddressGenerator_arch OF AddressGenerator_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addressOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL enable1 : STD_LOGIC;
SIGNAL enable2 : STD_LOGIC;
SIGNAL maxSpeed : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT AddressGenerator
	PORT (
	addressOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	enable1 : IN STD_LOGIC;
	enable2 : IN STD_LOGIC;
	maxSpeed : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : AddressGenerator
	PORT MAP (
-- list connections between master ports and signals
	addressOut => addressOut,
	clk => clk,
	enable1 => enable1,
	enable2 => enable2,
	maxSpeed => maxSpeed,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- enable1
t_prcs_enable1: PROCESS
BEGIN
LOOP
	enable1 <= '0';
	WAIT FOR 30000 ps;
	enable1 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_enable1;

-- enable2
t_prcs_enable2: PROCESS
BEGIN
	enable2 <= '1';
WAIT;
END PROCESS t_prcs_enable2;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 230000 ps;
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- maxSpeed
t_prcs_maxSpeed: PROCESS
BEGIN
	maxSpeed <= '0';
	WAIT FOR 500000 ps;
	maxSpeed <= '1';
	WAIT FOR 240000 ps;
	maxSpeed <= '0';
WAIT;
END PROCESS t_prcs_maxSpeed;
END AddressGenerator_arch;
