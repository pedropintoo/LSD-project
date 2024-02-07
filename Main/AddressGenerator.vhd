library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity AddressGenerator is
	port(	  reset	 	 : in  std_logic;
			  clk		 	 : in  std_logic;
		     enable1 	 : in  std_logic;
		     enable2 	 : in  std_logic;
			  maxSpeed 	 : in  std_logic;
		     addressOut : out std_logic_vector(7 downto 0));
end AddressGenerator;

architecture Behavioral of AddressGenerator is

	signal s_value : unsigned(7 downto 0) := "00000000";

begin
	
	process(clk)
	begin	
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_value <= (others => '0'); -- Reset
			elsif (((enable1 = '1') and (enable2 = '1')) or maxSpeed = '1') then 
			
				s_value <= s_value + 1;
				
			end if;
		end if;

	end process;
	
	addressOut <= std_logic_vector(s_value);
	
end Behavioral;

