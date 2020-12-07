library verilog;
use verilog.vl_types.all;
entity LCLA_4 is
    port(
        A_in            : in     vl_logic_vector(3 downto 0);
        B_in            : in     vl_logic_vector(3 downto 0);
        C_in            : in     vl_logic;
        S_out           : out    vl_logic_vector(3 downto 0);
        G_out           : out    vl_logic;
        P_out           : out    vl_logic;
        C_out           : out    vl_logic
    );
end LCLA_4;
