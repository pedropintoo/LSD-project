library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity SignMagnitudeBCDDisplay is
	port	(	inPort   : in std_logic_vector(7 downto 0);
				enable	: in std_logic;
				Display0 : out std_logic_vector(6 downto 0); -- Unid
				Display1 : out std_logic_vector(6 downto 0); -- Decimal
				Display2 : out std_logic_vector(6 downto 0); -- Cent
				Display3 : out std_logic_vector(6 downto 0)  -- Sign
			);
end SignMagnitudeBCDDisplay;

architecture Behavioral of SignMagnitudeBCDDisplay is

signal s_Sign, s_Unid, s_Dezen, s_Cent : std_logic_vector(3 downto 0) := x"0";
signal s_alertNeg_L : std_logic;

begin

	Bin2BCD : entity work.Bin2BCDSigned_8bits(Behavioral)
				port map( inPort 		=> inPort,
							 Unid	  		=> s_Unid,
							 Dezen  		=> s_Dezen,
							 Cent   		=> s_Cent,
							 alertNeg_L => s_alertNeg_L);
	
	Unid7Seg : entity work.Bin7SegDecoder(Behavioral)
				port map( enable 		=> enable,
							 binInput	=> s_Unid,
							 decOut_n	=> Display0 ); -- Unit 
							 
	Dezen7Seg : entity work.Bin7SegDecoder(Behavioral)
					port map( enable 		=> enable,
								 binInput	=> s_Dezen,
								 decOut_n	=> Display1 ); -- Dezen
								 
	Cent7Seg : entity work.Bin7SegDecoder(Behavioral)
					port map( enable 		=> enable,
								 binInput	=> s_Cent,
								 decOut_n	=> Display2 ); -- Cent
			
	Display3 <= s_alertNeg_L & "111111" when (enable = '1') else "1111111"; -- Sign
							
							 
	
end Behavioral; 