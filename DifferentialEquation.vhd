library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity DifferentialEquation is
port (x, u, y, dx, a: in std_logic_vector (15 DOWNTO 0);
		start: in std_logic;
		clock : in std_logic;
		testx, testu, testy: out std_logic_vector (15 DOWNTO 0);
		saida: out std_logic_vector (15 DOWNTO 0));
		
end DifferentialEquation;

architecture arq of DifferentialEquation is

	signal x_signal: std_logic_vector(15 downto 0);
	signal u_signal: std_logic_vector(15 downto 0);
	signal y_signal: std_logic_vector(15 downto 0);
	signal saida_somador1: std_logic_vector(15 downto 0);
	signal saida_multiplicador1: std_logic_vector(15 downto 0);
	signal saida_multiplicador2: std_logic_vector(15 downto 0);
	signal saida_multiplicador3: std_logic_vector(15 downto 0);
	signal saida_multiplicador4: std_logic_vector(15 downto 0);
	signal saida_multiplicador5: std_logic_vector(15 downto 0);
	signal saida_multiplicador6: std_logic_vector(15 downto 0);
	signal part1, part2, part3: std_logic_vector(15 downto 0);
	signal registradorx: std_logic_vector(15 downto 0);
	signal registradoru: std_logic_vector(15 downto 0);
	signal registradory: std_logic_vector(15 downto 0);
	signal cout_somador1 : std_logic;
	
	component somador_n is
		generic (N : integer := 16);
		port(
			A, B : in std_logic_vector(N-1 downto 0);
			S : out std_logic_vector(N-1 downto 0);
			Co : in std_logic;
			Cout : out std_logic	
	);
	end component;
	
	component Multiplicador_Matricial is
		port (MD : in std_logic_vector (7 DOWNTO 0);
      MR : in std_logic_vector(7 downto 0);
		s : out std_logic_vector(15 DOWNTO 0));
	end component;

	begin
		
		testx <= registradorx;
		testu <= registradoru;
		testy <= registradory;
		x_signal <= registradorx;
		u_signal <= registradoru;
		y_signal <= registradory;
		saida <= registradory;

			somador1: somador_n generic map (N => 16) -- Tamnho dos bits
									  port map (A => x_signal,
													B => dx,
													S => saida_somador1,
													Co => '0',
													Cout => cout_somador1);
													
			multiplicador1: Multiplicador_Matricial port map("00000011", x_signal(7 downto 0), saida_multiplicador1);
			multiplicador2: Multiplicador_Matricial port map(saida_multiplicador1(7 downto 0), u_signal(7 downto 0), saida_multiplicador2);
			multiplicador3: Multiplicador_Matricial port map(saida_multiplicador2(7 downto 0), dx(7 downto 0), saida_multiplicador3);
			multiplicador4: Multiplicador_Matricial port map("00000011", y_signal(7 downto 0), saida_multiplicador4);
			multiplicador5: Multiplicador_Matricial port map(saida_multiplicador4(7 downto 0), dx(7 downto 0), saida_multiplicador5);
			part1 <= u_signal - saida_multiplicador3;
			part2 <= part1 - saida_multiplicador5;
			
			multiplicador6: Multiplicador_Matricial port map(u_signal(7 downto 0), dx(7 downto 0), saida_multiplicador6);
			part3 <= y_signal + saida_multiplicador6;

			  
			processinho: process(clock, x_signal, y_signal, u_signal)
			begin
				if rising_edge(clock) then
					if start = '1' then
						
						registradorx <= x;
						registradoru <= u;
						registradory <= y;
					
					elsif (x_signal < a) then
						
						registradorx <= saida_somador1 ;
						registradoru <= part2 ;
						registradory <= part3;
						
					end if;
				end if;
			end process;

end arq;