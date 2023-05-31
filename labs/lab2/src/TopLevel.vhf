--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : TopLevel.vhf
-- /___/   /\     Timestamp : 05/04/2023 12:12:34
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3a -flat -suppress -vhdl C:/Lab_2_Example3/TopLevel.vhf -w C:/Lab_2_Example3/TopLevel.sch
--Design Name: TopLevel
--Device: spartan3a
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL CC16RE_HXILINX_TopLevel -----

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CC16RE_HXILINX_TopLevel is
port (
    CEO : out STD_LOGIC;
    Q   : out STD_LOGIC_VECTOR(15 downto 0);
    TC  : out STD_LOGIC;
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    R   : in STD_LOGIC
    );
end CC16RE_HXILINX_TopLevel;

architecture CC16RE_HXILINX_TopLevel_V of CC16RE_HXILINX_TopLevel is

  signal COUNT : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(15 downto 0) := (others => '1');

begin

process(C)
begin
  if (C'event and C = '1') then
    if (R='1') then
      COUNT <= (others => '0');
    elsif (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC <= '0' when (R='1') else
      '1' when (COUNT = TERMINAL_COUNT) else '0' ;
CEO <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';
Q <= COUNT;

end CC16RE_HXILINX_TopLevel_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity LightController_MUSER_TopLevel is
   port ( CLK      : in    std_logic; 
          MODE     : in    std_logic; 
          RESET_LC : in    std_logic; 
          OUTB     : out   std_logic_vector (7 downto 0));
end LightController_MUSER_TopLevel;

architecture BEHAVIORAL of LightController_MUSER_TopLevel is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity TopLevel is
   port ( CLOCK   : in    std_logic; 
          MODE    : in    std_logic; 
          RESET   : in    std_logic; 
          SPEED   : in    std_logic; 
          OUT_BUS : out   std_logic_vector (7 downto 0));
end TopLevel;

architecture BEHAVIORAL of TopLevel is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal CNT_BUS : std_logic_vector (15 downto 0);
   signal XLXN_1  : std_logic;
   signal XLXN_5  : std_logic;
   signal XLXN_12 : std_logic;
   signal XLXN_18 : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_27 : std_logic;
   signal XLXN_30 : std_logic;
   component CC16RE_HXILINX_TopLevel
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             R   : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (15 downto 0); 
             TC  : out   std_logic);
   end component;
   
   component LightController_MUSER_TopLevel
      port ( CLK      : in    std_logic; 
             OUTB     : out   std_logic_vector (7 downto 0); 
             MODE     : in    std_logic; 
             RESET_LC : in    std_logic);
   end component;
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component MUXCY
      port ( CI : in    std_logic; 
             DI : in    std_logic; 
             S  : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXCY : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_2 : label is "XLXI_2_0";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_1";
begin
   XLXN_5 <= '0';
   XLXN_12 <= '1';
   XLXI_2 : CC16RE_HXILINX_TopLevel
      port map (C=>CLOCK,
                CE=>XLXN_12,
                R=>XLXN_5,
                CEO=>open,
                Q=>open,
                TC=>XLXN_1);
   
   XLXI_3 : CC16RE_HXILINX_TopLevel
      port map (C=>XLXN_1,
                CE=>XLXN_12,
                R=>XLXN_5,
                CEO=>open,
                Q(15 downto 0)=>CNT_BUS(15 downto 0),
                TC=>open);
   
   XLXI_8 : LightController_MUSER_TopLevel
      port map (CLK=>XLXN_19,
                MODE=>MODE,
                RESET_LC=>XLXN_18,
                OUTB(7 downto 0)=>OUT_BUS(7 downto 0));
   
   XLXI_10 : FD
      port map (C=>XLXN_19,
                D=>XLXN_27,
                Q=>XLXN_18);
   
   XLXI_12 : MUXCY
      port map (CI=>CNT_BUS(3),
                DI=>CNT_BUS(5),
                S=>XLXN_30,
                O=>XLXN_19);
   
   XLXI_14 : INV
      port map (I=>RESET,
                O=>XLXN_27);
   
   XLXI_15 : INV
      port map (I=>SPEED,
                O=>XLXN_30);
   
end BEHAVIORAL;


