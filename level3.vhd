library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity level3 is
	port(	order			:	in	std_logic;
			A,B			:	in std_logic_vector(3 downto 0);
			out0,out1	:	out std_logic_vector(3 downto 0));
end level3;

architecture structure of level3 is

begin
	process(order, A, B) is

	begin
		if(order ='1') then
			if (A <= B) then
				 out0<= A;
				 out1<= B;
			else
				 out0<= B;
				 out1<= A;
			end if;
		else
			if (A <= B) then
				 out0<= B;
				 out1<= A;
			else
				 out0<= A;
				 out1<= B;
			end if;
		end if;
	end process;

end structure;


