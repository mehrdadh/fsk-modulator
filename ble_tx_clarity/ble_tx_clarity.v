/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif

//
// Verific Verilog Description of module ble_tx_clarity
//
module ble_tx_clarity (pll_64M_CLKI, pll_64M_CLKI2, pll_64M_CLKOP, pll_64M_LOCK, 
            pll_64M_RST, pll_64M_SEL) /* synthesis sbp_module=true */ ;
    input pll_64M_CLKI;
    input pll_64M_CLKI2;
    output pll_64M_CLKOP;
    output pll_64M_LOCK;
    input pll_64M_RST;
    input pll_64M_SEL;
    
    
    pll_64M pll_64M_inst (.CLKI(pll_64M_CLKI), .CLKI2(pll_64M_CLKI2), .CLKOP(pll_64M_CLKOP), 
            .LOCK(pll_64M_LOCK), .RST(pll_64M_RST), .SEL(pll_64M_SEL));
    
endmodule

