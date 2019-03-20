Library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DebounceUnit is

	port (clk		:	in std_logic;
			Input		:	in std_logic;
			Output	:	out std_logic);

end DebounceUnit;
architecture Behavioral of DebounceUnit is

	signal s_input	:	std_logic_vector(5 downto 1);

begin
	process(clk, Input)
		begin
			if(Input='0') then
				s_input <= (others => '0');
			elsif(rising_edge(clk)) then
				s_input	<=	'1' & s_input(5 downto 2);
			end if;
			
			Output <= s_input(5);
			
	end process;
end Behavioral;