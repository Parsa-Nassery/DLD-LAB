library verilog;
use verilog.vl_types.all;
entity SSD is
    port(
        count           : in     vl_logic_vector(3 downto 0);
        seg_out         : out    vl_logic_vector(6 downto 0)
    );
end SSD;
