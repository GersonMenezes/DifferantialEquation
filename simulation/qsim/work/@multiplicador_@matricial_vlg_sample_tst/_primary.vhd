library verilog;
use verilog.vl_types.all;
entity Multiplicador_Matricial_vlg_sample_tst is
    port(
        MD              : in     vl_logic_vector(7 downto 0);
        MR              : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end Multiplicador_Matricial_vlg_sample_tst;
