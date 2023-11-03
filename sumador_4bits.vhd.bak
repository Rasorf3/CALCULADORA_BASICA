Library IEEE;
use IEEE.std_logic_1164.all;

entity sumador_4bits is
port(	a0,a1,a2,a3,b0,b1,b2,b3 : in std_logic;
		s0,s1,s2,s3,cout             : in std_logic
		);
end entity sumador_4bits;

architecture estructural of sumador_4bits is
	signal c0,c1,c2 : std_logic;
begin
	
	bit0 : entity work.full_adder port map(a0,b0,'0',c0);
	bit1 : entity work.full_adder port map(a1,b1,c0,c1);
	bit2 : entity work.full_adder port map(a2,b2,c1,c2);
	bit3 : entity work.full_adder port map(a3,b3,c2,cout);
	
		