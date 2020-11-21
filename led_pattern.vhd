
-- Declaración de librerias
--
-- Librerias estandar IEEE 
--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-----------------------------------------------------------------------------
entity led_pattern is
    Port (             
				         led : out STD_LOGIC_VECTOR(7 downto 0);
				         RIGHT : in STD_LOGIC;
				         LEFT : in STD_LOGIC;
                       clock : in STD_LOGIC);
							 
    end led_pattern;
--
------------------------------------------------------------------------------------

architecture Behavioral of led_pattern is
--trucazo
signal          clk_div : STD_LOGIC_VECTOR (20 downto 0):= (others => '0');
signal          led_pattern : std_logic_vector(7 downto 0):= "00010000";
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
begin

reloj: process (clock)
begin
if RISING_EDGE (clock) then
	clk_div <= clk_div + conv_std_logic_vector(1,21);
end if;
end process reloj;


led_display: process(clock)
begin

if RISING_EDGE (clock) then
	if (clk_div="100000000000000000000") then
	
		if RIGHT='1' then 
			led_pattern <= led_pattern(6 downto 0) & led_pattern(7); 
		elsif LEFT='1' then
			led_pattern <= led_pattern(0) & led_pattern(7 downto 1); 
		end if;
		
			led <= led_pattern; 
		
	end if;
end if;
	

end process led_display;

end Behavioral;

------------------------------------------------------------------------------------------------------------------------------------

