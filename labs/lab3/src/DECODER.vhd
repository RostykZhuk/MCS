library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity DECODER_INTF is
	port (
		CLOCK : in std_logic;
		RESET : in std_logic;
		ACC_DATA_OUT_BUS : in std_logic_vector (7 downto 0);
		COMM_ONES : out std_logic;
		COMM_DECS : out std_logic;
		COMM_HUNDREDS : out std_logic;
		SEG_A : out std_logic;
		SEG_B : out std_logic;
		SEG_C : out std_logic;
		SEG_D : out std_logic;
		SEG_E : out std_logic;
		SEG_F : out std_logic;
		SEG_G : out std_logic;
		DP : out std_logic);
end DECODER_INTF;

architecture DECODER_ARCH of DECODER_INTF is
	signal ones_bus : std_logic_vector(3 downto 0) := "0000";
	signal decs_bus : std_logic_vector(3 downto 0) := "0001";
	signal hondreds_bus : std_logic_vector(3 downto 0) := "0000";

begin
	bin_to_bcd : process (ACC_DATA_OUT_BUS)
		variable hex_src : std_logic_vector(7 downto 0);
		variable bcd : std_logic_vector(11 downto 0);
	begin
		bcd := (others => '0');
		hex_src := ACC_DATA_OUT_BUS;

		for i in hex_src'range loop
			if bcd(3 downto 0) > "0100" then
				bcd(3 downto 0) := bcd(3 downto 0) + "0011";
			end if;
			if bcd(7 downto 4) > "0100" then
				bcd(7 downto 4) := bcd(7 downto 4) + "0011";
			end if;
			if bcd(11 downto 8) > "0100" then
				bcd(11 downto 8) := bcd(11 downto 8) + "0011";
			end if;

			bcd := bcd(10 downto 0) & hex_src(hex_src'left);
			hex_src := hex_src(hex_src'left - 1 downto hex_src'right) & '0';
		end loop;

		hondreds_bus <= bcd (11 downto 8);
		decs_bus <= bcd (7 downto 4);
		ones_bus <= bcd (3 downto 0);

	end process bin_to_bcd;

	indicate : process (CLOCK)
		type digit_type is (ones, decs, hundreds);

		variable cur_digit : digit_type := ones;
		variable digit_val : std_logic_vector(3 downto 0) := "0000";
		variable digit_ctrl : std_logic_vector(6 downto 0) := "0000000";
		variable commons_ctrl : std_logic_vector(2 downto 0) := "000";

	begin
		if (rising_edge(CLOCK)) then
			if (RESET = '0') then
				case cur_digit is
					when ones =>
						digit_val := ones_bus;
						cur_digit := decs;
						commons_ctrl := "001";
					when decs =>
						digit_val := decs_bus;
						cur_digit := hundreds;
						commons_ctrl := "010";
					when hundreds =>
						digit_val := hondreds_bus;
						cur_digit := ones;
						commons_ctrl := "100";
					when others =>
						digit_val := ones_bus;
						cur_digit := ones;
						commons_ctrl := "000";
				end case;

				case digit_val is --abcdefg
					when "0000" => digit_ctrl := "1111110";
					when "0001" => digit_ctrl := "0110000";
					when "0010" => digit_ctrl := "1101101";
					when "0011" => digit_ctrl := "1111001";
					when "0100" => digit_ctrl := "0110011";
					when "0101" => digit_ctrl := "1011011";
					when "0110" => digit_ctrl := "1011111";
					when "0111" => digit_ctrl := "1110000";
					when "1000" => digit_ctrl := "1111111";
					when "1001" => digit_ctrl := "1111011";
					when others => digit_ctrl := "0000000";
				end case;
			else
				digit_val := ones_bus;
				cur_digit := ones;
				commons_ctrl := "000";
			end if;

			COMM_ONES <= commons_ctrl(0);
			COMM_DECS <= commons_ctrl(1);
			COMM_HUNDREDS <= commons_ctrl(2);

			SEG_A <= digit_ctrl(6);
			SEG_B <= digit_ctrl(5);
			SEG_C <= digit_ctrl(4);
			SEG_D <= digit_ctrl(3);
			SEG_E <= digit_ctrl(2);
			SEG_F <= digit_ctrl(1);
			SEG_G <= digit_ctrl(0);
			DP <= '0';

		end if;
	end process indicate;

end DECODER_ARCH;