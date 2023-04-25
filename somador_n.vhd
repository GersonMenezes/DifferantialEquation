library ieee;
use ieee.std_logic_1164.all;

entity somador_n is
	generic (N : integer := 16);
	port(
			A, B : in std_logic_vector(N-1 downto 0);
			S : out std_logic_vector(N-1 downto 0);
			Co : in std_logic;
			Cout : out std_logic	
	);
end somador_n;


architecture arq of somador_n is
	component FA is
	port (
			cin, a, b : in std_logic;
				s, cout: out std_logic);
	end component;
	
	 signal C : STD_logic_vector (N downto 0);
	 begin
	 g1: for i in 0 to N-1 generate
		 soman: FA port map(
			C(i), A(i), B(i), S(i), C(i+1)
		 
		 );
	 end generate;
	 C(0) <= Co;
	 Cout <= C(N);
end arq;