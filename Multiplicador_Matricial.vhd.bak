library ieee;
use ieee.std_logic_1164.all;

entity Multiplicador_Matricial is
port (MD : in std_logic_vector (7 DOWNTO 0);
      MR : in std_logic_vector(7 downto 0);
		s : out std_logic_vector(15 DOWNTO 0));
end Multiplicador_Matricial;

architecture arq of Multiplicador_Matricial is

	signal s_gpp1: std_logic_vector(15 downto 0);
	signal s_gpp2: std_logic_vector (13 downto 0);
	signal s_gpp3: std_logic_vector (11 downto 0);
	signal s_gpp4: std_logic_vector (9 downto 0);
	signal s_somador1: std_logic_vector(13 downto 0);
	signal s_somador2: std_logic_vector(11 downto 0);
	signal s_somador3: std_logic_vector(9 downto 0);
	signal cout_somador1: std_logic;
	signal cout_somador2: std_logic;
	signal cout_somador3: std_logic;
	signal cin_somador2: std_logic;
	signal cin_somador3: std_logic;

	component somador_n is
		generic (N : integer := 16);
		port(
			A, B : in std_logic_vector(N-1 downto 0);
			S : out std_logic_vector(N-1 downto 0);
			Co : in std_logic;
			Cout : out std_logic	
	);
	end component;
	
	component gpp is
		port(
			MD : in std_logic_vector (7 DOWNTO 0);
			MR : in std_logic_vector(2 downto 0);
			s : out std_logic_vector(8 DOWNTO 0)
	);
	end component;

	begin
	
		s <= s_somador3 & s_somador2(1 downto 0) & s_somador1(1 downto 0) & s_gpp1(1 downto 0);
		
		gpp1: gpp port map(MD, (MR(1 downto 0))&'0', s_gpp1(8 downto 0));
		gpp2: gpp port map(MD, MR(3 downto 1), s_gpp2(8 downto 0));
		gpp3: gpp port map(MD, MR(5 downto 3), s_gpp3(8 downto 0));
		gpp4: gpp port map(MD, MR(7 downto 5), s_gpp4(8 downto 0));
		
		somador1_n14: somador_n generic map (N => 14) -- Tamnho dos bits
                          port map (A => s_gpp1(15 DOWNTO 2),
                                    B => s_gpp2(13 DOWNTO 0),
                                    S => s_somador1,
                                    Co => '0',
                                    Cout => cout_somador1);
												
		somador2_n12: somador_n generic map (N => 12) -- Tamnho dos bits
                          port map (A => s_gpp3(11 DOWNTO 0),
                                    B => s_somador1(13 DOWNTO 2),
                                    S => s_somador2,
                                    Co => '0',
                                    Cout => cout_somador2);
												
		somador3_n10: somador_n generic map (N => 10) -- Tamnho dos bits
                          port map (A => s_gpp4(9 DOWNTO 0),
                                    B => s_somador2(11 DOWNTO 2),
                                    S => s_somador3,
                                    Co => '0',
                                    Cout => cout_somador3);
											
		P: process(s_gpp1, s_gpp2, s_gpp3, s_gpp4)
			begin

			  case s_gpp1(8) is
				when '0' => s_gpp1(15 downto 9) <= "0000000";
				when '1' => s_gpp1(15 downto 9) <= ("1111111");
			  end case;
			  
			  case s_gpp2(8) is
				when '0' => s_gpp2(13 downto 9) <= ("00000"); 
				when '1' => s_gpp2(13 downto 9) <= ("11111");
			  end case;
			  
			  case s_gpp3(8) is
				when '0' => s_gpp3(11 DOWNTO 9) <= ("000");
				when '1' => s_gpp3(11 DOWNTO 9) <= ("111");
			  end case;
			  
			  case s_gpp4(8) is
				when '0' => s_gpp4(9) <= '0';
				when '1' => s_gpp4(9) <= '1';
			  end case;
			  
		  end process;

end arq;