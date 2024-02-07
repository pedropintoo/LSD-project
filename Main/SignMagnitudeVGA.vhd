----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- LSD.TOS, April 2018 (DO NOT REMOVE THIS LINE), VHDL 2008
--
-- Example of utilization of the VGA entities. This example does the following:
-- * instantiates the VGA entities; note that the master clock has to be the VGA clock
-- * generates an image with black/dark green chessboard pattern with a 16-pixel wide white border
--
-- More advanced examples can be found in the demonstrations directory.
--
-- The VGA example (under GNU/Linux, create and compile it using the command "make vga_example") uses the following files:
-- * vhdl_code/SignMagnitudeVGA.vhd
-- * vhdl_code/vga_config.vhd
-- * vhdl_code/vga.vhd
-- * vhdl_code/clock_generator.vhd
--

library IEEE;
use     IEEE.STD_LOGIC_1164.ALL;
use     IEEE.NUMERIC_STD.ALL;
use     WORK.VGA_CONFIG.ALL;

entity SignMagnitudeVGA is
  port
  (
    clock_50    : in    std_logic;

    vga_clk     : out   std_logic;
    vga_hs      : out   std_logic;
    vga_vs      : out   std_logic;
    vga_sync_n  : out   std_logic;
    vga_blank_n : out   std_logic;
    vga_r       : out   std_logic_vector(7 downto 0);
    vga_g       : out   std_logic_vector(7 downto 0);
    vga_b       : out   std_logic_vector(7 downto 0);
	 
	 dataROM		 : in		std_logic_vector(7 downto 0);
	 dataRAM		 : in  	std_logic_vector(7 downto 0);
	 addressRAM	 : in    std_logic_vector(7 downto 0);
	 ROMEnable   : in 	std_logic;
	 RAMEnable   : in 	std_logic;
	 enable		 : in 	std_logic;
	 reset		 : in 	std_logic;
	 writeEnable : in 	std_logic
  );
end SignMagnitudeVGA;

architecture Behavioral of SignMagnitudeVGA is
  --
  -- The master clock is the VGA clock for all VGA projects
  --
  constant CLOCK_FREQUENCY : real := VGA_FREQUENCY;
  signal clock : std_logic;
  --
  -- VGA signals
  --
  signal data_0 : vga_data_t;
  signal data_1 : vga_data_t;
  signal rgb_1  : vga_rgb_t;
  
  signal s_pixelX: unsigned(15 downto 0);	-- Pixel X Size
  signal s_pixelY: unsigned(15 downto 0);	-- Pixel Y Size
  
  signal s_adjustX : unsigned(15 downto 0);
  signal s_adjustY : unsigned(15 downto 0);

  signal s_midHeight : unsigned(15 downto 0);
  
  signal s_addressRam : unsigned(7 downto 0);
  signal s_dataRAM	 : signed(7 downto 0);
  signal s_dataROM	 : signed(7 downto 0);
  
  subtype TDataWord is std_logic_vector(7 downto 0);
  
  type TRAMDisplayRAM is array (0 to 255) of TDataWord;
  type TRAMDisplayROM is array (0 to 255) of TDataWord;
  
  -- Input/Output Signal RAM
  signal s_memoryRAM: TRAMDisplayRAM;
  signal s_memoryROM: TRAMDisplayROM;
	
begin
  --
  -- The master clock
  --
  MASTER_CLOCK_GENERATOR : entity work.vga_clock_generator(optimal)
    port map
    (
      clock_50  => clock_50,
      vga_clock => clock
    );
  --
  -- VGA entities
  --
  VGA_C : entity work.vga_controller(basic)
    port map
    (
      clock      => clock,
      reset      => '0',
      vga_data_0 => data_0
    );
  VGA_O : entity work.vga_output(safe)
    port map
    (
      clock       => clock,
      vga_data    => data_1,
      vga_rgb     => rgb_1,
      vga_clk     => vga_clk,
      vga_hs      => vga_hs,
      vga_vs      => vga_vs,
      vga_sync_n  => vga_sync_n,
      vga_blank_n => vga_blank_n,
      vga_r       => vga_r,
      vga_g       => vga_g,
      vga_b       => vga_b
    );
  --
  -- VGA image generation pipeline stage 0 -> 1
  --
  -- It takes one clock cycle to compute rgb_1, so data_0 has to be delayed one clock cycle
  --
  	s_pixelX 	 <= shift_right(to_unsigned(VGA_WIDTH,16),8); -- pixel X size = VGA_WIDTH / 256
	s_pixelY 	 <= shift_right(to_unsigned(VGA_HEIGHT,16),8); -- pixel Y size = VGA_HEIGHT / 256
		s_adjustX 	 <= shift_right(VGA_WIDTH - shift_left(s_pixelX,8), 1);  -- adjustX = (VGA_WIDTH - pixelX * 256) / 2 ( erro dividido por cada lado )
	s_adjustY 	 <= shift_right(VGA_HEIGHT - shift_left(s_pixelY,8), 1); -- adjustY = (VGA_HEIGHT - pixelY * 256) / 2 ( erro dividido por cada lado )
	
	s_midHeight  <= shift_right(to_unsigned(VGA_HEIGHT,16),1);
	
	s_addressRam <= unsigned(addressRam);
	s_dataRAM	 <= signed(dataRAM);
	s_dataROM	 <= signed(dataROM);

	writeData :  process(clock_50)
					begin
						if (rising_edge(clock_50)) then
							if (reset = '1') then
								s_memoryRAM(to_integer(unsigned(s_addressRam))) <= "00000000";
								s_memoryROM(to_integer(unsigned(s_addressRam+1))) <= "00000000";
							elsif (writeEnable = '1') then
								s_memoryRAM(to_integer(unsigned(s_addressRam))) <= std_logic_vector(s_dataRAM);
								s_memoryROM(to_integer(unsigned(s_addressRam+1))) <= std_logic_vector(s_dataROM);
							end if;
						end if;
					end process;
					
-- WARNING: all designs that generate a VGA image should use the VGA pixel clock as the main clock.

  process(clock) is
  begin
    if rising_edge(clock) then
      data_1 <= data_0;
		
		
		--------------- LEGENDA -------------------
		if ( ((data_0.x - s_adjustX) / s_pixelX) > 224 and ((data_0.x - s_adjustX) / s_pixelX) < 230 and ((data_0.y - s_adjustY) / s_pixelY > 2 ) and ((data_0.y - s_adjustY) / s_pixelY < 5) ) then
			--
			-- red for rectangle legend "Filtro"  
			--
			rgb_1.r <= X"FF";
			rgb_1.g <= X"00";
			rgb_1.b <= X"00";
		elsif ( ( ((data_0.x - s_adjustX) / s_pixelX) = 244 or ((data_0.x - s_adjustX) / s_pixelX) = 241 or ((data_0.x - s_adjustX) / s_pixelX) = 240 or ((data_0.x - s_adjustX) / s_pixelX) = 238  or ((data_0.x - s_adjustX) / s_pixelX) = 236  or ((data_0.x - s_adjustX) / s_pixelX) = 235 or ((data_0.x - s_adjustX) / s_pixelX) = 234 or ((data_0.x - s_adjustX) / s_pixelX) = 233) and ((data_0.y - s_adjustY) / s_pixelY = 0) ) then
			--
			-- black "Filtro" 
			--
			rgb_1.r <= X"00";
			rgb_1.g <= X"00";
			rgb_1.b <= X"00";
		elsif ((((data_0.x - s_adjustX) / s_pixelX) = 244 or ((data_0.x - s_adjustX) / s_pixelX) = 241 or ((data_0.x - s_adjustX) / s_pixelX) = 238 or ((data_0.x - s_adjustX) / s_pixelX) = 233) and ((((data_0.y - s_adjustY) / s_pixelY) = 1 and ((data_0.x - s_adjustX) / s_pixelX) /= 238) or ((data_0.y - s_adjustY) / s_pixelY) = 2 or (((data_0.y - s_adjustY) / s_pixelY) = 2 and ((data_0.x - s_adjustX) / s_pixelX) = 237))) then
			--
			-- black "Filtro" 
			--
			rgb_1.r <= X"00";
			rgb_1.g <= X"00";
			rgb_1.b <= X"00";
		elsif ( ( ((data_0.x - s_adjustX) / s_pixelX) = 254 or ((data_0.x - s_adjustX) / s_pixelX) = 253 or ((data_0.x - s_adjustX) / s_pixelX) = 250 or ((data_0.x - s_adjustX) / s_pixelX) = 249 or ((data_0.x - s_adjustX) / s_pixelX) = 247 or ((data_0.x - s_adjustX) / s_pixelX) = 245 or ((data_0.x - s_adjustX) / s_pixelX) = 244 or ((data_0.x - s_adjustX) / s_pixelX) = 243 or ((data_0.x - s_adjustX) / s_pixelX) = 241 or ((data_0.x - s_adjustX) / s_pixelX) = 238 or ((data_0.x - s_adjustX) / s_pixelX) = 235 or ((data_0.x - s_adjustX) / s_pixelX) = 234 or ((data_0.x - s_adjustX) / s_pixelX) = 233) and (((data_0.y - s_adjustY) / s_pixelY) = 3 ) ) then
			--
			-- black "Filtro"
			--
			rgb_1.r <= X"00";
			rgb_1.g <= X"00";
			rgb_1.b <= X"00";
		elsif (((((data_0.x - s_adjustX) / s_pixelX) = 255 or ((data_0.x - s_adjustX) / s_pixelX) = 252 or ((data_0.x - s_adjustX) / s_pixelX) = 247 or ((data_0.x - s_adjustX) / s_pixelX) = 244 or ((data_0.x - s_adjustX) / s_pixelX) = 241 or ((data_0.x - s_adjustX) / s_pixelX) = 238 or ((data_0.x - s_adjustX) / s_pixelX) = 233) and (((data_0.y - s_adjustY) / s_pixelY) = 6 or ((data_0.y - s_adjustY) / s_pixelY) = 5 or ((data_0.y - s_adjustY) / s_pixelY) = 4)) or (((data_0.y - s_adjustY) / s_pixelY) = 4 and ((data_0.x - s_adjustX) / s_pixelX) = 248)) then
			--
			-- black "Filtro" 
			--
			rgb_1.r <= X"00";
			rgb_1.g <= X"00";
			rgb_1.b <= X"00";
		elsif ( ( ((data_0.x - s_adjustX) / s_pixelX) = 254 or ((data_0.x - s_adjustX) / s_pixelX) = 253 or ((data_0.x - s_adjustX) / s_pixelX) = 247 or ((data_0.x - s_adjustX) / s_pixelX) = 245 or ((data_0.x - s_adjustX) / s_pixelX) = 241 or ((data_0.x - s_adjustX) / s_pixelX) = 238 or ((data_0.x - s_adjustX) / s_pixelX) = 233) and (((data_0.y - s_adjustY) / s_pixelY) = 7 ) ) then
			--
			-- black "Filtro" 
			--
			rgb_1.r <= X"00";
			rgb_1.g <= X"00";
			rgb_1.b <= X"00";
		elsif ((data_0.y) > s_midHeight - shift_right(s_pixelY, 1) and (data_0.y) < s_midHeight + shift_right(s_pixelY, 1)) then -- vertical center
			--
			-- black x referential 
			--
			rgb_1.r <= X"00";
			rgb_1.g <= X"00";
			rgb_1.b <= X"00";
		else
			-- default white
			--
			rgb_1.r <= X"FF";
			rgb_1.g <= X"FF";
			rgb_1.b <= X"FF";
		end if;
		---------------------------------------------
		
		
		-- Gráfico
		if ( enable = '1' and (((data_0.x - s_adjustX) / s_pixelX) < s_addressRam)) then
			if (ROMEnable = '1' and (((data_0.y - s_adjustY) / s_pixelY) = (256 - (unsigned(s_memoryROM(to_integer(unsigned((data_0.x - s_adjustX) / s_pixelX)))) + 128)))) then
					--
					-- blue
					--
					rgb_1.r <= X"00";
					rgb_1.g <= X"00";
					rgb_1.b <= X"FF";
			elsif (RAMEnable = '1' and (((data_0.y - s_adjustY) / s_pixelY) = (256 - (unsigned(s_memoryRAM(to_integer(unsigned((data_0.x - s_adjustX) / s_pixelX)))) + 128)))) then
				--
				-- red
				--
				rgb_1.r <= X"FF";
				rgb_1.g <= X"00";
				rgb_1.b <= X"00";
			end if;
		end if;
    end if;
  end process;
end Behavioral;
