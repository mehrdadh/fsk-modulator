[ActiveSupport MAP]
Device = LFE5U-25F;
Package = CABGA256;
Performance = 6;
LUTS_avail = 24288;
LUTS_used = 393;
FF_avail = 24485;
FF_used = 229;
INPUT_LVCMOS18 = 1;
INPUT_LVCMOS25 = 4;
OUTPUT_LVCMOS18 = 1;
OUTPUT_LVCMOS25 = 9;
OUTPUT_LVDS = 2;
IO_avail = 197;
IO_used = 19;
EBR_avail = 56;
EBR_used = 1;
;
; start of DSP statistics
MULT18X18D = 0;
MULT9X9D = 0;
ALU54B = 0;
ALU24B = 0;
PRADD18A = 0;
PRADD9A = 0;
DSP_MULT_avail = 56;
DSP_MULT_used = 0;
DSP_ALU_avail = 28;
DSP_ALU_used = 0;
DSP_PRADD_avail = 56;
DSP_PRADD_used = 0;
; end of DSP statistics
;
; Begin EBR Section
Instance_Name = mem_inf_q_7__I_0/ble_packet_mem_0_0_0_0;
Type = DP16KD;
Width_A = 8;
Depth_A = 256;
REGMODE_A = OUTREG;
REGMODE_B = NOREG;
RESETMODE = SYNC;
ASYNC_RESET_RELEASE = SYNC;
WRITEMODE_A = NORMAL;
WRITEMODE_B = NORMAL;
GSR = ENABLED;
MEM_INIT_FILE = INIT_ALL_0s;
MEM_LPC_FILE = ble_packet_mem.lpc;
; End EBR Section
; Begin PLL Section
Instance_Name = pll_clko_I_0/PLLInst_0;
Type = EHXPLLL;
CLKOP_Post_Divider_A_Input = DIVA;
CLKOS_Post_Divider_B_Input = DIVB;
CLKOS2_Post_Divider_C_Input = DIVC;
CLKOS3_Post_Divider_D_Input = DIVD;
FB_MODE = CLKOP;
CLKI_Divider = 1;
CLKFB_Divider = 2;
CLKOP_Divider = 9;
CLKOS_Divider = 1;
CLKOS2_Divider = 1;
CLKOS3_Divider = 1;
CLKOP_Desired_Phase_Shift(degree) = 0;
CLKOP_Trim_Option_Rising/Falling = FALLING;
CLKOP_Trim_Option_Delay = 0;
CLKOS_Desired_Phase_Shift(degree) = 0;
CLKOS_Trim_Option_Rising/Falling = FALLING;
CLKOS_Trim_Option_Delay = 0;
CLKOS2_Desired_Phase_Shift(degree) = 0;
CLKOS3_Desired_Phase_Shift(degree) = 0;
; End PLL Section
