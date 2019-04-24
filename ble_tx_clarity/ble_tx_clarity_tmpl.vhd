--VHDL instantiation template

component ble_tx_clarity is
    port (pll_64M_CLKI: in std_logic;
        pll_64M_CLKI2: in std_logic;
        pll_64M_CLKOP: out std_logic;
        pll_64M_LOCK: out std_logic;
        pll_64M_RST: in std_logic;
        pll_64M_SEL: in std_logic
    );
    
end component ble_tx_clarity; -- sbp_module=true 
_inst: ble_tx_clarity port map (pll_64M_CLKI => __,pll_64M_CLKI2 => __,pll_64M_CLKOP => __,
            pll_64M_LOCK => __,pll_64M_RST => __,pll_64M_SEL => __);
