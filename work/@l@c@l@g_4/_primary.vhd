library verilog;
use verilog.vl_types.all;
entity LG_4 is
    port(
        G_in            : in     vl_logic_vector(3 downto 0);
        P_in            : in     vl_logic_vector(3 downto 0);
        C_in            : in     vl_logic;
        G_out           : out    vl_logic;
        P_out           : out    vl_logic;
        C_out           : out    vl_logic_vector(4 downto 0)
    );
end LG_4;
