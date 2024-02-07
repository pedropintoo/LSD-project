library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ControlUnitFSM is
	port(clk			   	: in  std_logic;
		  startStop    	: in  std_logic;
		  reset		   	: in  std_logic;
		  filter		   	: in  std_logic;
		  resetRAM	   	: in  std_logic;
		  showData 	   	: in  std_logic;
		  addressROM   	: in  std_logic_vector(7 downto 0); 
		  start_on	   	: out std_logic;
		  reset_on     	: out std_logic;
		  filter_on    	: out std_logic;
		  resetRAM_on  	: out std_logic;
		  stop_on	   	: out std_logic;	
		  displayOutput_on : out std_logic;
		  addressGen_on   : out std_logic);
end ControlUnitFSM;

architecture Behavioral of ControlUnitFSM is

	type TState is (RESET_GLOBAL, RESET_RAM, READY, RESET_SHOW, SHOW_DATA, STOP_SHOW, EXECUTE_COPY, EXECUTE_FILTER, STOP_COPY, STOP_FILTER);

	signal s_currentState, s_nextState : TState;
	
begin

	sync_proc : process(clk)
					begin
						if (rising_edge(clk)) then
							if (reset = '1') then
								s_currentState <= RESET_GLOBAL;
							elsif (showData = '1') then
								s_currentState <= RESET_SHOW;
							else
								s_currentState <= s_nextState;
							end if;
						end if;
					end process;

	comb_proc : process(s_currentState, startStop, filter, addressROM, resetRAM, showData)
					begin
						start_on 		  <= '0';
						reset_on 		  <= '0';
						resetRAM_on 	  <= '0';
						stop_on			  <= '0';
						filter_on	     <= '0';
						displayOutput_on <= '0';
						addressGen_on	  <= '0';
						
						s_nextState <= s_currentState;
						
						case (s_currentState) is

							when RESET_GLOBAL =>
								reset_on 		<= '1';
								s_nextState <= RESET_RAM;
								
							when RESET_RAM =>
								resetRAM_on 	<= '1';
								if (unsigned(addressROM) = 255) then -- Terá o efeito em addressROM = 0, pois o reset é feito a 50MHz
									s_nextState <= READY;
								end if;
								
							when READY =>
								if (resetRAM = '1') then
									s_nextState <= RESET_RAM;
								elsif (startStop = '1') then
									s_nextState <= EXECUTE_COPY;
								end if;
							
							when RESET_SHOW =>
								reset_on			<= '1';
								s_nextState 	<= SHOW_DATA;
							
							when SHOW_DATA =>
								displayOutput_on <= '1';
								addressGen_on    <= '1';
								if (startStop = '1') then
									s_nextState <= STOP_SHOW;
								end if;
								
							when STOP_SHOW =>
								stop_on	   	  <= '1';
								displayOutput_on <= '1';
								if (startStop = '1') then
									s_nextState <= SHOW_DATA;
								end if;

								
							when EXECUTE_COPY =>
								start_on 	     <= '1';
								displayOutput_on <= '1';
								addressGen_on	  <= '1';
								if (startStop = '1') then
									s_nextState <= STOP_COPY;
								elsif (unsigned(addressROM) >= 3 and filter = '1') then
									s_nextState <= EXECUTE_FILTER;
								end if;
								
							when EXECUTE_FILTER =>
								start_on 	<= '1';
								filter_on 	<= '1';
								displayOutput_on <= '1';
								addressGen_on <= '1';
								if (startStop = '1') then
									s_nextState <= STOP_FILTER;
								elsif (unsigned(addressROM) <= 2 or filter = '0') then
									s_nextState <= EXECUTE_COPY;
								end if;
								
							when STOP_COPY =>
								stop_on 		<= '1';
								displayOutput_on <= '1';
								if (startStop = '1') then
									s_nextState <= EXECUTE_COPY;
								end if;
								
							when STOP_FILTER =>
								filter_on 	<= '1';
								stop_on 		<= '1';
								displayOutput_on <= '1';
								if (startStop = '1') then
									s_nextState <= EXECUTE_FILTER;
								end if;
								
							when others => 
								s_nextState <= RESET_GLOBAL;
								report "Reach undefined state";
								
						end case;
					end process;



end Behavioral;
