library verilog;
use verilog.vl_types.all;
entity Multiplicador_Matricial is
    port(
        MD              : in     vl_logic_vector(7 downto 0);
        MR              : in     vl_logic_vector(7 downto 0);
        s               : out    vl_logic_vector(15 downto 0)
    );
end Multiplicador_Matricial;
