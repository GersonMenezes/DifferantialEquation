library verilog;
use verilog.vl_types.all;
entity DifferentialEquation_vlg_check_tst is
    port(
        saida           : in     vl_logic_vector(15 downto 0);
        testu           : in     vl_logic_vector(15 downto 0);
        testx           : in     vl_logic_vector(15 downto 0);
        testy           : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end DifferentialEquation_vlg_check_tst;
