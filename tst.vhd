library ieee;
use ieee.std_logic_1164.all;

USE IEEE.STD_LOGIC_unsigned.ALL;

entity tst is
port(
		clk, clr : in std_logic;
		LED7S : OUT STD_LOGIC_VECTOR(0 TO 6)
		
		);
end;

architecture behavioral of tst is
signal q : std_logic_vector(3 downto 0);
signal d : std_logic_vector(3 downto 0);

begin
d <= q;

process(clk, clr)
begin 

	CASE q(3 DOWNTO 0) IS
	WHEN "0000" => LED7S <= "1111110";
	WHEN "0001" => LED7S <= "0110000";
	WHEN "0010" => LED7S <= "1101101";
	WHEN "0011" => LED7S <= "1111001";
	WHEN "0100" => LED7S <= "0110011";
	WHEN "0101" => LED7S <= "1011011";
	WHEN "0110" => LED7S <= "1011111";
	WHEN "0111" => LED7S <= "1110000";
	WHEN "1000" => LED7S <= "1111111";
	WHEN "1001" => LED7S <= "1111011";
WHEN OTHERS => NULL;
END CASE ;

if(clr ='0') then q(3 downto 0) <= "0000";
else if(clk'event and clk = '1') then

if(q(3 downto 0)="1001") then q(3 downto 0) <= "0000";
	else q <= q + '1';
	end if;
	end if;
	end if;
	
	
	
end process;

end;
