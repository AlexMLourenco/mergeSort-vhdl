library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ME2 is
	port(	Insert 		: in std_logic;
			Rand 			: in std_logic;
			clk			: in std_logic;
			ReadEn 		: out std_logic;
			RandEn 		: out std_logic;
			FinalCount 	: out std_logic;
			Address 		: out std_logic_vector(2 downto 0));

end ME2;

architecture Behav of ME2 is
	type state is (S0, S1, S2, S3, S4, S5, S6, S7);
	signal PS, NS : state;
	
	begin
	
	sync_proc: process(clk)

	begin

		if (rising_edge(clk)) then
			PS <= NS;
		end if;
	end process;

	comb_proc : process(PS, Insert, Rand)

	begin
	
	case PS is
		when S0 =>
			FinalCount <= '0';
			Address <= "000";
			if (Insert = '1') then
				ReadEn <= '1';
				RandEn <= '0';
				NS <= S1;
			elsif(Rand = '1') then
				ReadEn <= '0';
				RandEn <= '1';
				NS <= S1;
			else
				ReadEn <= '0';
				RandEn <= '0';
				NS <= S0;
			end if;

		when S1 =>
			FinalCount <= '0';
			Address <= "001";
			if (Insert = '1') then
				ReadEn <= '1';
				RandEn <= '0';
				NS <= S2;
			elsif(Rand = '1') then
				ReadEn <= '0';
				RandEn <= '1';
				NS <= S2;
			else
				ReadEn <= '0';
				RandEn <= '0';
				NS <= S1;
			end if;

		when S2 =>
			FinalCount <= '0';
			Address <= "010";
			if (Insert = '1') then
				ReadEn <= '1';
				RandEn <= '0';
				NS <= S3;
			elsif(Rand = '1') then
				ReadEn <= '0';
				RandEn <= '1';
				NS <= S3;
			else
				ReadEn <= '0';
				RandEn <= '0';
				NS <= S2;
			end if;

		when S3 =>
			FinalCount <= '0';
			Address <= "011";
			if (Insert = '1') then
				ReadEn <= '1';
				RandEn <= '0';
				NS <= S4;
			elsif(Rand = '1') then
				ReadEn <= '0';
				RandEn <= '1';
				NS <= S4;
			else
				ReadEn <= '0';
				RandEn <= '0';
				NS <= S3;
			end if;

		when S4 =>
			FinalCount <= '0';
			Address <= "100";
			if (Insert = '1') then
				ReadEn <= '1';
				RandEn <= '0';
				NS <= S5;
			elsif(Rand = '1') then
				ReadEn <= '0';
				RandEn <= '1';
				NS <= S5;
			else
				ReadEn <= '0';
				RandEn <= '0';
				NS <= S4;
			end if;

		when S5 =>
			FinalCount <= '0';
			Address <= "101";
			if (Insert = '1') then
				ReadEn <= '1';
				RandEn <= '0';
				NS <= S6;
			elsif(Rand = '1') then
				ReadEn <= '0';
				RandEn <= '1';
				NS <= S6;
			else
				ReadEn <= '0';
				RandEn <= '0';
				NS <= S5;
			end if;

		when S6 =>
			FinalCount <= '0';
			Address <= "110";
			if (Insert = '1') then
				ReadEn <= '1';
				RandEn <= '0';
				NS <= S7;
			elsif(Rand = '1') then
				ReadEn <= '0';
				RandEn <= '1';
				NS <= S7;
			else
				ReadEn <= '0';
				RandEn <= '0';
				NS <= S6;
			end if;

		when S7 =>
			Address <= "111";
			if (Insert = '1') then
				ReadEn <= '1';
				RandEn <= '0';
				FinalCount <= '1';
				NS <= S0;
			elsif(Rand = '1') then
				ReadEn <= '0';
				RandEn <= '1';
				FinalCount <= '1';
				NS <= S0;
			else
				ReadEn <= '0';
				RandEn <= '0';
				FinalCount <= '0';
				NS <= S7;
			end if;
		
		when others => -- Catch all condition
				NS <= S0;
		
		end case;
	end process;
end Behav;