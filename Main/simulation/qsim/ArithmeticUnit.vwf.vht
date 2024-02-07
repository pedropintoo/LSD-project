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
-- Generated on "06/05/2023 11:37:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ArithmeticUnit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ArithmeticUnit_vhd_vec_tst IS
END ArithmeticUnit_vhd_vec_tst;
ARCHITECTURE ArithmeticUnit_arch OF ArithmeticUnit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL byteSelect : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL dataIn0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataIn1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataIn2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataIn3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL filterEnb : STD_LOGIC;
SIGNAL result : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL round : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL zeroForce : STD_LOGIC;
COMPONENT ArithmeticUnit
	PORT (
	byteSelect : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	dataIn0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataIn1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataIn2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataIn3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	filterEnb : IN STD_LOGIC;
	result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	round : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	zeroForce : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ArithmeticUnit
	PORT MAP (
-- list connections between master ports and signals
	byteSelect => byteSelect,
	dataIn0 => dataIn0,
	dataIn1 => dataIn1,
	dataIn2 => dataIn2,
	dataIn3 => dataIn3,
	filterEnb => filterEnb,
	result => result,
	round => round,
	zeroForce => zeroForce
	);
-- dataIn0[7]
t_prcs_dataIn0_7: PROCESS
BEGIN
	dataIn0(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(7) <= '1';
	WAIT FOR 80000 ps;
	dataIn0(7) <= '0';
	WAIT FOR 160000 ps;
	dataIn0(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(7) <= '0';
	WAIT FOR 120000 ps;
	dataIn0(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(7) <= '0';
	WAIT FOR 120000 ps;
	dataIn0(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(7) <= '1';
WAIT;
END PROCESS t_prcs_dataIn0_7;
-- dataIn0[6]
t_prcs_dataIn0_6: PROCESS
BEGIN
	dataIn0(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(6) <= '1';
	WAIT FOR 360000 ps;
	dataIn0(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(6) <= '0';
	WAIT FOR 160000 ps;
	dataIn0(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(6) <= '0';
WAIT;
END PROCESS t_prcs_dataIn0_6;
-- dataIn0[5]
t_prcs_dataIn0_5: PROCESS
BEGIN
	dataIn0(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(5) <= '1';
	WAIT FOR 160000 ps;
	dataIn0(5) <= '0';
	WAIT FOR 200000 ps;
	dataIn0(5) <= '1';
	WAIT FOR 120000 ps;
	dataIn0(5) <= '0';
	WAIT FOR 280000 ps;
	dataIn0(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(5) <= '0';
WAIT;
END PROCESS t_prcs_dataIn0_5;
-- dataIn0[4]
t_prcs_dataIn0_4: PROCESS
BEGIN
	dataIn0(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(4) <= '0';
	WAIT FOR 80000 ps;
	dataIn0(4) <= '1';
	WAIT FOR 200000 ps;
	dataIn0(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(4) <= '1';
WAIT;
END PROCESS t_prcs_dataIn0_4;
-- dataIn0[3]
t_prcs_dataIn0_3: PROCESS
BEGIN
	dataIn0(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(3) <= '1';
	WAIT FOR 80000 ps;
	dataIn0(3) <= '0';
	WAIT FOR 80000 ps;
	dataIn0(3) <= '1';
	WAIT FOR 240000 ps;
	dataIn0(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(3) <= '0';
	WAIT FOR 80000 ps;
	dataIn0(3) <= '1';
	WAIT FOR 120000 ps;
	dataIn0(3) <= '0';
	WAIT FOR 80000 ps;
	dataIn0(3) <= '1';
WAIT;
END PROCESS t_prcs_dataIn0_3;
-- dataIn0[2]
t_prcs_dataIn0_2: PROCESS
BEGIN
	dataIn0(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(2) <= '0';
	WAIT FOR 160000 ps;
	dataIn0(2) <= '1';
	WAIT FOR 120000 ps;
	dataIn0(2) <= '0';
	WAIT FOR 120000 ps;
	dataIn0(2) <= '1';
	WAIT FOR 80000 ps;
	dataIn0(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(2) <= '1';
	WAIT FOR 120000 ps;
	dataIn0(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(2) <= '0';
	WAIT FOR 160000 ps;
	dataIn0(2) <= '1';
WAIT;
END PROCESS t_prcs_dataIn0_2;
-- dataIn0[1]
t_prcs_dataIn0_1: PROCESS
BEGIN
	dataIn0(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(1) <= '0';
	WAIT FOR 240000 ps;
	dataIn0(1) <= '1';
	WAIT FOR 120000 ps;
	dataIn0(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(1) <= '1';
	WAIT FOR 160000 ps;
	dataIn0(1) <= '0';
	WAIT FOR 80000 ps;
	dataIn0(1) <= '1';
	WAIT FOR 80000 ps;
	dataIn0(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(1) <= '1';
	WAIT FOR 80000 ps;
	dataIn0(1) <= '0';
WAIT;
END PROCESS t_prcs_dataIn0_1;
-- dataIn0[0]
t_prcs_dataIn0_0: PROCESS
BEGIN
	dataIn0(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(0) <= '0';
	WAIT FOR 120000 ps;
	dataIn0(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(0) <= '0';
	WAIT FOR 160000 ps;
	dataIn0(0) <= '1';
	WAIT FOR 80000 ps;
	dataIn0(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(0) <= '1';
	WAIT FOR 80000 ps;
	dataIn0(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(0) <= '1';
	WAIT FOR 160000 ps;
	dataIn0(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(0) <= '1';
	WAIT FOR 120000 ps;
	dataIn0(0) <= '0';
WAIT;
END PROCESS t_prcs_dataIn0_0;
-- dataIn1[7]
t_prcs_dataIn1_7: PROCESS
BEGIN
	dataIn1(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(7) <= '1';
	WAIT FOR 80000 ps;
	dataIn1(7) <= '0';
	WAIT FOR 120000 ps;
	dataIn1(7) <= '1';
	WAIT FOR 160000 ps;
	dataIn1(7) <= '0';
	WAIT FOR 120000 ps;
	dataIn1(7) <= '1';
	WAIT FOR 160000 ps;
	dataIn1(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(7) <= '0';
	WAIT FOR 80000 ps;
	dataIn1(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(7) <= '0';
WAIT;
END PROCESS t_prcs_dataIn1_7;
-- dataIn1[6]
t_prcs_dataIn1_6: PROCESS
BEGIN
	dataIn1(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(6) <= '0';
	WAIT FOR 120000 ps;
	dataIn1(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(6) <= '0';
	WAIT FOR 80000 ps;
	dataIn1(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(6) <= '0';
	WAIT FOR 120000 ps;
	dataIn1(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(6) <= '0';
	WAIT FOR 80000 ps;
	dataIn1(6) <= '1';
	WAIT FOR 80000 ps;
	dataIn1(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(6) <= '1';
WAIT;
END PROCESS t_prcs_dataIn1_6;
-- dataIn1[5]
t_prcs_dataIn1_5: PROCESS
BEGIN
	dataIn1(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(5) <= '0';
	WAIT FOR 200000 ps;
	dataIn1(5) <= '1';
	WAIT FOR 80000 ps;
	dataIn1(5) <= '0';
	WAIT FOR 80000 ps;
	dataIn1(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(5) <= '0';
	WAIT FOR 80000 ps;
	dataIn1(5) <= '1';
	WAIT FOR 120000 ps;
	dataIn1(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(5) <= '0';
WAIT;
END PROCESS t_prcs_dataIn1_5;
-- dataIn1[4]
t_prcs_dataIn1_4: PROCESS
BEGIN
	dataIn1(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(4) <= '1';
	WAIT FOR 80000 ps;
	dataIn1(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(4) <= '1';
	WAIT FOR 80000 ps;
	dataIn1(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(4) <= '0';
	WAIT FOR 120000 ps;
	dataIn1(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(4) <= '0';
	WAIT FOR 80000 ps;
	dataIn1(4) <= '1';
	WAIT FOR 80000 ps;
	dataIn1(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(4) <= '1';
	WAIT FOR 80000 ps;
	dataIn1(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(4) <= '0';
	WAIT FOR 80000 ps;
	dataIn1(4) <= '1';
WAIT;
END PROCESS t_prcs_dataIn1_4;
-- dataIn1[3]
t_prcs_dataIn1_3: PROCESS
BEGIN
	dataIn1(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(3) <= '1';
	WAIT FOR 80000 ps;
	dataIn1(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(3) <= '1';
	WAIT FOR 160000 ps;
	dataIn1(3) <= '0';
	WAIT FOR 280000 ps;
	dataIn1(3) <= '1';
	WAIT FOR 80000 ps;
	dataIn1(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(3) <= '1';
WAIT;
END PROCESS t_prcs_dataIn1_3;
-- dataIn1[2]
t_prcs_dataIn1_2: PROCESS
BEGIN
	dataIn1(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(2) <= '1';
	WAIT FOR 240000 ps;
	dataIn1(2) <= '0';
	WAIT FOR 200000 ps;
	dataIn1(2) <= '1';
	WAIT FOR 120000 ps;
	dataIn1(2) <= '0';
	WAIT FOR 80000 ps;
	dataIn1(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(2) <= '1';
WAIT;
END PROCESS t_prcs_dataIn1_2;
-- dataIn1[1]
t_prcs_dataIn1_1: PROCESS
BEGIN
	dataIn1(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(1) <= '0';
	WAIT FOR 80000 ps;
	dataIn1(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(1) <= '0';
	WAIT FOR 80000 ps;
	dataIn1(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(1) <= '0';
	WAIT FOR 120000 ps;
	dataIn1(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(1) <= '0';
	WAIT FOR 80000 ps;
	dataIn1(1) <= '1';
	WAIT FOR 80000 ps;
	dataIn1(1) <= '0';
	WAIT FOR 160000 ps;
	dataIn1(1) <= '1';
	WAIT FOR 120000 ps;
	dataIn1(1) <= '0';
WAIT;
END PROCESS t_prcs_dataIn1_1;
-- dataIn1[0]
t_prcs_dataIn1_0: PROCESS
BEGIN
	dataIn1(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(0) <= '0';
	WAIT FOR 160000 ps;
	dataIn1(0) <= '1';
	WAIT FOR 200000 ps;
	dataIn1(0) <= '0';
	WAIT FOR 80000 ps;
	dataIn1(0) <= '1';
	WAIT FOR 120000 ps;
	dataIn1(0) <= '0';
	WAIT FOR 160000 ps;
	dataIn1(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(0) <= '0';
WAIT;
END PROCESS t_prcs_dataIn1_0;
-- dataIn2[7]
t_prcs_dataIn2_7: PROCESS
BEGIN
	dataIn2(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(7) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(7) <= '0';
	WAIT FOR 120000 ps;
	dataIn2(7) <= '1';
	WAIT FOR 160000 ps;
	dataIn2(7) <= '0';
	WAIT FOR 120000 ps;
	dataIn2(7) <= '1';
	WAIT FOR 160000 ps;
	dataIn2(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(7) <= '0';
	WAIT FOR 80000 ps;
	dataIn2(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(7) <= '0';
WAIT;
END PROCESS t_prcs_dataIn2_7;
-- dataIn2[6]
t_prcs_dataIn2_6: PROCESS
BEGIN
	dataIn2(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(6) <= '0';
	WAIT FOR 120000 ps;
	dataIn2(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(6) <= '0';
	WAIT FOR 80000 ps;
	dataIn2(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(6) <= '0';
	WAIT FOR 120000 ps;
	dataIn2(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(6) <= '0';
	WAIT FOR 80000 ps;
	dataIn2(6) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(6) <= '1';
WAIT;
END PROCESS t_prcs_dataIn2_6;
-- dataIn2[5]
t_prcs_dataIn2_5: PROCESS
BEGIN
	dataIn2(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(5) <= '0';
	WAIT FOR 200000 ps;
	dataIn2(5) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(5) <= '0';
	WAIT FOR 80000 ps;
	dataIn2(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(5) <= '0';
	WAIT FOR 80000 ps;
	dataIn2(5) <= '1';
	WAIT FOR 120000 ps;
	dataIn2(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(5) <= '0';
WAIT;
END PROCESS t_prcs_dataIn2_5;
-- dataIn2[4]
t_prcs_dataIn2_4: PROCESS
BEGIN
	dataIn2(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(4) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(4) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(4) <= '0';
	WAIT FOR 120000 ps;
	dataIn2(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(4) <= '0';
	WAIT FOR 80000 ps;
	dataIn2(4) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(4) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(4) <= '0';
	WAIT FOR 80000 ps;
	dataIn2(4) <= '1';
WAIT;
END PROCESS t_prcs_dataIn2_4;
-- dataIn2[3]
t_prcs_dataIn2_3: PROCESS
BEGIN
	dataIn2(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(3) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(3) <= '1';
	WAIT FOR 160000 ps;
	dataIn2(3) <= '0';
	WAIT FOR 280000 ps;
	dataIn2(3) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(3) <= '1';
WAIT;
END PROCESS t_prcs_dataIn2_3;
-- dataIn2[2]
t_prcs_dataIn2_2: PROCESS
BEGIN
	dataIn2(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(2) <= '1';
	WAIT FOR 240000 ps;
	dataIn2(2) <= '0';
	WAIT FOR 200000 ps;
	dataIn2(2) <= '1';
	WAIT FOR 120000 ps;
	dataIn2(2) <= '0';
	WAIT FOR 80000 ps;
	dataIn2(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(2) <= '1';
WAIT;
END PROCESS t_prcs_dataIn2_2;
-- dataIn2[1]
t_prcs_dataIn2_1: PROCESS
BEGIN
	dataIn2(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(1) <= '0';
	WAIT FOR 80000 ps;
	dataIn2(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(1) <= '0';
	WAIT FOR 80000 ps;
	dataIn2(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(1) <= '0';
	WAIT FOR 120000 ps;
	dataIn2(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(1) <= '0';
	WAIT FOR 80000 ps;
	dataIn2(1) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(1) <= '0';
	WAIT FOR 160000 ps;
	dataIn2(1) <= '1';
	WAIT FOR 120000 ps;
	dataIn2(1) <= '0';
WAIT;
END PROCESS t_prcs_dataIn2_1;
-- dataIn2[0]
t_prcs_dataIn2_0: PROCESS
BEGIN
	dataIn2(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(0) <= '0';
	WAIT FOR 160000 ps;
	dataIn2(0) <= '1';
	WAIT FOR 200000 ps;
	dataIn2(0) <= '0';
	WAIT FOR 80000 ps;
	dataIn2(0) <= '1';
	WAIT FOR 120000 ps;
	dataIn2(0) <= '0';
	WAIT FOR 160000 ps;
	dataIn2(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(0) <= '0';
WAIT;
END PROCESS t_prcs_dataIn2_0;
-- dataIn3[7]
t_prcs_dataIn3_7: PROCESS
BEGIN
	dataIn3(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(7) <= '1';
	WAIT FOR 80000 ps;
	dataIn3(7) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(7) <= '1';
	WAIT FOR 320000 ps;
	dataIn3(7) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(7) <= '1';
	WAIT FOR 80000 ps;
	dataIn3(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(7) <= '1';
	WAIT FOR 80000 ps;
	dataIn3(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(7) <= '1';
	WAIT FOR 80000 ps;
	dataIn3(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(7) <= '1';
WAIT;
END PROCESS t_prcs_dataIn3_7;
-- dataIn3[6]
t_prcs_dataIn3_6: PROCESS
BEGIN
	dataIn3(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(6) <= '0';
	WAIT FOR 160000 ps;
	dataIn3(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(6) <= '0';
	WAIT FOR 120000 ps;
	dataIn3(6) <= '1';
	WAIT FOR 120000 ps;
	dataIn3(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(6) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(6) <= '1';
	WAIT FOR 80000 ps;
	dataIn3(6) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(6) <= '1';
	WAIT FOR 80000 ps;
	dataIn3(6) <= '0';
WAIT;
END PROCESS t_prcs_dataIn3_6;
-- dataIn3[5]
t_prcs_dataIn3_5: PROCESS
BEGIN
	dataIn3(5) <= '0';
	WAIT FOR 120000 ps;
	dataIn3(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(5) <= '1';
	WAIT FOR 200000 ps;
	dataIn3(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(5) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(5) <= '0';
	WAIT FOR 160000 ps;
	dataIn3(5) <= '1';
	WAIT FOR 120000 ps;
	dataIn3(5) <= '0';
WAIT;
END PROCESS t_prcs_dataIn3_5;
-- dataIn3[4]
t_prcs_dataIn3_4: PROCESS
BEGIN
	dataIn3(4) <= '0';
	WAIT FOR 120000 ps;
	dataIn3(4) <= '1';
	WAIT FOR 160000 ps;
	dataIn3(4) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(4) <= '0';
	WAIT FOR 120000 ps;
	dataIn3(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(4) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(4) <= '1';
	WAIT FOR 120000 ps;
	dataIn3(4) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(4) <= '1';
	WAIT FOR 120000 ps;
	dataIn3(4) <= '0';
WAIT;
END PROCESS t_prcs_dataIn3_4;
-- dataIn3[3]
t_prcs_dataIn3_3: PROCESS
BEGIN
	dataIn3(3) <= '0';
	WAIT FOR 120000 ps;
	dataIn3(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(3) <= '0';
	WAIT FOR 160000 ps;
	dataIn3(3) <= '1';
	WAIT FOR 80000 ps;
	dataIn3(3) <= '0';
	WAIT FOR 200000 ps;
	dataIn3(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(3) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(3) <= '1';
	WAIT FOR 80000 ps;
	dataIn3(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(3) <= '0';
WAIT;
END PROCESS t_prcs_dataIn3_3;
-- dataIn3[2]
t_prcs_dataIn3_2: PROCESS
BEGIN
	dataIn3(2) <= '0';
	WAIT FOR 160000 ps;
	dataIn3(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(2) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(2) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(2) <= '0';
	WAIT FOR 120000 ps;
	dataIn3(2) <= '1';
	WAIT FOR 120000 ps;
	dataIn3(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(2) <= '1';
	WAIT FOR 120000 ps;
	dataIn3(2) <= '0';
WAIT;
END PROCESS t_prcs_dataIn3_2;
-- dataIn3[1]
t_prcs_dataIn3_1: PROCESS
BEGIN
	dataIn3(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(1) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(1) <= '1';
	WAIT FOR 120000 ps;
	dataIn3(1) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(1) <= '1';
	WAIT FOR 160000 ps;
	dataIn3(1) <= '0';
	WAIT FOR 120000 ps;
	dataIn3(1) <= '1';
	WAIT FOR 80000 ps;
	dataIn3(1) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(1) <= '0';
WAIT;
END PROCESS t_prcs_dataIn3_1;
-- dataIn3[0]
t_prcs_dataIn3_0: PROCESS
BEGIN
	dataIn3(0) <= '0';
	WAIT FOR 120000 ps;
	dataIn3(0) <= '1';
	WAIT FOR 160000 ps;
	dataIn3(0) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(0) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(0) <= '1';
	WAIT FOR 120000 ps;
	dataIn3(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(0) <= '1';
	WAIT FOR 80000 ps;
	dataIn3(0) <= '0';
	WAIT FOR 120000 ps;
	dataIn3(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(0) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(0) <= '1';
WAIT;
END PROCESS t_prcs_dataIn3_0;

-- zeroForce
t_prcs_zeroForce: PROCESS
BEGIN
	zeroForce <= '0';
	WAIT FOR 520000 ps;
	zeroForce <= '1';
	WAIT FOR 40000 ps;
	zeroForce <= '0';
WAIT;
END PROCESS t_prcs_zeroForce;
-- round[1]
t_prcs_round_1: PROCESS
BEGIN
	round(1) <= '0';
WAIT;
END PROCESS t_prcs_round_1;
-- round[0]
t_prcs_round_0: PROCESS
BEGIN
	round(0) <= '0';
WAIT;
END PROCESS t_prcs_round_0;
-- byteSelect[1]
t_prcs_byteSelect_1: PROCESS
BEGIN
	byteSelect(1) <= '0';
WAIT;
END PROCESS t_prcs_byteSelect_1;
-- byteSelect[0]
t_prcs_byteSelect_0: PROCESS
BEGIN
	byteSelect(0) <= '1';
WAIT;
END PROCESS t_prcs_byteSelect_0;

-- filterEnb
t_prcs_filterEnb: PROCESS
BEGIN
	filterEnb <= '0';
	WAIT FOR 100000 ps;
	filterEnb <= '1';
	WAIT FOR 320000 ps;
	filterEnb <= '0';
	WAIT FOR 120000 ps;
	filterEnb <= '1';
	WAIT FOR 380000 ps;
	filterEnb <= '0';
WAIT;
END PROCESS t_prcs_filterEnb;
END ArithmeticUnit_arch;
