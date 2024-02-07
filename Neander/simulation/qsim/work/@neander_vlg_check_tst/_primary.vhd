library verilog;
use verilog.vl_types.all;
entity Neander_vlg_check_tst is
    port(
        AC_A0           : in     vl_logic;
        AC_A1           : in     vl_logic;
        AC_B0           : in     vl_logic;
        AC_B1           : in     vl_logic;
        AC_C0           : in     vl_logic;
        AC_C1           : in     vl_logic;
        AC_D0           : in     vl_logic;
        AC_D1           : in     vl_logic;
        AC_E0           : in     vl_logic;
        AC_E1           : in     vl_logic;
        AC_F0           : in     vl_logic;
        AC_F1           : in     vl_logic;
        AC_G0           : in     vl_logic;
        AC_G1           : in     vl_logic;
        AC_OUT          : in     vl_logic_vector(7 downto 0);
        CARGA_AC        : in     vl_logic;
        CARGA_NZ        : in     vl_logic;
        CARGA_PC        : in     vl_logic;
        CARGA_RDM       : in     vl_logic;
        CARGA_REM       : in     vl_logic;
        CARGA_RI        : in     vl_logic;
        flag_N          : in     vl_logic;
        flag_Z          : in     vl_logic;
        GOTO_t0         : in     vl_logic;
        HLT             : in     vl_logic;
        INCREMENTA_PC   : in     vl_logic;
        PC_A0           : in     vl_logic;
        PC_A1           : in     vl_logic;
        PC_B0           : in     vl_logic;
        PC_B1           : in     vl_logic;
        PC_C0           : in     vl_logic;
        PC_C1           : in     vl_logic;
        PC_D0           : in     vl_logic;
        PC_D1           : in     vl_logic;
        PC_E0           : in     vl_logic;
        PC_E1           : in     vl_logic;
        PC_F0           : in     vl_logic;
        PC_F1           : in     vl_logic;
        PC_G0           : in     vl_logic;
        PC_G1           : in     vl_logic;
        PC_OUT          : in     vl_logic_vector(7 downto 0);
        READ            : in     vl_logic;
        SEL             : in     vl_logic;
        ULA_ADD         : in     vl_logic;
        ULA_AND         : in     vl_logic;
        ULA_NOT         : in     vl_logic;
        ULA_OR          : in     vl_logic;
        ULA_Y           : in     vl_logic;
        WRITE           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Neander_vlg_check_tst;
