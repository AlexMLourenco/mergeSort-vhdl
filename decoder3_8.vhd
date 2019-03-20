library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder3_8 is
	port(	en		:	in std_logic;
			sel	:	in	std_logic_vector(2 downto 0);
			a, b, c, d, e, f, g, h :	out	std_logic);
end decoder3_8;

architecture Behavioral of decoder3_8 is
	begin 
		process(en, sel)
			begin
				if(en = '0') then
					a <= '0';
					b <= '0';
					c <= '0';
					d <= '0';
					e <= '0';
					f <= '0';
					g <= '0';
					h <= '0';
				else
					case sel is
						when "000" =>
							a <= '1';
							b <= '0';
							c <= '0';
							d <= '0';
							e <= '0';
							f <= '0';
							g <= '0';
							h <= '0';
						when "001" =>
							a <= '0';
							b <= '1';
							c <= '0';
							d <= '0';
							e <= '0';
							f <= '0';
							g <= '0';
							h <= '0';
						when "010" =>
							a <= '0';
							b <= '0';
							c <= '1';
							d <= '0';
							e <= '0';
							f <= '0';
							g <= '0';
							h <= '0';
						when "011" =>
							a <= '0';
							b <= '0';
							c <= '0';
							d <= '1';
							e <= '0';
							f <= '0';
							g <= '0';
							h <= '0';
						when "100" =>
							a <= '0';
							b <= '0';
							c <= '0';
							d <= '0';
							e <= '1';
							f <= '0';
							g <= '0';
							h <= '0';
						when "101" =>
							a <= '0';
							b <= '0';
							c <= '0';
							d <= '0';
							e <= '0';
							f <= '1';
							g <= '0';
							h <= '0';
						when "110" =>
							a <= '0';
							b <= '0';
							c <= '0';
							d <= '0';
							e <= '0';
							f <= '0';
							g <= '1';
							h <= '0';
						when others =>
							a <= '0';
							b <= '0';
							c <= '0';
							d <= '0';
							e <= '0';
							f <= '0';
							g <= '0';
							h <= '1';
					end case;
				end if;
		end process;
end Behavioral;