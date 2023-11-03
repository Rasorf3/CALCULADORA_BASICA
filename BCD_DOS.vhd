Library IEEE;
use IEEE.std_logic_1164.all;

entity BCD_DOS is
port(	s0,s1,s2,s3,s4       :in std_logic;
		a0,b0,c0,d0,e0,f0,g0 : out std_logic;
		a1,b1,c1,d1,e1,f1,g1 : out std_logic);
end entity BCD_DOS;

architecture minters of BCD_DOS is
	signal m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16,m17,m18,m19,m20,m21,m22,m23,m24,m25,m26,m27,m28,m29,m30,m31 :std_logic;
	signal NS0,NS1,NS2,NS3,NS4 : std_logic;
begin
	NS0 <= not(s0);
	NS1 <= not(s1);
	NS2 <= not(s2);
	NS3 <= not(s3);
	NS4 <= not(s4);
	
	m0 <= NS4 AND NS3 AND NS2 AND NS1 AND NS0;
	m1 <= NS4 AND NS3 AND NS2 AND NS1 AND S0;
	m2 <= NS4 AND NS3 AND NS2 AND S1 AND NS0;
	m3 <= NS4 AND NS3 AND NS2 AND S1 AND S0;
	m4 <= NS4 AND NS3 AND S2 AND NS1 AND NS0;
	m5 <= NS4 AND NS3 AND S2 AND NS1 AND S0;
	m6 <= NS4 AND NS3 AND S2 AND S1 AND NS0;
	m7 <= NS4 AND NS3 AND S2 AND S1 AND S0;
	m8 <= NS4 AND S3 AND NS2 AND NS1 AND NS0;
	m9 <= NS4 AND S3 AND NS2 AND NS1 AND S0;
	m10 <= NS4 AND S3 AND NS2 AND S1 AND NS0;
	m11 <= NS4 AND S3 AND NS2 AND S1 AND S0;
	m12 <= NS4 AND S3 AND S2 AND NS1 AND NS0;
	m13 <= NS4 AND S3 AND S2 AND NS1 AND S0;
	m14 <= NS4 AND S3 AND S2 AND S1 AND NS0;
	m15 <= NS4 AND S3 AND S2 AND S1 AND S0;
	m16 <= S4 AND NS3 AND NS2 AND NS1 AND NS0;
	m17 <= S4 AND NS3 AND NS2 AND NS1 AND S0;
	m18 <= S4 AND NS3 AND NS2 AND S1 AND NS0;
	m19 <= S4 AND NS3 AND NS2 AND S1 AND S0;
	m20 <= S4 AND NS3 AND S2 AND NS1 AND NS0;
	m21 <= S4 AND NS3 AND S2 AND NS1 AND S0;
	m22 <= S4 AND NS3 AND S2 AND S1 AND NS0;
	m23 <= S4 AND NS3 AND S2 AND S1 AND S0;
	m24 <= S4 AND S3 AND NS2 AND NS1 AND NS0;
	m25 <= S4 AND S3 AND NS2 AND NS1 AND S0;
	m26 <= S4 AND S3 AND NS2 AND S1 AND NS0;
	m27 <= S4 AND S3 AND NS2 AND S1 AND S0;
	m28 <= S4 AND S3 AND S2 AND NS1 AND NS0;
	m29 <= S4 AND S3 AND S2 AND NS1 AND S0;
	m30 <= S4 AND S3 AND S2 AND S1 AND NS0;
	m31 <= S4 AND S3 AND S2 AND S1 AND S0;
	
	a0 <= m1 or m4 or m5 or m11 or m14 or m15;
	b0 <= m6 or m16;
	c0 <= m2 or m12;
	d0 <= m1 or m4 or m7 or m11 or m14 or m17;
	e0 <= m1 or m3 or m4 or m5 or m7 or m9 or m11 or m13 or m14 or m15 or m17;
	f0 <= m1 or m2 or m3 or m7 or m11 or m12 or m13 or m17;
	g0 <= m0 or m1 or m7 or m10 or m11 or m17;
	
	a1 <= m10 or m11 or m12 or m13 or m14 or m15 or m16 or m17 or m18; 
	b1 <= '0';
	c1 <= '0';
	d1 <= m10 or m11 or m12 or m13 or m14 or m15 or m16 or m17 or m18;
	f1 <= m10 or m11 or m12 or m13 or m14 or m15 or m16 or m17 or m18;
	g1 <= m0 or m1 or m2 or m3 or m4 or m5 or m6 or m7 or m8 or m9 or m10 or m11 or m12 or m13 or m14 or m15 or m16 or m17 or m18;
end architecture minters;

	