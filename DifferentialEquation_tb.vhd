
library ieee;
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
USE ieee.STD_LOGIC_SIGNED.ALL;

entity DifferentialEquation_tb is 

end DifferentialEquation_tb;

architecture arq_tb of DifferentialEquation_tb is

    
    COMPONENT DifferentialEquation IS
        port (x, u, y, dx, a: in std_logic_vector (15 DOWNTO 0);
            start: in std_logic;
            clock : in std_logic;
            testx, testu, testy: out std_logic_vector (15 DOWNTO 0);
            saida: out std_logic_vector (15 DOWNTO 0)
        );
    END COMPONENT;


    signal x, u, y, dx, a : std_logic_vector (15 DOWNTO 0);
    signal clock, start : std_logic := '0';
    signal testx, testu, testy, saida : std_logic_vector(15 downto 0);

    begin
        
        DUT: DifferentialEquation PORT MAP(
            x,
            u,
            y,
            dx,
            a,
            start,
            clock,
            testx,
            testu,
            testy,
            saida
        );
                 
        process
        begin
            
            clock <= not clock;
            wait for 10 ns;
        end process;

         -- Stimulus Generation
        process
        begin
            start <= '0';
            -- Test 1: Multiplying 21 * 30
            x <= "0000000000000100";
            y <= "0000000000000101";
            u <= "0000000000000011";
            dx <="0000000000000010";
            a <= "0000000000101000";
            wait for 40 ns;

            start <= '1';
            -- Test 1: Multiplying 21 * 30
            x <= "0000000000000100";
            y <= "0000000000000101";
            u <= "0000000000000011";
            dx <="0000000000000010";
            a <= "0000000000101000";
            wait for 10 ns;

            start <= '0';
            -- Test 1: Multiplying 21 * 30
            x <= "0000000000000100";
            y <= "0000000000000101";
            u <= "0000000000000011";
            dx <="0000000000000010";
            a <= "0000000000101000";
            wait;
        end process;
end arq_tb;

