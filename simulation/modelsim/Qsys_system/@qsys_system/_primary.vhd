library verilog;
use verilog.vl_types.all;
entity Qsys_system is
    port(
        clk_clk         : in     vl_logic;
        reset_reset_n   : in     vl_logic;
        led_export      : out    vl_logic;
        hal249_export   : in     vl_logic;
        epcs_flash_dclk : out    vl_logic;
        epcs_flash_sce  : out    vl_logic;
        epcs_flash_sdo  : out    vl_logic;
        epcs_flash_data0: in     vl_logic
    );
end Qsys_system;
