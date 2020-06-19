// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.3.144
// Netlist written on Tue Apr 23 14:35:05 2019
//
// Verilog Description of module pll_64M
//

module pll_64M (CLKI, CLKI2, SEL, RST, CLKOP, LOCK) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/ble_tx_clarity/pll_64m/pll_64m.v(8[8:15])
    input CLKI;   // c:/work/tinysdr_fpga_ble_tx/ble_tx_clarity/pll_64m/pll_64m.v(9[16:20])
    input CLKI2;   // c:/work/tinysdr_fpga_ble_tx/ble_tx_clarity/pll_64m/pll_64m.v(10[16:21])
    input SEL;   // c:/work/tinysdr_fpga_ble_tx/ble_tx_clarity/pll_64m/pll_64m.v(11[16:19])
    input RST;   // c:/work/tinysdr_fpga_ble_tx/ble_tx_clarity/pll_64m/pll_64m.v(12[16:19])
    output CLKOP;   // c:/work/tinysdr_fpga_ble_tx/ble_tx_clarity/pll_64m/pll_64m.v(13[17:22])
    output LOCK;   // c:/work/tinysdr_fpga_ble_tx/ble_tx_clarity/pll_64m/pll_64m.v(14[17:21])
    
    wire CLKI /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/ble_tx_clarity/pll_64m/pll_64m.v(9[16:20])
    wire CLKI2 /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/ble_tx_clarity/pll_64m/pll_64m.v(10[16:21])
    wire CLKOP /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/ble_tx_clarity/pll_64m/pll_64m.v(13[17:22])
    wire CLKIt /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/ble_tx_clarity/pll_64m/pll_64m.v(20[10:15])
    
    wire scuba_vlo, VCC_net;
    
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    EHXPLLL PLLInst_0 (.CLKI(CLKIt), .CLKFB(CLKOP), .PHASESEL0(scuba_vlo), 
            .PHASESEL1(scuba_vlo), .PHASEDIR(scuba_vlo), .PHASESTEP(scuba_vlo), 
            .PHASELOADREG(scuba_vlo), .STDBY(scuba_vlo), .PLLWAKESYNC(scuba_vlo), 
            .RST(RST), .ENCLKOP(scuba_vlo), .ENCLKOS(scuba_vlo), .ENCLKOS2(scuba_vlo), 
            .ENCLKOS3(scuba_vlo), .CLKOP(CLKOP), .LOCK(LOCK)) /* synthesis FREQUENCY_PIN_CLKOP="64.000000", FREQUENCY_PIN_CLKI="32.000000", ICP_CURRENT="5", LPF_RESISTOR="16", syn_instantiated=1 */ ;
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 2;
    defparam PLLInst_0.CLKOP_DIV = 9;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 8;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.CLKOP_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.PLL_LOCK_DELAY = 200;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.REFIN_RESET = "DISABLED";
    defparam PLLInst_0.SYNC_ENABLE = "DISABLED";
    defparam PLLInst_0.INT_LOCK_STICKY = "ENABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "ENABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    PLLREFCS PLLRefcs_0 (.CLK0(CLKI), .CLK1(CLKI2), .SEL(SEL), .PLLCSOUT(CLKIt)) /* synthesis syn_instantiated=1 */ ;
    GSR GSR_INST (.GSR(VCC_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VHI i87 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

