library verilog;
use verilog.vl_types.all;
entity FA is
    port(
        A_in            : in     vl_logic;
        B_in            : in     vl_logic;
        C_in            : in     vl_logic;
        S_out           : out    vl_logic;
        C_out           : out    vl_logic
    );
end FA;
