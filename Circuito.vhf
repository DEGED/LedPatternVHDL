--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Circuito.vhf
-- /___/   /\     Timestamp : 10/29/2020 14:33:53
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "C:/Users/prestamo/Desktop/Nueva carpeta/Semana11/Circuito.vhf" -w "C:/Users/prestamo/Desktop/Nueva carpeta/Semana11/Circuito.sch"
--Design Name: Circuito
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Circuito is
   port ( BTN_East : in    std_logic; 
          BTN_West : in    std_logic; 
          clock    : in    std_logic; 
          LED      : out   std_logic_vector (7 downto 0));
end Circuito;

architecture BEHAVIORAL of Circuito is
   attribute BOX_TYPE   : string ;
   signal XLXN_15  : std_logic;
   signal XLXN_16  : std_logic;
   signal XLXN_21  : std_logic;
   component led_pattern
      port ( RIGHT : in    std_logic; 
             LEFT  : in    std_logic; 
             clock : in    std_logic; 
             led   : out   std_logic_vector (7 downto 0));
   end component;
   
   component debounce
      port ( D_IN  : in    std_logic; 
             clock : in    std_logic; 
             reset : in    std_logic; 
             Q_OUT : out   std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
begin
   XLXI_1 : led_pattern
      port map (clock=>clock,
                LEFT=>XLXN_15,
                RIGHT=>XLXN_16,
                led(7 downto 0)=>LED(7 downto 0));
   
   XLXI_2 : debounce
      port map (clock=>clock,
                D_IN=>BTN_East,
                reset=>XLXN_21,
                Q_OUT=>XLXN_16);
   
   XLXI_3 : debounce
      port map (clock=>clock,
                D_IN=>BTN_West,
                reset=>XLXN_21,
                Q_OUT=>XLXN_15);
   
   XLXI_5 : GND
      port map (G=>XLXN_21);
   
end BEHAVIORAL;


