library verilog;
use verilog.vl_types.all;
entity CLG_2 is
    port(
        G_in            : in     vl_logic_vector(1 downto 0);
        P_in            : in     vl_logic_vector(1 downto 0);
        C_in            : in     vl_logic;
        G_out           : out    vl_logic;
        P_out           : out    vl_logic;
        C_out           : out    vl_logic_vector(2 downto 0)
    );
end CLG_2;
