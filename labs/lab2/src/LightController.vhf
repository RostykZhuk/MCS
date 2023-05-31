--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : LightController.vhf
-- /___/   /\     Timestamp : 04/10/2023 22:01:23
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3a -flat -suppress -vhdl "C:/Users/denbr/Desktop/2 course/MKS/Lab_2_Example3/LightController.vhf" -w "C:/Users/denbr/Desktop/2 course/MKS/Lab_2_Example3/LightController.sch"
--Design Name: LightController
--Device: spartan3a
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity LightController is
   port ( CLK      : in    std_logic; 
          MODE     : in    std_logic; 
          RESET_LC : in    std_logic; 
          OUTB     : out   std_logic_vector (7 downto 0));
end LightController;

architecture BEHAVIORAL of LightController is
   attribute BOX_TYPE   : string ;
   signal CUR_S_BUS : std_logic_vector (2 downto 0);
   signal NS_BUS    : std_logic_vector (2 downto 0);
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component out_logic_intf
      port ( IN_BUS  : in    std_logic_vector (2 downto 0); 
             OUT_BUS : out   std_logic_vector (7 downto 0));
   end component;
   
   component transition_logic_intf
      port ( MODE       : in    std_logic; 
             CUR_STATE  : in    std_logic_vector (2 downto 0); 
             NEXT_STATE : out   std_logic_vector (2 downto 0); 
             RES        : in    std_logic);
   end component;
   
begin
   XLXI_4 : FD
      port map (C=>CLK,
                D=>NS_BUS(2),
                Q=>CUR_S_BUS(2));
   
   XLXI_5 : FD
      port map (C=>CLK,
                D=>NS_BUS(1),
                Q=>CUR_S_BUS(1));
   
   XLXI_6 : out_logic_intf
      port map (IN_BUS(2 downto 0)=>CUR_S_BUS(2 downto 0),
                OUT_BUS(7 downto 0)=>OUTB(7 downto 0));
   
   XLXI_7 : transition_logic_intf
      port map (CUR_STATE(2 downto 0)=>CUR_S_BUS(2 downto 0),
                MODE=>MODE,
                RES=>RESET_LC,
                NEXT_STATE(2 downto 0)=>NS_BUS(2 downto 0));
   
   XLXI_8 : FD
      port map (C=>CLK,
                D=>NS_BUS(0),
                Q=>CUR_S_BUS(0));
   
end BEHAVIORAL;


