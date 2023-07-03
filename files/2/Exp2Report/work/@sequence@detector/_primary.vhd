library verilog;
use verilog.vl_types.all;
entity SequenceDetector is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        serIn           : in     vl_logic;
        clkEn           : in     vl_logic;
        co              : in     vl_logic;
        serOut          : out    vl_logic;
        serOutValid     : out    vl_logic;
        inc_cnt         : out    vl_logic;
        rst_cnt         : out    vl_logic
    );
end SequenceDetector;
