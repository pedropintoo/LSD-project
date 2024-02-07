library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity DelayLineRegister is
   port(clk			  : in  std_logic;
		  reset 		  : in  std_logic;
		  writeEnable1 : in  std_logic;
		  writeEnable2 : in  std_logic;
		  dataIn  	  : in  std_logic_vector(7 downto 0);
        dataOut0 	  : out std_logic_vector(7 downto 0);
		  dataOut1 	  : out std_logic_vector(7 downto 0);
		  dataOut2 	  : out std_logic_vector(7 downto 0);
		  dataOut3 	  : out std_logic_vector(7 downto 0));
end DelayLineRegister;

architecture Behavioral of DelayLineRegister is
 
	signal s_reg : std_logic_vector(31 downto 0); -- Total de bits: 8*4 = 32
	
	
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if (reset = '1') then
				s_reg <= (others => '0');
				
			elsif (writeEnable1 = '1' and writeEnable2 = '1') then
				s_reg <= dataIn & s_reg(31 downto 8); -- 0+8 = 8

			end if;
		end if;
	end process;
	dataOut0 <= s_reg(31 downto 24); -- 24+8 = 32
	dataOut1 <= s_reg(23 downto 16); -- 16+8 = 24
	dataOut2 <= s_reg(15 downto 8);  --  8+8 = 16
	dataOut3 <= s_reg(7 downto 0);   --  0+8 = 8
	
end Behavioral;
