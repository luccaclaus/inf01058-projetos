library verilog;
use verilog.vl_types.all;
entity Neander_vlg_sample_tst is
    port(
        clear           : in     vl_logic;
        clock_in        : in     vl_logic;
        step_button     : in     vl_logic;
        step_mode_switch: in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Neander_vlg_sample_tst;
