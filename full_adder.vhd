Library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder is
port(	a,b, c : in std_logic;
		s, cout  : out std_logic
		);
end entity full_adder;

architecture minters of full_adder is
	signal m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15 : std_logic;
	signal na,nb,nc : std_logic;
begin

	na <= not(a);
	nb <= not(b);
	nc <= not(c); 
	
	m0 <= na and nb and nc;
	m1 <= na and nb and c;
	m2 <= na and b and nc;
	m3 <= na and b and c;
	m4 <= a and nb and nc;
	m5 <= a and nb and c;
	m6 <= a and b and nc;
	m7 <= a and b and c;

	s <= m1 or m2 or m4 or m7;
	cout <= m3 or m5 or m6 or m7;
	
end architecture minters;
