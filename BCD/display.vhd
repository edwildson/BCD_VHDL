--
--					BCD 7 SEGMENTOS
--
--			AUTOR: EDWILDSON C. RODRIGUES
--
--	UNIVERSIDADE FEDERAL DO VALE DO SÃO FRANCISCO
--
--				DATA 27/07/2018
--




library ieee;
use ieee.std_logic_1164.all;

entity display is
port (clk : in std_logic;
      S : out std_logic_vector (6 downto 0)
);
end display;
Architecture seg_7 of display is 
signal output: std_logic_vector (6 downto 0);

begin
process(clk)
variable up : integer range 0 to 15;
variable prescaler: integer range 0 to 9999999;
begin
	
		if(clk'event and clk = '1') then
			prescaler:=prescaler + 1;
	
		if(prescaler = 0) then
		up:= up+1;
		
		end if;
		end if;
		
		case up is 	
			when 0 => output <= "1111110";
			when 1 => output <= "0110000";
			when 2 => output <= "1101101";
			when 3 => output <= "1111001";
         when 4 => output <= "0110011";
			when 5 => output <= "1011011";
		   when 6 => output <= "1011111";
	 		when 7 => output <= "1110000"; 
	      when 8 => output <= "1111111";
  			when 9 => output <= "1111011";
			when others => output<= "1001111";
		end case;
	S<=output;

	end process;
	
		
end seg_7;