library verilog;
use verilog.vl_types.all;
entity ControleSemaforo is
    port(
        verde           : out    vl_logic;
        clock           : in     vl_logic;
        clear           : in     vl_logic;
        amarelo         : out    vl_logic;
        vermelho        : out    vl_logic
    );
end ControleSemaforo;
