library ieee;
use ieee.std_logic_1164.all;

entity MUX_INTF is
	port (
		SEL_IN_BUS : in std_logic_vector (1 downto 0);
		RAM_DATA_BUS : in std_logic_vector (7 downto 0);
		DATA_INPUT_BUS : in std_logic_vector (7 downto 0);
		DATA_OUT : out std_logic_vector (7 downto 0)
	);
end MUX_INTF;

architecture MUX_ARCH of MUX_INTF is
	signal const : std_logic_vector(7 downto 0);
begin
	const <= "00000000";
	mux : process (SEL_IN_BUS, DATA_INPUT_BUS, RAM_DATA_BUS)
	begin
		case (SEL_IN_BUS) is
			when "00" => DATA_OUT <= DATA_INPUT_BUS;
			when "01" => DATA_OUT <= RAM_DATA_BUS;
			when others => DATA_OUT <= const;
		end case;
	end process;
end MUX_ARCH;