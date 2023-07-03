library verilog;
use verilog.vl_types.all;
entity OnePulser is
    port(
        clk             : in     vl_logic;
        clkPB           : in     vl_logic;
        PO              : out    vl_logic
    );
end OnePulser;
