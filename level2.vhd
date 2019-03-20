library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity level2 is
	port(	order							:	in	std_logic;
			A0,A1,B0,B1					:	in std_logic_vector(3 downto 0);
			out0,out1,out2,out3		:	out std_logic_vector(3 downto 0));
end level2;

architecture structure of level2 is

begin
	process (order, A0, A1, B0, B1) is

	begin
		if (order = '1') then
			if (A0 <= B0) then
				out0 <= A0;
				if (A1 <= B0) then -- Se o A1 for menor que o B0
					out1<= A1; -- O A1 vai para o out1
					out2<= B0; -- O B0 vai para o out2
					out3<= B1; -- O B1 vai para o out3
				else -- Se o B0 for menor que o A1
					out1<= B0; -- O B0 vai para o out1
					if (A1 <= B1) then -- Se o A1 for menor que o B1
						out2 <= A1;
						out3 <= B1;
					else -- Se o B1 for menor que o A1
						out2 <= B1;
						out3 <= A1;
					end if;
				end if;
			else
				out0 <= B0;
				if (A0 <= B1) then -- Se o A0 for menor que o B1
					out1<= A0; -- O A0 vai para o out1
					if (A1 <= B1) then -- Se o A1 for menor que o B1
						out2 <= A1;
						out3 <= B1;
					else-- Se o B1 for menor que o A1
						out2 <= B1;
						out3 <= A1;
					end if;
				else -- Se o B1 for menor que o A0
					out1<= B1; -- O B1 vai para o out1
					out2<= A0; -- O A0 vai para o out2
					out3<= A1; -- O B1 vai para o out3
				end if;
			end if;
		else
			if (A0 > B0) then
				out0 <= A0;
				if (A1 > B0) then
					out1<= A1; -- O A1 vai para o out1
					out2<= B0; -- O B0 vai para o out2
					out3<= B1; -- O B1 vai para o out3
				else
					out1<= B0; -- O B0 vai para o out1
					if (A1 > B1) then
						out2 <= A1;
						out3 <= B1;
					else
						out2 <= B1;
						out3 <= A1;
					end if;
				end if;
			else
				out0 <= B0;
				if (A0 > B1) then
					out1<= A0; -- O A0 vai para o out1
					if (A1 > B1) then
						out2 <= A1;
						out3 <= B1;
					else
						out2 <= B1;
						out3 <= A1;
					end if;
				else
					out1<= B1; -- O B1 vai para o out1
					out2<= A0; -- O A0 vai para o out2
					out3<= A1; -- O B1 vai para o out3
				end if;
			end if;
		end if;
	end process;
end structure;