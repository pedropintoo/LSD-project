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
-- Generated on "06/05/2023 11:34:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DelayLineRegister
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DelayLineRegister_vhd_vec_tst IS
END DelayLineRegister_vhd_vec_tst;
ARCHITECTURE DelayLineRegister_arch OF DelayLineRegister_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dataIn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataOut0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataOut1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataOut2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataOut3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL writeEnable1 : STD_LOGIC;
SIGNAL writeEnable2 : STD_LOGIC;
COMPONENT DelayLineRegister
	PORT (
	clk : IN STD_LOGIC;
	dataIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataOut0 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataOut1 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataOut2 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataOut3 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC;
	writeEnable1 : IN STD_LOGIC;
	writeEnable2 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DelayLineRegister
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dataIn => dataIn,
	dataOut0 => dataOut0,
	dataOut1 => dataOut1,
	dataOut2 => dataOut2,
	dataOut3 => dataOut3,
	reset => reset,
	writeEnable1 => writeEnable1,
	writeEnable2 => writeEnable2
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
-- dataIn[7]
t_prcs_dataIn_7: PROCESS
BEGIN
	dataIn(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn(7) <= '1';
	WAIT FOR 80000 ps;
	dataIn(7) <= '0';
	WAIT FOR 80000 ps;
	dataIn(7) <= '1';
	WAIT FOR 120000 ps;
	dataIn(7) <= '0';
	WAIT FOR 240000 ps;
	dataIn(7) <= '1';
WAIT;
END PROCESS t_prcs_dataIn_7;
-- dataIn[6]
t_prcs_dataIn_6: PROCESS
BEGIN
	dataIn(6) <= '0';
	WAIT FOR 120000 ps;
	dataIn(6) <= '1';
	WAIT FOR 80000 ps;
	dataIn(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn(6) <= '1';
	WAIT FOR 80000 ps;
	dataIn(6) <= '0';
	WAIT FOR 120000 ps;
	dataIn(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn(6) <= '1';
	WAIT FOR 80000 ps;
	dataIn(6) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_6;
-- dataIn[5]
t_prcs_dataIn_5: PROCESS
BEGIN
	dataIn(5) <= '1';
	WAIT FOR 240000 ps;
	dataIn(5) <= '0';
	WAIT FOR 80000 ps;
	dataIn(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn(5) <= '0';
	WAIT FOR 80000 ps;
	dataIn(5) <= '1';
	WAIT FOR 160000 ps;
	dataIn(5) <= '0';
	WAIT FOR 280000 ps;
	dataIn(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn(5) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_5;
-- dataIn[4]
t_prcs_dataIn_4: PROCESS
BEGIN
	dataIn(4) <= '0';
	WAIT FOR 80000 ps;
	dataIn(4) <= '1';
	WAIT FOR 160000 ps;
	dataIn(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn(4) <= '0';
	WAIT FOR 80000 ps;
	dataIn(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn(4) <= '0';
	WAIT FOR 160000 ps;
	dataIn(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn(4) <= '1';
	WAIT FOR 120000 ps;
	dataIn(4) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_4;
-- dataIn[3]
t_prcs_dataIn_3: PROCESS
BEGIN
	dataIn(3) <= '0';
	WAIT FOR 120000 ps;
	dataIn(3) <= '1';
	WAIT FOR 80000 ps;
	dataIn(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn(3) <= '0';
	WAIT FOR 80000 ps;
	dataIn(3) <= '1';
	WAIT FOR 80000 ps;
	dataIn(3) <= '0';
	WAIT FOR 240000 ps;
	dataIn(3) <= '1';
	WAIT FOR 80000 ps;
	dataIn(3) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_3;
-- dataIn[2]
t_prcs_dataIn_2: PROCESS
BEGIN
	dataIn(2) <= '0';
	WAIT FOR 120000 ps;
	dataIn(2) <= '1';
	WAIT FOR 240000 ps;
	dataIn(2) <= '0';
	WAIT FOR 80000 ps;
	dataIn(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn(2) <= '0';
	WAIT FOR 240000 ps;
	dataIn(2) <= '1';
	WAIT FOR 120000 ps;
	dataIn(2) <= '0';
	WAIT FOR 80000 ps;
	dataIn(2) <= '1';
WAIT;
END PROCESS t_prcs_dataIn_2;
-- dataIn[1]
t_prcs_dataIn_1: PROCESS
BEGIN
	dataIn(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn(1) <= '1';
	WAIT FOR 80000 ps;
	dataIn(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn(1) <= '1';
	WAIT FOR 80000 ps;
	dataIn(1) <= '0';
	WAIT FOR 200000 ps;
	dataIn(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn(1) <= '1';
	WAIT FOR 80000 ps;
	dataIn(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn(1) <= '1';
	WAIT FOR 80000 ps;
	dataIn(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn(1) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_1;
-- dataIn[0]
t_prcs_dataIn_0: PROCESS
BEGIN
	dataIn(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn(0) <= '1';
	WAIT FOR 120000 ps;
	dataIn(0) <= '0';
	WAIT FOR 200000 ps;
	dataIn(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn(0) <= '0';
	WAIT FOR 80000 ps;
	dataIn(0) <= '1';
	WAIT FOR 120000 ps;
	dataIn(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn(0) <= '0';
	WAIT FOR 120000 ps;
	dataIn(0) <= '1';
	WAIT FOR 80000 ps;
	dataIn(0) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_0;

-- writeEnable1
t_prcs_writeEnable1: PROCESS
BEGIN
	writeEnable1 <= '1';
WAIT;
END PROCESS t_prcs_writeEnable1;

-- writeEnable2
t_prcs_writeEnable2: PROCESS
BEGIN
	writeEnable2 <= '1';
WAIT;
END PROCESS t_prcs_writeEnable2;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 400000 ps;
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
	WAIT FOR 30000 ps;
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
	WAIT FOR 30000 ps;
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
	WAIT FOR 30000 ps;
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
	WAIT FOR 30000 ps;
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
	WAIT FOR 30000 ps;
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END DelayLineRegister_arch;
