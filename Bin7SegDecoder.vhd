library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Bin7SegDecoder is
	port(	Input		:	in std_logic_vector(3 downto 0);
			decOut	:	out std_logic_vector(6 downto 0));
end Bin7SegDecoder;

architecture Behavioral of Bin7SegDecoder is

begin
		decOut <= 	"1111001" when Input="0001" else --1
						"0100100" when Input="0010" else --2
						"0110000" when Input="0011" else --3
						"0011001" when Input="0100" else --4
						"0010010" when Input="0101" else --5
						"0000010" when Input="0110" else --6
						"1111000" when Input="0111" else --7
						"0000000" when Input="1000" else --8
						"0010000" when Input="1001" else --9
						"0001000" when Input="1010" else --A
						"0000011" when Input="1011" else --b
						"1000110" when Input="1100" else --C
						"0100001" when Input="1101" else --d
						"0000110" when Input="1110" else --E
						"0001110" when Input="1111" else --F
						"1000000";

end Behavioral;