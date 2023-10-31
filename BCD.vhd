Library IEEE;
use IEEE.std_logic_1164.all;

entity BCD is
port(	S0,S1,S2,S3 : in std_logic;
		a,b,c,d,e,f,g : out std_logic
		);
end entity BCD;

architecture minters of BCD is
	signal m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15 : std_logic;
	signal NS0, NS1, NS2, NS3 : std_logic;
begin

	NSO <= not(S0);
	NS1 <= not(S1);
	NS2 <= not(S2);
	NS3 <= not(S3);
	
	m0 <= NS3 AND NS2 AND NS1 AND NS0;
	m1 <= NS3 AND NS2 AND NS1 AND S0;
	m2 <= NS3 AND NS2 AND S1 AND NS0;
	m3 <= NS3 AND NS2 AND S1 AND S0;
	m4 <= NS3 AND S2 AND NS1 AND NS0;
	m5 <= NS3 AND S2 AND NS1 AND S0;
	m6 <= NS3 AND S2 AND S1 AND NS0;
	m7 <= NS3 AND S2 AND S1 AND S0;
	m8 <= S3 AND NS2 AND NS1 AND NS0;
	m9 <= S3 AND NS2 AND NS1 AND S0;
	m10 <= S3 AND NS2 AND S1 AND NS0;
	m11 <= S3 AND NS2 AND S1 AND S0;
	m12 <= S3 AND S2 AND NS1 AND NS0;
	m13 <= S3 AND S2 AND NS1 AND S0;
	m14 <= S3 AND S2 AND S1 AND NS0;
	m15 <= S3 AND S2 AND S1 AND S0;
	
	a <= m1 or m4;
	b <= m5 or m6;
	c <= m2;
	d <= m1 or m4 or m7;
	e <= m1 or m3 or m4 or m5 or m7 or m9;
	f <= m1 or m2 or m3 or m7;
	g <= m0 or m1 or m7;
	
end architecture minters;