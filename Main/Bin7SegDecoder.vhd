library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Bin7SegDecoder is
	port( enable   : in std_logic;
			binInput : in std_logic_vector(3 downto 0);
			decOut_n : out std_logic_vector(6 downto 0)
			);
end entity Bin7SegDecoder;

architecture Behavioral of Bin7SegDecoder is
begin


				decOut_n <=  "1111111" when (enable = '0') ELSE --Disable 
								 "1111001" when (binInput = "0001") ELSE --1
								 "0100100" when (binInput = "0010") ELSE --2
								 "0110000" when (binInput = "0011") ELSE --3
								 "0011001" when (binInput = "0100") ELSE --4
								 "0010010" when (binInput = "0101") ELSE --5
								 "0000010" when (binInput = "0110") ELSE --6
								 "1111000" when (binInput = "0111") ELSE --7
								 "0000000" when (binInput = "1000") ELSE --8
								 "0010000" when (binInput = "1001") ELSE --9
								 "0001000" when (binInput = "1010") ELSE --A
								 "0000011" when (binInput = "1011") ELSE --b
								 "1000110" when (binInput = "1100") ELSE --C
								 "0100001" when (binInput = "1101") ELSE --D
								 "0000110" when (binInput = "1110") ELSE --E
								 "0001110" when (binInput = "1111") ELSE --F
								 "1000000"; --0

end architecture Behavioral;    