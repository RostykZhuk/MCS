library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
  
entity transition_logic_intf is 
    Port ( CUR_STATE : in  std_logic_vector(2 downto 0); 
           MODE : in  std_logic; 
           RES : in  std_logic; 
           NEXT_STATE : out  std_logic_vector(2 downto 0) 
 ); 
end transition_logic_intf; 
  
architecture transition_logic_arch of transition_logic_intf is 
  
begin                   
  
NEXT_STATE(0) <= (not(RES) and not(MODE) and not(CUR_STATE(2)) and not(CUR_STATE(1)) and not(CUR_STATE(0))) or  -- 000 -> 001 
  (not(RES) and not(MODE) and not(CUR_STATE(2)) and CUR_STATE(1) and not(CUR_STATE(0))) or  -- 010 -> 011 
  (not(RES) and not(MODE) and CUR_STATE(2) and not(CUR_STATE(1)) and not(CUR_STATE(0))) or  -- 100 -> 101 
  (not(RES) and not(MODE) and CUR_STATE(2) and CUR_STATE(1) and not(CUR_STATE(0))) or   -- 110 -> 111 
  (not(RES) and MODE and not(CUR_STATE(2)) and (CUR_STATE(1)) and not(CUR_STATE(0))) or   -- 001 <- 010 
  (not(RES) and MODE and (CUR_STATE(2)) and not(CUR_STATE(1)) and not(CUR_STATE(0))) or   -- 011 <- 100 
  (not(RES) and MODE and CUR_STATE(2) and (CUR_STATE(1)) and not(CUR_STATE(0))) or   -- 101 <- 110 
  (not(RES) and MODE and not(CUR_STATE(2)) and not(CUR_STATE(1)) and not(CUR_STATE(0)));  -- 111 <- 000 
  
  
NEXT_STATE(1) <=  (not(RES) and not(MODE) and not(CUR_STATE(2)) and not(CUR_STATE(1)) and CUR_STATE(0)) or  -- 001 -> 010 
  (not(RES) and not(MODE) and not(CUR_STATE(2)) and CUR_STATE(1) and not(CUR_STATE(0))) or  -- 010 -> 011 
  (not(RES) and not(MODE) and CUR_STATE(2) and not(CUR_STATE(1)) and CUR_STATE(0)) or   -- 101 -> 110 
  (not(RES) and not(MODE) and CUR_STATE(2) and CUR_STATE(1) and not(CUR_STATE(0))) or   -- 110 -> 111 
  (not(RES) and MODE and not(CUR_STATE(2)) and (CUR_STATE(1)) and (CUR_STATE(0))) or   -- 010 <- 011 
  (not(RES) and MODE and CUR_STATE(2) and not(CUR_STATE(1)) and not(CUR_STATE(0))) or   -- 011 <- 100 
  (not(RES) and MODE and CUR_STATE(2) and CUR_STATE(1) and CUR_STATE(0)) or    -- 110 <- 111 
  (not(RES) and MODE and not(CUR_STATE(2)) and not(CUR_STATE(1)) and not(CUR_STATE(0)));  -- 111 <- 000 
  
NEXT_STATE(2) <=  (not(RES) and not(MODE) and not(CUR_STATE(2)) and CUR_STATE(1) and CUR_STATE(0)) or   -- 011 -> 100 
  (not(RES) and not(MODE) and CUR_STATE(2) and not(CUR_STATE(1)) and not(CUR_STATE(0))) or  -- 100 -> 101 
  (not(RES) and not(MODE) and CUR_STATE(2) and not(CUR_STATE(1)) and CUR_STATE(0)) or   -- 101 -> 110 
  (not(RES) and not(MODE) and CUR_STATE(2) and CUR_STATE(1) and not(CUR_STATE(0))) or   -- 110 -> 111 
  (not(RES) and MODE and CUR_STATE(2) and not(CUR_STATE(1)) and CUR_STATE(0)) or   -- 100 <- 101 
  (not(RES) and MODE and CUR_STATE(2) and CUR_STATE(1) and not(CUR_STATE(0))) or   -- 101 <- 110 
  (not(RES) and MODE and CUR_STATE(2) and CUR_STATE(1) and CUR_STATE(0)) or    -- 110 <- 111 
  (not(RES) and MODE and not(CUR_STATE(2)) and not(CUR_STATE(1)) and not(CUR_STATE(0)));   -- 111 <- 000 
  
end transition_logic_arch;