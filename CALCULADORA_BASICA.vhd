Library IEEE;
use IEEE.std_logic_1164.all;

entity CALCULADORA_BASICA is
port(	a,b :in std_logic_vector(3 downto 0);
		a0,a1,b0,b1,c0,c1,d0,d1,e0,e1,f0,f1,g0,g1 :out std_logic;
		as0,bs0,cs0,ds0,es0,fs0,gs0 : out std_logic;
		as1,bs1,cs1,ds1,es1,fs1,gs1 : out std_logic
		);
end entity CALCULADORA_BASICA;
	
architecture estructural of CALCULADORA_BASICA is
	signal s : std_logic_Vector(3 downto 0);
	signal cout: std_logic;
begin
	BCD_A : entity work.BCD port map(a(0),a(1),a(2),a(3),a0,b0,c0,d0,e0,f0,g0);
	BCD_B : entity work.BCD port map(b(0),b(1),b(2),b(3),a1,b1,c1,d1,e1,f1,g1);
	sumador : entity work.sumador_4bits port map(a,b,s,cout);
	resultado : entity work.BCD_DOS port map(s(0),s(1),s(2),s(3), cout, as0,bs0,cs0,ds0,es0,fs0,gs0,as1,bs1,cs1,ds1,es1,fs1,gs1 );
	
end architecture estructural;