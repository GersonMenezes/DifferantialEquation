library verilog;
use verilog.vl_types.all;
entity DifferentialEquation is
    port(
        x               : in     vl_logic_vector(15 downto 0);
        u               : in     vl_logic_vector(15 downto 0);
        y               : in     vl_logic_vector(15 downto 0);
        dx              : in     vl_logic_vector(15 downto 0);
        a               : in     vl_logic_vector(15 downto 0);
        clock           : in     vl_logic;
        testx           : out    vl_logic_vector(15 downto 0);
        testu           : out    vl_logic_vector(15 downto 0);
        testy           : out    vl_logic_vector(15 downto 0);
        saida           : out    vl_logic_vector(15 downto 0)
    );
end DifferentialEquation;
