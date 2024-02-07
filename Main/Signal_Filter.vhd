library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Signal_Filter is
	port(CLOCK_50 : in  std_logic;
		  KEY		  : in  std_logic_vector(3 downto 0);
		  SW		  : in  std_logic_vector(5 downto 0);
		  HEX7	  : out std_logic_vector(6 downto 0);
		  HEX6	  : out std_logic_vector(6 downto 0);
		  HEX5	  : out std_logic_vector(6 downto 0);
		  HEX4	  : out std_logic_vector(6 downto 0);
		  HEX3	  : out std_logic_vector(6 downto 0);
		  HEX2	  : out std_logic_vector(6 downto 0);
		  HEX1	  : out std_logic_vector(6 downto 0);
		  HEX0	  : out std_logic_vector(6 downto 0);
		  -- VGA --
		  vga_clk     : out   std_logic;
		  vga_hs      : out   std_logic;
		  vga_vs      : out   std_logic;
		  vga_sync_n  : out   std_logic;
        vga_blank_n : out   std_logic;
		  vga_r       : out   std_logic_vector(7 downto 0);
		  vga_g       : out   std_logic_vector(7 downto 0);
		  vga_b       : out   std_logic_vector(7 downto 0)
		  ); 
end Signal_Filter;

architecture Shell of Signal_Filter is

	-- Sinais de controlo
	signal s_startStop 			: std_logic;
	signal s_resetRAM  			: std_logic;
	signal s_reset 	 			: std_logic;
	signal s_filter				: std_logic;
	signal s_showData 	 		: std_logic;

	signal s_start_on 			: std_logic;
	signal s_filter_on 			: std_logic; 
	signal s_resetRAM_on 		: std_logic; 
	signal s_reset_on 			: std_logic;	
	signal s_stop_on  			: std_logic;
	signal s_displayOutput_on  : std_logic;
	signal s_addressGen_on		: std_logic;

	-- Pulsos sem/com atrasos
	signal s_speed					: std_logic;
	
	signal s_pulse		 			: std_logic;
	signal s_pulseSpeed 			: std_logic;
	signal s_pulse2Hz 			: std_logic;
	signal s_pulseDelayP2 	: std_logic; -- atraso = 1 ciclo de clock
	signal s_pulseDelayP3 	: std_logic; -- atraso = 2 ciclo de clock

	-- Endereços de memória
	signal s_addressROM 			: std_logic_vector(7 downto 0); 
	signal s_addressRAM 			: std_logic_vector(7 downto 0); -- s_addressRAM = s_addressROM - 1
	
	-- Informação lida das memórias
	signal s_dataROMOut 			: std_logic_vector(7 downto 0);
	signal s_dataROMOutHolded	: std_logic_vector(7 downto 0);
	signal s_dataRAMOut 			: std_logic_vector(7 downto 0);
	
	-- Sinais da Unidade Aritmética
	signal s_operand0 			: std_logic_vector(7 downto 0);
	signal s_operand1 			: std_logic_vector(7 downto 0);
	signal s_operand2 			: std_logic_vector(7 downto 0);
	signal s_operand3 			: std_logic_vector(7 downto 0);
	
	signal s_round					: std_logic_vector(1 downto 0);

	signal s_result 				: std_logic_vector(7 downto 0);
	
	-- Sinais para VGA
	signal s_RAMEnableDisplay		: std_logic;
	signal s_ROMEnableDisplay		: std_logic;
	

begin

------------------------------------------------------------------
--########################### Testes ###########################--
------------------------------------------------------------------

--LEDG(7) <= s_round(0);
--LEDG(8) <= s_round(1);
--LEDR(17 downto 10) <= s_addressRAM; 
--LEDR(7 downto 0)  <= s_addressROM;


------------------------------------------------------------------
--############## Sinais de entrada sincronizados ###############--
------------------------------------------------------------------

process(CLOCK_50)
begin
	if (rising_edge(CLOCK_50)) then
		s_filter <= SW(0);
		s_round  <= SW(2) & SW(1);
		s_speed	<= SW(3);
		s_RAMEnableDisplay <= SW(4);
		s_ROMEnableDisplay <= SW(5);
	end if;
end process;


------------------------------------------------------------------
--########################### Pulsos ###########################--
------------------------------------------------------------------


pulse2HzGen : entity work.PulseGeneratorN(Behavioral)
					generic map(numberSteps	=> 25_000_000,
									out0CompVal	=> 25_000_000,
									out1CompVal =>  2_500_000)
					port map(	clkIn			=> CLOCK_50,
									pulseOut0	=> s_pulse2Hz,
									pulseOut1 	=> s_pulseSpeed);	
								
s_pulse <= s_pulse2Hz when (s_speed = '0') else s_pulseSpeed;	

pulse2Delay : entity work.TimerN(Behavioral)
					generic map(N				=> 2)
					port map(	clk 			=> CLOCK_50,
									start 		=> s_pulse,
									timerOut 	=> s_pulseDelayP2);
									
pulse3Delay : entity work.TimerN(Behavioral)
					generic map(N				=> 3)
					port map(	clk 			=> CLOCK_50,
									start 		=> s_pulse,
									timerOut 	=> s_pulseDelayP3);
				 
									
------------------------------------------------------------------
--######################### Debouncers #########################--
------------------------------------------------------------------

startStopDebounce : entity work.DebounceUnit(Behavioral)
				generic map(kHzClkFreq  	=> 50_000,
								mSecMinInWidth => 100,
								inPolarity  	=> '0',
								outPolarity		=> '1')
				port map(   refClk      	=> CLOCK_50,
								dirtyIn     	=> KEY(0),
								pulsedOut   	=> s_startStop);
										
resetRAMDebounce : entity work.DebounceUnit(Behavioral)
				generic map(kHzClkFreq  	=> 50_000,
								mSecMinInWidth => 100,
								inPolarity  	=> '0',
								outPolarity		=> '1')
				port map(   refClk      	=> CLOCK_50,
								dirtyIn     	=> KEY(1),
								pulsedOut   	=> s_resetRAM);										
										
resetDebounce : entity work.DebounceUnit(Behavioral)
				generic map(kHzClkFreq  	=> 50_000,
								mSecMinInWidth => 100,
								inPolarity  	=> '0',
								outPolarity		=> '1')
				port map(   refClk      	=> CLOCK_50,
								dirtyIn     	=> KEY(2),
								pulsedOut   	=> s_reset);		
								
showDataDebounce : entity work.DebounceUnit(Behavioral)
				generic map(kHzClkFreq  	=> 50_000,
								mSecMinInWidth => 100,
								inPolarity  	=> '0',
								outPolarity		=> '1')
				port map(   refClk      	=> CLOCK_50,
								dirtyIn     	=> KEY(3),
								pulsedOut   	=> s_showData);	
		
		
------------------------------------------------------------------
--########################## Controlo ##########################--
------------------------------------------------------------------	
		
controlUnit : entity work.ControlUnitFSM(Behavioral)
					port map(	clk      	=> CLOCK_50,
									startStop	=> s_startStop,
									reset   		=> s_reset,
									filter		=> s_filter,
									resetRAM		=> s_resetRAM,
									showData		=> s_showData,
									addressROM 	=> s_addressROM,
									start_on 	=> s_start_on,
									reset_on		=> s_reset_on,
									filter_on	=> s_filter_on,
									resetRAM_on => s_resetRAM_on,
									stop_on		=> s_stop_on,
									displayOutput_on => s_displayOutput_on,
									addressGen_on => s_addressGen_on);

									
------------------------------------------------------------------
--##################### Unidade Aritmética #####################--
------------------------------------------------------------------
	
arithmeticUnit : entity work.ArithmeticUnit(Behavioral)
					port map(	dataIn0 		=> s_operand0,
									dataIn1 		=> s_operand1,
									dataIn2 		=> s_operand2,
									dataIn3 		=> s_operand3,
									filterEnb	=> s_filter_on,
									zeroForce	=> s_resetRAM_on,
									byteSelect	=> "01",
									round			=> s_round,
									result  		=> s_result);
								
								
------------------------------------------------------------------
--######################### Endereços ##########################--
------------------------------------------------------------------
									
addressGen : entity work.AddressGenerator(Behavioral)
					port map(	reset 		=> s_reset_on,
									clk 			=> CLOCK_50,
									enable1 		=> s_pulse,
									enable2 		=> s_addressGen_on,
									maxSpeed		=> s_resetRAM_on,
									addressOut 	=> s_addressROM);
									
s_addressRAM <= std_logic_vector(unsigned(s_addressROM)-1);


------------------------------------------------------------------
--######################### Memórias ###########################--
------------------------------------------------------------------

ROM_256x8 : entity work.NoisyTriangSignal_ROM_256x8(Behavioral)
					port map(	address 		=> s_addressROM,
									dataOut 		=> s_dataROMOut);
									
holdDataROM : entity work.HoldData(Behavioral)
					port map(	clk			=>	CLOCK_50,
									enable1		=> s_pulse,
									enable2		=> not s_stop_on,
									inData 		=> s_dataROMOut,
									outData 		=> s_dataROMOutHolded); -- 1 registro para sincronizar a saída da ROM com a RAM
	
ROM_magnitudeDisplay : entity work.SignMagnitudeBCDDisplay(Behavioral)
					port map(	inPort   	=> s_dataROMOutHolded,
									enable		=> s_displayOutput_on,
									Display0 	=> HEX0,
									Display1 	=> HEX1,
									Display2 	=> HEX2,
									Display3 	=> HEX3);
	
	
RAM_256x8 : entity work.FilterSignal_RAM_256x8(Behavioral)
					port map(	clk 			=> CLOCK_50,
									-- Depois do DelayLineRegister                
									writeEnable1 => s_pulseDelayP3,
									writeEnable2 => s_start_on,
									writeMaxSpeed  => s_resetRAM_on,
									address 		=> s_addressRAM,
									dataIn 		=> s_result,
									dataOut 		=> s_dataRAMOut);
																	
RAM_magnitudeDisplay : entity work.SignMagnitudeBCDDisplay(Behavioral)
					port map(	inPort   	=> s_dataRAMOut,
									enable		=> s_displayOutput_on,
									Display0 	=> HEX4,
									Display1 	=> HEX5,
									Display2 	=> HEX6,
									Display3 	=> HEX7);
						
						
------------------------------------------------------------------
--################### Delay Line Register ######################--
------------------------------------------------------------------

									
delayRegister : 	entity work.DelayLineRegister(Behavioral)
					port map(	clk      	=> CLOCK_50,
									reset			=> s_reset_on,
									writeEnable1 => s_pulseDelayP2,    -- Depois do AddressGenerator
									writeEnable2 => not s_stop_on,
									dataIn   	=> s_dataROMOut,
									dataOut0 	=> s_operand0,
									dataOut1 	=> s_operand1,
									dataOut2 	=> s_operand2,
									dataOut3 	=> s_operand3);
									
									
------------------------------------------------------------------
--################## VGA Magnitude Display #####################--
------------------------------------------------------------------
--				
vgaDisplay : 	entity work.SignMagnitudeVGA(Behavioral)
					port map(	clock_50    => CLOCK_50,

									vga_clk     => vga_clk,
									vga_hs      => vga_hs,
									vga_vs      => vga_vs,
									vga_sync_n  => vga_sync_n,
									vga_blank_n => vga_blank_n, 
									vga_r       => vga_r,
									vga_g       => vga_g,
									vga_b       => vga_b,
									
									dataROM		=> s_dataROMOut,
									dataRAM		=> s_dataRAMOut,
									addressRAM	=> s_addressRAM,
									enable		=> s_displayOutput_on,
									ROMEnable   => s_ROMEnableDisplay,
									RAMEnable   => s_RAMEnableDisplay,
									reset			=> s_resetRAM_on,
									writeEnable => s_pulse);
--				

		

end Shell;

