library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity level1 is
	port(	order											:	in std_logic;
			A0,A1,A2,A3, B0, B1, B2, B3							: in std_logic_vector(3 downto 0);
			out0, out1, out2, out3, out4, out5, out6, out7	: out std_logic_vector(3 downto 0));
end level1;

architecture structure of level1 is

begin
	process (order, A0, A1, A2, A3, B0, B1, B2, B3) is

	begin
		if (order = '0') then
			if (A0 <= B0) then
				out0 <= A0;
				if (A1 <= B0) then
					out1 <= A1;
					if (A2 <= B0) then
						out2 <= A2;
						if (A3 <= B0) then
							out3 <= A3;
							out4 <= B0;
							out5 <= B1;
							out6 <= B2;
							out7 <= B3;
						else
							out3 <= B0;
							if (A3 <= B1) then
								out4 <= A3;
								out5 <= B1;
								out6 <= B2;
								out7 <= B3;
							else
								out4 <= B1;
								if (A3 <= B2) then
									out5 <= A3;
									out6 <= B2;
									out7 <= B3;
								else
									out5 <= B2;
									if (A3 <= B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								end if;
							end if;
						end if;
					else
						out2 <= B0;
						if (A2 <= B1) then
							out3 <= A2;
							if (A3 <= B1) then
								out4 <= A3;
								out5 <= B1;
								out6 <= B2;
								out7 <= B3;
							else
								out4 <= B1;
								if (A3 <= B2) then
									out5 <= A3;
									out6 <= B2;
									out7 <= B3;
								else
									out5 <= B2;
									if (A3 <= B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								end if;
							end if;
						else
							out3 <= B1;
							if (A2 <= B2) then
								out4 <= A2;
								if (A3 <= B2) then
									out5 <= A3;
									out6 <= B2;
									out7 <= B3;
								else
									out5 <= B2;
									if (A3 <= B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								end if;
							else
								out4 <= B2;
								if (A2 <= B3) then
									out5 <= A2;
									if (A3 <= B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								else
									out5 <= B3;
									out6 <= A2;
									out7 <= A3;
								end if;
							end if;
						end if;
					end if;
				else
					out1 <= B0;
					if (A1 <= B1) then
						out2 <= A1;
						if (A2 <= B1) then
							out3 <= A2;
							if (A3 <= B1) then
								out4 <= A3;
								out5 <= B1;
								out6 <= B2;
								out7 <= B3;
							else
								out4 <= B1;
								if (A3 <= B2) then
									out5 <= A3;
									out6 <= B2;
									out7 <= B3;
								else
									out5 <= B2;
									if (A3 <= B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								end if;
							end if;
						else
							out3 <= B1;
							if (A2 <= B2) then
								out4 <= A2;
								if (A3 <= B2) then
									out5 <= A3;
									out6 <= B2;
									out7 <= B3;
								else
									out5 <= B2;
									if (A3 <= B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								end if;
							else
								out4 <= B2;
								if (A2 <= B3) then
									out5 <= A2;
									if (A3 <= B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								else
									out5 <= B3;
									out6 <= A2;
									out7 <= A3;
								end if;
							end if;
						end if;
					else
						out2 <= B1;
						if (A1 <= B2) then
							out3 <= A1;
							if (A2 <= B2) then
								out4 <= A2;
								if (A3 <= B2) then
									out5 <= A3;
									out6 <= B2;
									out7 <= B3;
								else
									out5 <= B2;
									if (A3 <= B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								end if;
							else
								out4 <= B2;
								if (A2 <= B3) then
									out5 <= A2;
									if (A3 <= B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								else
									out5 <= B3;
									out6 <= A2;
									out7 <= A3;
								end if;
							end if;
						else
							out3 <= B2;
							if (A1 <= B3) then
								out4 <= A1;
								if (A2 <= B3) then
									out5 <= A2;
									if (A3 <= b3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								else
									out5 <= B3;
									out6 <= A2;
									out7 <= A3;
								end if;
							else
								out4 <= B3;
								out5 <= A1;
								out6 <= A2;
								out7 <= A3;
							end if;
						end if;
					end if;
				end if;
			else
				out0 <= B0;
				if (A0 <= B1) then
					out1 <= A0;
					if (A1 <= B1) then
						out2 <= A1;
						if (A2 <= B1) then
							out3 <= A2;
							if (A3 <= B1) then
								out4 <= A3;
								out5 <= b1;
								out6 <= B2;
								out7 <= B3;
							else
								out4 <= B1;
								if (A3 <= B2) then
									out5 <= A3;
									out6 <= B2;
									out7 <= B3;
								else
									out5 <= B2;
									if (A3 <= B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								end if;
							end if;
						else
							out3 <= B1;
							if (A2 <= B2) then
								out4 <= A2;
								if (A3 <= B2) then
									out5 <= A3;
									out6 <= B2;
									out7 <= B3;
								else
									out5 <= B2;
									if (A3 <= B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								end if;
							else
								out4 <= B2;
								if (A2 <= B3) then
									out5 <= A2;
									if (A3 <= B3) then
										out6 <= a3;
										out7 <= b3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								else
									out5 <= B3;
									out6 <= A2;
									out7 <= A3;
								end if;
							end if;
						end if;
					else
						out2 <= B1;
						if (A1 <= B2) then
							out3 <= A1;
							if (A2 <= B2) then
								out4 <= A2;
								if (A3 <= B2) then
									out5 <= A3;
									out6 <= B2;
									out7 <= B3;
								else
									out5 <= B2;
									if (A3 <= B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								end if;
							else
								out4 <= B2;
								if (A2 <= B3) then
									out5 <= A2;
									if (A3 <= B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								else
									out5 <= B3;
									out6 <= A2;
									out7 <= A3;
								end if;
							end if;
						else
							out3 <= B2;
							if (A1 <= B3) then
								out4 <= A1;
								if (A2 <= B3) then
									out5 <= A2;
									if (A3 <= B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								else
									out5 <= B3;
									out6 <= A2;
									out7 <= A3;
								end if;
							else
								out4 <= B3;
								out5 <= A1;
								out6 <= A2;
								out7 <= A3;
							end if;
						end if;
					end if;
				else
					out1 <= B1;
					if (A0 <= B2) then
						out2 <= A0;
						if (A1 <= B2) then
							out3 <= A1;
							if (A2 <= B2) then
								out4 <= A2;
								if (A3 <= B2) then
									out5 <= A3;
									out6 <= B2;
									out7 <= B3;
								else
									out5 <= B2;
									if (A3 <= B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								end if;
							else
								out4 <= B2;
								if (A2 <= B3) then
									out5 <= A2;
									if (A3 <= B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								else
									out5 <= B3;
									out6 <= A2;
									out7 <= A3;
								end if;
							end if;
						else
							out3 <= B2;
							if (A1 <= B3) then
								out4 <= A1;
								if (A2 <= B3) then
									out5 <= A2;
									if (A3 <= B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								else
									out5 <= B3;
									out6 <= A2;
									out7 <= A3;
								end if;
							else
								out4 <= B3;
								out5 <= A1;
								out6 <= A2;
								out7 <= A3;
							end if;
						end if;
					else
						out2 <= B2;
						if (A0 <= B3) then
							out3 <= A0;
							if (A1 <= B3) then
								out4 <= A1;
								if (A2 <= B3) then
									out5 <= A2;
									if (A3 <= B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								else
									out5 <= B3;
									out6 <= A2;
									out7 <= A3;
								end if;
							else
								out4 <= B3;
								out5 <= A1;
								out6 <= A2;
								out7 <= A3;
							end if;
						else
							out3 <= B3;
							out4 <= A0;
							out5 <= A1;
							out6 <= A2;
							out7 <= A3;
						end if;
					end if;
				end if;
			end if;
		else
			if (A0 > B0) then
				out0 <= A0;
				if (A1 > B0) then
					out1 <= A1;
					if (A2 > B0) then
						out2 <= A2;
						if (A3 > B0) then
							out3 <= A3;
							out4 <= B0;
							out5 <= B1;
							out6 <= B2;
							out7 <= B3;
						else
							out3 <= B0;
							if (A3 > B1) then
								out4 <= A3;
								out5 <= B1;
								out6 <= B2;
								out7 <= B3;
							else
								out4 <= B1;
								if (A3 > B2) then
									out5 <= A3;
									out6 <= B2;
									out7 <= B3;
								else
									out5 <= B2;
									if (A3 > B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								end if;
							end if;
						end if;
					else
						out2 <= B0;
						if (A2 > B1) then
							out3 <= A2;
							if (A3 > B1) then
								out4 <= A3;
								out5 <= B1;
								out6 <= B2;
								out7 <= B3;
							else
								out4 <= B1;
								if (A3 > B2) then
									out5 <= A3;
									out6 <= B2;
									out7 <= B3;
								else
									out5 <= B2;
									if (A3 > B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								end if;
							end if;
						else
							out3 <= B1;
							if (A2 > B2) then
								out4 <= A2;
								if (A3 > B2) then
									out5 <= A3;
									out6 <= B2;
									out7 <= B3;
								else
									out5 <= B2;
									if (A3 > B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								end if;
							else
								out4 <= B2;
								if (A2 > B3) then
									out5 <= A2;
									if (A3 > B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								else
									out5 <= B3;
									out6 <= A2;
									out7 <= A3;
								end if;
							end if;
						end if;
					end if;
				else
					out1 <= B0;
					if (A1 > B1) then
						out2 <= A1;
						if (A2 > B1) then
							out3 <= A2;
							if (A3 > B1) then
								out4 <= A3;
								out5 <= B1;
								out6 <= B2;
								out7 <= B3;
							else
								out4 <= B1;
								if (A3 > B2) then
									out5 <= A3;
									out6 <= B2;
									out7 <= B3;
								else
									out5 <= B2;
									if (A3 > B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								end if;
							end if;
						else
							out3 <= B1;
							if (A2 > B2) then
								out4 <= A2;
								if (A3 > B2) then
									out5 <= A3;
									out6 <= B2;
									out7 <= B3;
								else
									out5 <= B2;
									if (A3 > B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								end if;
							else
								out4 <= B2;
								if (A2 > B3) then
									out5 <= A2;
									if (A3 > B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								else
									out5 <= B3;
									out6 <= A2;
									out7 <= A3;
								end if;
							end if;
						end if;
					else
						out2 <= B1;
						if (A1 > B2) then
							out3 <= A1;
							if (A2 > B2) then
								out4 <= A2;
								if (A3 > B2) then
									out5 <= A3;
									out6 <= B2;
									out7 <= B3;
								else
									out5 <= B2;
									if (A3 > B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								end if;
							else
								out4 <= B2;
								if (A2 > B3) then
									out5 <= A2;
									if (A3 > B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								else
									out5 <= B3;
									out6 <= A2;
									out7 <= A3;
								end if;
							end if;
						else
							out3 <= B2;
							if (A1 > B3) then
								out4 <= A1;
								if (A2 > B3) then
									out5 <= A2;
									if (A3 > b3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								else
									out5 <= B3;
									out6 <= A2;
									out7 <= A3;
								end if;
							else
								out4 <= B3;
								out5 <= A1;
								out6 <= A2;
								out7 <= A3;
							end if;
						end if;
					end if;
				end if;
			else
				out0 <= B0;
				if (A0 > B1) then
					out1 <= A0;
					if (A1 > B1) then
						out2 <= A1;
						if (A2 > B1) then
							out3 <= A2;
							if (A3 > B1) then
								out4 <= A3;
								out5 <= b1;
								out6 <= B2;
								out7 <= B3;
							else
								out4 <= B1;
								if (A3 > B2) then
									out5 <= A3;
									out6 <= B2;
									out7 <= B3;
								else
									out5 <= B2;
									if (A3 > B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								end if;
							end if;
						else
							out3 <= B1;
							if (A2 > B2) then
								out4 <= A2;
								if (A3 > B2) then
									out5 <= A3;
									out6 <= B2;
									out7 <= B3;
								else
									out5 <= B2;
									if (A3 > B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								end if;
							else
								out4 <= B2;
								if (A2 > B3) then
									out5 <= A2;
									if (A3 > B3) then
										out6 <= a3;
										out7 <= b3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								else
									out5 <= B3;
									out6 <= A2;
									out7 <= A3;
								end if;
							end if;
						end if;
					else
						out2 <= B1;
						if (A1 > B2) then
							out3 <= A1;
							if (A2 > B2) then
								out4 <= A2;
								if (A3 > B2) then
									out5 <= A3;
									out6 <= B2;
									out7 <= B3;
								else
									out5 <= B2;
									if (A3 > B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								end if;
							else
								out4 <= B2;
								if (A2 > B3) then
									out5 <= A2;
									if (A3 > B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								else
									out5 <= B3;
									out6 <= A2;
									out7 <= A3;
								end if;
							end if;
						else
							out3 <= B2;
							if (A1 > B3) then
								out4 <= A1;
								if (A2 > B3) then
									out5 <= A2;
									if (A3 > B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								else
									out5 <= B3;
									out6 <= A2;
									out7 <= A3;
								end if;
							else
								out4 <= B3;
								out5 <= A1;
								out6 <= A2;
								out7 <= A3;
							end if;
						end if;
					end if;
				else
					out1 <= B1;
					if (A0 > B2) then
						out2 <= A0;
						if (A1 > B2) then
							out3 <= A1;
							if (A2 > B2) then
								out4 <= A2;
								if (A3 > B2) then
									out5 <= A3;
									out6 <= B2;
									out7 <= B3;
								else
									out5 <= B2;
									if (A3 > B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								end if;
							else
								out4 <= B2;
								if (A2 > B3) then
									out5 <= A2;
									if (A3 > B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								else
									out5 <= B3;
									out6 <= A2;
									out7 <= A3;
								end if;
							end if;
						else
							out3 <= B2;
							if (A1 > B3) then
								out4 <= A1;
								if (A2 > B3) then
									out5 <= A2;
									if (A3 > B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								else
									out5 <= B3;
									out6 <= A2;
									out7 <= A3;
								end if;
							else
								out4 <= B3;
								out5 <= A1;
								out6 <= A2;
								out7 <= A3;
							end if;
						end if;
					else
						out2 <= B2;
						if (A0 > B3) then
							out3 <= A0;
							if (A1 > B3) then
								out4 <= A1;
								if (A2 > B3) then
									out5 <= A2;
									if (A3 > B3) then
										out6 <= A3;
										out7 <= B3;
									else
										out6 <= B3;
										out7 <= A3;
									end if;
								else
									out5 <= B3;
									out6 <= A2;
									out7 <= A3;
								end if;
							else
								out4 <= B3;
								out5 <= A1;
								out6 <= A2;
								out7 <= A3;
							end if;
						else
							out3 <= B3;
							out4 <= A0;
							out5 <= A1;
							out6 <= A2;
							out7 <= A3;
						end if;
					end if;
				end if;
			end if;
		end if;
	end process;
end structure;