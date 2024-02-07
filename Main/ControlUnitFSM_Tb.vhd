library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ControlUnitFSM_Tb is
end ControlUnitFSM_Tb;

architecture Stimulus of ControlUnitFSM_Tb is

	signal s_clk 				: std_logic;

	-- Sinal para ligar à entrada de Controlo
	signal s_startStop 		: std_logic;
	signal s_reset 	 		: std_logic;
	signal s_filter 	 		: std_logic;
	signal s_resetRAM 		: std_logic;
	signal s_showData    	: std_logic;
	signal s_addressROM  	: std_logic_vector(7 downto 0);

	-- Sinal para ligar à saida
	signal s_start_on 		: std_logic;
	signal s_filter_on 		: std_logic;
	signal s_reset_on 		: std_logic;
	signal s_resetRAM_on 	: std_logic;
	signal s_stop_on			: std_logic;
	signal s_displayOutput_on : std_logic;
	signal s_addressGen_on	: std_logic;

begin
	
	-- Instanciação da Unit Under Test (UUT)
	uut: entity work.ControlUnitFSM(Behavioral)
				port map(clk				=> s_clk,
							startStop		=> s_startStop,
							reset				=> s_reset,
							filter      	=> s_filter,
							resetRAM			=> s_resetRAM,
							showData			=> s_showData,
							addressROM		=> s_addressROM,
							start_on	   	=> s_start_on,
							reset_on	   	=> s_reset_on,
							filter_on		=> s_filter_on,
							resetRAM_on 	=> s_resetRAM_on,
							stop_on	   	=> s_stop_on,	
							displayOutput_on => s_displayOutput_on,
							addressGen_on   => s_addressGen_on);
							

	-- Process clock
	clock_proc : process
					 begin
						s_clk <= '0';
						wait for 50 ns;
						s_clk <= '1';
						wait for 50 ns;
					 end process;
	
	--Process stim
	stim_proc : process
					begin

						s_startStop		<= '0';
						s_reset 	 		<= '0';
						s_filter 		<= '1';
						s_resetRAM 		<= '0';
						s_showData 		<= '0';
						s_addressROM 	<= "00000000";
						
						-- RESETING
						s_reset <= '1';
						wait for 200 ns;
						
						s_reset <= '0';
						wait for 300 ns;
						
						s_addressROM <= "00000001";
						wait for 100 ns;
						
						s_addressROM <= "00000010";
						wait for 100 ns;
						
						s_addressROM <= "00000011";
						wait for 100 ns;
						
						s_addressROM <= "00000100";
						wait for 100 ns;
						
						s_addressROM <= "00000101";
						wait for 100 ns;
						
						s_addressROM <= "11111111";
						wait for 100 ns;
						
						s_addressROM <= "00000000";
						wait for 100 ns;
						
						-- RESETING_RAM
						
						s_resetRAM <= '1';
						wait for 200 ns;
						
						s_resetRAM <= '0';
						wait for 300 ns;
						
						s_addressROM <= "00000001";
						wait for 100 ns;
						
						s_addressROM <= "00000010";
						wait for 100 ns;
						
						s_addressROM <= "00000011";
						wait for 100 ns;
						
						s_addressROM <= "00000100";
						wait for 100 ns;
						
						s_addressROM <= "00000101";
						wait for 100 ns;
						
						s_addressROM <= "11111111";
						wait for 100 ns;
						
						s_addressROM <= "00000000";
						wait for 100 ns;
						
						-- Start
						s_startStop <= '1';
						wait for 100 ns;
						
						s_startStop <= '0';
						s_addressROM <= "00000001";
						wait for 100 ns;
						
						s_addressROM <= "00000010";
						wait for 100 ns;
						
						s_addressROM <= "00000011";
						wait for 100 ns;
						
						s_addressROM <= "00000100";
						s_filter 		<= '0';
						wait for 100 ns;
						
						s_addressROM <= "00000101";
						wait for 100 ns;
						
						s_addressROM <= "11111111";
						wait for 100 ns;
						
						s_addressROM <= "00000000";
						wait for 100 ns;
						
						s_addressROM <= "00000001";
						wait for 100 ns;
						
						s_addressROM <= "00000010";
						wait for 100 ns;
						
						s_addressROM <= "00000011";
						wait for 100 ns;
						
						s_addressROM <= "00000100";
						wait for 100 ns;
						
						-- Stop
						s_showData <= '1';
						wait for 100 ns;
						
						s_showData <= '0';
						
						s_addressROM <= "00000001";
						wait for 100 ns;
						
						s_addressROM <= "00000010";
						wait for 100 ns;
						
						s_addressROM <= "00000011";
						wait for 100 ns;
						
						s_addressROM <= "00000100";
						wait for 100 ns;
						
						s_addressROM <= "00000101";
						wait for 100 ns;
						
						s_addressROM <= "11111111";
						wait for 100 ns;
						
						s_addressROM <= "00000000";
						wait for 1000 ns;
						
						
						-- (...)
						
					end process;
							


end Stimulus;
