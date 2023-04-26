library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_SIGNED.ALL;


entity gpp is
port (MD : in std_logic_vector (7 DOWNTO 0);
      MR : in std_logic_vector(2 downto 0);
		s : out std_logic_vector(8 DOWNTO 0));
end gpp;

architecture arq of gpp is

signal temp : std_logic_vector(8 downto 0);
signal MDx2,cp1,cp2: std_logic_vector(8 downto 0);

begin

	cp1 <= not(MD(7)&MD);

	MDx2 <= MD&'0';
	cp2 <= not MDx2;
	s <= temp;

	P: process(MD,MR,cp1,cp2)
	begin

	  case MR is
		when "000" => temp <= "000000000";--0
		when "001" => temp <= MD(7)&MD;--MD
		when "010" => temp <= MD(7)&MD;--MD
		when "011" => temp <= MD&'0';--2xMD
		when "100" => temp <= cp2 + 1;--(-2xMD)
		when "101" => temp <= cp1 + 1;
		when "110" => temp <= cp1 + 1;
		when "111" => temp <= "000000000";
		when others => temp <= "000000000";

	  end case;
end process;

end arq;