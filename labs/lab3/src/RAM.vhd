library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity RAM_INTF is
	port (
		CLOCK : in std_logic;
		WR : in std_logic;
		DATA_IN_BUS : in std_logic_vector (7 downto 0);
		ADDRESS_BUS : in std_logic_vector (1 downto 0);
		DATA_OUT : out std_logic_vector (7 downto 0)
	);
end RAM_INTF;

architecture RAM_ARCH of RAM_INTF is
	type ram_type is array (3 downto 0) of std_logic_vector(7 downto 0);
	signal ram_unit : ram_type;
begin
	ram : process (CLOCK, ADDRESS_BUS, DATA_IN_BUS)
	begin
		if (rising_edge(CLOCK)) then
			if (WR = '1') then
				ram_unit(conv_integer(ADDRESS_BUS)) <= DATA_IN_BUS;
			end if;
		end if;
		DATA_OUT <= ram_unit(conv_integer(ADDRESS_BUS));
	end process ram;
end RAM_ARCH;
