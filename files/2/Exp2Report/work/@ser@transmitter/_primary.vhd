library verilog;
use verilog.vl_types.all;
entity SerTransmitter is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        clkEn           : in     vl_logic;
        serIn           : in     vl_logic;
        serOut          : out    vl_logic;
        serOutValid     : out    vl_logic;
        count_out       : out    vl_logic_vector(3 downto 0)
    );
end SerTransmitter;
