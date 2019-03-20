library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity demux4to1 is
	port(	sel			:	in std_logic_vector(1 downto 0);
			a, b, c, d	:	in std_logic_vector(3 downto 0);
			output		:	out	std_logic_vector(3 downto 0));
end demux4to1;
 
architecture behavioral of demux4to1 is

begin
	process (sel, a, b,c , d)
		begin
		
		case sel is
			when "00" =>
				output <= a;
			when "01" =>
				output <= b;
			when "10" =>
				output <= c;
			when others =>
				output <= d;
		end case;
 
	end process;
end behavioral;