library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity demux8to1 is
	port( Sel		:	in std_logic_vector(2 downto 0);
			Input0	:	in std_logic_vector(3 downto 0);
			Input1	:	in std_logic_vector(3 downto 0);
			Input2	:	in std_logic_vector(3 downto 0);
			Input3	:	in std_logic_vector(3 downto 0);
			Input4	:	in std_logic_vector(3 downto 0);
			Input5	:	in std_logic_vector(3 downto 0);
			Input6	:	in std_logic_vector(3 downto 0);
			Input7	:	in std_logic_vector(3 downto 0);
			Output	:	in std_logic_vector(3 downto 0));
end demux8to1;

architecture Behavioral of demux8to1 is
begin
	process(Sel, Input0, Input1, Input2, Input3, Input4, Input5, Input6, Input7)
		begin
		case Sel is
			when "000" =>
				Output <= Input0;
			when "001" =>
				Output <= Input1;
			when "010" =>
				Output <= Input2;
			when "011" =>
				Output <= Input3;
			when "100" =>
				Output <= Input4;
			when "101" =>
				Output <= Input5;
			when "110" =>
				Output <= Input6;
			when others =>
				Output <= Input7;
		end case;
	end process;
end Behavioral;