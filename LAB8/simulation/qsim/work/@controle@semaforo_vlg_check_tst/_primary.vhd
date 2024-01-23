library verilog;
use verilog.vl_types.all;
entity ControleSemaforo_vlg_check_tst is
    port(
        amarelo         : in     vl_logic;
        verde           : in     vl_logic;
        vermelho        : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ControleSemaforo_vlg_check_tst;
