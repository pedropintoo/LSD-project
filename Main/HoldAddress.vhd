library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity HoldAddress is
   port(clk			 : in std_logic;
		  enable		 : in std_logic;
		  inAddress  : in  std_logic_vector(7 downto 0);
		  outAdrress : out std_logic_vector(7 downto 0));
end HoldAddress;  

architecture Behavioral of HoldAddress is
	signal s_outAddress : std_logic_vector(7 downto 0);
begin

	process(clk)
	begin
		if (rising_edge(clk)) then
			if (enable = '1') then
				s_outAddress <= inAddress;
			end if;
		end if;
	end process;
	
	outAdrress <= s_outAddress;
	
end Behavioral;
