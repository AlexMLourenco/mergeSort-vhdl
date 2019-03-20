library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ME1 is
	port(	clk : in std_logic;
			restart : in std_logic;
			finalCount : in std_logic;
			memEn : out std_logic;
			levelEn : out std_logic;
			levelSel : out std_logic_vector(1 downto 0);
			finishLED : out std_logic);

end ME1;

architecture Behavioral of ME1 is
	type TState is (Insert,Lvl3, Lvl2, Lvl1, Finish);
	signal pState, nState: TState;

	begin

	sync_proc : process(clk)
		
		begin

		if (rising_edge(clk)) then
			if (restart = '1') then
				pState <= Insert;
			else
				pState <= nState;
			end if;
		end if;
	end process;

	
	comb_proc : process(pState, finalCount)
	
		begin

		case pState is
		
		when Insert =>
			memEn <= '1';
			levelEn <= '0';
			levelSel <= "XX";
			finishLED <=  '0';
			if (finalCount = '1') then
				nState <= Lvl3;
			else
				nState <= Insert;
			end if;
	
		when Lvl3 =>
			memEn <= '1';
			levelEn <= '1';
			levelSel <= "00";
			finishLED <=  '0';
			if (finalCount = '1') then
				nState <= Lvl2;
			else
				nState <= Lvl3;
			end if;
	
		when Lvl2 =>
			memEn <= '1';
			levelEn <= '1';
			levelSel <= "01";
			finishLED <=  '0';
			if (finalCount = '1') then
				nState <= Lvl1;
			else
				nState <= Lvl2;
			end if;
	
		when Lvl1 =>
			memEn <= '1';
			levelEn <= '1';
			levelSel <= "10";
			finishLED <=  '0';
			if (finalCount = '1') then
				nState <= Finish;
			else
				nState <= Lvl1;
			end if;
	
		when Finish =>
			memEn <= '0';
			levelEn <= '0';
			levelSel <= "XX";
			finishLED <=  '1';
			

		when others => -- “Catch all” condition
			memEn <= '1';
			levelEn <= '0';
			levelSel <= "XX";
			finishLED <=  '0';
			
			nState <= Insert;

		end case;
	end process;

end Behavioral;