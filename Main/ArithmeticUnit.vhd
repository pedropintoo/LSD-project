library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ArithmeticUnit is
   port(dataIn0 	  : in  std_logic_vector(7 downto 0);
		  dataIn1 	  : in  std_logic_vector(7 downto 0);
		  dataIn2 	  : in  std_logic_vector(7 downto 0);
		  dataIn3 	  : in  std_logic_vector(7 downto 0);
		  filterEnb   : in  std_logic;
		  byteSelect  : in  std_logic_vector(1 downto 0) := "01";
		  round		  : in  std_logic_vector(1 downto 0);
		  zeroForce	  : in  std_logic;
		  result  	  : out std_logic_vector(7 downto 0));
end ArithmeticUnit;  

architecture Behavioral of ArithmeticUnit is
	signal s_sum : signed(10 downto 0); -- +3 bits - Full precision
	signal s_result : signed(10 downto 0);
	
	signal s_count : unsigned(7 downto 0) := (others => '0');
begin

	
	process(s_sum, dataIn0, dataIn1, dataIn2, dataIn3, filterEnb, byteSelect, zeroForce, round)
	begin 
		s_sum <= (others => '0');
		
		if (zeroForce = '1') then
			s_result <= (others => '0');
			
		elsif (filterEnb = '1') then
			-- Sum
			s_sum 	<= resize(signed(dataIn0), 11) + 
							resize(signed(dataIn1), 11) +
							resize(signed(dataIn2), 11) +
							resize(signed(dataIn3), 11);

			-- Division
			if (round(1) = '0') then
				-- arredondado para baixo - Floor (round = 0x)
				s_result <= shift_right(s_sum, 2); 					
			else
				-- arredondado para cima - Ceil (round = 11)
				-- arredondamento aritmético - valor mais próximo (round = 10)
				s_result <= shift_right(s_sum + signed('0' & round),2); 
			end if;
				
		elsif (byteSelect = "00") then
			s_result <= resize(signed(dataIn0), 11);
			
		elsif (byteSelect = "01") then
			s_result <= resize(signed(dataIn1), 11);
			
		elsif (byteSelect = "10") then
			s_result <= resize(signed(dataIn2), 11);
			
		elsif (byteSelect = "11") then
			s_result <= resize(signed(dataIn3), 11);
			
		else
			s_result <= (others => '0');
		end if;
		
	end process;
	
	
		
	result 	<= std_logic_vector(s_result(7 downto 0));
			
	
	
end Behavioral;
