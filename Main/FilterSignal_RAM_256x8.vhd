library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FilterSignal_RAM_256x8 is
   port(clk			    : in  std_logic;
		  writeEnable1  : in  std_logic;
		  writeEnable2  : in  std_logic;
		  writeMaxSpeed : in  std_logic; -- enable force
		  address     	 : in  std_logic_vector(7 downto 0);
		  dataIn  	    : in  std_logic_vector(7 downto 0);
        dataOut 	    : out std_logic_vector(7 downto 0));
end FilterSignal_RAM_256x8;

architecture Behavioral of FilterSignal_RAM_256x8 is
   
	subtype TDataWord is std_logic_vector(7 downto 0);
   type TRAM is array (0 to 255) of TDataWord;
	-- Input/Output Signal RAM
   signal s_memory: TRAM;
	
begin
	writeRam :  process(clk)
					begin
						if (rising_edge(clk)) then
							if ((writeEnable1 = '1' and writeEnable2 = '1') or writeMaxSpeed = '1') then
								s_memory(to_integer(unsigned(address))) <= dataIn;
							end if;
						end if;
					end process;

   dataOut <= s_memory(to_integer(unsigned(address)));
end Behavioral;
