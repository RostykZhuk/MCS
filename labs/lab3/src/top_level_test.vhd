-- top_level_test.vhd 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE behavior OF testbench IS

   COMPONENT top_level
      PORT (
      CLOCK : IN STD_LOGIC;
      RESET : IN STD_LOGIC;
      ENTER_OP1 : IN STD_LOGIC;
      ENTER_OP2 : IN STD_LOGIC;
      CALC : IN STD_LOGIC;
      DATA_IN : IN STD_LOGIC_VECTOR (7 DOWNTO 0);

      COMM_ONES : OUT STD_LOGIC;
      COMM_DECS : OUT STD_LOGIC;
      COMM_HUNDREDS : OUT STD_LOGIC;
      SEG_A : OUT STD_LOGIC;
      SEG_B : OUT STD_LOGIC;
      SEG_C : OUT STD_LOGIC;
      SEG_D : OUT STD_LOGIC;
      SEG_E : OUT STD_LOGIC;
      SEG_F : OUT STD_LOGIC;
      SEG_G : OUT STD_LOGIC;
      DP : OUT STD_LOGIC);
   END COMPONENT;

   SIGNAL CLOCK : STD_LOGIC;
   SIGNAL RESET : STD_LOGIC;
   SIGNAL ENTER_OP1 : STD_LOGIC;
   SIGNAL ENTER_OP2 : STD_LOGIC;
   SIGNAL CALC : STD_LOGIC;
   SIGNAL DATA_IN : STD_LOGIC_VECTOR (7 DOWNTO 0);

   SIGNAL COMM_ONES : STD_LOGIC;
   SIGNAL COMM_DECS : STD_LOGIC;
   SIGNAL COMM_HUNDREDS : STD_LOGIC;
   SIGNAL SEG_A : STD_LOGIC;
   SIGNAL SEG_B : STD_LOGIC;
   SIGNAL SEG_C : STD_LOGIC;
   SIGNAL SEG_D : STD_LOGIC;
   SIGNAL SEG_E : STD_LOGIC;
   SIGNAL SEG_F : STD_LOGIC;
   SIGNAL SEG_G : STD_LOGIC;
   SIGNAL DP : STD_LOGIC;

   CONSTANT PERIOD : TIME := 1 ms;
BEGIN
   UUT : top_level PORT MAP(
      CLOCK => CLOCK,
      RESET => RESET,
      ENTER_OP1 => ENTER_OP1,
      ENTER_OP2 => ENTER_OP2,
      CALC => CALC,
      DATA_IN => DATA_IN,
      COMM_ONES => COMM_ONES,
      COMM_DECS => COMM_DECS,
      COMM_HUNDREDS => COMM_HUNDREDS,
      SEG_A => SEG_A,
      SEG_B => SEG_B,
      SEG_C => SEG_C,
      SEG_D => SEG_D,
      SEG_E => SEG_E,
      SEG_F => SEG_F,
      SEG_G => SEG_G,
      DP => DP
   );

   CLK : PROCESS
   BEGIN
      CLOCK <= '0';
      WAIT FOR PERIOD / 2;

      CLOCK <= '1';
      WAIT FOR PERIOD / 2;
   END PROCESS CLK;
   
   MAIN : PROCESS
   BEGIN
      RESET <= '1';
      ENTER_OP1 <= '0';
      ENTER_OP2 <= '0';
      CALC <= '0';
      DATA_IN <= "00000000";
      wait for PERIOD * 10;

      RESET <= '0';
      ENTER_OP1 <= '1';
      ENTER_OP2 <= '0';
      CALC <= '0';
      DATA_IN <= "00000010";
      wait for PERIOD * 2;

      RESET <= '0';
      ENTER_OP1 <= '0';
      ENTER_OP2 <= '1';
      CALC <= '0';
      DATA_IN <= "00000100";
      wait for PERIOD * 2;

      RESET <= '0';
      ENTER_OP1 <= '0';
      ENTER_OP2 <= '0';
      CALC <= '1';
      DATA_IN <= "00000000";
      wait for PERIOD * 4;
		
		RESET <= '0';
      ENTER_OP1 <= '0';
      ENTER_OP2 <= '0';
      CALC <= '0';
      DATA_IN <= "00000000";
      wait for PERIOD * 10;
   END PROCESS MAIN;

END;