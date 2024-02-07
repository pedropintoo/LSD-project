library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity HoldData is
   port(clk			 : in std_logic;
		  enable1		 : in std_logic;
		  enable2		 : in std_logic;
		  inData  : in  std_logic_vector(7 downto 0);
		  outData : out std_logic_vector(7 downto 0));
end HoldData;  

architecture Behavioral of HoldData is
	signal s_outData : std_logic_vector(7 downto 0);
begin

	process(clk)
	begin
		if (rising_edge(clk)) then
			if (enable1 = '1' and enable2 = '1') then
				s_outData <= inData;
			end if;
		end if;
	end process;
	
	outData <= s_outData;
	
end Behavioral;
