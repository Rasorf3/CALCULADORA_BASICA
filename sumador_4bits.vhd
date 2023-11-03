Library IEEE;
use IEEE.std_logic_1164.all;

entity sumador_4bits is
port(	a,b : in std_logic_vector(3 downto 0);
		s   : out std_logic_vector(3 downto 0);
		cout: out std_logic
		);
end entity sumador_4bits;

architecture estructural of sumador_4bits is
	signal c : std_logic_vector(4 downto 0) := (others => '0');
begin
	gen_sum :for i in 0 to 3 generate
		FA : entity work.full_adder port map(a(i),b(i),c(i),s(i),c(i+1));
	end generate gen_sum;
	cout <= c(4);
end architecture estructural;
	
		