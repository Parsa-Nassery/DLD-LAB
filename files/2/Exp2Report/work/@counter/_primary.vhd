library verilog;
use verilog.vl_types.all;
entity Counter is
    port(
        clk             : in     vl_logic;
        rst_cnt         : in     vl_logic;
        inc_cnt         : in     vl_logic;
        clkEn           : in     vl_logic;
        co              : out    vl_logic;
        count_out       : out    vl_logic_vector(3 downto 0)
    );
end Counter;
