library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity mux2to1 is
	port( Sel	:	in std_logic;
			A		:	in std_logic;
			B		:	in std_logic;
			X		:	out std_logic);
end mux2to1;

architecture Behavioral of mux2to1 is

begin

	X <= A when (Sel = '1') else B;
end Behavioral;