library verilog;
use verilog.vl_types.all;
entity CRA_4 is
    port(
        A_in            : in     vl_logic_vector(3 downto 0);
        B_in            : in     vl_logic_vector(3 downto 0);
        C_in            : in     vl_logic;
        S_out           : out    vl_logic_vector(3 downto 0);
        C_out           : out    vl_logic
    );
end CRA_4;
