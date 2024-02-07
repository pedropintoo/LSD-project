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
-- Generated on "05/09/2023 18:25:47"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Bin2BCDSigned_8bits
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Bin2BCDSigned_8bits_vhd_vec_tst IS
END Bin2BCDSigned_8bits_vhd_vec_tst;
ARCHITECTURE Bin2BCDSigned_8bits_arch OF Bin2BCDSigned_8bits_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alertNeg_L : STD_LOGIC;
SIGNAL Cent : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Dezen : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL inPort : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Unid : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Bin2BCDSigned_8bits
	PORT (
	alertNeg_L : OUT STD_LOGIC;
	Cent : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Dezen : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	inPort : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Unid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Bin2BCDSigned_8bits
	PORT MAP (
-- list connections between master ports and signals
	alertNeg_L => alertNeg_L,
	Cent => Cent,
	Dezen => Dezen,
	inPort => inPort,
	Unid => Unid
	);
-- inPort[7]
t_prcs_inPort_7: PROCESS
BEGIN
	inPort(7) <= '1';
	WAIT FOR 480000 ps;
	inPort(7) <= '0';
WAIT;
END PROCESS t_prcs_inPort_7;
-- inPort[6]
t_prcs_inPort_6: PROCESS
BEGIN
	inPort(6) <= '0';
WAIT;
END PROCESS t_prcs_inPort_6;
-- inPort[5]
t_prcs_inPort_5: PROCESS
BEGIN
	inPort(5) <= '1';
WAIT;
END PROCESS t_prcs_inPort_5;
-- inPort[4]
t_prcs_inPort_4: PROCESS
BEGIN
	inPort(4) <= '0';
WAIT;
END PROCESS t_prcs_inPort_4;
-- inPort[3]
t_prcs_inPort_3: PROCESS
BEGIN
	inPort(3) <= '0';
WAIT;
END PROCESS t_prcs_inPort_3;
-- inPort[2]
t_prcs_inPort_2: PROCESS
BEGIN
	inPort(2) <= '1';
WAIT;
END PROCESS t_prcs_inPort_2;
-- inPort[1]
t_prcs_inPort_1: PROCESS
BEGIN
	inPort(1) <= '0';
WAIT;
END PROCESS t_prcs_inPort_1;
-- inPort[0]
t_prcs_inPort_0: PROCESS
BEGIN
	inPort(0) <= '0';
WAIT;
END PROCESS t_prcs_inPort_0;
END Bin2BCDSigned_8bits_arch;
