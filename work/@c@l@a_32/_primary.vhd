library verilog;
use verilog.vl_types.all;
entity CLA_32 is
    port(
        A_in            : in     vl_logic_vector(31 downto 0);
        B_in            : in     vl_logic_vector(31 downto 0);
        C_in            : in     vl_logic;
        S_out           : out    vl_logic_vector(31 downto 0);
        G_out           : out    vl_logic;
        P_out           : out    vl_logic;
        C_out           : out    vl_logic
    );
end CLA_32;
