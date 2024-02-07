library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity AddressSub is
	port(	  reset	 	 : in  std_logic;
			  clk		 	 : in  std_logic;
		     enable1 	 : in  std_logic;
			  enable2 	 : in  std_logic;
			  addressIn  : in  std_logic_vector(7 downto 0);
		     addressOut : out std_logic_vector(7 downto 0));
end AddressSub;

architecture Behavioral of AddressSub is

	signal s_value : unsigned(7 downto 0) := "11111111";

begin
	
	process(clk)
	begin	
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_value <= "11111111"; -- Reset
			elsif (enable1 = '1' and enable2 = '1') then
				s_value <= unsigned(addressIn) - 1;
			end if;
		end if;

	end process;
	
	addressOut <= std_logic_vector(s_value);
	
end Behavioral;

