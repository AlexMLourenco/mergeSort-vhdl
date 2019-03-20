library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

--Counter with an interruption os a pressure key

entity pseudo_random_generator is

	port( clk    : in std_logic;
			cntOut : out std_logic_vector(3 downto 0));
		
end pseudo_random_generator;


architecture Behav of pseudo_random_generator is	
	signal s_cntValue : natural;
	begin
	process(clk)
		begin
		if(rising_edge (clk)) then
			s_cntValue <= s_cntValue + 1;
		end if;
	end process;		 
	cntOut <= std_logic_vector(to_unsigned(s_cntValue, cntOut'length));
end Behav;	