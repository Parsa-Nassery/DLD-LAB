library verilog;
use verilog.vl_types.all;
entity Exp2 is
    port(
        push_button     : in     vl_logic;
        clk             : in     vl_logic;
        serIn           : in     vl_logic;
        rst             : in     vl_logic;
        serOut          : out    vl_logic;
        serOutValid     : out    vl_logic;
        seg_out         : out    vl_logic_vector(6 downto 0)
    );
end Exp2;
