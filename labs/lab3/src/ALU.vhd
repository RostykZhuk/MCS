library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity ALU_INTF is
	port (
		OP_CODE_BUS : in std_logic_vector(1 downto 0);
		MUX_OUT_BUS : in std_logic_vector(7 downto 0);
		ACC_DATA_OUT_BUS : in std_logic_vector(7 downto 0);
		ACC_DATA_IN_BUS : out std_logic_vector(7 downto 0));
end ALU_INTF;

architecture ALU_ARCH of ALU_INTF is

begin
	alu : process (OP_CODE_BUS, MUX_OUT_BUS, ACC_DATA_OUT_BUS)
		variable a : unsigned(7 downto 0);
		variable b : unsigned(7 downto 0);
		variable temp_mul : unsigned (15 downto 0);
	begin
		a := unsigned(ACC_DATA_OUT_BUS);
		b := unsigned(MUX_OUT_BUS);

		case(OP_CODE_BUS) is
			when "00" => ACC_DATA_IN_BUS <= std_logic_vector(b);
			when "01" => temp_mul := (a * b);
			ACC_DATA_IN_BUS <= std_logic_vector(temp_mul(7 downto 0));
			when "10" => ACC_DATA_IN_BUS <= std_logic_vector(a srl 1);
			when "11" => ACC_DATA_IN_BUS <= std_logic_vector(a + b);
			when others => ACC_DATA_IN_BUS <= "00000000";
		end case;
	end process alu;

end ALU_ARCH;