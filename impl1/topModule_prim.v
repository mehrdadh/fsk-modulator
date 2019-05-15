// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.3.144
// Netlist written on Wed May 15 14:07:06 2019
//
// Verilog Description of module topModule
//

module topModule (top_clk, top_rst_n, top_spi_mosi, top_spi_miso, top_spi_sclk, 
            top_spi_cs, osc_en, serial_iq, serial_clk, LED, top_test0, 
            top_test1, top_test2, top_test3, top_test4, top_test5, 
            top_test6) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(7[8:17])
    input top_clk;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(8[8:15])
    input top_rst_n;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(9[8:17])
    input top_spi_mosi;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(12[9:21])
    output top_spi_miso;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(13[13:25])
    input top_spi_sclk;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(14[9:21])
    input top_spi_cs;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(15[9:19])
    output osc_en;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(17[10:16])
    output serial_iq;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(18[10:19])
    output serial_clk /* synthesis IO_TYPES=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(19[10:20])
    output LED /* synthesis IO_TYPES=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(20[13:16])
    output top_test0;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(22[10:19])
    output top_test1;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(23[10:19])
    output top_test2;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(24[10:19])
    output top_test3;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(25[10:19])
    output top_test4;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(26[10:19])
    output top_test5;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(27[11:20])
    output top_test6;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(28[11:20])
    
    wire GND_net /* synthesis IO_TYPES=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(63[21:35])
    wire top_clk_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(8[8:15])
    wire top_test0_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(22[10:19])
    wire pll_clko /* synthesis SET_AS_NETWORK=pll_clko, is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(42[8:16])
    wire clkDivider_clko /* synthesis is_clock=1, SET_AS_NETWORK=clkDivider_clko */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(46[8:23])
    wire sclk_N_384 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(61[10:13])
    
    wire VCC_net, top_rst_n_c, top_spi_mosi_c, top_spi_miso_c, top_spi_sclk_c, 
        top_spi_cs_c, top_test1_c, top_test3_c, top_test4_c, top_test6_c, 
        pll_lock, spi_rst, spi_st_load_en, spi_st_load_trdy, spi_tx_load_en;
    wire [7:0]spi_tx_data;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(78[19:30])
    wire [7:0]spi_rx_data;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(81[20:31])
    
    wire n659, n756, n755, n754, n483, n482, n478, n475, top_rst_n_N_66, 
        n1445, n1989, n55;
    wire [3:0]spi_next_state_3__N_261;
    
    wire spi_rx_req_N_273, spi_rst_N_271, spi_tx_load_en_N_280, spi_tx_data_7__N_248, 
        spi_st_load_trdy_N_279, n1950, n20, n1441;
    wire [16:0]bit_cnt;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(62[10:17])
    
    wire bit_cnt_15__N_285, n1425, trdy_N_389, trdy_N_385, trdy_N_363, 
        rrdy_N_394, n1391, n1916, n1946, n1944, miso_N_382, n1987, 
        n1939, n1938, n1951, n1924, n1923, n1948, n1920, n1433;
    
    VHI i2 (.Z(VCC_net));
    INV i1588 (.A(top_test0_c), .Z(sclk_N_384));
    FD1S3AX spi_mosi_98 (.D(top_spi_mosi_c), .CK(pll_clko), .Q(top_test1_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(122[8] 127[4])
    defparam spi_mosi_98.GSR = "DISABLED";
    FD1S3AX top_spi_miso_99 (.D(n1944), .CK(pll_clko), .Q(top_spi_miso_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(122[8] 127[4])
    defparam top_spi_miso_99.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_53 (.A(spi_st_load_en), .B(spi_st_load_trdy), .Z(n1939)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(73[10:24])
    defparam i1_2_lut_rep_53.init = 16'h2222;
    PFUMX i1440 (.BLUT(n1950), .ALUT(n1951), .C0(n754), .Z(spi_rst));
    LUT4 ss_n_I_0_307_3_lut_rep_37_4_lut (.A(spi_st_load_en), .B(spi_st_load_trdy), 
         .C(top_test3_c), .D(spi_next_state_3__N_261[3]), .Z(n1923)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (C (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(73[10:24])
    defparam ss_n_I_0_307_3_lut_rep_37_4_lut.init = 16'hf200;
    FD1S3AX spi_sclk_96 (.D(top_spi_sclk_c), .CK(pll_clko), .Q(top_test0_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(122[8] 127[4])
    defparam spi_sclk_96.GSR = "DISABLED";
    LUT4 i79_2_lut_3_lut (.A(spi_st_load_en), .B(spi_st_load_trdy), .C(spi_next_state_3__N_261[3]), 
         .Z(n55)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(73[10:24])
    defparam i79_2_lut_3_lut.init = 16'h2020;
    clockDivider clockDivider_0 (.clkDivider_clko(clkDivider_clko), .pll_clko(pll_clko), 
            .n1946(n1946), .n1920(n1920), .n756(n756), .n755(n755), 
            .n754(n754), .\spi_next_state_3__N_261[3] (spi_next_state_3__N_261[3]), 
            .n1948(n1948), .GND_net(GND_net), .VCC_net(VCC_net), .pll_lock(pll_lock), 
            .n1924(n1924), .n1987(n1987)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(363[14] 368[2])
    LUT4 i1189_4_lut_4_lut (.A(n1987), .B(spi_tx_load_en_N_280), .C(n478), 
         .D(spi_tx_load_en), .Z(spi_tx_load_en)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(106[6:16])
    defparam i1189_4_lut_4_lut.init = 16'h8a88;
    OB osc_en_pad (.I(VCC_net), .O(osc_en));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(17[10:16])
    GSR GSR_INST (.GSR(bit_cnt_15__N_285));
    OB serial_iq_pad (.I(GND_net), .O(serial_iq));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(18[10:19])
    LUT4 i1_4_lut (.A(bit_cnt[8]), .B(trdy_N_363), .C(spi_rst), .D(n1425), 
         .Z(n1391)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(32[11:25])
    defparam i1_4_lut.init = 16'h8000;
    OB serial_clk_pad (.I(GND_net), .O(serial_clk));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(19[10:20])
    OB top_spi_miso_pad (.I(top_spi_miso_c), .O(top_spi_miso));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(13[13:25])
    OB LED_pad (.I(n1987), .O(LED));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(20[13:16])
    OB top_test0_pad (.I(top_test0_c), .O(top_test0));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(22[10:19])
    OB top_test1_pad (.I(top_test1_c), .O(top_test1));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(23[10:19])
    OBZ n658_pad (.I(miso_N_382), .T(n659), .O(top_test2));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    OB top_test3_pad (.I(top_test3_c), .O(top_test3));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(25[10:19])
    OB top_test4_pad (.I(top_test4_c), .O(top_test4));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(26[10:19])
    OB top_test5_pad (.I(n1916), .O(top_test5));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(27[11:20])
    OB top_test6_pad (.I(top_test6_c), .O(top_test6));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(28[11:20])
    IB top_clk_pad (.I(top_clk), .O(top_clk_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(8[8:15])
    IB top_rst_n_pad (.I(top_rst_n), .O(top_rst_n_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(9[8:17])
    IB top_spi_mosi_pad (.I(top_spi_mosi), .O(top_spi_mosi_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(12[9:21])
    IB top_spi_sclk_pad (.I(top_spi_sclk), .O(top_spi_sclk_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(14[9:21])
    IB top_spi_cs_pad (.I(top_spi_cs), .O(top_spi_cs_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(15[9:19])
    LUT4 i1_2_lut (.A(spi_next_state_3__N_261[3]), .B(n482), .Z(spi_rx_req_N_273)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(122[8] 127[4])
    defparam i1_2_lut.init = 16'h8888;
    FD1S3AX spi_cs_97 (.D(top_spi_cs_c), .CK(pll_clko), .Q(spi_next_state_3__N_261[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(122[8] 127[4])
    defparam spi_cs_97.GSR = "DISABLED";
    LUT4 i1225_4_lut_3_lut_3_lut (.A(n1987), .B(spi_st_load_trdy), .C(spi_st_load_trdy_N_279), 
         .Z(spi_st_load_trdy)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(106[6:16])
    defparam i1225_4_lut_3_lut_3_lut.init = 16'h0808;
    LUT4 i1252_4_lut_4_lut_4_lut (.A(n1987), .B(spi_tx_data_7__N_248), .C(spi_rx_data[2]), 
         .D(spi_tx_data[2]), .Z(spi_tx_data[2])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(106[6:16])
    defparam i1252_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 i1256_4_lut_4_lut_4_lut (.A(n1987), .B(spi_tx_data_7__N_248), .C(spi_rx_data[3]), 
         .D(spi_tx_data[3]), .Z(spi_tx_data[3])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(106[6:16])
    defparam i1256_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 i1260_4_lut_4_lut_4_lut (.A(n1987), .B(spi_tx_data_7__N_248), .C(spi_rx_data[4]), 
         .D(spi_tx_data[4]), .Z(spi_tx_data[4])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(106[6:16])
    defparam i1260_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 i1264_4_lut_4_lut_4_lut (.A(n1987), .B(spi_tx_data_7__N_248), .C(spi_rx_data[5]), 
         .D(spi_tx_data[5]), .Z(spi_tx_data[5])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(106[6:16])
    defparam i1264_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 i1268_4_lut_4_lut_4_lut (.A(n1987), .B(spi_tx_data_7__N_248), .C(spi_rx_data[6]), 
         .D(spi_tx_data[6]), .Z(spi_tx_data[6])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(106[6:16])
    defparam i1268_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 i1272_4_lut_4_lut_4_lut (.A(n1987), .B(spi_tx_data_7__N_248), .C(spi_rx_data[7]), 
         .D(spi_tx_data[7]), .Z(spi_tx_data[7])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(106[6:16])
    defparam i1272_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 i1176_4_lut_4_lut_4_lut (.A(n1987), .B(spi_tx_data_7__N_248), .C(spi_rx_data[0]), 
         .D(spi_tx_data[0]), .Z(spi_tx_data[0])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(106[6:16])
    defparam i1176_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 i1248_4_lut_4_lut_4_lut (.A(n1987), .B(spi_tx_data_7__N_248), .C(spi_rx_data[1]), 
         .D(spi_tx_data[1]), .Z(spi_tx_data[1])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(106[6:16])
    defparam i1248_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 i1212_4_lut_4_lut_then_4_lut (.A(n755), .B(spi_rst), .C(spi_rst_N_271), 
         .D(spi_st_load_trdy_N_279), .Z(n1951)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(106[6:16])
    defparam i1212_4_lut_4_lut_then_4_lut.init = 16'ha0a8;
    LUT4 i1_2_lut_adj_34 (.A(spi_next_state_3__N_261[3]), .B(spi_st_load_en), 
         .Z(n20)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(122[8] 127[4])
    defparam i1_2_lut_adj_34.init = 16'h8888;
    LUT4 top_rst_n_I_0_1_lut (.A(top_rst_n_c), .Z(top_rst_n_N_66)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(358[8:18])
    defparam top_rst_n_I_0_1_lut.init = 16'h5555;
    LUT4 m0_lut (.Z(n1989)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    LUT4 pll_lock_I_0_1_lut_rep_60 (.A(pll_lock), .Z(n1946)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(32[9:25])
    defparam pll_lock_I_0_1_lut_rep_60.init = 16'h5555;
    LUT4 i1180_4_lut_4_lut_3_lut (.A(pll_lock), .B(n754), .C(n1920), .Z(n754)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(32[9:25])
    defparam i1180_4_lut_4_lut_3_lut.init = 16'ha8a8;
    LUT4 i1168_4_lut_2_lut (.A(pll_lock), .B(n756), .Z(n756)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(32[9:25])
    defparam i1168_4_lut_2_lut.init = 16'h8888;
    LUT4 i2_3_lut (.A(spi_next_state_3__N_261[3]), .B(spi_st_load_en), .C(spi_st_load_trdy), 
         .Z(n1425)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i2_3_lut.init = 16'hf7f7;
    VLO i1 (.Z(GND_net));
    LUT4 i1212_4_lut_4_lut_else_4_lut (.A(n756), .B(spi_rst), .C(spi_rst_N_271), 
         .D(spi_st_load_trdy_N_279), .Z(n1950)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(106[6:16])
    defparam i1212_4_lut_4_lut_else_4_lut.init = 16'ha0a8;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    spi spi_0 (.sclk_N_384(sclk_N_384), .top_test0_c(top_test0_c), .top_test1_c(top_test1_c), 
        .spi_tx_data({spi_tx_data}), .spi_rst(spi_rst), .\bit_cnt[8] (bit_cnt[8]), 
        .\bit_cnt[9] (bit_cnt[9]), .VCC_net(VCC_net), .top_test6_c(top_test6_c), 
        .top_test4_c(top_test4_c), .trdy_N_363(trdy_N_363), .trdy_N_389(trdy_N_389), 
        .trdy_N_385(trdy_N_385), .n1391(n1391), .rrdy_N_394(rrdy_N_394), 
        .n1989(n1989), .n1433(n1433), .spi_rx_data({spi_rx_data}), .miso_N_382(miso_N_382), 
        .n55(n55), .n1938(n1938), .top_test3_c(top_test3_c), .\spi_next_state_3__N_261[3] (spi_next_state_3__N_261[3]), 
        .n20(n20), .bit_cnt_15__N_285(bit_cnt_15__N_285), .spi_tx_load_en(spi_tx_load_en), 
        .n1923(n1923), .n1916(n1916), .n475(n475), .n1441(n1441), .n1944(n1944), 
        .n483(n483), .n1445(n1445), .n659(n659), .n1939(n1939));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(425[5] 445[2])
    spi_ctrl spi_ctrl_0 (.n482(n482), .clkDivider_clko(clkDivider_clko), 
            .n1924(n1924), .n483(n483), .n475(n475), .n1433(n1433), 
            .n1923(n1923), .spi_tx_load_en_N_280(spi_tx_load_en_N_280), 
            .n478(n478), .spi_rst_N_271(spi_rst_N_271), .spi_rx_req_N_273(spi_rx_req_N_273), 
            .spi_tx_data_7__N_248(spi_tx_data_7__N_248), .spi_st_load_trdy_N_279(spi_st_load_trdy_N_279), 
            .n1989(n1989), .top_test3_c(top_test3_c), .n1987(n1987), .\spi_next_state_3__N_261[3] (spi_next_state_3__N_261[3]), 
            .n1441(n1441), .n1445(n1445), .spi_st_load_en(spi_st_load_en), 
            .spi_st_load_trdy(spi_st_load_trdy), .rrdy_N_394(rrdy_N_394), 
            .n1948(n1948), .spi_tx_load_en(spi_tx_load_en), .trdy_N_389(trdy_N_389)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(405[10] 423[2])
    LUT4 i1_2_lut_rep_52 (.A(bit_cnt[9]), .B(top_test6_c), .Z(n1938)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(62[10:17])
    defparam i1_2_lut_rep_52.init = 16'h8888;
    pll_64M pll_lock_I_0_112 (.top_rst_n_N_66(top_rst_n_N_66), .pll_clko(pll_clko), 
            .pll_lock(pll_lock), .GND_net(GND_net), .top_clk_c(top_clk_c), 
            .VCC_net(VCC_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(354[9] 361[2])
    LUT4 i1_2_lut_3_lut (.A(bit_cnt[9]), .B(top_test6_c), .C(top_test1_c), 
         .Z(trdy_N_385)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(62[10:17])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    
endmodule
//
// Verilog Description of module clockDivider
//

module clockDivider (clkDivider_clko, pll_clko, n1946, n1920, n756, 
            n755, n754, \spi_next_state_3__N_261[3] , n1948, GND_net, 
            VCC_net, pll_lock, n1924, n1987) /* synthesis syn_module_defined=1 */ ;
    output clkDivider_clko;
    input pll_clko;
    input n1946;
    output n1920;
    input n756;
    output n755;
    input n754;
    input \spi_next_state_3__N_261[3] ;
    output n1948;
    input GND_net;
    input VCC_net;
    input pll_lock;
    output n1924;
    output n1987;
    
    wire clkDivider_clko /* synthesis is_clock=1, SET_AS_NETWORK=clkDivider_clko */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(46[8:23])
    wire pll_clko /* synthesis SET_AS_NETWORK=pll_clko, is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(42[8:16])
    wire GND_net /* synthesis IO_TYPES=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(63[21:35])
    
    wire clkOut_N_169;
    wire [7:0]lockCounter;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(28[11:22])
    
    wire n4, n12, n8;
    wire [7:0]counter;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(29[11:18])
    
    wire n573;
    wire [7:0]n37;
    wire [7:0]n37_adj_417;
    
    wire n1298, n1299, n1294, n1295, n705, n1485, n1502, n1483, 
        n1292, n1297, n1296, n1293;
    
    FD1S3IX clkOut_28 (.D(clkOut_N_169), .CK(pll_clko), .CD(n1946), .Q(clkDivider_clko));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(31[8] 47[4])
    defparam clkOut_28.GSR = "DISABLED";
    LUT4 i2_4_lut_rep_34 (.A(lockCounter[5]), .B(n4), .C(n12), .D(n8), 
         .Z(n1920)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam i2_4_lut_rep_34.init = 16'hccc8;
    FD1S3IX counter_243__i7 (.D(n37[7]), .CK(pll_clko), .CD(n573), .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_243__i7.GSR = "DISABLED";
    FD1S3IX counter_243__i6 (.D(n37[6]), .CK(pll_clko), .CD(n573), .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_243__i6.GSR = "DISABLED";
    FD1S3IX counter_243__i5 (.D(n37[5]), .CK(pll_clko), .CD(n573), .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_243__i5.GSR = "DISABLED";
    FD1S3IX counter_243__i4 (.D(n37[4]), .CK(pll_clko), .CD(n573), .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_243__i4.GSR = "DISABLED";
    FD1S3IX counter_243__i3 (.D(n37[3]), .CK(pll_clko), .CD(n573), .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_243__i3.GSR = "DISABLED";
    LUT4 i1203_4_lut_then_2_lut_4_lut (.A(n756), .B(n755), .C(n754), .D(\spi_next_state_3__N_261[3] ), 
         .Z(n1948)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam i1203_4_lut_then_2_lut_4_lut.init = 16'hca00;
    FD1S3IX counter_243__i2 (.D(n37[2]), .CK(pll_clko), .CD(n573), .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_243__i2.GSR = "DISABLED";
    FD1S3IX counter_243__i1 (.D(n37[1]), .CK(pll_clko), .CD(n573), .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_243__i1.GSR = "DISABLED";
    FD1S3IX lockCounter_244__i7 (.D(n37_adj_417[7]), .CK(pll_clko), .CD(n1946), 
            .Q(lockCounter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_244__i7.GSR = "DISABLED";
    FD1S3IX lockCounter_244__i6 (.D(n37_adj_417[6]), .CK(pll_clko), .CD(n1946), 
            .Q(lockCounter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_244__i6.GSR = "DISABLED";
    FD1S3IX lockCounter_244__i5 (.D(n37_adj_417[5]), .CK(pll_clko), .CD(n1946), 
            .Q(lockCounter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_244__i5.GSR = "DISABLED";
    FD1S3IX lockCounter_244__i4 (.D(n37_adj_417[4]), .CK(pll_clko), .CD(n1946), 
            .Q(lockCounter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_244__i4.GSR = "DISABLED";
    FD1S3IX lockCounter_244__i3 (.D(n37_adj_417[3]), .CK(pll_clko), .CD(n1946), 
            .Q(lockCounter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_244__i3.GSR = "DISABLED";
    FD1S3IX lockCounter_244__i2 (.D(n37_adj_417[2]), .CK(pll_clko), .CD(n1946), 
            .Q(lockCounter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_244__i2.GSR = "DISABLED";
    FD1S3IX lockCounter_244__i1 (.D(n37_adj_417[1]), .CK(pll_clko), .CD(n1946), 
            .Q(lockCounter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_244__i1.GSR = "DISABLED";
    FD1S3IX lockCounter_244__i0 (.D(n37_adj_417[0]), .CK(pll_clko), .CD(n1946), 
            .Q(lockCounter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_244__i0.GSR = "DISABLED";
    CCU2C lockCounter_244_add_4_7 (.A0(lockCounter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(lockCounter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1298), .COUT(n1299), .S0(n37_adj_417[5]), 
          .S1(n37_adj_417[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_244_add_4_7.INIT0 = 16'haaa0;
    defparam lockCounter_244_add_4_7.INIT1 = 16'haaa0;
    defparam lockCounter_244_add_4_7.INJECT1_0 = "NO";
    defparam lockCounter_244_add_4_7.INJECT1_1 = "NO";
    FD1S3IX counter_243__i0 (.D(n37[0]), .CK(pll_clko), .CD(n573), .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_243__i0.GSR = "DISABLED";
    CCU2C counter_243_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1294), .COUT(n1295), .S0(n37[5]), .S1(n37[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_243_add_4_7.INIT0 = 16'haaa0;
    defparam counter_243_add_4_7.INIT1 = 16'haaa0;
    defparam counter_243_add_4_7.INJECT1_0 = "NO";
    defparam counter_243_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(clkDivider_clko), .B(n705), .Z(clkOut_N_169)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut.init = 16'h9999;
    LUT4 i1_4_lut (.A(n1485), .B(n1502), .C(counter[2]), .D(n1483), 
         .Z(n705)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_4_lut.init = 16'hffbf;
    LUT4 i1_3_lut (.A(counter[4]), .B(counter[7]), .C(counter[3]), .Z(n1485)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut.init = 16'hfefe;
    CCU2C counter_243_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n1292), .S1(n37[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_243_add_4_1.INIT0 = 16'h0000;
    defparam counter_243_add_4_1.INIT1 = 16'h555f;
    defparam counter_243_add_4_1.INJECT1_0 = "NO";
    defparam counter_243_add_4_1.INJECT1_1 = "NO";
    CCU2C lockCounter_244_add_4_5 (.A0(lockCounter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(lockCounter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1297), .COUT(n1298), .S0(n37_adj_417[3]), 
          .S1(n37_adj_417[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_244_add_4_5.INIT0 = 16'haaa0;
    defparam lockCounter_244_add_4_5.INIT1 = 16'haaa0;
    defparam lockCounter_244_add_4_5.INJECT1_0 = "NO";
    defparam lockCounter_244_add_4_5.INJECT1_1 = "NO";
    LUT4 i1139_2_lut (.A(counter[1]), .B(counter[0]), .Z(n1502)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1139_2_lut.init = 16'h8888;
    CCU2C lockCounter_244_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(lockCounter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n1296), .S1(n37_adj_417[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_244_add_4_1.INIT0 = 16'h0000;
    defparam lockCounter_244_add_4_1.INIT1 = 16'h555f;
    defparam lockCounter_244_add_4_1.INJECT1_0 = "NO";
    defparam lockCounter_244_add_4_1.INJECT1_1 = "NO";
    CCU2C lockCounter_244_add_4_3 (.A0(lockCounter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(lockCounter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1296), .COUT(n1297), .S0(n37_adj_417[1]), 
          .S1(n37_adj_417[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_244_add_4_3.INIT0 = 16'haaa0;
    defparam lockCounter_244_add_4_3.INIT1 = 16'haaa0;
    defparam lockCounter_244_add_4_3.INJECT1_0 = "NO";
    defparam lockCounter_244_add_4_3.INJECT1_1 = "NO";
    CCU2C counter_243_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1293), .COUT(n1294), .S0(n37[3]), .S1(n37[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_243_add_4_5.INIT0 = 16'haaa0;
    defparam counter_243_add_4_5.INIT1 = 16'haaa0;
    defparam counter_243_add_4_5.INJECT1_0 = "NO";
    defparam counter_243_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_31 (.A(counter[5]), .B(counter[6]), .Z(n1483)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_31.init = 16'heeee;
    CCU2C counter_243_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n1292), .COUT(n1293), .S0(n37[1]), .S1(n37[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_243_add_4_3.INIT0 = 16'haaa0;
    defparam counter_243_add_4_3.INIT1 = 16'haaa0;
    defparam counter_243_add_4_3.INJECT1_0 = "NO";
    defparam counter_243_add_4_3.INJECT1_1 = "NO";
    CCU2C counter_243_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1295), .S0(n37[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_243_add_4_9.INIT0 = 16'haaa0;
    defparam counter_243_add_4_9.INIT1 = 16'h0000;
    defparam counter_243_add_4_9.INJECT1_0 = "NO";
    defparam counter_243_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_32 (.A(pll_lock), .B(lockCounter[7]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam i1_2_lut_adj_32.init = 16'h8888;
    LUT4 i5_4_lut (.A(lockCounter[4]), .B(lockCounter[6]), .C(lockCounter[1]), 
         .D(lockCounter[3]), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_33 (.A(lockCounter[2]), .B(lockCounter[0]), .Z(n8)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_33.init = 16'heeee;
    LUT4 rst_I_0_1_lut_rep_38_3_lut (.A(n756), .B(n755), .C(n754), .Z(n1924)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam rst_I_0_1_lut_rep_38_3_lut.init = 16'h3535;
    LUT4 i407_3_lut_rep_61 (.A(n756), .B(n755), .C(n754), .Z(n1987)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam i407_3_lut_rep_61.init = 16'hcaca;
    LUT4 i1161_2_lut (.A(n705), .B(pll_lock), .Z(n573)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i1161_2_lut.init = 16'h7777;
    LUT4 i1172_4_lut_2_lut (.A(n1920), .B(n755), .Z(n755)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1172_4_lut_2_lut.init = 16'heeee;
    CCU2C lockCounter_244_add_4_9 (.A0(lockCounter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1299), .S0(n37_adj_417[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_244_add_4_9.INIT0 = 16'haaa0;
    defparam lockCounter_244_add_4_9.INIT1 = 16'h0000;
    defparam lockCounter_244_add_4_9.INJECT1_0 = "NO";
    defparam lockCounter_244_add_4_9.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module spi
//

module spi (sclk_N_384, top_test0_c, top_test1_c, spi_tx_data, spi_rst, 
            \bit_cnt[8] , \bit_cnt[9] , VCC_net, top_test6_c, top_test4_c, 
            trdy_N_363, trdy_N_389, trdy_N_385, n1391, rrdy_N_394, 
            n1989, n1433, spi_rx_data, miso_N_382, n55, n1938, top_test3_c, 
            \spi_next_state_3__N_261[3] , n20, bit_cnt_15__N_285, spi_tx_load_en, 
            n1923, n1916, n475, n1441, n1944, n483, n1445, n659, 
            n1939);
    input sclk_N_384;
    input top_test0_c;
    input top_test1_c;
    input [7:0]spi_tx_data;
    input spi_rst;
    output \bit_cnt[8] ;
    output \bit_cnt[9] ;
    input VCC_net;
    output top_test6_c;
    output top_test4_c;
    output trdy_N_363;
    input trdy_N_389;
    input trdy_N_385;
    input n1391;
    input rrdy_N_394;
    input n1989;
    output n1433;
    output [7:0]spi_rx_data;
    output miso_N_382;
    input n55;
    input n1938;
    input top_test3_c;
    input \spi_next_state_3__N_261[3] ;
    input n20;
    output bit_cnt_15__N_285;
    input spi_tx_load_en;
    input n1923;
    output n1916;
    input n475;
    output n1441;
    output n1944;
    input n483;
    output n1445;
    output n659;
    input n1939;
    
    wire sclk_N_384 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(61[10:13])
    wire top_test0_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(22[10:19])
    
    \spi_slave('0','0',8)  spi_slave_0 (.sclk_N_384(sclk_N_384), .top_test0_c(top_test0_c), 
            .top_test1_c(top_test1_c), .spi_tx_data({spi_tx_data}), .spi_rst(spi_rst), 
            .\bit_cnt[8] (\bit_cnt[8] ), .\bit_cnt[9] (\bit_cnt[9] ), .VCC_net(VCC_net), 
            .top_test6_c(top_test6_c), .top_test4_c(top_test4_c), .trdy_N_363(trdy_N_363), 
            .trdy_N_389(trdy_N_389), .trdy_N_385(trdy_N_385), .n1391(n1391), 
            .rrdy_N_394(rrdy_N_394), .n1989(n1989), .n1433(n1433), .spi_rx_data({spi_rx_data}), 
            .miso_N_382(miso_N_382), .n55(n55), .n1938(n1938), .top_test3_c(top_test3_c), 
            .\spi_next_state_3__N_261[3] (\spi_next_state_3__N_261[3] ), .n20(n20), 
            .bit_cnt_15__N_285(bit_cnt_15__N_285), .spi_tx_load_en(spi_tx_load_en), 
            .n1923(n1923), .n1916(n1916), .n475(n475), .n1441(n1441), 
            .n1944(n1944), .n483(n483), .n1445(n1445), .n659(n659), 
            .n1939(n1939));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi.vhd(72[14:23])
    
endmodule
//
// Verilog Description of module \spi_slave('0','0',8) 
//

module \spi_slave('0','0',8)  (sclk_N_384, top_test0_c, top_test1_c, spi_tx_data, 
            spi_rst, \bit_cnt[8] , \bit_cnt[9] , VCC_net, top_test6_c, 
            top_test4_c, trdy_N_363, trdy_N_389, trdy_N_385, n1391, 
            rrdy_N_394, n1989, n1433, spi_rx_data, miso_N_382, n55, 
            n1938, top_test3_c, \spi_next_state_3__N_261[3] , n20, bit_cnt_15__N_285, 
            spi_tx_load_en, n1923, n1916, n475, n1441, n1944, n483, 
            n1445, n659, n1939);
    input sclk_N_384;
    input top_test0_c;
    input top_test1_c;
    input [7:0]spi_tx_data;
    input spi_rst;
    output \bit_cnt[8] ;
    output \bit_cnt[9] ;
    input VCC_net;
    output top_test6_c;
    output top_test4_c;
    output trdy_N_363;
    input trdy_N_389;
    input trdy_N_385;
    input n1391;
    input rrdy_N_394;
    input n1989;
    output n1433;
    output [7:0]spi_rx_data;
    output miso_N_382;
    input n55;
    input n1938;
    input top_test3_c;
    input \spi_next_state_3__N_261[3] ;
    input n20;
    output bit_cnt_15__N_285;
    input spi_tx_load_en;
    input n1923;
    output n1916;
    input n475;
    output n1441;
    output n1944;
    input n483;
    output n1445;
    output n659;
    input n1939;
    
    wire sclk_N_384 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(61[10:13])
    wire top_test0_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(22[10:19])
    
    wire n760, n1927;
    wire [7:0]n18;
    wire [16:0]bit_cnt;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(62[10:17])
    
    wire rd_add;
    wire [7:0]rx_buf;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(65[10:16])
    
    wire rx_buf_7__N_287, n1942, rx_buf_6__N_292, rx_buf_5__N_294, n759, 
        n1926, rx_buf_4__N_296, n751, n1925, n2124, n1943, rx_buf_3__N_298, 
        rx_buf_2__N_300, rx_buf_1__N_302, top_test0_c_enable_1, n1988, 
        miso_N_383, sclk_N_384_enable_1, n1513, rrdy_N_392, top_test0_c_enable_2, 
        n1385, n3, rrdy_N_369, n1661, miso_N_401, n752, n1919, 
        n763, n1922, miso_N_402, n764, n1921, n767, n1928, n768, 
        n1929, n771, n1930, n772, n1931, n775, n1932, n776, 
        n1933, n779, n1934, n780, n1935, n783, n1936, n784, 
        n1937, roe_N_376, top_test0_c_enable_3, roe_N_398, roe_N_396, 
        trdy_N_387, n2136;
    wire [7:0]tx_buf;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(66[10:16])
    
    wire n2127, n10_adj_407, n14_adj_408, n1409, n1945, n2187, n2178, 
        n2169, n1917, n2160, n1455;
    wire [1:0]n568;
    
    wire n2151;
    
    FD1S3DX tx_buf_i0_i7_409_410_reset (.D(n18[7]), .CK(sclk_N_384), .CD(n1927), 
            .Q(n760)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i7_409_410_reset.GSR = "DISABLED";
    FD1S3AX bit_cnt_i6 (.D(bit_cnt[5]), .CK(sclk_N_384), .Q(bit_cnt[6])) /* synthesis LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i6.GSR = "ENABLED";
    FD1P3AX rd_add_230 (.D(top_test1_c), .SP(bit_cnt[2]), .CK(top_test0_c), 
            .Q(rd_add));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(102[5] 104[12])
    defparam rd_add_230.GSR = "DISABLED";
    FD1S3AX bit_cnt_i5 (.D(bit_cnt[4]), .CK(sclk_N_384), .Q(bit_cnt[5])) /* synthesis LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i5.GSR = "ENABLED";
    FD1P3DX rx_buf_7__234 (.D(top_test1_c), .SP(rx_buf_7__N_287), .CK(top_test0_c), 
            .CD(n1942), .Q(rx_buf[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[9] 155[16])
    defparam rx_buf_7__234.GSR = "DISABLED";
    FD1P3DX rx_buf_6__235 (.D(top_test1_c), .SP(rx_buf_6__N_292), .CK(top_test0_c), 
            .CD(n1942), .Q(rx_buf[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[9] 155[16])
    defparam rx_buf_6__235.GSR = "DISABLED";
    FD1P3DX rx_buf_5__236 (.D(top_test1_c), .SP(rx_buf_5__N_294), .CK(top_test0_c), 
            .CD(n1942), .Q(rx_buf[5]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[9] 155[16])
    defparam rx_buf_5__236.GSR = "DISABLED";
    FD1S3BX tx_buf_i0_i7_409_410_set (.D(n18[7]), .CK(sclk_N_384), .PD(n1926), 
            .Q(n759)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i7_409_410_set.GSR = "DISABLED";
    FD1P3DX rx_buf_4__237 (.D(top_test1_c), .SP(rx_buf_4__N_296), .CK(top_test0_c), 
            .CD(n1942), .Q(rx_buf[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[9] 155[16])
    defparam rx_buf_4__237.GSR = "DISABLED";
    FD1S3AX bit_cnt_i4 (.D(bit_cnt[3]), .CK(sclk_N_384), .Q(bit_cnt[4])) /* synthesis LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i4.GSR = "ENABLED";
    FD1S3BX tx_buf_i0_i0_401_402_set (.D(n18[0]), .CK(sclk_N_384), .PD(n1925), 
            .Q(n751)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i0_401_402_set.GSR = "DISABLED";
    FD1S3AX bit_cnt_i3 (.D(bit_cnt[2]), .CK(sclk_N_384), .Q(bit_cnt[3])) /* synthesis LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i3.GSR = "ENABLED";
    LUT4 i1198_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[6]), .B(spi_rst), 
         .C(n2124), .D(n1943), .Z(n2124)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i1198_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    FD1S3AX bit_cnt_i2 (.D(bit_cnt[1]), .CK(sclk_N_384), .Q(bit_cnt[2])) /* synthesis LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i2.GSR = "ENABLED";
    FD1P3DX rx_buf_3__238 (.D(top_test1_c), .SP(rx_buf_3__N_298), .CK(top_test0_c), 
            .CD(n1942), .Q(rx_buf[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[9] 155[16])
    defparam rx_buf_3__238.GSR = "DISABLED";
    FD1P3DX rx_buf_2__239 (.D(top_test1_c), .SP(rx_buf_2__N_300), .CK(top_test0_c), 
            .CD(n1942), .Q(rx_buf[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[9] 155[16])
    defparam rx_buf_2__239.GSR = "DISABLED";
    FD1P3DX rx_buf_1__240 (.D(top_test1_c), .SP(rx_buf_1__N_302), .CK(top_test0_c), 
            .CD(n1942), .Q(rx_buf[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[9] 155[16])
    defparam rx_buf_1__240.GSR = "DISABLED";
    FD1P3DX rx_buf_0__241 (.D(top_test1_c), .SP(top_test0_c_enable_1), .CK(top_test0_c), 
            .CD(n1942), .Q(rx_buf[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[9] 155[16])
    defparam rx_buf_0__241.GSR = "DISABLED";
    LUT4 i647_4_lut_3_lut_rep_62 (.A(bit_cnt[10]), .B(\bit_cnt[8] ), .C(\bit_cnt[9] ), 
         .Z(n1988)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C)))) */ ;
    defparam i647_4_lut_3_lut_rep_62.init = 16'h1616;
    FD1P3AX i223_277 (.D(VCC_net), .SP(sclk_N_384_enable_1), .CK(sclk_N_384), 
            .Q(miso_N_383));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(175[5] 188[12])
    defparam i223_277.GSR = "ENABLED";
    LUT4 i1166_3_lut_3_lut_4_lut (.A(bit_cnt[10]), .B(\bit_cnt[8] ), .C(\bit_cnt[9] ), 
         .D(rd_add), .Z(n1513)) /* synthesis lut_function=(A+(B (C+!(D))+!B !(C (D)))) */ ;
    defparam i1166_3_lut_3_lut_4_lut.init = 16'hebff;
    LUT4 i1_2_lut_rep_54 (.A(top_test6_c), .B(top_test4_c), .Z(top_test0_c_enable_1)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(97[5] 99[12])
    defparam i1_2_lut_rep_54.init = 16'h4444;
    LUT4 i1_4_lut_4_lut (.A(top_test6_c), .B(top_test4_c), .C(top_test1_c), 
         .D(bit_cnt[10]), .Z(rrdy_N_392)) /* synthesis lut_function=(A (C (D))+!A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(97[5] 99[12])
    defparam i1_4_lut_4_lut.init = 16'he444;
    FD1P3BX trdy_231 (.D(trdy_N_385), .SP(top_test0_c_enable_2), .CK(top_test0_c), 
            .PD(trdy_N_389), .Q(trdy_N_363)) /* synthesis LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(107[5] 117[12])
    defparam trdy_231.GSR = "DISABLED";
    LUT4 i1154_3_lut (.A(n1391), .B(n1385), .C(\bit_cnt[9] ), .Z(n3)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(175[5] 188[12])
    defparam i1154_3_lut.init = 16'hcaca;
    FD1S3BX rrdy_232 (.D(rrdy_N_392), .CK(top_test0_c), .PD(rrdy_N_394), 
            .Q(rrdy_N_369)) /* synthesis LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(120[5] 132[12])
    defparam rrdy_232.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(top_test6_c), .B(bit_cnt[11]), .Z(rx_buf_5__N_294)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(97[5] 99[12])
    defparam i1_2_lut.init = 16'h4444;
    FD1S3AY bit_cnt_i1 (.D(n1989), .CK(sclk_N_384), .Q(bit_cnt[1])) /* synthesis LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_19 (.A(spi_rst), .B(rrdy_N_369), .Z(n1433)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_19.init = 16'h8888;
    FD1P3AX wr_add_229 (.D(top_test1_c), .SP(bit_cnt[1]), .CK(top_test0_c), 
            .Q(top_test6_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(97[5] 99[12])
    defparam wr_add_229.GSR = "DISABLED";
    LUT4 i1296_4_lut (.A(spi_rx_data[6]), .B(rx_buf[6]), .C(n1661), .D(spi_rst), 
         .Z(spi_rx_data[6])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i1296_4_lut.init = 16'hca0a;
    FD1S3AX miso_268 (.D(miso_N_401), .CK(sclk_N_384), .Q(miso_N_382)) /* synthesis LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(175[5] 188[12])
    defparam miso_268.GSR = "ENABLED";
    FD1S3AX bit_cnt_i7 (.D(bit_cnt[6]), .CK(sclk_N_384), .Q(bit_cnt[7])) /* synthesis LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i7.GSR = "ENABLED";
    FD1S3AX bit_cnt_i8 (.D(bit_cnt[7]), .CK(sclk_N_384), .Q(\bit_cnt[8] )) /* synthesis LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i8.GSR = "ENABLED";
    FD1S3AX bit_cnt_i9 (.D(\bit_cnt[8] ), .CK(sclk_N_384), .Q(\bit_cnt[9] )) /* synthesis LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i9.GSR = "ENABLED";
    FD1S3AX bit_cnt_i10 (.D(\bit_cnt[9] ), .CK(sclk_N_384), .Q(bit_cnt[10])) /* synthesis LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i10.GSR = "ENABLED";
    FD1S3AX bit_cnt_i11 (.D(bit_cnt[10]), .CK(sclk_N_384), .Q(bit_cnt[11])) /* synthesis LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i11.GSR = "ENABLED";
    FD1S3AX bit_cnt_i12 (.D(bit_cnt[11]), .CK(sclk_N_384), .Q(bit_cnt[12])) /* synthesis LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i12.GSR = "ENABLED";
    FD1S3AX bit_cnt_i13 (.D(bit_cnt[12]), .CK(sclk_N_384), .Q(bit_cnt[13])) /* synthesis LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i13.GSR = "ENABLED";
    FD1S3AX bit_cnt_i14 (.D(bit_cnt[13]), .CK(sclk_N_384), .Q(bit_cnt[14])) /* synthesis LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i14.GSR = "ENABLED";
    FD1S3AX bit_cnt_i15 (.D(bit_cnt[14]), .CK(sclk_N_384), .Q(bit_cnt[15])) /* synthesis LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i15.GSR = "ENABLED";
    FD1S3AX bit_cnt_i16 (.D(bit_cnt[15]), .CK(sclk_N_384), .Q(top_test4_c)) /* synthesis LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i16.GSR = "ENABLED";
    FD1S3DX tx_buf_i0_i0_401_402_reset (.D(n18[0]), .CK(sclk_N_384), .CD(n1919), 
            .Q(n752)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i0_401_402_reset.GSR = "DISABLED";
    FD1S3BX tx_buf_i0_i6_413_414_set (.D(n18[6]), .CK(sclk_N_384), .PD(n1922), 
            .Q(n763)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i6_413_414_set.GSR = "DISABLED";
    PFUMX miso_I_0 (.BLUT(n3), .ALUT(miso_N_402), .C0(n1513), .Z(miso_N_401)) /* synthesis LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;
    FD1S3DX tx_buf_i0_i6_413_414_reset (.D(n18[6]), .CK(sclk_N_384), .CD(n1921), 
            .Q(n764)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i6_413_414_reset.GSR = "DISABLED";
    FD1S3BX tx_buf_i0_i5_417_418_set (.D(n18[5]), .CK(sclk_N_384), .PD(n1928), 
            .Q(n767)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i5_417_418_set.GSR = "DISABLED";
    FD1S3DX tx_buf_i0_i5_417_418_reset (.D(n18[5]), .CK(sclk_N_384), .CD(n1929), 
            .Q(n768)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i5_417_418_reset.GSR = "DISABLED";
    FD1S3BX tx_buf_i0_i4_421_422_set (.D(n18[4]), .CK(sclk_N_384), .PD(n1930), 
            .Q(n771)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i4_421_422_set.GSR = "DISABLED";
    FD1S3DX tx_buf_i0_i4_421_422_reset (.D(n18[4]), .CK(sclk_N_384), .CD(n1931), 
            .Q(n772)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i4_421_422_reset.GSR = "DISABLED";
    FD1S3BX tx_buf_i0_i3_425_426_set (.D(n18[3]), .CK(sclk_N_384), .PD(n1932), 
            .Q(n775)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i3_425_426_set.GSR = "DISABLED";
    FD1S3DX tx_buf_i0_i3_425_426_reset (.D(n18[3]), .CK(sclk_N_384), .CD(n1933), 
            .Q(n776)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i3_425_426_reset.GSR = "DISABLED";
    FD1S3BX tx_buf_i0_i2_429_430_set (.D(n18[2]), .CK(sclk_N_384), .PD(n1934), 
            .Q(n779)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i2_429_430_set.GSR = "DISABLED";
    FD1S3DX tx_buf_i0_i2_429_430_reset (.D(n18[2]), .CK(sclk_N_384), .CD(n1935), 
            .Q(n780)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i2_429_430_reset.GSR = "DISABLED";
    FD1S3BX tx_buf_i0_i1_433_434_set (.D(n18[1]), .CK(sclk_N_384), .PD(n1936), 
            .Q(n783)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i1_433_434_set.GSR = "DISABLED";
    FD1S3DX tx_buf_i0_i1_433_434_reset (.D(n18[1]), .CK(sclk_N_384), .CD(n1937), 
            .Q(n784)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i1_433_434_reset.GSR = "DISABLED";
    FD1P3JX roe_233 (.D(roe_N_396), .SP(top_test0_c_enable_3), .PD(roe_N_398), 
            .CK(top_test0_c), .Q(roe_N_376)) /* synthesis LSE_LINE_FILE_ID=52, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(135[5] 145[12])
    defparam roe_233.GSR = "DISABLED";
    LUT4 rd_add_N_358_I_0_2_lut (.A(rd_add), .B(top_test4_c), .Z(trdy_N_387)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(114[13:54])
    defparam rd_add_N_358_I_0_2_lut.init = 16'h4444;
    LUT4 i1193_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[0]), .B(spi_rst), 
         .C(n2136), .D(n1943), .Z(n2136)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i1193_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 i1_2_lut_adj_20 (.A(top_test6_c), .B(bit_cnt[12]), .Z(rx_buf_4__N_296)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(97[5] 99[12])
    defparam i1_2_lut_adj_20.init = 16'h4444;
    LUT4 i403_3_lut (.A(n752), .B(n751), .C(n2136), .Z(tx_buf[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i403_3_lut.init = 16'hcaca;
    LUT4 i411_3_lut (.A(n760), .B(n759), .C(n2127), .Z(tx_buf[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i411_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut (.A(n10_adj_407), .B(n14_adj_408), .C(top_test4_c), 
         .D(bit_cnt[6]), .Z(n1409)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_4_lut_adj_21 (.A(spi_rst), .B(n55), .C(n1938), .D(trdy_N_387), 
         .Z(top_test0_c_enable_2)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(107[68:81])
    defparam i1_4_lut_4_lut_adj_21.init = 16'hfffd;
    LUT4 i2_2_lut (.A(bit_cnt[4]), .B(bit_cnt[1]), .Z(n10_adj_407)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i1292_4_lut (.A(spi_rx_data[5]), .B(rx_buf[5]), .C(n1661), .D(spi_rst), 
         .Z(spi_rx_data[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i1292_4_lut.init = 16'hca0a;
    LUT4 reset_n_I_0_1_lut_rep_56 (.A(spi_rst), .Z(n1942)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(107[68:81])
    defparam reset_n_I_0_1_lut_rep_56.init = 16'h5555;
    LUT4 i1_4_lut_adj_22 (.A(bit_cnt[2]), .B(bit_cnt[5]), .C(bit_cnt[7]), 
         .D(bit_cnt[3]), .Z(n14_adj_408)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_22.init = 16'hfffe;
    LUT4 i1288_4_lut (.A(spi_rx_data[4]), .B(rx_buf[4]), .C(n1661), .D(spi_rst), 
         .Z(spi_rx_data[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i1288_4_lut.init = 16'hca0a;
    LUT4 i1286_2_lut_3_lut_3_lut (.A(spi_rst), .B(top_test3_c), .C(\spi_next_state_3__N_261[3] ), 
         .Z(n1661)) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(107[68:81])
    defparam i1286_2_lut_3_lut_3_lut.init = 16'hd5d5;
    LUT4 i1244_4_lut (.A(spi_rx_data[0]), .B(rx_buf[0]), .C(n1661), .D(spi_rst), 
         .Z(spi_rx_data[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i1244_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_4_lut_adj_23 (.A(spi_rst), .B(n20), .C(roe_N_398), .D(n1945), 
         .Z(top_test0_c_enable_3)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(107[68:81])
    defparam i1_4_lut_4_lut_adj_23.init = 16'hfffd;
    LUT4 i1284_4_lut (.A(spi_rx_data[3]), .B(rx_buf[3]), .C(n1661), .D(spi_rst), 
         .Z(spi_rx_data[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i1284_4_lut.init = 16'hca0a;
    LUT4 i1280_4_lut (.A(spi_rx_data[2]), .B(rx_buf[2]), .C(n1661), .D(spi_rst), 
         .Z(spi_rx_data[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i1280_4_lut.init = 16'hca0a;
    LUT4 i1163_2_lut (.A(\spi_next_state_3__N_261[3] ), .B(spi_rst), .Z(bit_cnt_15__N_285)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(84[8:35])
    defparam i1163_2_lut.init = 16'h4444;
    LUT4 i1276_4_lut (.A(spi_rx_data[1]), .B(rx_buf[1]), .C(n1661), .D(spi_rst), 
         .Z(spi_rx_data[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i1276_4_lut.init = 16'hca0a;
    LUT4 i435_3_lut (.A(n784), .B(n783), .C(n2187), .Z(tx_buf[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i435_3_lut.init = 16'hcaca;
    LUT4 i431_3_lut (.A(n780), .B(n779), .C(n2178), .Z(tx_buf[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i431_3_lut.init = 16'hcaca;
    LUT4 i427_3_lut (.A(n776), .B(n775), .C(n2169), .Z(tx_buf[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i427_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut (.A(rrdy_N_369), .B(n1917), .C(top_test4_c), .D(top_test6_c), 
         .Z(roe_N_398)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0080;
    LUT4 i423_3_lut (.A(n772), .B(n771), .C(n2160), .Z(tx_buf[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i423_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_24 (.A(\bit_cnt[9] ), .B(\bit_cnt[8] ), .C(n20), 
         .D(spi_rst), .Z(n1455)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_24.init = 16'h0100;
    LUT4 i1184_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[7]), .B(spi_rst), 
         .C(n2127), .D(n1943), .Z(n2127)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i1184_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 tx_buf_7__I_6_3_lut_rep_57 (.A(\spi_next_state_3__N_261[3] ), .B(spi_rst), 
         .C(spi_tx_load_en), .Z(n1943)) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__I_6_3_lut_rep_57.init = 16'hb3b3;
    LUT4 mux_226_Mux_1_i7_4_lut (.A(n1455), .B(tx_buf[7]), .C(rd_add), 
         .D(roe_N_376), .Z(n568[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(179[9] 184[18])
    defparam mux_226_Mux_1_i7_4_lut.init = 16'hac0c;
    LUT4 i2_2_lut_rep_30_3_lut (.A(n1923), .B(spi_rst), .C(rrdy_N_369), 
         .Z(n1916)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_2_lut_rep_30_3_lut.init = 16'h4040;
    LUT4 tx_buf_7__I_0_303_2_lut_rep_40_3_lut_4_lut (.A(\spi_next_state_3__N_261[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[7]), .Z(n1926)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__I_0_303_2_lut_rep_40_3_lut_4_lut.init = 16'h8000;
    LUT4 tx_buf_7__N_314_I_0_2_lut_rep_33_3_lut_4_lut (.A(\spi_next_state_3__N_261[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[0]), .Z(n1919)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_314_I_0_2_lut_rep_33_3_lut_4_lut.init = 16'h33b3;
    LUT4 tx_buf_7__N_314_I_0_296_2_lut_rep_41_3_lut_4_lut (.A(\spi_next_state_3__N_261[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[7]), .Z(n1927)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_314_I_0_296_2_lut_rep_41_3_lut_4_lut.init = 16'h33b3;
    LUT4 i1_2_lut_adj_25 (.A(top_test6_c), .B(bit_cnt[13]), .Z(rx_buf_3__N_298)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(97[5] 99[12])
    defparam i1_2_lut_adj_25.init = 16'h4444;
    LUT4 tx_buf_7__N_355_I_0_3_lut_rep_32 (.A(n1409), .B(n1988), .C(rd_add), 
         .Z(sclk_N_384_enable_1)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(178[7] 187[14])
    defparam tx_buf_7__N_355_I_0_3_lut_rep_32.init = 16'hc5c5;
    LUT4 tx_buf_7__N_314_I_0_289_2_lut_rep_36_3_lut_4_lut (.A(\spi_next_state_3__N_261[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[6]), .Z(n1922)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_314_I_0_289_2_lut_rep_36_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_adj_26 (.A(top_test6_c), .B(bit_cnt[14]), .Z(rx_buf_2__N_300)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(97[5] 99[12])
    defparam i1_2_lut_adj_26.init = 16'h4444;
    LUT4 tx_buf_7__N_314_I_0_295_2_lut_rep_39_3_lut_4_lut (.A(\spi_next_state_3__N_261[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[0]), .Z(n1925)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_314_I_0_295_2_lut_rep_39_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_3_lut (.A(n475), .B(spi_rst), .C(rrdy_N_369), .Z(n1441)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    LUT4 tx_buf_7__N_314_I_0_297_2_lut_rep_35_3_lut_4_lut (.A(\spi_next_state_3__N_261[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[6]), .Z(n1921)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_314_I_0_297_2_lut_rep_35_3_lut_4_lut.init = 16'h33b3;
    LUT4 i320_2_lut_rep_58 (.A(miso_N_382), .B(miso_N_383), .Z(n1944)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i320_2_lut_rep_58.init = 16'h8888;
    LUT4 tx_buf_7__I_0_3_lut_4_lut (.A(miso_N_382), .B(miso_N_383), .C(sclk_N_384_enable_1), 
         .D(n568[1]), .Z(miso_N_402)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam tx_buf_7__I_0_3_lut_4_lut.init = 16'hf808;
    LUT4 tx_buf_7__N_314_I_0_298_2_lut_rep_43_4_lut_4_lut (.A(spi_tx_data[5]), 
         .B(spi_rst), .C(spi_tx_load_en), .D(\spi_next_state_3__N_261[3] ), 
         .Z(n1929)) /* synthesis lut_function=(!(A (B)+!A !((C (D))+!B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_314_I_0_298_2_lut_rep_43_4_lut_4_lut.init = 16'h7333;
    LUT4 tx_buf_7__N_314_I_0_290_2_lut_rep_42_4_lut_4_lut (.A(spi_tx_data[5]), 
         .B(spi_rst), .C(spi_tx_load_en), .D(\spi_next_state_3__N_261[3] ), 
         .Z(n1928)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_314_I_0_290_2_lut_rep_42_4_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_adj_27 (.A(top_test6_c), .B(bit_cnt[15]), .Z(rx_buf_1__N_302)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(97[5] 99[12])
    defparam i1_2_lut_adj_27.init = 16'h4444;
    LUT4 i1207_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[5]), .B(spi_rst), 
         .C(n2151), .D(n1943), .Z(n2151)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i1207_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 tx_buf_7__N_314_I_0_299_2_lut_rep_45_4_lut_4_lut (.A(spi_tx_data[4]), 
         .B(spi_rst), .C(spi_tx_load_en), .D(\spi_next_state_3__N_261[3] ), 
         .Z(n1931)) /* synthesis lut_function=(!(A (B)+!A !((C (D))+!B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_314_I_0_299_2_lut_rep_45_4_lut_4_lut.init = 16'h7333;
    LUT4 tx_buf_i1_i8_3_lut_4_lut (.A(n1409), .B(rd_add), .C(tx_buf[6]), 
         .D(tx_buf[7]), .Z(n18[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam tx_buf_i1_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 tx_buf_i1_i1_3_lut_4_lut (.A(n1409), .B(rd_add), .C(tx_buf[7]), 
         .D(tx_buf[0]), .Z(n18[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam tx_buf_i1_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 tx_buf_7__N_314_I_0_291_2_lut_rep_44_4_lut_4_lut (.A(spi_tx_data[4]), 
         .B(spi_rst), .C(spi_tx_load_en), .D(\spi_next_state_3__N_261[3] ), 
         .Z(n1930)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_314_I_0_291_2_lut_rep_44_4_lut_4_lut.init = 16'h8000;
    LUT4 i1216_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[4]), .B(spi_rst), 
         .C(n2160), .D(n1943), .Z(n2160)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i1216_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 tx_buf_7__N_314_I_0_292_2_lut_rep_46_4_lut_4_lut (.A(spi_tx_data[3]), 
         .B(spi_rst), .C(spi_tx_load_en), .D(\spi_next_state_3__N_261[3] ), 
         .Z(n1932)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_314_I_0_292_2_lut_rep_46_4_lut_4_lut.init = 16'h8000;
    LUT4 tx_buf_i1_i7_3_lut_4_lut (.A(n1409), .B(rd_add), .C(tx_buf[5]), 
         .D(tx_buf[6]), .Z(n18[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam tx_buf_i1_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 tx_buf_i1_i6_3_lut_4_lut (.A(n1409), .B(rd_add), .C(tx_buf[4]), 
         .D(tx_buf[5]), .Z(n18[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam tx_buf_i1_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 tx_buf_7__N_314_I_0_300_2_lut_rep_47_4_lut_4_lut (.A(spi_tx_data[3]), 
         .B(spi_rst), .C(spi_tx_load_en), .D(\spi_next_state_3__N_261[3] ), 
         .Z(n1933)) /* synthesis lut_function=(!(A (B)+!A !((C (D))+!B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_314_I_0_300_2_lut_rep_47_4_lut_4_lut.init = 16'h7333;
    LUT4 tx_buf_i1_i5_3_lut_4_lut (.A(n1409), .B(rd_add), .C(tx_buf[3]), 
         .D(tx_buf[4]), .Z(n18[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam tx_buf_i1_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1229_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[3]), .B(spi_rst), 
         .C(n2169), .D(n1943), .Z(n2169)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i1229_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 tx_buf_7__N_314_I_0_301_2_lut_rep_49_4_lut_4_lut (.A(spi_tx_data[2]), 
         .B(spi_rst), .C(spi_tx_load_en), .D(\spi_next_state_3__N_261[3] ), 
         .Z(n1935)) /* synthesis lut_function=(!(A (B)+!A !((C (D))+!B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_314_I_0_301_2_lut_rep_49_4_lut_4_lut.init = 16'h7333;
    LUT4 tx_buf_7__N_314_I_0_293_2_lut_rep_48_4_lut_4_lut (.A(spi_tx_data[2]), 
         .B(spi_rst), .C(spi_tx_load_en), .D(\spi_next_state_3__N_261[3] ), 
         .Z(n1934)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_314_I_0_293_2_lut_rep_48_4_lut_4_lut.init = 16'h8000;
    LUT4 i1234_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[2]), .B(spi_rst), 
         .C(n2178), .D(n1943), .Z(n2178)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i1234_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 tx_buf_i1_i4_3_lut_4_lut (.A(n1409), .B(rd_add), .C(tx_buf[2]), 
         .D(tx_buf[3]), .Z(n18[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam tx_buf_i1_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 tx_buf_7__N_314_I_0_302_2_lut_rep_51_4_lut_4_lut (.A(spi_tx_data[1]), 
         .B(spi_rst), .C(spi_tx_load_en), .D(\spi_next_state_3__N_261[3] ), 
         .Z(n1937)) /* synthesis lut_function=(!(A (B)+!A !((C (D))+!B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_314_I_0_302_2_lut_rep_51_4_lut_4_lut.init = 16'h7333;
    LUT4 tx_buf_7__N_314_I_0_294_2_lut_rep_50_4_lut_4_lut (.A(spi_tx_data[1]), 
         .B(spi_rst), .C(spi_tx_load_en), .D(\spi_next_state_3__N_261[3] ), 
         .Z(n1936)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_314_I_0_294_2_lut_rep_50_4_lut_4_lut.init = 16'h8000;
    LUT4 tx_buf_i1_i3_3_lut_4_lut (.A(n1409), .B(rd_add), .C(tx_buf[1]), 
         .D(tx_buf[2]), .Z(n18[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam tx_buf_i1_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1239_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[1]), .B(spi_rst), 
         .C(n2187), .D(n1943), .Z(n2187)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i1239_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 i1_2_lut_rep_59 (.A(top_test6_c), .B(bit_cnt[11]), .Z(n1945)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(97[5] 99[12])
    defparam i1_2_lut_rep_59.init = 16'h8888;
    LUT4 i1_2_lut_3_lut (.A(top_test6_c), .B(bit_cnt[11]), .C(top_test1_c), 
         .Z(roe_N_396)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(97[5] 99[12])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_3_lut_4_lut_4_lut (.A(\bit_cnt[8] ), .B(rrdy_N_369), .C(spi_rst), 
         .D(n1923), .Z(n1385)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 tx_buf_i1_i2_3_lut_4_lut (.A(n1409), .B(rd_add), .C(tx_buf[0]), 
         .D(tx_buf[1]), .Z(n18[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam tx_buf_i1_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_adj_28 (.A(\bit_cnt[9] ), .B(top_test6_c), .Z(rx_buf_7__N_287)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam i1_2_lut_adj_28.init = 16'h2222;
    LUT4 i1_2_lut_adj_29 (.A(top_test6_c), .B(bit_cnt[10]), .Z(rx_buf_6__N_292)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(97[5] 99[12])
    defparam i1_2_lut_adj_29.init = 16'h4444;
    LUT4 i1300_4_lut (.A(spi_rx_data[7]), .B(rx_buf[7]), .C(n1661), .D(spi_rst), 
         .Z(spi_rx_data[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i1300_4_lut.init = 16'hca0a;
    LUT4 i1_3_lut_adj_30 (.A(n483), .B(spi_rst), .C(rrdy_N_369), .Z(n1445)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_30.init = 16'h8080;
    LUT4 i319_1_lut (.A(miso_N_383), .Z(n659)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i319_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_31_4_lut (.A(\spi_next_state_3__N_261[3] ), .B(n1939), 
         .C(top_test3_c), .D(spi_rst), .Z(n1917)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(120[9:83])
    defparam i1_2_lut_rep_31_4_lut.init = 16'h5700;
    LUT4 i415_3_lut (.A(n764), .B(n763), .C(n2124), .Z(tx_buf[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i415_3_lut.init = 16'hcaca;
    LUT4 i419_3_lut (.A(n768), .B(n767), .C(n2151), .Z(tx_buf[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i419_3_lut.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module spi_ctrl
//

module spi_ctrl (n482, clkDivider_clko, n1924, n483, n475, n1433, 
            n1923, spi_tx_load_en_N_280, n478, spi_rst_N_271, spi_rx_req_N_273, 
            spi_tx_data_7__N_248, spi_st_load_trdy_N_279, n1989, top_test3_c, 
            n1987, \spi_next_state_3__N_261[3] , n1441, n1445, spi_st_load_en, 
            spi_st_load_trdy, rrdy_N_394, n1948, spi_tx_load_en, trdy_N_389) /* synthesis syn_module_defined=1 */ ;
    output n482;
    input clkDivider_clko;
    input n1924;
    output n483;
    output n475;
    input n1433;
    input n1923;
    output spi_tx_load_en_N_280;
    output n478;
    output spi_rst_N_271;
    input spi_rx_req_N_273;
    output spi_tx_data_7__N_248;
    output spi_st_load_trdy_N_279;
    input n1989;
    output top_test3_c;
    input n1987;
    input \spi_next_state_3__N_261[3] ;
    input n1441;
    input n1445;
    output spi_st_load_en;
    input spi_st_load_trdy;
    output rrdy_N_394;
    input n1948;
    input spi_tx_load_en;
    output trdy_N_389;
    
    wire clkDivider_clko /* synthesis is_clock=1, SET_AS_NETWORK=clkDivider_clko */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(46[8:23])
    
    wire n676, n692;
    wire [15:0]n469;
    
    wire spi_st_load_en_N_277, n682, n4, n674, n1947, spi_rst_N_272;
    
    FD1S3DX spi_current_state_FSM_i4 (.D(n676), .CK(clkDivider_clko), .CD(n1924), 
            .Q(n482));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i4.GSR = "DISABLED";
    FD1S3DX spi_current_state_FSM_i3 (.D(n692), .CK(clkDivider_clko), .CD(n1924), 
            .Q(n483));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i3.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(n475), .B(n1433), .C(n483), .D(n1923), .Z(n692)) /* synthesis lut_function=(A ((D)+!B)+!A (B (C (D))+!B (C))) */ ;
    defparam i1_4_lut.init = 16'hfa32;
    LUT4 i3_4_lut (.A(n469[1]), .B(spi_tx_load_en_N_280), .C(n478), .D(spi_st_load_en_N_277), 
         .Z(spi_rst_N_271)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam i3_4_lut.init = 16'hfffe;
    FD1S3DX spi_current_state_FSM_i11 (.D(n682), .CK(clkDivider_clko), .CD(n1924), 
            .Q(n475));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i11.GSR = "DISABLED";
    FD1S3DX spi_current_state_FSM_i10 (.D(spi_rx_req_N_273), .CK(clkDivider_clko), 
            .CD(n1924), .Q(n469[9]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i10.GSR = "DISABLED";
    FD1S3DX spi_current_state_FSM_i9 (.D(n4), .CK(clkDivider_clko), .CD(n1924), 
            .Q(spi_tx_load_en_N_280));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i9.GSR = "DISABLED";
    FD1S3DX spi_current_state_FSM_i8 (.D(n674), .CK(clkDivider_clko), .CD(n1924), 
            .Q(n478));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i8.GSR = "DISABLED";
    FD1S3DX spi_current_state_FSM_i7 (.D(n469[1]), .CK(clkDivider_clko), 
            .CD(n1924), .Q(spi_st_load_en_N_277));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i7.GSR = "DISABLED";
    FD1S3DX spi_current_state_FSM_i6 (.D(spi_tx_data_7__N_248), .CK(clkDivider_clko), 
            .CD(n1924), .Q(n469[5]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i6.GSR = "DISABLED";
    FD1S3DX spi_current_state_FSM_i5 (.D(n469[9]), .CK(clkDivider_clko), 
            .CD(n1924), .Q(spi_tx_data_7__N_248));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i5.GSR = "DISABLED";
    FD1S3DX spi_current_state_FSM_i2 (.D(spi_st_load_trdy_N_279), .CK(clkDivider_clko), 
            .CD(n1924), .Q(n469[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i2.GSR = "DISABLED";
    FD1S3BX spi_current_state_FSM_i1 (.D(n1989), .CK(clkDivider_clko), .PD(n1924), 
            .Q(spi_st_load_trdy_N_279));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i1.GSR = "DISABLED";
    LUT4 i1203_4_lut_else_2_lut (.A(top_test3_c), .B(spi_tx_data_7__N_248), 
         .C(n469[9]), .D(n1987), .Z(n1947)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(105[1] 180[4])
    defparam i1203_4_lut_else_2_lut.init = 16'h0200;
    LUT4 i49_4_lut (.A(\spi_next_state_3__N_261[3] ), .B(n1441), .C(n478), 
         .D(n1923), .Z(n682)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(32[11:25])
    defparam i49_4_lut.init = 16'h50dc;
    LUT4 i1_2_lut (.A(spi_st_load_en_N_277), .B(n469[5]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_3_lut (.A(\spi_next_state_3__N_261[3] ), .B(spi_tx_load_en_N_280), 
         .C(n478), .Z(n674)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(32[11:25])
    defparam i1_3_lut.init = 16'hecec;
    LUT4 i51_4_lut (.A(\spi_next_state_3__N_261[3] ), .B(n1445), .C(n482), 
         .D(n1923), .Z(n676)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(32[11:25])
    defparam i51_4_lut.init = 16'h50dc;
    LUT4 i1221_4_lut (.A(spi_st_load_en), .B(spi_st_load_en_N_277), .C(spi_rst_N_272), 
         .D(n1987), .Z(spi_st_load_en)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(105[1] 180[4])
    defparam i1221_4_lut.init = 16'hca00;
    LUT4 i1_2_lut_adj_18 (.A(spi_st_load_trdy_N_279), .B(spi_rst_N_271), 
         .Z(spi_rst_N_272)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam i1_2_lut_adj_18.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(spi_st_load_en), .B(spi_st_load_trdy), .C(\spi_next_state_3__N_261[3] ), 
         .Z(rrdy_N_394)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(105[1] 180[4])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    PFUMX i1438 (.BLUT(n1947), .ALUT(n1948), .C0(n482), .Z(top_test3_c));
    LUT4 ss_n_I_0_3_lut_4_lut (.A(spi_st_load_en), .B(spi_st_load_trdy), 
         .C(spi_tx_load_en), .D(\spi_next_state_3__N_261[3] ), .Z(trdy_N_389)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (C (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(105[1] 180[4])
    defparam ss_n_I_0_3_lut_4_lut.init = 16'hf800;
    
endmodule
//
// Verilog Description of module pll_64M
//

module pll_64M (top_rst_n_N_66, pll_clko, pll_lock, GND_net, top_clk_c, 
            VCC_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input top_rst_n_N_66;
    output pll_clko;
    output pll_lock;
    input GND_net;
    input top_clk_c;
    input VCC_net;
    
    wire pll_clko /* synthesis SET_AS_NETWORK=pll_clko, is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(42[8:16])
    wire CLKIt /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/ble_tx_clarity/pll_64m/pll_64m.v(20[10:15])
    wire GND_net /* synthesis IO_TYPES=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(63[21:35])
    wire top_clk_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(8[8:15])
    
    EHXPLLL PLLInst_0 (.CLKI(CLKIt), .CLKFB(pll_clko), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .PHASELOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(top_rst_n_N_66), .ENCLKOP(GND_net), .ENCLKOS(GND_net), 
            .ENCLKOS2(GND_net), .ENCLKOS3(GND_net), .CLKOP(pll_clko), 
            .LOCK(pll_lock)) /* synthesis FREQUENCY_PIN_CLKOP="64.000000", FREQUENCY_PIN_CLKI="32.000000", ICP_CURRENT="5", LPF_RESISTOR="16", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=354, LSE_RLINE=361 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(354[9] 361[2])
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
    PLLREFCS PLLRefcs_0 (.CLK0(GND_net), .CLK1(top_clk_c), .SEL(VCC_net), 
            .PLLCSOUT(CLKIt)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=354, LSE_RLINE=361 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(354[9] 361[2])
    
endmodule
