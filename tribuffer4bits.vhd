library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tribuffer4bits is
	port( en			:	in std_logic;
			input		:	in std_logic_vector(3 downto 0);
			output	:	out std_logic_vector(3 downto 0));
end tribuffer4bits;

architecture Behavioral of tribuffer4bits is

begin
	process(en, input)
	begin
		if(en = '1') then
			output <= input;
		else
			output <= (others => 'Z');
		end if;
		end process;
end Behavioral;