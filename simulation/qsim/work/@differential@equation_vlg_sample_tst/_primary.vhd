library verilog;
use verilog.vl_types.all;
entity DifferentialEquation_vlg_sample_tst is
    port(
        a               : in     vl_logic_vector(15 downto 0);
        clock           : in     vl_logic;
        dx              : in     vl_logic_vector(15 downto 0);
        start           : in     vl_logic;
        u               : in     vl_logic_vector(15 downto 0);
        x               : in     vl_logic_vector(15 downto 0);
        y               : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end DifferentialEquation_vlg_sample_tst;
