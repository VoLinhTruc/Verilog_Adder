library verilog;
use verilog.vl_types.all;
entity My_And_3 is
    port(
        in1             : in     vl_logic;
        in2             : in     vl_logic;
        in3             : in     vl_logic;
        \out\           : out    vl_logic
    );
end My_And_3;
