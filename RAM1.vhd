library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Register4bit is
	 port(clk 			: in std_logic;
			writeEn		: in std_logic;
			dataIn		: in std_logic_vector(3 downto 0)
			dataOut		: out std_logic_vector(3 downto 0));
end Register4bit;				


architecture Behavioral of Register4bit is
	begin
		process(clk, writeEn)
		begin
			if(rising_edge(clk)) then 
				if(writeEn = '1') then
					dataOut <= dataIn;
				end if;
			end if;
		end process;
end Behavioral;	