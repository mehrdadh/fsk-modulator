// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.3.144
// Netlist written on Thu May 09 19:09:46 2019
//
// Verilog Description of module topModule
//

module topModule (top_clk, top_rst_n, top_spi_mosi, top_spi_miso, top_spi_sclk, 
            top_spi_cs, osc_en, serial_iq, serial_clk, LED, top_test0, 
            top_test1, top_test2, top_test3, top_test4, top_test5, 
            top_test6) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(5[8:17])
    input top_clk;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(6[8:15])
    input top_rst_n;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(7[8:17])
    input top_spi_mosi;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(10[9:21])
    output top_spi_miso;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(11[13:25])
    input top_spi_sclk;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(12[9:21])
    input top_spi_cs;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(13[9:19])
    output osc_en;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(15[10:16])
    output serial_iq;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(16[10:19])
    output serial_clk /* synthesis IO_TYPES=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(17[10:20])
    output LED /* synthesis IO_TYPES=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(18[13:16])
    output top_test0;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(20[10:19])
    output top_test1;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(21[10:19])
    output top_test2;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(22[10:19])
    output top_test3;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(23[10:19])
    output top_test4;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(24[10:19])
    output top_test5;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(25[11:20])
    output top_test6;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(26[11:20])
    
    wire top_clk_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(6[8:15])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(17[10:20])
    wire LED_c /* synthesis IO_TYPES=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(18[13:16])
    wire top_test0_c /* synthesis is_clock=1, SET_AS_NETWORK=top_test0_c */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(20[10:19])
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(44[8:27])
    wire clk_N_224 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(21[12:18])
    wire clk_N_369 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(17[11:24])
    wire sclk_N_444 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(60[10:16])
    
    wire GND_net, VCC_net, top_rst_n_c, top_spi_mosi_c, top_spi_miso_c, 
        top_spi_sclk_c, top_spi_cs_c, top_test1_c, top_test4_c, top_test6_c, 
        counter_0_countDone, fskModule_symVal;
    wire [12:0]fskModule_I;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(55[21:32])
    wire [12:0]fskModule_Q;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(56[21:32])
    
    wire fskModule_symDone, IQSerializer_start, spi_rst, spi_st_load_en, 
        spi_st_load_trdy, spi_st_load_rrdy, spi_tx_load_en;
    wire [7:0]spi_tx_data;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(75[19:30])
    wire [7:0]spi_rx_data;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(78[20:31])
    wire [3:0]spi_current_state;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(135[11:28])
    
    wire top_test5_c_0, top_test3_c_2, n3402, n3434, n3401, spi_tx_data_7__N_23;
    wire [3:0]spi_next_state_3__N_46;
    
    wire top_test4_N_64, top_rst_n_N_63, n3400, n3406;
    wire [25:0]waitcount;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(12[23:32])
    wire [7:0]symCounter;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(34[11:21])
    
    wire data, next_state_3__N_202, next_state_3__N_203, next_state_3__N_205, 
        n3399, n3398;
    wire [11:0]sampleCount;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(41[23:34])
    
    wire n3980, n3397, n3405, n3404, n3403, n1115, n13, n4549, 
        cout, serial, n1688;
    wire [3:0]QCounter;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(22[41:49])
    
    wire n3446, n3445, n4082, n4542, n4541, clockDivider_clk_4M_enable_9, 
        bit_cnt_16__N_437, n4550, n3444, n4433, n3443, n4536, miso_N_536, 
        n4535, n3442, n3979, n3441, n3440, n4531, n3439, n4547, 
        n3370, n3375, n3374, cout_adj_573, n3373, n4546, n3438, 
        n3372, n3437, n28, n3436, n31, n34, n37, n40, n43, 
        n46, n49, n52, n4668, n55, n58, n61, n4545, n3435, 
        n3371, n14;
    
    VHI i2 (.Z(VCC_net));
    FD1S3AX spi_mosi_152 (.D(top_spi_mosi_c), .CK(serial_clk_c), .Q(top_test1_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(102[8] 107[4])
    defparam spi_mosi_152.GSR = "DISABLED";
    FD1S3AX top_spi_miso_153 (.D(n4542), .CK(serial_clk_c), .Q(top_spi_miso_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(102[8] 107[4])
    defparam top_spi_miso_153.GSR = "DISABLED";
    CCU2C add_2449_21 (.A0(waitcount[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3443), .COUT(n3444));
    defparam add_2449_21.INIT0 = 16'h5555;
    defparam add_2449_21.INIT1 = 16'h5555;
    defparam add_2449_21.INJECT1_0 = "NO";
    defparam add_2449_21.INJECT1_1 = "NO";
    FD1S3AX spi_sclk_150 (.D(top_spi_sclk_c), .CK(serial_clk_c), .Q(top_test0_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(102[8] 107[4])
    defparam spi_sclk_150.GSR = "DISABLED";
    PFUMX i3489 (.BLUT(n4546), .ALUT(n4547), .C0(spi_rst), .Z(spi_rst));
    OB top_test1_pad (.I(top_test1_c), .O(top_test1));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(21[10:19])
    LUT4 spi_st_load_en_bdd_4_lut (.A(spi_st_load_en), .B(spi_current_state[2]), 
         .C(spi_current_state[1]), .D(spi_current_state[0]), .Z(n4433)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A !(B+(C+!(D)))) */ ;
    defparam spi_st_load_en_bdd_4_lut.init = 16'ha3a8;
    FD1S3IX spi_current_state__i1 (.D(spi_next_state_3__N_46[0]), .CK(clockDivider_clk_4M), 
            .CD(n4535), .Q(spi_current_state[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(140[8] 145[4])
    defparam spi_current_state__i1.GSR = "DISABLED";
    CCU2C add_2449_19 (.A0(waitcount[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3442), .COUT(n3443));
    defparam add_2449_19.INIT0 = 16'h5555;
    defparam add_2449_19.INIT1 = 16'h5555;
    defparam add_2449_19.INJECT1_0 = "NO";
    defparam add_2449_19.INJECT1_1 = "NO";
    CCU2C add_2449_17 (.A0(waitcount[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3441), .COUT(n3442));
    defparam add_2449_17.INIT0 = 16'h5555;
    defparam add_2449_17.INIT1 = 16'h5555;
    defparam add_2449_17.INJECT1_0 = "NO";
    defparam add_2449_17.INJECT1_1 = "NO";
    LUT4 n113_bdd_2_lut_3459 (.A(n4433), .B(top_test6_c), .Z(spi_st_load_en)) /* synthesis lut_function=(A (B)) */ ;
    defparam n113_bdd_2_lut_3459.init = 16'h8888;
    LUT4 i3169_4_lut_then_4_lut (.A(spi_current_state[2]), .B(spi_current_state[0]), 
         .C(top_test6_c), .D(spi_current_state[1]), .Z(n4547)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(147[1] 226[4])
    defparam i3169_4_lut_then_4_lut.init = 16'hf0e0;
    CCU2C add_2449_15 (.A0(waitcount[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3440), .COUT(n3441));
    defparam add_2449_15.INIT0 = 16'h5555;
    defparam add_2449_15.INIT1 = 16'h5555;
    defparam add_2449_15.INJECT1_0 = "NO";
    defparam add_2449_15.INJECT1_1 = "NO";
    CCU2C add_2449_13 (.A0(waitcount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3439), .COUT(n3440));
    defparam add_2449_13.INIT0 = 16'h5555;
    defparam add_2449_13.INIT1 = 16'h5555;
    defparam add_2449_13.INJECT1_0 = "NO";
    defparam add_2449_13.INJECT1_1 = "NO";
    ROM256X1A addr_7__I_0 (.AD0(symCounter[0]), .AD1(symCounter[1]), .AD2(symCounter[2]), 
            .AD3(symCounter[3]), .AD4(symCounter[4]), .AD5(symCounter[5]), 
            .AD6(symCounter[6]), .AD7(symCounter[7]), .DO0(data)) /* synthesis initstate=0xB5463ABDE2A89C8349F82B64F363CE4D6143ADA31E8BE2DC5836468E89BED6AA */ ;
    defparam addr_7__I_0.initval = 256'hB5463ABDE2A89C8349F82B64F363CE4D6143ADA31E8BE2DC5836468E89BED6AA;
    OB top_test0_pad (.I(top_test0_c), .O(top_test0));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(20[10:19])
    OB LED_pad (.I(LED_c), .O(LED));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(18[13:16])
    OB serial_clk_pad (.I(serial_clk_c), .O(serial_clk));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(17[10:20])
    CCU2C _add_1_918_add_4_13 (.A0(sampleCount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3375), .S0(n28));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_918_add_4_13.INIT0 = 16'haaa0;
    defparam _add_1_918_add_4_13.INIT1 = 16'h0000;
    defparam _add_1_918_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_918_add_4_13.INJECT1_1 = "NO";
    CCU2C _add_1_918_add_4_11 (.A0(sampleCount[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3374), .COUT(n3375), .S0(n34), .S1(n31));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_918_add_4_11.INIT0 = 16'haaa0;
    defparam _add_1_918_add_4_11.INIT1 = 16'haaa0;
    defparam _add_1_918_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_918_add_4_11.INJECT1_1 = "NO";
    FD1S3AX spi_cs_151 (.D(top_spi_cs_c), .CK(serial_clk_c), .Q(top_test3_c_2));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(102[8] 107[4])
    defparam spi_cs_151.GSR = "DISABLED";
    CCU2C _add_1_918_add_4_9 (.A0(sampleCount[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3373), .COUT(n3374), .S0(n40), .S1(n37));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_918_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_918_add_4_9.INIT1 = 16'haaa0;
    defparam _add_1_918_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_918_add_4_9.INJECT1_1 = "NO";
    CCU2C add_2449_11 (.A0(waitcount[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3438), .COUT(n3439));
    defparam add_2449_11.INIT0 = 16'h5555;
    defparam add_2449_11.INIT1 = 16'h5555;
    defparam add_2449_11.INJECT1_0 = "NO";
    defparam add_2449_11.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut (.A(top_test3_c_2), .B(spi_current_state[2]), .C(spi_current_state[1]), 
         .D(spi_current_state[0]), .Z(spi_next_state_3__N_46[2])) /* synthesis lut_function=(A (B+(D))+!A (B ((D)+!C)+!B !(C+!(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hef8c;
    OB serial_iq_pad (.I(serial), .O(serial_iq));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(16[10:19])
    OBZ n1687_pad (.I(miso_N_536), .T(n1688), .O(top_test2));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(85[3] 180[15])
    CCU2C add_2449_9 (.A0(waitcount[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3437), .COUT(n3438));
    defparam add_2449_9.INIT0 = 16'h5555;
    defparam add_2449_9.INIT1 = 16'h5555;
    defparam add_2449_9.INJECT1_0 = "NO";
    defparam add_2449_9.INJECT1_1 = "NO";
    LUT4 i3116_1_lut_4_lut_3_lut (.A(spi_current_state[1]), .B(top_test3_c_2), 
         .C(spi_current_state[2]), .Z(n3980)) /* synthesis lut_function=(A ((C)+!B)+!A !(C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(199[4:21])
    defparam i3116_1_lut_4_lut_3_lut.init = 16'ha7a7;
    LUT4 i3177_3_lut (.A(spi_st_load_rrdy), .B(top_test6_c), .Z(spi_st_load_rrdy)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(147[1] 226[4])
    defparam i3177_3_lut.init = 16'h8888;
    LUT4 i3169_4_lut_else_4_lut (.A(spi_current_state[2]), .B(spi_current_state[0]), 
         .C(top_test6_c), .D(spi_current_state[1]), .Z(n4546)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(147[1] 226[4])
    defparam i3169_4_lut_else_4_lut.init = 16'h0040;
    CCU2C add_2449_7 (.A0(waitcount[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3436), .COUT(n3437));
    defparam add_2449_7.INIT0 = 16'haaa5;
    defparam add_2449_7.INIT1 = 16'h5555;
    defparam add_2449_7.INJECT1_0 = "NO";
    defparam add_2449_7.INJECT1_1 = "NO";
    CCU2C add_2449_5 (.A0(waitcount[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3435), .COUT(n3436));
    defparam add_2449_5.INIT0 = 16'h5555;
    defparam add_2449_5.INIT1 = 16'haaa5;
    defparam add_2449_5.INJECT1_0 = "NO";
    defparam add_2449_5.INJECT1_1 = "NO";
    CCU2C add_2449_3 (.A0(waitcount[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3434), .COUT(n3435));
    defparam add_2449_3.INIT0 = 16'haaa5;
    defparam add_2449_3.INIT1 = 16'h5555;
    defparam add_2449_3.INJECT1_0 = "NO";
    defparam add_2449_3.INJECT1_1 = "NO";
    CCU2C add_2449_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3434));
    defparam add_2449_1.INIT0 = 16'h0000;
    defparam add_2449_1.INIT1 = 16'haaaf;
    defparam add_2449_1.INJECT1_0 = "NO";
    defparam add_2449_1.INJECT1_1 = "NO";
    LUT4 i1915_1_lut_rep_66 (.A(QCounter[1]), .Z(n4531)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(62[26:43])
    defparam i1915_1_lut_rep_66.init = 16'h5555;
    LUT4 i12_4_lut_4_lut (.A(QCounter[1]), .B(fskModule_Q[7]), .C(QCounter[2]), 
         .D(fskModule_Q[6]), .Z(n14)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(62[26:43])
    defparam i12_4_lut_4_lut.init = 16'h4f40;
    LUT4 i1916_2_lut_2_lut (.A(QCounter[1]), .B(fskModule_Q[12]), .Z(n13)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(62[26:43])
    defparam i1916_2_lut_2_lut.init = 16'h4444;
    LUT4 i3165_4_lut (.A(top_test4_c), .B(top_test4_N_64), .C(n4545), 
         .D(top_test6_c), .Z(top_test4_c)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(147[1] 226[4])
    defparam i3165_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_rep_71 (.A(top_test3_c_2), .B(top_test4_c), .Z(n4536)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(102[8] 107[4])
    defparam i1_2_lut_rep_71.init = 16'h8888;
    LUT4 top_rst_n_I_0_1_lut (.A(top_rst_n_c), .Z(top_rst_n_N_63)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(235[8:18])
    defparam top_rst_n_I_0_1_lut.init = 16'h5555;
    LUT4 i3197_4_lut (.A(spi_tx_data[3]), .B(spi_tx_data_7__N_23), .C(top_test6_c), 
         .D(spi_rx_data[3]), .Z(spi_tx_data[3])) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(147[1] 226[4])
    defparam i3197_4_lut.init = 16'he020;
    LUT4 i1_3_lut (.A(spi_current_state[0]), .B(spi_current_state[1]), .C(spi_current_state[2]), 
         .Z(spi_tx_data_7__N_23)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut.init = 16'h1010;
    OB osc_en_pad (.I(VCC_net), .O(osc_en));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(15[10:16])
    OB top_spi_miso_pad (.I(top_spi_miso_c), .O(top_spi_miso));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(11[13:25])
    LUT4 i3201_4_lut (.A(spi_tx_data[4]), .B(spi_tx_data_7__N_23), .C(top_test6_c), 
         .D(spi_rx_data[4]), .Z(spi_tx_data[4])) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(147[1] 226[4])
    defparam i3201_4_lut.init = 16'he020;
    LUT4 i2_3_lut_4_lut (.A(top_test3_c_2), .B(spi_current_state[0]), .C(spi_current_state[2]), 
         .D(spi_current_state[1]), .Z(top_test4_N_64)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(102[8] 107[4])
    defparam i2_3_lut_4_lut.init = 16'h0800;
    LUT4 i25_4_lut (.A(spi_current_state[2]), .B(top_test3_c_2), .C(spi_current_state[1]), 
         .D(spi_current_state[0]), .Z(spi_next_state_3__N_46[1])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(163[3] 224[10])
    defparam i25_4_lut.init = 16'h1af0;
    spi spi_0 (.top_test0_c(top_test0_c), .VCC_net(VCC_net), .sclk_N_444(sclk_N_444), 
        .top_test1_c(top_test1_c), .spi_st_load_trdy(spi_st_load_trdy), 
        .spi_rst(spi_rst), .\spi_current_state[1] (spi_current_state[1]), 
        .n3979(n3979), .n4536(n4536), .spi_rx_data({spi_rx_data}), .top_test5_c_0(top_test5_c_0), 
        .miso_N_536(miso_N_536), .n4668(n4668), .top_test3_c_2(top_test3_c_2), 
        .spi_st_load_en(spi_st_load_en), .top_test4_c(top_test4_c), .spi_st_load_rrdy(spi_st_load_rrdy), 
        .spi_tx_load_en(spi_tx_load_en), .spi_tx_data({spi_tx_data}), .n1688(n1688), 
        .n4542(n4542), .bit_cnt_16__N_437(bit_cnt_16__N_437), .\spi_current_state[2] (spi_current_state[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(284[5] 302[2])
    FD1S3IX spi_current_state__i3 (.D(spi_next_state_3__N_46[2]), .CK(clockDivider_clk_4M), 
            .CD(n4535), .Q(spi_current_state[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(140[8] 145[4])
    defparam spi_current_state__i3.GSR = "DISABLED";
    FD1S3IX spi_current_state__i2 (.D(spi_next_state_3__N_46[1]), .CK(clockDivider_clk_4M), 
            .CD(n4535), .Q(spi_current_state[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(140[8] 145[4])
    defparam spi_current_state__i2.GSR = "DISABLED";
    CCU2C add_2448_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3406), 
          .S0(cout_adj_573));
    defparam add_2448_cout.INIT0 = 16'h0000;
    defparam add_2448_cout.INIT1 = 16'h0000;
    defparam add_2448_cout.INJECT1_0 = "NO";
    defparam add_2448_cout.INJECT1_1 = "NO";
    OB top_test3_pad (.I(top_test3_c_2), .O(top_test3));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(23[10:19])
    OB top_test4_pad (.I(top_test4_c), .O(top_test4));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(24[10:19])
    OB top_test5_pad (.I(top_test5_c_0), .O(top_test5));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(25[11:20])
    OB top_test6_pad (.I(top_test6_c), .O(top_test6));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(26[11:20])
    IB top_clk_pad (.I(top_clk), .O(top_clk_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(6[8:15])
    IB top_rst_n_pad (.I(top_rst_n), .O(top_rst_n_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(7[8:17])
    IB top_spi_mosi_pad (.I(top_spi_mosi), .O(top_spi_mosi_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(10[9:21])
    IB top_spi_sclk_pad (.I(top_spi_sclk), .O(top_spi_sclk_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(12[9:21])
    IB top_spi_cs_pad (.I(top_spi_cs), .O(top_spi_cs_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(13[9:19])
    CCU2C add_2448_20 (.A0(waitcount[24]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[25]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3405), .COUT(n3406));
    defparam add_2448_20.INIT0 = 16'h555f;
    defparam add_2448_20.INIT1 = 16'h555f;
    defparam add_2448_20.INJECT1_0 = "NO";
    defparam add_2448_20.INJECT1_1 = "NO";
    CCU2C add_2448_18 (.A0(waitcount[22]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[23]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3404), .COUT(n3405));
    defparam add_2448_18.INIT0 = 16'h555f;
    defparam add_2448_18.INIT1 = 16'h555f;
    defparam add_2448_18.INJECT1_0 = "NO";
    defparam add_2448_18.INJECT1_1 = "NO";
    PFUMX i3491 (.BLUT(n4549), .ALUT(n4550), .C0(spi_tx_load_en), .Z(spi_tx_load_en));
    PFUMX i36 (.BLUT(n3979), .ALUT(n3980), .C0(spi_current_state[0]), 
          .Z(spi_next_state_3__N_46[0]));
    CCU2C add_2448_16 (.A0(waitcount[20]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[21]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3403), .COUT(n3404));
    defparam add_2448_16.INIT0 = 16'h555f;
    defparam add_2448_16.INIT1 = 16'h555f;
    defparam add_2448_16.INJECT1_0 = "NO";
    defparam add_2448_16.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(bit_cnt_16__N_437));
    CCU2C _add_1_918_add_4_7 (.A0(sampleCount[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3372), .COUT(n3373), .S0(n46), .S1(n43));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_918_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_918_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_918_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_918_add_4_7.INJECT1_1 = "NO";
    packetCounter counter_0 (.waitcount({waitcount}), .GND_net(GND_net), 
            .VCC_net(VCC_net), .top_test6_c(top_test6_c), .spi_tx_data_7__N_23(spi_tx_data_7__N_23), 
            .\spi_rx_data[5] (spi_rx_data[5]), .\spi_tx_data[5] (spi_tx_data[5]), 
            .n4535(n4535), .\spi_rx_data[1] (spi_rx_data[1]), .\spi_tx_data[1] (spi_tx_data[1]), 
            .\spi_rx_data[6] (spi_rx_data[6]), .\spi_tx_data[6] (spi_tx_data[6]), 
            .\spi_rx_data[0] (spi_rx_data[0]), .\spi_tx_data[0] (spi_tx_data[0]), 
            .\spi_rx_data[2] (spi_rx_data[2]), .\spi_tx_data[2] (spi_tx_data[2]), 
            .\spi_rx_data[7] (spi_rx_data[7]), .\spi_tx_data[7] (spi_tx_data[7]), 
            .counter_0_countDone(counter_0_countDone), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .cout(cout_adj_573), .spi_st_load_trdy(spi_st_load_trdy), .\spi_current_state[2] (spi_current_state[2]), 
            .\spi_current_state[0] (spi_current_state[0]), .\spi_current_state[1] (spi_current_state[1]), 
            .n4545(n4545), .cout_adj_1(cout)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[15] 253[2])
    CCU2C add_2448_14 (.A0(waitcount[18]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[19]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3402), .COUT(n3403));
    defparam add_2448_14.INIT0 = 16'h555f;
    defparam add_2448_14.INIT1 = 16'h555f;
    defparam add_2448_14.INJECT1_0 = "NO";
    defparam add_2448_14.INJECT1_1 = "NO";
    LUT4 i3157_4_lut_then_4_lut (.A(spi_current_state[0]), .B(spi_current_state[1]), 
         .C(top_test6_c), .D(spi_current_state[2]), .Z(n4550)) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(147[1] 226[4])
    defparam i3157_4_lut_then_4_lut.init = 16'hb0f0;
    CCU2C _add_1_918_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sampleCount[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n3370), .S1(n61));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_918_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_918_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_918_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_918_add_4_1.INJECT1_1 = "NO";
    CCU2C add_2448_12 (.A0(waitcount[16]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[17]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3401), .COUT(n3402));
    defparam add_2448_12.INIT0 = 16'haaa0;
    defparam add_2448_12.INIT1 = 16'h555f;
    defparam add_2448_12.INJECT1_0 = "NO";
    defparam add_2448_12.INJECT1_1 = "NO";
    CCU2C add_2448_10 (.A0(waitcount[14]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[15]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3400), .COUT(n3401));
    defparam add_2448_10.INIT0 = 16'h555f;
    defparam add_2448_10.INIT1 = 16'haaa0;
    defparam add_2448_10.INJECT1_0 = "NO";
    defparam add_2448_10.INJECT1_1 = "NO";
    CCU2C add_2448_8 (.A0(waitcount[12]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[13]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3399), .COUT(n3400));
    defparam add_2448_8.INIT0 = 16'h555f;
    defparam add_2448_8.INIT1 = 16'h555f;
    defparam add_2448_8.INJECT1_0 = "NO";
    defparam add_2448_8.INJECT1_1 = "NO";
    LUT4 i3157_4_lut_else_4_lut (.A(spi_current_state[0]), .B(spi_current_state[1]), 
         .C(top_test6_c), .D(spi_current_state[2]), .Z(n4549)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(147[1] 226[4])
    defparam i3157_4_lut_else_4_lut.init = 16'h2000;
    CCU2C add_2448_6 (.A0(waitcount[10]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[11]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3398), .COUT(n3399));
    defparam add_2448_6.INIT0 = 16'haaa0;
    defparam add_2448_6.INIT1 = 16'h555f;
    defparam add_2448_6.INJECT1_0 = "NO";
    defparam add_2448_6.INJECT1_1 = "NO";
    INV i3679 (.A(top_test0_c), .Z(sclk_N_444));
    IQSerializer IQSerializer_0 (.clk_N_369(clk_N_369), .n1115(n1115), .IQSerializer_start(IQSerializer_start), 
            .n13(n13), .n14(n14), .\QCounter[1] (QCounter[1]), .n4531(n4531), 
            .\fskModule_I[7] (fskModule_I[7]), .\fskModule_Q[0] (fskModule_Q[0]), 
            .\fskModule_Q[2] (fskModule_Q[2]), .\fskModule_I[11] (fskModule_I[11]), 
            .\fskModule_I[2] (fskModule_I[2]), .\QCounter[2] (QCounter[2]), 
            .\fskModule_Q[7] (fskModule_Q[7]), .\fskModule_I[12] (fskModule_I[12]), 
            .\fskModule_Q[4] (fskModule_Q[4]), .\fskModule_Q[6] (fskModule_Q[6]), 
            .\fskModule_I[0] (fskModule_I[0]), .\fskModule_I[4] (fskModule_I[4]), 
            .serial_clk_c(serial_clk_c), .serial(serial)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(274[14] 282[2])
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2C add_2448_4 (.A0(waitcount[8]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[9]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3397), .COUT(n3398));
    defparam add_2448_4.INIT0 = 16'h555f;
    defparam add_2448_4.INIT1 = 16'haaa0;
    defparam add_2448_4.INJECT1_0 = "NO";
    defparam add_2448_4.INJECT1_1 = "NO";
    CCU2C _add_1_918_add_4_5 (.A0(sampleCount[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3371), .COUT(n3372), .S0(n52), .S1(n49));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_918_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_918_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_918_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_918_add_4_5.INJECT1_1 = "NO";
    CCU2C _add_1_918_add_4_3 (.A0(sampleCount[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3370), .COUT(n3371), .S0(n58), .S1(n55));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_918_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_918_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_918_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_918_add_4_3.INJECT1_1 = "NO";
    FSKModulator fskModule_0 (.fskModule_symDone(fskModule_symDone), .clk_N_224(clk_N_224), 
            .n4541(n4541), .clockDivider_clk_4M(clockDivider_clk_4M), .fskModule_symVal(fskModule_symVal), 
            .\fskModule_I[0] (fskModule_I[0]), .counter_0_countDone(counter_0_countDone), 
            .sampleCount({sampleCount}), .IQSerializer_start(IQSerializer_start), 
            .\fskModule_Q[0] (fskModule_Q[0]), .next_state_3__N_203(next_state_3__N_203), 
            .next_state_3__N_202(next_state_3__N_202), .n4082(n4082), .next_state_3__N_205(next_state_3__N_205), 
            .n67({n28, n31, n34, n37, n40, n43, n46, n49, n52, 
            n55, n58, n61}), .n1115(n1115), .clockDivider_clk_4M_enable_9(clockDivider_clk_4M_enable_9), 
            .\fskModule_I[12] (fskModule_I[12]), .\fskModule_I[11] (fskModule_I[11]), 
            .\fskModule_I[7] (fskModule_I[7]), .\fskModule_I[4] (fskModule_I[4]), 
            .\fskModule_I[2] (fskModule_I[2]), .\fskModule_Q[2] (fskModule_Q[2]), 
            .\fskModule_Q[4] (fskModule_Q[4]), .\fskModule_Q[6] (fskModule_Q[6]), 
            .\fskModule_Q[7] (fskModule_Q[7]), .\fskModule_Q[12] (fskModule_Q[12])) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(263[14] 272[2])
    LUT4 m0_lut (.Z(n4668)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    packetGenerator packetGen_0 (.symCounter({symCounter}), .next_state_3__N_203(next_state_3__N_203), 
            .clockDivider_clk_4M(clockDivider_clk_4M), .clockDivider_clk_4M_enable_9(clockDivider_clk_4M_enable_9), 
            .n4541(n4541), .fskModule_symVal(fskModule_symVal), .clk_N_224(clk_N_224), 
            .next_state_3__N_205(next_state_3__N_205), .VCC_net(VCC_net), 
            .data(data), .n4082(n4082), .counter_0_countDone(counter_0_countDone), 
            .next_state_3__N_202(next_state_3__N_202), .fskModule_symDone(fskModule_symDone)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(255[17] 261[2])
    clockDivider clockDivider_0 (.clk_N_224(clk_N_224), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .GND_net(GND_net), .VCC_net(VCC_net), .serial_clk_c(serial_clk_c), 
            .top_test6_c(top_test6_c), .LED_c(LED_c)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(242[14] 247[2])
    CCU2C add_2448_2 (.A0(waitcount[5]), .B0(waitcount[6]), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[7]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n3397));
    defparam add_2448_2.INIT0 = 16'h000e;
    defparam add_2448_2.INIT1 = 16'haaa0;
    defparam add_2448_2.INJECT1_0 = "NO";
    defparam add_2448_2.INJECT1_1 = "NO";
    pll_64M LED_I_0 (.top_rst_n_N_63(top_rst_n_N_63), .serial_clk_c(serial_clk_c), 
            .LED_c(LED_c), .GND_net(GND_net), .top_clk_c(top_clk_c), .VCC_net(VCC_net), 
            .clk_N_369(clk_N_369)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(231[9] 238[2])
    CCU2C add_2449_27 (.A0(waitcount[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3446), .S1(cout));
    defparam add_2449_27.INIT0 = 16'h5555;
    defparam add_2449_27.INIT1 = 16'h0000;
    defparam add_2449_27.INJECT1_0 = "NO";
    defparam add_2449_27.INJECT1_1 = "NO";
    CCU2C add_2449_25 (.A0(waitcount[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3445), .COUT(n3446));
    defparam add_2449_25.INIT0 = 16'h5555;
    defparam add_2449_25.INIT1 = 16'h5555;
    defparam add_2449_25.INJECT1_0 = "NO";
    defparam add_2449_25.INJECT1_1 = "NO";
    CCU2C add_2449_23 (.A0(waitcount[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3444), .COUT(n3445));
    defparam add_2449_23.INIT0 = 16'h5555;
    defparam add_2449_23.INIT1 = 16'h5555;
    defparam add_2449_23.INJECT1_0 = "NO";
    defparam add_2449_23.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module spi
//

module spi (top_test0_c, VCC_net, sclk_N_444, top_test1_c, spi_st_load_trdy, 
            spi_rst, \spi_current_state[1] , n3979, n4536, spi_rx_data, 
            top_test5_c_0, miso_N_536, n4668, top_test3_c_2, spi_st_load_en, 
            top_test4_c, spi_st_load_rrdy, spi_tx_load_en, spi_tx_data, 
            n1688, n4542, bit_cnt_16__N_437, \spi_current_state[2] );
    input top_test0_c;
    input VCC_net;
    input sclk_N_444;
    input top_test1_c;
    input spi_st_load_trdy;
    input spi_rst;
    input \spi_current_state[1] ;
    output n3979;
    input n4536;
    output [7:0]spi_rx_data;
    output top_test5_c_0;
    output miso_N_536;
    input n4668;
    input top_test3_c_2;
    input spi_st_load_en;
    input top_test4_c;
    input spi_st_load_rrdy;
    input spi_tx_load_en;
    input [7:0]spi_tx_data;
    output n1688;
    output n4542;
    output bit_cnt_16__N_437;
    input \spi_current_state[2] ;
    
    wire top_test0_c /* synthesis is_clock=1, SET_AS_NETWORK=top_test0_c */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(20[10:19])
    wire sclk_N_444 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(60[10:16])
    
    \spi_slave('0','1',8)  spi_slave_0 (.top_test0_c(top_test0_c), .VCC_net(VCC_net), 
            .sclk_N_444(sclk_N_444), .top_test1_c(top_test1_c), .spi_st_load_trdy(spi_st_load_trdy), 
            .spi_rst(spi_rst), .\spi_current_state[1] (\spi_current_state[1] ), 
            .n3979(n3979), .n4536(n4536), .spi_rx_data({spi_rx_data}), 
            .top_test5_c_0(top_test5_c_0), .miso_N_536(miso_N_536), .n4668(n4668), 
            .top_test3_c_2(top_test3_c_2), .spi_st_load_en(spi_st_load_en), 
            .top_test4_c(top_test4_c), .spi_st_load_rrdy(spi_st_load_rrdy), 
            .spi_tx_load_en(spi_tx_load_en), .spi_tx_data({spi_tx_data}), 
            .n1688(n1688), .n4542(n4542), .bit_cnt_16__N_437(bit_cnt_16__N_437), 
            .\spi_current_state[2] (\spi_current_state[2] ));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi.vhd(58[14:23])
    
endmodule
//
// Verilog Description of module \spi_slave('0','1',8) 
//

module \spi_slave('0','1',8)  (top_test0_c, VCC_net, sclk_N_444, top_test1_c, 
            spi_st_load_trdy, spi_rst, \spi_current_state[1] , n3979, 
            n4536, spi_rx_data, top_test5_c_0, miso_N_536, n4668, 
            top_test3_c_2, spi_st_load_en, top_test4_c, spi_st_load_rrdy, 
            spi_tx_load_en, spi_tx_data, n1688, n4542, bit_cnt_16__N_437, 
            \spi_current_state[2] );
    input top_test0_c;
    input VCC_net;
    input sclk_N_444;
    input top_test1_c;
    input spi_st_load_trdy;
    input spi_rst;
    input \spi_current_state[1] ;
    output n3979;
    input n4536;
    output [7:0]spi_rx_data;
    output top_test5_c_0;
    output miso_N_536;
    input n4668;
    input top_test3_c_2;
    input spi_st_load_en;
    input top_test4_c;
    input spi_st_load_rrdy;
    input spi_tx_load_en;
    input [7:0]spi_tx_data;
    output n1688;
    output n4542;
    output bit_cnt_16__N_437;
    input \spi_current_state[2] ;
    
    wire top_test0_c /* synthesis is_clock=1, SET_AS_NETWORK=top_test0_c */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(20[10:19])
    wire sclk_N_444 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(60[10:16])
    
    wire n2020, n4522;
    wire [7:0]n18;
    
    wire n2017, n4515, wr_add;
    wire [16:0]bit_cnt;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(59[10:17])
    
    wire rx_buf_5__N_448, miso_N_537, miso_N_558;
    wire [7:0]rx_buf;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(62[10:16])
    
    wire rx_buf_0__N_458, n4529, rx_buf_1__N_456, rx_buf_2__N_454, n4543, 
        trdy_N_517, n4442, rrdy_N_525, rrdy_N_523, n4441, n4444, 
        n4445, rx_buf_3__N_452, rx_buf_4__N_450;
    wire [1:0]n522;
    
    wire n13, n15, n3836, n1944, n2016, n4516, rx_buf_6__N_446, 
        roe_N_530, sclk_N_444_enable_1, roe_N_552, roe_N_550, n40, 
        n4540, trdy_N_540, sclk_N_444_enable_2, n4544, n3770, rd_add, 
        trdy_N_542, trdy_N_538, rrdy_N_548, rrdy_N_545, rx_buf_7__N_439, 
        n2013, n4519, n2012, n4520, miso_N_555;
    wire [7:0]tx_buf;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(63[10:16])
    
    wire n3704, n2021, n4785, n4794, n3822, n2001, n4518, n2009, 
        n2008, n4824, n2029, n4517, n4553, n2028, n4514, miso_N_556, 
        n4552, n2025, n4513, n4833, n2024, n4512, n4538, n4860, 
        n4842, n4803, n4511, n2000, n2005, n4510, n4851, n4507, 
        n4509, n4521, n2004, n4508, n4443;
    
    FD1S3BX tx_buf_i0_i5_1276_1277_set (.D(n18[5]), .CK(top_test0_c), .PD(n4522), 
            .Q(n2020)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam tx_buf_i0_i5_1276_1277_set.GSR = "DISABLED";
    FD1S3DX tx_buf_i0_i4_1272_1273_reset (.D(n18[4]), .CK(top_test0_c), 
            .CD(n4515), .Q(n2017)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam tx_buf_i0_i4_1272_1273_reset.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(wr_add), .B(bit_cnt[11]), .Z(rx_buf_5__N_448)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(119[13:25])
    defparam i1_2_lut.init = 16'h4444;
    FD1P3AX i224_278 (.D(VCC_net), .SP(miso_N_558), .CK(top_test0_c), 
            .Q(miso_N_537));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(165[5] 178[12])
    defparam i224_278.GSR = "ENABLED";
    FD1P3DX rx_buf_0__242 (.D(top_test1_c), .SP(rx_buf_0__N_458), .CK(sclk_N_444), 
            .CD(n4529), .Q(rx_buf[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(143[9] 145[16])
    defparam rx_buf_0__242.GSR = "DISABLED";
    FD1P3DX rx_buf_1__241 (.D(top_test1_c), .SP(rx_buf_1__N_456), .CK(sclk_N_444), 
            .CD(n4529), .Q(rx_buf[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(143[9] 145[16])
    defparam rx_buf_1__241.GSR = "DISABLED";
    FD1P3DX rx_buf_2__240 (.D(top_test1_c), .SP(rx_buf_2__N_454), .CK(sclk_N_444), 
            .CD(n4529), .Q(rx_buf[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(143[9] 145[16])
    defparam rx_buf_2__240.GSR = "DISABLED";
    LUT4 n17_bdd_4_lut_3474 (.A(n4543), .B(trdy_N_517), .C(bit_cnt[10]), 
         .D(spi_st_load_trdy), .Z(n4442)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A ((C)+!B))) */ ;
    defparam n17_bdd_4_lut_3474.init = 16'h0c04;
    LUT4 wr_add_N_441_I_0_2_lut (.A(wr_add), .B(bit_cnt[16]), .Z(rx_buf_0__N_458)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(119[13:54])
    defparam wr_add_N_441_I_0_2_lut.init = 16'h4444;
    LUT4 n17_bdd_4_lut_3449 (.A(bit_cnt[8]), .B(rrdy_N_525), .C(bit_cnt[10]), 
         .D(rrdy_N_523), .Z(n4441)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam n17_bdd_4_lut_3449.init = 16'h0100;
    LUT4 n4444_bdd_3_lut (.A(n4444), .B(n4441), .C(bit_cnt[9]), .Z(n4445)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n4444_bdd_3_lut.init = 16'hcaca;
    FD1P3DX rx_buf_3__239 (.D(top_test1_c), .SP(rx_buf_3__N_452), .CK(sclk_N_444), 
            .CD(n4529), .Q(rx_buf[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(143[9] 145[16])
    defparam rx_buf_3__239.GSR = "DISABLED";
    FD1P3DX rx_buf_4__238 (.D(top_test1_c), .SP(rx_buf_4__N_450), .CK(sclk_N_444), 
            .CD(n4529), .Q(rx_buf[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(143[9] 145[16])
    defparam rx_buf_4__238.GSR = "DISABLED";
    FD1P3DX rx_buf_5__237 (.D(top_test1_c), .SP(rx_buf_5__N_448), .CK(sclk_N_444), 
            .CD(n4529), .Q(rx_buf[5]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(143[9] 145[16])
    defparam rx_buf_5__237.GSR = "DISABLED";
    LUT4 mux_302_Mux_0_i7_3_lut (.A(bit_cnt[8]), .B(bit_cnt[10]), .C(bit_cnt[9]), 
         .Z(n522[0])) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(169[9] 174[18])
    defparam mux_302_Mux_0_i7_3_lut.init = 16'h1616;
    LUT4 i1985_4_lut (.A(n13), .B(n15), .C(n3836), .D(bit_cnt[5]), .Z(n1944)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i1985_4_lut.init = 16'h0001;
    FD1S3BX tx_buf_i0_i4_1272_1273_set (.D(n18[4]), .CK(top_test0_c), .PD(n4516), 
            .Q(n2016)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam tx_buf_i0_i4_1272_1273_set.GSR = "DISABLED";
    LUT4 reset_n_I_0_1_lut_rep_64 (.A(spi_rst), .Z(n4529)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(99[68:81])
    defparam reset_n_I_0_1_lut_rep_64.init = 16'h5555;
    LUT4 wr_add_N_441_I_0_283_2_lut (.A(wr_add), .B(bit_cnt[10]), .Z(rx_buf_6__N_446)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(143[12:69])
    defparam wr_add_N_441_I_0_283_2_lut.init = 16'h4444;
    FD1P3DX rx_buf_6__236 (.D(top_test1_c), .SP(rx_buf_6__N_446), .CK(sclk_N_444), 
            .CD(n4529), .Q(rx_buf[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(143[9] 145[16])
    defparam rx_buf_6__236.GSR = "DISABLED";
    FD1P3JX roe_234 (.D(roe_N_550), .SP(sclk_N_444_enable_1), .PD(roe_N_552), 
            .CK(sclk_N_444), .Q(roe_N_530)) /* synthesis LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(125[5] 135[12])
    defparam roe_234.GSR = "DISABLED";
    LUT4 i1_4_lut_4_lut (.A(spi_rst), .B(n40), .C(n4540), .D(trdy_N_540), 
         .Z(sclk_N_444_enable_2)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(99[68:81])
    defparam i1_4_lut_4_lut.init = 16'hfffd;
    LUT4 i1_4_lut_4_lut_adj_119 (.A(spi_rst), .B(n4543), .C(roe_N_552), 
         .D(n4544), .Z(sclk_N_444_enable_1)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(99[68:81])
    defparam i1_4_lut_4_lut_adj_119.init = 16'hfffd;
    LUT4 wr_add_N_441_I_0_288_2_lut (.A(wr_add), .B(bit_cnt[15]), .Z(rx_buf_1__N_456)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(143[12:69])
    defparam wr_add_N_441_I_0_288_2_lut.init = 16'h4444;
    LUT4 i3115_1_lut_4_lut_4_lut (.A(spi_rst), .B(n3770), .C(rrdy_N_525), 
         .D(\spi_current_state[1] ), .Z(n3979)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(99[68:81])
    defparam i3115_1_lut_4_lut_4_lut.init = 16'h02ff;
    FD1P3AX rd_add_231 (.D(top_test1_c), .SP(bit_cnt[2]), .CK(sclk_N_444), 
            .Q(rd_add));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(94[5] 96[12])
    defparam rd_add_231.GSR = "DISABLED";
    LUT4 i3181_4_lut_4_lut (.A(spi_rst), .B(n4536), .C(rx_buf[0]), .D(spi_rx_data[0]), 
         .Z(spi_rx_data[0])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(99[68:81])
    defparam i3181_4_lut_4_lut.init = 16'ha280;
    FD1P3BX trdy_232 (.D(trdy_N_538), .SP(sclk_N_444_enable_2), .CK(sclk_N_444), 
            .PD(trdy_N_542), .Q(trdy_N_517)) /* synthesis LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(99[5] 109[12])
    defparam trdy_232.GSR = "DISABLED";
    FD1S3BX rrdy_233 (.D(rrdy_N_545), .CK(sclk_N_444), .PD(rrdy_N_548), 
            .Q(rrdy_N_523)) /* synthesis LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(112[5] 122[12])
    defparam rrdy_233.GSR = "DISABLED";
    LUT4 i3225_4_lut_4_lut (.A(spi_rst), .B(n4536), .C(rx_buf[2]), .D(spi_rx_data[2]), 
         .Z(spi_rx_data[2])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(99[68:81])
    defparam i3225_4_lut_4_lut.init = 16'ha280;
    LUT4 i3221_4_lut_4_lut (.A(spi_rst), .B(n4536), .C(rx_buf[1]), .D(spi_rx_data[1]), 
         .Z(spi_rx_data[1])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(99[68:81])
    defparam i3221_4_lut_4_lut.init = 16'ha280;
    LUT4 i1_3_lut (.A(wr_add), .B(bit_cnt[16]), .C(top_test5_c_0), .Z(roe_N_552)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(130[10:66])
    defparam i1_3_lut.init = 16'h4040;
    FD1P3DX rx_buf_7__235 (.D(top_test1_c), .SP(rx_buf_7__N_439), .CK(sclk_N_444), 
            .CD(n4529), .Q(rx_buf[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(143[9] 145[16])
    defparam rx_buf_7__235.GSR = "DISABLED";
    FD1S3DX tx_buf_i0_i3_1268_1269_reset (.D(n18[3]), .CK(top_test0_c), 
            .CD(n4519), .Q(n2013)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam tx_buf_i0_i3_1268_1269_reset.GSR = "DISABLED";
    FD1P3AX wr_add_230 (.D(top_test1_c), .SP(bit_cnt[1]), .CK(sclk_N_444), 
            .Q(wr_add));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(89[5] 91[12])
    defparam wr_add_230.GSR = "DISABLED";
    LUT4 i3245_4_lut_4_lut (.A(spi_rst), .B(n4536), .C(rx_buf[7]), .D(spi_rx_data[7]), 
         .Z(spi_rx_data[7])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(99[68:81])
    defparam i3245_4_lut_4_lut.init = 16'ha280;
    FD1S3BX tx_buf_i0_i3_1268_1269_set (.D(n18[3]), .CK(top_test0_c), .PD(n4520), 
            .Q(n2012)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam tx_buf_i0_i3_1268_1269_set.GSR = "DISABLED";
    FD1S3AX miso_269 (.D(miso_N_555), .CK(top_test0_c), .Q(miso_N_536)) /* synthesis LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(165[5] 178[12])
    defparam miso_269.GSR = "ENABLED";
    LUT4 i1_3_lut_adj_120 (.A(spi_rst), .B(rrdy_N_523), .C(rrdy_N_525), 
         .Z(top_test5_c_0)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_3_lut_adj_120.init = 16'h0808;
    FD1S3AY bit_cnt_i0 (.D(n4668), .CK(top_test0_c), .Q(bit_cnt[0])) /* synthesis LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(79[7] 81[14])
    defparam bit_cnt_i0.GSR = "ENABLED";
    LUT4 ss_n_I_0_308_4_lut (.A(top_test3_c_2), .B(spi_st_load_en), .C(top_test4_c), 
         .D(spi_st_load_rrdy), .Z(rrdy_N_525)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(112[9:83])
    defparam ss_n_I_0_308_4_lut.init = 16'ha0a8;
    LUT4 i3237_4_lut_4_lut (.A(spi_rst), .B(n4536), .C(rx_buf[5]), .D(spi_rx_data[5]), 
         .Z(spi_rx_data[5])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(99[68:81])
    defparam i3237_4_lut_4_lut.init = 16'ha280;
    LUT4 i3241_4_lut_4_lut (.A(spi_rst), .B(n4536), .C(rx_buf[6]), .D(spi_rx_data[6]), 
         .Z(spi_rx_data[6])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(99[68:81])
    defparam i3241_4_lut_4_lut.init = 16'ha280;
    LUT4 rd_add_N_512_I_0_2_lut (.A(rd_add), .B(bit_cnt[16]), .Z(trdy_N_540)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(106[13:54])
    defparam rd_add_N_512_I_0_2_lut.init = 16'h4444;
    LUT4 i1_4_lut (.A(top_test3_c_2), .B(spi_st_load_en), .C(spi_tx_load_en), 
         .D(spi_st_load_trdy), .Z(trdy_N_542)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut.init = 16'ha8a0;
    LUT4 i1_2_lut_adj_121 (.A(wr_add), .B(bit_cnt[9]), .Z(rx_buf_7__N_439)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(119[13:25])
    defparam i1_2_lut_adj_121.init = 16'h4444;
    LUT4 tx_buf_i1_i6_3_lut (.A(tx_buf[5]), .B(tx_buf[4]), .C(n3704), 
         .Z(n18[5])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam tx_buf_i1_i6_3_lut.init = 16'hacac;
    LUT4 i1278_3_lut (.A(n2021), .B(n2020), .C(n4785), .Z(tx_buf[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam i1278_3_lut.init = 16'hcaca;
    LUT4 i1274_3_lut (.A(n2017), .B(n2016), .C(n4794), .Z(tx_buf[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam i1274_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_122 (.A(n13), .B(rd_add), .C(n15), .D(n3822), 
         .Z(n3704)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_122.init = 16'hfffe;
    LUT4 tx_buf_i1_i4_3_lut (.A(tx_buf[3]), .B(tx_buf[2]), .C(n3704), 
         .Z(n18[3])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam tx_buf_i1_i4_3_lut.init = 16'hacac;
    LUT4 i1_3_lut_adj_123 (.A(bit_cnt[5]), .B(bit_cnt[4]), .C(bit_cnt[0]), 
         .Z(n3822)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut_adj_123.init = 16'hfefe;
    LUT4 i4_2_lut (.A(bit_cnt[6]), .B(bit_cnt[16]), .Z(n13)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4_2_lut.init = 16'heeee;
    FD1S3DX tx_buf_i0_i0_1256_1257_reset (.D(n18[0]), .CK(top_test0_c), 
            .CD(n4518), .Q(n2001)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam tx_buf_i0_i0_1256_1257_reset.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_124 (.A(bit_cnt[2]), .B(bit_cnt[3]), .C(bit_cnt[1]), 
         .D(bit_cnt[7]), .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_124.init = 16'hfffe;
    LUT4 i1266_3_lut (.A(n2009), .B(n2008), .C(n4824), .Z(tx_buf[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam i1266_3_lut.init = 16'hcaca;
    FD1S3DX tx_buf_i0_i7_1284_1285_reset (.D(n18[7]), .CK(top_test0_c), 
            .CD(n4517), .Q(n2029)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam tx_buf_i0_i7_1284_1285_reset.GSR = "DISABLED";
    LUT4 rrdy_I_94_4_lut_then_3_lut (.A(top_test1_c), .B(bit_cnt[10]), .C(wr_add), 
         .Z(n4553)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(117[7] 121[14])
    defparam rrdy_I_94_4_lut_then_3_lut.init = 16'hbfbf;
    FD1S3BX tx_buf_i0_i7_1284_1285_set (.D(n18[7]), .CK(top_test0_c), .PD(n4514), 
            .Q(n2028)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam tx_buf_i0_i7_1284_1285_set.GSR = "DISABLED";
    LUT4 tx_buf_7__I_0_4_lut (.A(tx_buf[7]), .B(spi_rst), .C(rd_add), 
         .D(n4445), .Z(miso_N_556)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(168[7] 177[14])
    defparam tx_buf_7__I_0_4_lut.init = 16'hca0a;
    LUT4 rrdy_I_94_4_lut_else_3_lut (.A(top_test1_c), .B(bit_cnt[10]), .C(wr_add), 
         .D(bit_cnt[16]), .Z(n4552)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(117[7] 121[14])
    defparam rrdy_I_94_4_lut_else_3_lut.init = 16'h8f80;
    FD1S3DX tx_buf_i0_i6_1280_1281_reset (.D(n18[6]), .CK(top_test0_c), 
            .CD(n4513), .Q(n2025)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam tx_buf_i0_i6_1280_1281_reset.GSR = "DISABLED";
    LUT4 wr_add_N_441_I_0_287_2_lut (.A(wr_add), .B(bit_cnt[14]), .Z(rx_buf_2__N_454)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(143[12:69])
    defparam wr_add_N_441_I_0_287_2_lut.init = 16'h4444;
    LUT4 i1286_3_lut (.A(n2029), .B(n2028), .C(n4833), .Z(tx_buf[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam i1286_3_lut.init = 16'hcaca;
    FD1S3BX tx_buf_i0_i6_1280_1281_set (.D(n18[6]), .CK(top_test0_c), .PD(n4512), 
            .Q(n2024)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam tx_buf_i0_i6_1280_1281_set.GSR = "DISABLED";
    LUT4 i3279_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[7]), .B(spi_rst), 
         .C(n4833), .D(n4538), .Z(n4833)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam i3279_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 i3249_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[1]), .B(spi_rst), 
         .C(n4860), .D(n4538), .Z(n4860)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam i3249_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 i3264_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[4]), .B(spi_rst), 
         .C(n4794), .D(n4538), .Z(n4794)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam i3264_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 i3284_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[0]), .B(spi_rst), 
         .C(n4842), .D(n4538), .Z(n4842)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam i3284_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 i3259_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[3]), .B(spi_rst), 
         .C(n4803), .D(n4538), .Z(n4803)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam i3259_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 i3229_4_lut (.A(spi_rx_data[3]), .B(rx_buf[3]), .C(n4536), .D(spi_rst), 
         .Z(spi_rx_data[3])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(85[3] 180[15])
    defparam i3229_4_lut.init = 16'hca00;
    FD1S3BX tx_buf_i0_i2_1264_1265_set (.D(n18[2]), .CK(top_test0_c), .PD(n4511), 
            .Q(n2008)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam tx_buf_i0_i2_1264_1265_set.GSR = "DISABLED";
    LUT4 i971_1_lut (.A(miso_N_537), .Z(n1688)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(85[3] 180[15])
    defparam i971_1_lut.init = 16'h5555;
    LUT4 tx_buf_i1_i1_3_lut (.A(tx_buf[0]), .B(tx_buf[7]), .C(n3704), 
         .Z(n18[0])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam tx_buf_i1_i1_3_lut.init = 16'hacac;
    LUT4 i1258_3_lut (.A(n2001), .B(n2000), .C(n4842), .Z(tx_buf[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam i1258_3_lut.init = 16'hcaca;
    LUT4 i3233_4_lut (.A(spi_rx_data[4]), .B(rx_buf[4]), .C(n4536), .D(spi_rst), 
         .Z(spi_rx_data[4])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(85[3] 180[15])
    defparam i3233_4_lut.init = 16'hca00;
    FD1S3DX tx_buf_i0_i1_1260_1261_reset (.D(n18[1]), .CK(top_test0_c), 
            .CD(n4510), .Q(n2005)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam tx_buf_i0_i1_1260_1261_reset.GSR = "DISABLED";
    LUT4 tx_buf_i1_i8_3_lut (.A(tx_buf[7]), .B(tx_buf[6]), .C(n3704), 
         .Z(n18[7])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam tx_buf_i1_i8_3_lut.init = 16'hacac;
    LUT4 i1282_3_lut (.A(n2025), .B(n2024), .C(n4851), .Z(tx_buf[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam i1282_3_lut.init = 16'hcaca;
    LUT4 tx_buf_i1_i5_3_lut (.A(tx_buf[4]), .B(tx_buf[3]), .C(n3704), 
         .Z(n18[4])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam tx_buf_i1_i5_3_lut.init = 16'hacac;
    LUT4 i1270_3_lut (.A(n2013), .B(n2012), .C(n4803), .Z(tx_buf[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam i1270_3_lut.init = 16'hcaca;
    LUT4 i3254_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[2]), .B(spi_rst), 
         .C(n4824), .D(n4538), .Z(n4824)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam i3254_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 tx_buf_i1_i7_3_lut (.A(tx_buf[6]), .B(tx_buf[5]), .C(n3704), 
         .Z(n18[6])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam tx_buf_i1_i7_3_lut.init = 16'hacac;
    LUT4 i3269_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[5]), .B(spi_rst), 
         .C(n4785), .D(n4538), .Z(n4785)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam i3269_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 i1_3_lut_rep_73 (.A(spi_rst), .B(top_test3_c_2), .C(spi_tx_load_en), 
         .Z(n4538)) /* synthesis lut_function=((B (C))+!A) */ ;
    defparam i1_3_lut_rep_73.init = 16'hd5d5;
    LUT4 tx_buf_7__I_0_304_2_lut_rep_49_3_lut_4_lut (.A(spi_rst), .B(top_test3_c_2), 
         .C(spi_tx_load_en), .D(spi_tx_data[7]), .Z(n4514)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam tx_buf_7__I_0_304_2_lut_rep_49_3_lut_4_lut.init = 16'h8000;
    LUT4 tx_buf_7__N_468_I_0_290_2_lut_rep_47_3_lut_4_lut (.A(spi_rst), .B(top_test3_c_2), 
         .C(spi_tx_load_en), .D(spi_tx_data[6]), .Z(n4512)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam tx_buf_7__N_468_I_0_290_2_lut_rep_47_3_lut_4_lut.init = 16'h8000;
    LUT4 tx_buf_7__N_468_I_0_302_2_lut_rep_42_3_lut_4_lut (.A(spi_rst), .B(top_test3_c_2), 
         .C(spi_tx_load_en), .D(spi_tx_data[2]), .Z(n4507)) /* synthesis lut_function=(!(A (((D)+!C)+!B))) */ ;
    defparam tx_buf_7__N_468_I_0_302_2_lut_rep_42_3_lut_4_lut.init = 16'h55d5;
    PFUMX i3493 (.BLUT(n4552), .ALUT(n4553), .C0(top_test5_c_0), .Z(rrdy_N_545));
    LUT4 i1_2_lut_adj_125 (.A(bit_cnt[4]), .B(bit_cnt[0]), .Z(n3836)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_125.init = 16'heeee;
    LUT4 tx_buf_i1_i3_3_lut (.A(tx_buf[2]), .B(tx_buf[1]), .C(n3704), 
         .Z(n18[2])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam tx_buf_i1_i3_3_lut.init = 16'hacac;
    LUT4 tx_buf_7__N_468_I_0_293_2_lut_rep_55_3_lut_4_lut (.A(spi_rst), .B(top_test3_c_2), 
         .C(spi_tx_load_en), .D(spi_tx_data[3]), .Z(n4520)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam tx_buf_7__N_468_I_0_293_2_lut_rep_55_3_lut_4_lut.init = 16'h8000;
    LUT4 wr_add_N_441_I_0_285_2_lut (.A(wr_add), .B(bit_cnt[12]), .Z(rx_buf_4__N_450)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(143[12:69])
    defparam wr_add_N_441_I_0_285_2_lut.init = 16'h4444;
    LUT4 tx_buf_7__N_468_I_0_292_2_lut_rep_51_3_lut_4_lut (.A(spi_rst), .B(top_test3_c_2), 
         .C(spi_tx_load_en), .D(spi_tx_data[4]), .Z(n4516)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam tx_buf_7__N_468_I_0_292_2_lut_rep_51_3_lut_4_lut.init = 16'h8000;
    LUT4 tx_buf_7__N_468_I_0_291_2_lut_rep_57_3_lut_4_lut (.A(spi_rst), .B(top_test3_c_2), 
         .C(spi_tx_load_en), .D(spi_tx_data[5]), .Z(n4522)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam tx_buf_7__N_468_I_0_291_2_lut_rep_57_3_lut_4_lut.init = 16'h8000;
    LUT4 tx_buf_7__N_468_I_0_297_2_lut_rep_52_3_lut_4_lut (.A(spi_rst), .B(top_test3_c_2), 
         .C(spi_tx_load_en), .D(spi_tx_data[7]), .Z(n4517)) /* synthesis lut_function=(!(A (((D)+!C)+!B))) */ ;
    defparam tx_buf_7__N_468_I_0_297_2_lut_rep_52_3_lut_4_lut.init = 16'h55d5;
    LUT4 i972_2_lut_rep_77 (.A(miso_N_536), .B(miso_N_537), .Z(n4542)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(85[3] 180[15])
    defparam i972_2_lut_rep_77.init = 16'h8888;
    LUT4 tx_buf_7__N_468_I_0_298_2_lut_rep_48_3_lut_4_lut (.A(spi_rst), .B(top_test3_c_2), 
         .C(spi_tx_load_en), .D(spi_tx_data[6]), .Z(n4513)) /* synthesis lut_function=(!(A (((D)+!C)+!B))) */ ;
    defparam tx_buf_7__N_468_I_0_298_2_lut_rep_48_3_lut_4_lut.init = 16'h55d5;
    LUT4 tx_buf_7__N_468_I_0_2_lut_rep_53_3_lut_4_lut (.A(spi_rst), .B(top_test3_c_2), 
         .C(spi_tx_load_en), .D(spi_tx_data[0]), .Z(n4518)) /* synthesis lut_function=(!(A (((D)+!C)+!B))) */ ;
    defparam tx_buf_7__N_468_I_0_2_lut_rep_53_3_lut_4_lut.init = 16'h55d5;
    LUT4 miso_I_0_3_lut_4_lut (.A(miso_N_536), .B(miso_N_537), .C(miso_N_558), 
         .D(miso_N_556), .Z(miso_N_555)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(85[3] 180[15])
    defparam miso_I_0_3_lut_4_lut.init = 16'hf808;
    LUT4 tx_buf_7__N_468_I_0_303_2_lut_rep_45_3_lut_4_lut (.A(spi_rst), .B(top_test3_c_2), 
         .C(spi_tx_load_en), .D(spi_tx_data[1]), .Z(n4510)) /* synthesis lut_function=(!(A (((D)+!C)+!B))) */ ;
    defparam tx_buf_7__N_468_I_0_303_2_lut_rep_45_3_lut_4_lut.init = 16'h55d5;
    LUT4 tx_buf_7__N_468_I_0_294_2_lut_rep_46_3_lut_4_lut (.A(spi_rst), .B(top_test3_c_2), 
         .C(spi_tx_load_en), .D(spi_tx_data[2]), .Z(n4511)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam tx_buf_7__N_468_I_0_294_2_lut_rep_46_3_lut_4_lut.init = 16'h8000;
    LUT4 tx_buf_7__N_468_I_0_296_2_lut_rep_44_3_lut_4_lut (.A(spi_rst), .B(top_test3_c_2), 
         .C(spi_tx_load_en), .D(spi_tx_data[0]), .Z(n4509)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam tx_buf_7__N_468_I_0_296_2_lut_rep_44_3_lut_4_lut.init = 16'h8000;
    LUT4 tx_buf_7__N_468_I_0_300_2_lut_rep_50_3_lut_4_lut (.A(spi_rst), .B(top_test3_c_2), 
         .C(spi_tx_load_en), .D(spi_tx_data[4]), .Z(n4515)) /* synthesis lut_function=(!(A (((D)+!C)+!B))) */ ;
    defparam tx_buf_7__N_468_I_0_300_2_lut_rep_50_3_lut_4_lut.init = 16'h55d5;
    FD1S3AX bit_cnt_i1 (.D(bit_cnt[0]), .CK(top_test0_c), .Q(bit_cnt[1])) /* synthesis LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(79[7] 81[14])
    defparam bit_cnt_i1.GSR = "ENABLED";
    FD1S3AX bit_cnt_i2 (.D(bit_cnt[1]), .CK(top_test0_c), .Q(bit_cnt[2])) /* synthesis LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(79[7] 81[14])
    defparam bit_cnt_i2.GSR = "ENABLED";
    FD1S3AX bit_cnt_i3 (.D(bit_cnt[2]), .CK(top_test0_c), .Q(bit_cnt[3])) /* synthesis LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(79[7] 81[14])
    defparam bit_cnt_i3.GSR = "ENABLED";
    FD1S3AX bit_cnt_i4 (.D(bit_cnt[3]), .CK(top_test0_c), .Q(bit_cnt[4])) /* synthesis LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(79[7] 81[14])
    defparam bit_cnt_i4.GSR = "ENABLED";
    FD1S3AX bit_cnt_i5 (.D(bit_cnt[4]), .CK(top_test0_c), .Q(bit_cnt[5])) /* synthesis LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(79[7] 81[14])
    defparam bit_cnt_i5.GSR = "ENABLED";
    FD1S3AX bit_cnt_i6 (.D(bit_cnt[5]), .CK(top_test0_c), .Q(bit_cnt[6])) /* synthesis LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(79[7] 81[14])
    defparam bit_cnt_i6.GSR = "ENABLED";
    FD1S3AX bit_cnt_i7 (.D(bit_cnt[6]), .CK(top_test0_c), .Q(bit_cnt[7])) /* synthesis LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(79[7] 81[14])
    defparam bit_cnt_i7.GSR = "ENABLED";
    FD1S3AX bit_cnt_i8 (.D(bit_cnt[7]), .CK(top_test0_c), .Q(bit_cnt[8])) /* synthesis LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(79[7] 81[14])
    defparam bit_cnt_i8.GSR = "ENABLED";
    FD1S3AX bit_cnt_i9 (.D(bit_cnt[8]), .CK(top_test0_c), .Q(bit_cnt[9])) /* synthesis LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(79[7] 81[14])
    defparam bit_cnt_i9.GSR = "ENABLED";
    FD1S3AX bit_cnt_i10 (.D(bit_cnt[9]), .CK(top_test0_c), .Q(bit_cnt[10])) /* synthesis LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(79[7] 81[14])
    defparam bit_cnt_i10.GSR = "ENABLED";
    FD1S3AX bit_cnt_i11 (.D(bit_cnt[10]), .CK(top_test0_c), .Q(bit_cnt[11])) /* synthesis LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(79[7] 81[14])
    defparam bit_cnt_i11.GSR = "ENABLED";
    FD1S3AX bit_cnt_i12 (.D(bit_cnt[11]), .CK(top_test0_c), .Q(bit_cnt[12])) /* synthesis LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(79[7] 81[14])
    defparam bit_cnt_i12.GSR = "ENABLED";
    FD1S3AX bit_cnt_i13 (.D(bit_cnt[12]), .CK(top_test0_c), .Q(bit_cnt[13])) /* synthesis LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(79[7] 81[14])
    defparam bit_cnt_i13.GSR = "ENABLED";
    FD1S3AX bit_cnt_i14 (.D(bit_cnt[13]), .CK(top_test0_c), .Q(bit_cnt[14])) /* synthesis LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(79[7] 81[14])
    defparam bit_cnt_i14.GSR = "ENABLED";
    FD1S3AX bit_cnt_i15 (.D(bit_cnt[14]), .CK(top_test0_c), .Q(bit_cnt[15])) /* synthesis LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(79[7] 81[14])
    defparam bit_cnt_i15.GSR = "ENABLED";
    FD1S3AX bit_cnt_i16 (.D(bit_cnt[15]), .CK(top_test0_c), .Q(bit_cnt[16])) /* synthesis LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(79[7] 81[14])
    defparam bit_cnt_i16.GSR = "ENABLED";
    LUT4 tx_buf_7__N_468_I_0_301_2_lut_rep_54_3_lut_4_lut (.A(spi_rst), .B(top_test3_c_2), 
         .C(spi_tx_load_en), .D(spi_tx_data[3]), .Z(n4519)) /* synthesis lut_function=(!(A (((D)+!C)+!B))) */ ;
    defparam tx_buf_7__N_468_I_0_301_2_lut_rep_54_3_lut_4_lut.init = 16'h55d5;
    LUT4 i3138_2_lut (.A(top_test3_c_2), .B(spi_rst), .Z(bit_cnt_16__N_437)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(165[8:35])
    defparam i3138_2_lut.init = 16'h4444;
    LUT4 tx_buf_7__N_468_I_0_299_2_lut_rep_56_3_lut_4_lut (.A(spi_rst), .B(top_test3_c_2), 
         .C(spi_tx_load_en), .D(spi_tx_data[5]), .Z(n4521)) /* synthesis lut_function=(!(A (((D)+!C)+!B))) */ ;
    defparam tx_buf_7__N_468_I_0_299_2_lut_rep_56_3_lut_4_lut.init = 16'h55d5;
    LUT4 i1262_3_lut (.A(n2005), .B(n2004), .C(n4860), .Z(tx_buf[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam i1262_3_lut.init = 16'hcaca;
    FD1S3DX tx_buf_i0_i5_1276_1277_reset (.D(n18[5]), .CK(top_test0_c), 
            .CD(n4521), .Q(n2021)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam tx_buf_i0_i5_1276_1277_reset.GSR = "DISABLED";
    LUT4 tx_buf_7__N_468_I_0_295_2_lut_rep_43_3_lut_4_lut (.A(spi_rst), .B(top_test3_c_2), 
         .C(spi_tx_load_en), .D(spi_tx_data[1]), .Z(n4508)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam tx_buf_7__N_468_I_0_295_2_lut_rep_43_3_lut_4_lut.init = 16'h8000;
    LUT4 wr_add_N_441_I_0_286_2_lut (.A(wr_add), .B(bit_cnt[13]), .Z(rx_buf_3__N_452)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(143[12:69])
    defparam wr_add_N_441_I_0_286_2_lut.init = 16'h4444;
    LUT4 tx_buf_i1_i2_3_lut (.A(tx_buf[1]), .B(tx_buf[0]), .C(n3704), 
         .Z(n18[1])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam tx_buf_i1_i2_3_lut.init = 16'hacac;
    FD1S3BX tx_buf_i0_i0_1256_1257_set (.D(n18[0]), .CK(top_test0_c), .PD(n4509), 
            .Q(n2000)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam tx_buf_i0_i0_1256_1257_set.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_126 (.A(\spi_current_state[2] ), .B(rrdy_N_523), .Z(n3770)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(112[8:101])
    defparam i1_2_lut_adj_126.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_78 (.A(top_test3_c_2), .B(spi_st_load_en), .Z(n4543)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_78.init = 16'h8888;
    FD1S3BX tx_buf_i0_i1_1260_1261_set (.D(n18[1]), .CK(top_test0_c), .PD(n4508), 
            .Q(n2004)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam tx_buf_i0_i1_1260_1261_set.GSR = "DISABLED";
    FD1S3DX tx_buf_i0_i2_1264_1265_reset (.D(n18[2]), .CK(top_test0_c), 
            .CD(n4507), .Q(n2009)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam tx_buf_i0_i2_1264_1265_reset.GSR = "DISABLED";
    LUT4 wr_add_I_0_314_2_lut_rep_75 (.A(wr_add), .B(bit_cnt[9]), .Z(n4540)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(104[10:43])
    defparam wr_add_I_0_314_2_lut_rep_75.init = 16'h8888;
    LUT4 i1895_2_lut_3_lut (.A(wr_add), .B(bit_cnt[9]), .C(top_test1_c), 
         .Z(trdy_N_538)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(104[10:43])
    defparam i1895_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut (.A(top_test3_c_2), .B(spi_st_load_en), .C(spi_st_load_trdy), 
         .Z(n40)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0808;
    LUT4 n17_bdd_3_lut_3475_4_lut (.A(top_test3_c_2), .B(spi_st_load_en), 
         .C(bit_cnt[10]), .D(roe_N_530), .Z(n4443)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;
    defparam n17_bdd_3_lut_3475_4_lut.init = 16'h7000;
    PFUMX tx_buf_7__N_509_I_0 (.BLUT(n1944), .ALUT(n522[0]), .C0(rd_add), 
          .Z(miso_N_558)) /* synthesis LSE_LINE_FILE_ID=55, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=58, LSE_RLINE=58 */ ;
    LUT4 i1_2_lut_3_lut_adj_127 (.A(top_test3_c_2), .B(spi_st_load_en), 
         .C(spi_st_load_rrdy), .Z(rrdy_N_548)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_127.init = 16'h8080;
    LUT4 i1_2_lut_rep_79 (.A(wr_add), .B(bit_cnt[11]), .Z(n4544)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(89[5] 91[12])
    defparam i1_2_lut_rep_79.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_128 (.A(wr_add), .B(bit_cnt[11]), .C(top_test1_c), 
         .Z(roe_N_550)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(89[5] 91[12])
    defparam i1_2_lut_3_lut_adj_128.init = 16'h8080;
    PFUMX i3450 (.BLUT(n4443), .ALUT(n4442), .C0(bit_cnt[8]), .Z(n4444));
    LUT4 i3274_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[6]), .B(spi_rst), 
         .C(n4851), .D(n4538), .Z(n4851)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(156[5] 162[12])
    defparam i3274_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    
endmodule
//
// Verilog Description of module packetCounter
//

module packetCounter (waitcount, GND_net, VCC_net, top_test6_c, spi_tx_data_7__N_23, 
            \spi_rx_data[5] , \spi_tx_data[5] , n4535, \spi_rx_data[1] , 
            \spi_tx_data[1] , \spi_rx_data[6] , \spi_tx_data[6] , \spi_rx_data[0] , 
            \spi_tx_data[0] , \spi_rx_data[2] , \spi_tx_data[2] , \spi_rx_data[7] , 
            \spi_tx_data[7] , counter_0_countDone, clockDivider_clk_4M, 
            cout, spi_st_load_trdy, \spi_current_state[2] , \spi_current_state[0] , 
            \spi_current_state[1] , n4545, cout_adj_1) /* synthesis syn_module_defined=1 */ ;
    output [25:0]waitcount;
    input GND_net;
    input VCC_net;
    input top_test6_c;
    input spi_tx_data_7__N_23;
    input \spi_rx_data[5] ;
    output \spi_tx_data[5] ;
    output n4535;
    input \spi_rx_data[1] ;
    output \spi_tx_data[1] ;
    input \spi_rx_data[6] ;
    output \spi_tx_data[6] ;
    input \spi_rx_data[0] ;
    output \spi_tx_data[0] ;
    input \spi_rx_data[2] ;
    output \spi_tx_data[2] ;
    input \spi_rx_data[7] ;
    output \spi_tx_data[7] ;
    output counter_0_countDone;
    input clockDivider_clk_4M;
    input cout;
    output spi_st_load_trdy;
    input \spi_current_state[2] ;
    input \spi_current_state[0] ;
    input \spi_current_state[1] ;
    output n4545;
    input cout_adj_1;
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(44[8:27])
    
    wire n3376;
    wire [25:0]n109;
    
    wire n3377, n3387, n3388, countDone_N_183, n2033, n3386, n3385, 
        n3384, n3383, n3382, n3381, n3380, n3379, n3378;
    
    CCU2C waitcount_580_add_4_3 (.A0(waitcount[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3376), .COUT(n3377), .S0(n109[1]), .S1(n109[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580_add_4_3.INIT0 = 16'haaa0;
    defparam waitcount_580_add_4_3.INIT1 = 16'haaa0;
    defparam waitcount_580_add_4_3.INJECT1_0 = "NO";
    defparam waitcount_580_add_4_3.INJECT1_1 = "NO";
    CCU2C waitcount_580_add_4_25 (.A0(waitcount[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3387), .COUT(n3388), .S0(n109[23]), .S1(n109[24]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580_add_4_25.INIT0 = 16'haaa0;
    defparam waitcount_580_add_4_25.INIT1 = 16'haaa0;
    defparam waitcount_580_add_4_25.INJECT1_0 = "NO";
    defparam waitcount_580_add_4_25.INJECT1_1 = "NO";
    CCU2C waitcount_580_add_4_27 (.A0(waitcount[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3388), .S0(n109[25]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580_add_4_27.INIT0 = 16'haaa0;
    defparam waitcount_580_add_4_27.INIT1 = 16'h0000;
    defparam waitcount_580_add_4_27.INJECT1_0 = "NO";
    defparam waitcount_580_add_4_27.INJECT1_1 = "NO";
    LUT4 i3205_4_lut_4_lut_4_lut (.A(top_test6_c), .B(spi_tx_data_7__N_23), 
         .C(\spi_rx_data[5] ), .D(\spi_tx_data[5] ), .Z(\spi_tx_data[5] )) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(148[6:25])
    defparam i3205_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 top_test6_I_0_1_lut_rep_70 (.A(top_test6_c), .Z(n4535)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(148[6:25])
    defparam top_test6_I_0_1_lut_rep_70.init = 16'h5555;
    LUT4 i3189_4_lut_4_lut_4_lut (.A(top_test6_c), .B(spi_tx_data_7__N_23), 
         .C(\spi_rx_data[1] ), .D(\spi_tx_data[1] ), .Z(\spi_tx_data[1] )) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(148[6:25])
    defparam i3189_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 i3209_4_lut_4_lut_4_lut (.A(top_test6_c), .B(spi_tx_data_7__N_23), 
         .C(\spi_rx_data[6] ), .D(\spi_tx_data[6] ), .Z(\spi_tx_data[6] )) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(148[6:25])
    defparam i3209_4_lut_4_lut_4_lut.init = 16'ha280;
    CCU2C waitcount_580_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(waitcount[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n3376), .S1(n109[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580_add_4_1.INIT0 = 16'h0000;
    defparam waitcount_580_add_4_1.INIT1 = 16'h555f;
    defparam waitcount_580_add_4_1.INJECT1_0 = "NO";
    defparam waitcount_580_add_4_1.INJECT1_1 = "NO";
    LUT4 i3161_4_lut_4_lut_4_lut (.A(top_test6_c), .B(spi_tx_data_7__N_23), 
         .C(\spi_rx_data[0] ), .D(\spi_tx_data[0] ), .Z(\spi_tx_data[0] )) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(148[6:25])
    defparam i3161_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 i3193_4_lut_4_lut_4_lut (.A(top_test6_c), .B(spi_tx_data_7__N_23), 
         .C(\spi_rx_data[2] ), .D(\spi_tx_data[2] ), .Z(\spi_tx_data[2] )) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(148[6:25])
    defparam i3193_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 i3213_4_lut_4_lut_4_lut (.A(top_test6_c), .B(spi_tx_data_7__N_23), 
         .C(\spi_rx_data[7] ), .D(\spi_tx_data[7] ), .Z(\spi_tx_data[7] )) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(148[6:25])
    defparam i3213_4_lut_4_lut_4_lut.init = 16'ha280;
    FD1S3IX countDone_13 (.D(countDone_N_183), .CK(clockDivider_clk_4M), 
            .CD(n4535), .Q(counter_0_countDone));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(14[8] 26[4])
    defparam countDone_13.GSR = "DISABLED";
    LUT4 i3140_2_lut (.A(cout), .B(top_test6_c), .Z(n2033)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(18[14] 25[8])
    defparam i3140_2_lut.init = 16'hbbbb;
    FD1S3IX waitcount_580__i0 (.D(n109[0]), .CK(clockDivider_clk_4M), .CD(n2033), 
            .Q(waitcount[0])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i0.GSR = "DISABLED";
    CCU2C waitcount_580_add_4_23 (.A0(waitcount[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3386), .COUT(n3387), .S0(n109[21]), .S1(n109[22]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580_add_4_23.INIT0 = 16'haaa0;
    defparam waitcount_580_add_4_23.INIT1 = 16'haaa0;
    defparam waitcount_580_add_4_23.INJECT1_0 = "NO";
    defparam waitcount_580_add_4_23.INJECT1_1 = "NO";
    CCU2C waitcount_580_add_4_21 (.A0(waitcount[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3385), .COUT(n3386), .S0(n109[19]), .S1(n109[20]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580_add_4_21.INIT0 = 16'haaa0;
    defparam waitcount_580_add_4_21.INIT1 = 16'haaa0;
    defparam waitcount_580_add_4_21.INJECT1_0 = "NO";
    defparam waitcount_580_add_4_21.INJECT1_1 = "NO";
    LUT4 i3185_4_lut_2_lut_2_lut (.A(top_test6_c), .B(spi_st_load_trdy), 
         .Z(spi_st_load_trdy)) /* synthesis lut_function=((B)+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(148[6:25])
    defparam i3185_4_lut_2_lut_2_lut.init = 16'hdddd;
    LUT4 top_test6_c_bdd_4_lut (.A(top_test6_c), .B(\spi_current_state[2] ), 
         .C(\spi_current_state[0] ), .D(\spi_current_state[1] ), .Z(n4545)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D))))) */ ;
    defparam top_test6_c_bdd_4_lut.init = 16'h755d;
    CCU2C waitcount_580_add_4_19 (.A0(waitcount[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3384), .COUT(n3385), .S0(n109[17]), .S1(n109[18]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580_add_4_19.INIT0 = 16'haaa0;
    defparam waitcount_580_add_4_19.INIT1 = 16'haaa0;
    defparam waitcount_580_add_4_19.INJECT1_0 = "NO";
    defparam waitcount_580_add_4_19.INJECT1_1 = "NO";
    LUT4 i462_1_lut (.A(cout_adj_1), .Z(countDone_N_183)) /* synthesis lut_function=(!(A)) */ ;
    defparam i462_1_lut.init = 16'h5555;
    FD1S3IX waitcount_580__i1 (.D(n109[1]), .CK(clockDivider_clk_4M), .CD(n2033), 
            .Q(waitcount[1])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i1.GSR = "DISABLED";
    FD1S3IX waitcount_580__i2 (.D(n109[2]), .CK(clockDivider_clk_4M), .CD(n2033), 
            .Q(waitcount[2])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i2.GSR = "DISABLED";
    FD1S3IX waitcount_580__i3 (.D(n109[3]), .CK(clockDivider_clk_4M), .CD(n2033), 
            .Q(waitcount[3])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i3.GSR = "DISABLED";
    FD1S3IX waitcount_580__i4 (.D(n109[4]), .CK(clockDivider_clk_4M), .CD(n2033), 
            .Q(waitcount[4])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i4.GSR = "DISABLED";
    FD1S3IX waitcount_580__i5 (.D(n109[5]), .CK(clockDivider_clk_4M), .CD(n2033), 
            .Q(waitcount[5])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i5.GSR = "DISABLED";
    FD1S3IX waitcount_580__i6 (.D(n109[6]), .CK(clockDivider_clk_4M), .CD(n2033), 
            .Q(waitcount[6])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i6.GSR = "DISABLED";
    FD1S3IX waitcount_580__i7 (.D(n109[7]), .CK(clockDivider_clk_4M), .CD(n2033), 
            .Q(waitcount[7])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i7.GSR = "DISABLED";
    FD1S3IX waitcount_580__i8 (.D(n109[8]), .CK(clockDivider_clk_4M), .CD(n2033), 
            .Q(waitcount[8])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i8.GSR = "DISABLED";
    FD1S3IX waitcount_580__i9 (.D(n109[9]), .CK(clockDivider_clk_4M), .CD(n2033), 
            .Q(waitcount[9])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i9.GSR = "DISABLED";
    FD1S3IX waitcount_580__i10 (.D(n109[10]), .CK(clockDivider_clk_4M), 
            .CD(n2033), .Q(waitcount[10])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i10.GSR = "DISABLED";
    FD1S3IX waitcount_580__i11 (.D(n109[11]), .CK(clockDivider_clk_4M), 
            .CD(n2033), .Q(waitcount[11])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i11.GSR = "DISABLED";
    FD1S3IX waitcount_580__i12 (.D(n109[12]), .CK(clockDivider_clk_4M), 
            .CD(n2033), .Q(waitcount[12])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i12.GSR = "DISABLED";
    FD1S3IX waitcount_580__i13 (.D(n109[13]), .CK(clockDivider_clk_4M), 
            .CD(n2033), .Q(waitcount[13])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i13.GSR = "DISABLED";
    FD1S3IX waitcount_580__i14 (.D(n109[14]), .CK(clockDivider_clk_4M), 
            .CD(n2033), .Q(waitcount[14])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i14.GSR = "DISABLED";
    FD1S3IX waitcount_580__i15 (.D(n109[15]), .CK(clockDivider_clk_4M), 
            .CD(n2033), .Q(waitcount[15])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i15.GSR = "DISABLED";
    FD1S3IX waitcount_580__i16 (.D(n109[16]), .CK(clockDivider_clk_4M), 
            .CD(n2033), .Q(waitcount[16])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i16.GSR = "DISABLED";
    FD1S3IX waitcount_580__i17 (.D(n109[17]), .CK(clockDivider_clk_4M), 
            .CD(n2033), .Q(waitcount[17])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i17.GSR = "DISABLED";
    FD1S3IX waitcount_580__i18 (.D(n109[18]), .CK(clockDivider_clk_4M), 
            .CD(n2033), .Q(waitcount[18])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i18.GSR = "DISABLED";
    FD1S3IX waitcount_580__i19 (.D(n109[19]), .CK(clockDivider_clk_4M), 
            .CD(n2033), .Q(waitcount[19])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i19.GSR = "DISABLED";
    FD1S3IX waitcount_580__i20 (.D(n109[20]), .CK(clockDivider_clk_4M), 
            .CD(n2033), .Q(waitcount[20])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i20.GSR = "DISABLED";
    FD1S3IX waitcount_580__i21 (.D(n109[21]), .CK(clockDivider_clk_4M), 
            .CD(n2033), .Q(waitcount[21])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i21.GSR = "DISABLED";
    FD1S3IX waitcount_580__i22 (.D(n109[22]), .CK(clockDivider_clk_4M), 
            .CD(n2033), .Q(waitcount[22])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i22.GSR = "DISABLED";
    FD1S3IX waitcount_580__i23 (.D(n109[23]), .CK(clockDivider_clk_4M), 
            .CD(n2033), .Q(waitcount[23])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i23.GSR = "DISABLED";
    FD1S3IX waitcount_580__i24 (.D(n109[24]), .CK(clockDivider_clk_4M), 
            .CD(n2033), .Q(waitcount[24])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i24.GSR = "DISABLED";
    FD1S3IX waitcount_580__i25 (.D(n109[25]), .CK(clockDivider_clk_4M), 
            .CD(n2033), .Q(waitcount[25])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580__i25.GSR = "DISABLED";
    CCU2C waitcount_580_add_4_17 (.A0(waitcount[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3383), .COUT(n3384), .S0(n109[15]), .S1(n109[16]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580_add_4_17.INIT0 = 16'haaa0;
    defparam waitcount_580_add_4_17.INIT1 = 16'haaa0;
    defparam waitcount_580_add_4_17.INJECT1_0 = "NO";
    defparam waitcount_580_add_4_17.INJECT1_1 = "NO";
    CCU2C waitcount_580_add_4_15 (.A0(waitcount[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3382), .COUT(n3383), .S0(n109[13]), .S1(n109[14]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580_add_4_15.INIT0 = 16'haaa0;
    defparam waitcount_580_add_4_15.INIT1 = 16'haaa0;
    defparam waitcount_580_add_4_15.INJECT1_0 = "NO";
    defparam waitcount_580_add_4_15.INJECT1_1 = "NO";
    CCU2C waitcount_580_add_4_13 (.A0(waitcount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3381), .COUT(n3382), .S0(n109[11]), .S1(n109[12]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580_add_4_13.INIT0 = 16'haaa0;
    defparam waitcount_580_add_4_13.INIT1 = 16'haaa0;
    defparam waitcount_580_add_4_13.INJECT1_0 = "NO";
    defparam waitcount_580_add_4_13.INJECT1_1 = "NO";
    CCU2C waitcount_580_add_4_11 (.A0(waitcount[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3380), .COUT(n3381), .S0(n109[9]), .S1(n109[10]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580_add_4_11.INIT0 = 16'haaa0;
    defparam waitcount_580_add_4_11.INIT1 = 16'haaa0;
    defparam waitcount_580_add_4_11.INJECT1_0 = "NO";
    defparam waitcount_580_add_4_11.INJECT1_1 = "NO";
    CCU2C waitcount_580_add_4_9 (.A0(waitcount[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3379), .COUT(n3380), .S0(n109[7]), .S1(n109[8]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580_add_4_9.INIT0 = 16'haaa0;
    defparam waitcount_580_add_4_9.INIT1 = 16'haaa0;
    defparam waitcount_580_add_4_9.INJECT1_0 = "NO";
    defparam waitcount_580_add_4_9.INJECT1_1 = "NO";
    CCU2C waitcount_580_add_4_7 (.A0(waitcount[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3378), .COUT(n3379), .S0(n109[5]), .S1(n109[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580_add_4_7.INIT0 = 16'haaa0;
    defparam waitcount_580_add_4_7.INIT1 = 16'haaa0;
    defparam waitcount_580_add_4_7.INJECT1_0 = "NO";
    defparam waitcount_580_add_4_7.INJECT1_1 = "NO";
    CCU2C waitcount_580_add_4_5 (.A0(waitcount[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3377), .COUT(n3378), .S0(n109[3]), .S1(n109[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_580_add_4_5.INIT0 = 16'haaa0;
    defparam waitcount_580_add_4_5.INIT1 = 16'haaa0;
    defparam waitcount_580_add_4_5.INJECT1_0 = "NO";
    defparam waitcount_580_add_4_5.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module IQSerializer
//

module IQSerializer (clk_N_369, n1115, IQSerializer_start, n13, n14, 
            \QCounter[1] , n4531, \fskModule_I[7] , \fskModule_Q[0] , 
            \fskModule_Q[2] , \fskModule_I[11] , \fskModule_I[2] , \QCounter[2] , 
            \fskModule_Q[7] , \fskModule_I[12] , \fskModule_Q[4] , \fskModule_Q[6] , 
            \fskModule_I[0] , \fskModule_I[4] , serial_clk_c, serial) /* synthesis syn_module_defined=1 */ ;
    input clk_N_369;
    input n1115;
    input IQSerializer_start;
    input n13;
    input n14;
    output \QCounter[1] ;
    input n4531;
    input \fskModule_I[7] ;
    input \fskModule_Q[0] ;
    input \fskModule_Q[2] ;
    input \fskModule_I[11] ;
    input \fskModule_I[2] ;
    output \QCounter[2] ;
    input \fskModule_Q[7] ;
    input \fskModule_I[12] ;
    input \fskModule_Q[4] ;
    input \fskModule_Q[6] ;
    input \fskModule_I[0] ;
    input \fskModule_I[4] ;
    input serial_clk_c;
    output serial;
    
    wire clk_N_369 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(17[11:24])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(17[10:20])
    
    wire n3, n6;
    wire [31:0]DEDFF_D0_N_415;
    
    wire n3962;
    wire [4:0]n521;
    
    wire n1783, n4411, n4409;
    wire [3:0]ICounter;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(21[41:49])
    
    wire n4413, n2034, n10, n3963, n4525, n4408, n4407, n2035, 
        n4528, n4530, n7, n4477, n3744, n30, n4476;
    wire [3:0]QCounter;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(22[41:49])
    wire [31:0]DEDFF_D1_N_426;
    wire [3:0]next_state_3__N_403;
    
    wire n4410, DEDFF_D0_N_414, n1, n486, n1789, n4539;
    wire [3:0]n21;
    
    wire n4478;
    
    PFUMX i3091 (.BLUT(n3), .ALUT(n6), .C0(DEDFF_D0_N_415[2]), .Z(n3962));
    FD1S3IX current_state_FSM_i0 (.D(n1783), .CK(clk_N_369), .CD(n1115), 
            .Q(n521[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam current_state_FSM_i0.GSR = "DISABLED";
    LUT4 n113_bdd_2_lut_3445_4_lut (.A(n4411), .B(n4409), .C(ICounter[3]), 
         .D(n521[2]), .Z(n4413)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n113_bdd_2_lut_3445_4_lut.init = 16'hca00;
    LUT4 i3151_2_lut (.A(n521[0]), .B(IQSerializer_start), .Z(n2034)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(81[14] 97[8])
    defparam i3151_2_lut.init = 16'h7777;
    PFUMX i3092 (.BLUT(n10), .ALUT(n13), .C0(DEDFF_D0_N_415[2]), .Z(n3963));
    LUT4 i1_2_lut_rep_60 (.A(ICounter[3]), .B(ICounter[2]), .Z(n4525)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(82[52:67])
    defparam i1_2_lut_rep_60.init = 16'h8888;
    PFUMX i3426 (.BLUT(n4408), .ALUT(n4407), .C0(ICounter[1]), .Z(n4409));
    FD1S3IX ICounter_585__i1 (.D(n4528), .CK(clk_N_369), .CD(n2035), .Q(ICounter[1])) /* synthesis syn_preserve="TRUE" */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(82[52:67])
    defparam ICounter_585__i1.GSR = "DISABLED";
    LUT4 n30_bdd_4_lut (.A(n4530), .B(n7), .C(n14), .D(n521[1]), .Z(n4477)) /* synthesis lut_function=(A (B+(D))+!A (C+(D))) */ ;
    defparam n30_bdd_4_lut.init = 16'hffd8;
    LUT4 i2569_1_lut_rep_63 (.A(ICounter[1]), .Z(n4528)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(82[52:67])
    defparam i2569_1_lut_rep_63.init = 16'h5555;
    LUT4 i2_3_lut_4_lut_4_lut (.A(ICounter[1]), .B(n521[2]), .C(ICounter[2]), 
         .D(ICounter[3]), .Z(n3744)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(82[52:67])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h4000;
    FD1S3IX QCounter_582__i1 (.D(n4531), .CK(clk_N_369), .CD(n2034), .Q(\QCounter[1] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(85[52:67])
    defparam QCounter_582__i1.GSR = "DISABLED";
    LUT4 n30_bdd_4_lut_3471 (.A(n30), .B(\fskModule_I[7] ), .C(ICounter[3]), 
         .D(ICounter[2]), .Z(n4476)) /* synthesis lut_function=(!(A (B (C (D))+!B (D))+!A ((C+!(D))+!B))) */ ;
    defparam n30_bdd_4_lut_3471.init = 16'h0caa;
    LUT4 DEDFF_D0_I_80_i3_3_lut (.A(\fskModule_Q[0] ), .B(\fskModule_Q[2] ), 
         .C(\QCounter[1] ), .Z(n3)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(62[26:45])
    defparam DEDFF_D0_I_80_i3_3_lut.init = 16'hcaca;
    LUT4 i54_3_lut (.A(\fskModule_I[11] ), .B(\fskModule_I[2] ), .C(ICounter[3]), 
         .Z(n30)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i54_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_rep_65 (.A(QCounter[3]), .B(\QCounter[2] ), .C(\QCounter[1] ), 
         .Z(n4530)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i1_3_lut_rep_65.init = 16'h6a6a;
    LUT4 i2614_1_lut_3_lut (.A(QCounter[3]), .B(\QCounter[2] ), .C(\QCounter[1] ), 
         .Z(DEDFF_D1_N_426[3])) /* synthesis lut_function=(A (B (C))+!A !(B (C))) */ ;
    defparam i2614_1_lut_3_lut.init = 16'h9595;
    LUT4 i11_4_lut (.A(\fskModule_Q[2] ), .B(\fskModule_Q[7] ), .C(\QCounter[2] ), 
         .D(\QCounter[1] ), .Z(n7)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(63[26:45])
    defparam i11_4_lut.init = 16'hca0a;
    LUT4 i1047_3_lut (.A(n521[0]), .B(n521[1]), .C(next_state_3__N_403[2]), 
         .Z(n1783)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam i1047_3_lut.init = 16'hecec;
    LUT4 i1_3_lut (.A(QCounter[3]), .B(\QCounter[2] ), .C(\QCounter[1] ), 
         .Z(next_state_3__N_403[2])) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_3_lut.init = 16'hf7f7;
    LUT4 fskModule_I_11__bdd_3_lut (.A(ICounter[1]), .B(\fskModule_I[12] ), 
         .C(\fskModule_I[7] ), .Z(n4410)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam fskModule_I_11__bdd_3_lut.init = 16'he4e4;
    LUT4 select_463_Select_0_i1_2_lut (.A(DEDFF_D0_N_414), .B(n521[0]), 
         .Z(n1)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(40[5] 69[12])
    defparam select_463_Select_0_i1_2_lut.init = 16'h8888;
    FD1S3AX current_state_FSM_i4 (.D(n1115), .CK(clk_N_369), .Q(n521[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam current_state_FSM_i4.GSR = "DISABLED";
    LUT4 DEDFF_D0_I_80_i6_3_lut (.A(\fskModule_Q[4] ), .B(\fskModule_Q[6] ), 
         .C(\QCounter[1] ), .Z(n6)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(62[26:45])
    defparam DEDFF_D0_I_80_i6_3_lut.init = 16'hcaca;
    FD1S3IX current_state_FSM_i3 (.D(n486), .CK(clk_N_369), .CD(n1115), 
            .Q(n521[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam current_state_FSM_i3.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i2 (.D(n1789), .CK(clk_N_369), .CD(n1115), 
            .Q(n521[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam current_state_FSM_i2.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i1 (.D(n3744), .CK(clk_N_369), .CD(n1115), 
            .Q(n521[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam current_state_FSM_i1.GSR = "DISABLED";
    LUT4 i3154_2_lut (.A(n521[2]), .B(IQSerializer_start), .Z(n2035)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(81[14] 97[8])
    defparam i3154_2_lut.init = 16'h7777;
    LUT4 ICounter_1__bdd_3_lut_3480 (.A(\fskModule_I[0] ), .B(ICounter[2]), 
         .C(\fskModule_I[4] ), .Z(n4408)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam ICounter_1__bdd_3_lut_3480.init = 16'hb8b8;
    FD1S3IX QCounter_582__i2 (.D(n4539), .CK(clk_N_369), .CD(n2034), .Q(\QCounter[2] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(85[52:67])
    defparam QCounter_582__i2.GSR = "DISABLED";
    FD1S3IX QCounter_582__i3 (.D(n4530), .CK(clk_N_369), .CD(n2034), .Q(QCounter[3])) /* synthesis syn_preserve="TRUE" */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(85[52:67])
    defparam QCounter_582__i3.GSR = "DISABLED";
    FD1S3IX ICounter_585__i2 (.D(n21[2]), .CK(clk_N_369), .CD(n2035), 
            .Q(ICounter[2])) /* synthesis syn_preserve="TRUE" */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(82[52:67])
    defparam ICounter_585__i2.GSR = "DISABLED";
    FD1S3IX ICounter_585__i3 (.D(n21[3]), .CK(clk_N_369), .CD(n2035), 
            .Q(ICounter[3])) /* synthesis syn_preserve="TRUE" */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(82[52:67])
    defparam ICounter_585__i3.GSR = "DISABLED";
    LUT4 n4410_bdd_3_lut (.A(n4410), .B(\fskModule_I[11] ), .C(ICounter[2]), 
         .Z(n4411)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n4410_bdd_3_lut.init = 16'hcaca;
    LUT4 i2462_2_lut_rep_74 (.A(\QCounter[2] ), .B(\QCounter[1] ), .Z(n4539)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(85[52:67])
    defparam i2462_2_lut_rep_74.init = 16'h6666;
    LUT4 i2616_1_lut_2_lut (.A(\QCounter[2] ), .B(\QCounter[1] ), .Z(DEDFF_D0_N_415[2])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(85[52:67])
    defparam i2616_1_lut_2_lut.init = 16'h9999;
    LUT4 reduce_or_278_i2_3_lut (.A(next_state_3__N_403[2]), .B(n521[4]), 
         .C(n521[0]), .Z(n486)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam reduce_or_278_i2_3_lut.init = 16'hdcdc;
    LUT4 i1053_4_lut (.A(ICounter[1]), .B(n521[3]), .C(n521[2]), .D(n4525), 
         .Z(n1789)) /* synthesis lut_function=(A (B+(C))+!A (B+!((D)+!C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam i1053_4_lut.init = 16'hecfc;
    PFUMX i3472 (.BLUT(n4477), .ALUT(n4476), .C0(n521[2]), .Z(n4478));
    LUT4 ICounter_1__bdd_2_lut_3479 (.A(\fskModule_I[2] ), .B(ICounter[2]), 
         .Z(n4407)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam ICounter_1__bdd_2_lut_3479.init = 16'h2222;
    LUT4 i2571_2_lut (.A(ICounter[2]), .B(ICounter[1]), .Z(n21[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(82[52:67])
    defparam i2571_2_lut.init = 16'h6666;
    LUT4 i2578_3_lut (.A(ICounter[3]), .B(ICounter[2]), .C(ICounter[1]), 
         .Z(n21[3])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(82[52:67])
    defparam i2578_3_lut.init = 16'h6a6a;
    L6MUX21 i3093 (.D0(n3962), .D1(n3963), .SD(DEDFF_D1_N_426[3]), .Z(DEDFF_D0_N_414));
    LUT4 DEDFF_D0_I_80_i10_3_lut (.A(\fskModule_Q[6] ), .B(\fskModule_Q[7] ), 
         .C(\QCounter[1] ), .Z(n10)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(62[26:45])
    defparam DEDFF_D0_I_80_i10_3_lut.init = 16'hcaca;
    DEDFF DEDFF_0 (.serial_clk_c(serial_clk_c), .n1115(n1115), .clk_N_369(clk_N_369), 
          .next_state_3__N_394(n521[3]), .n4478(n4478), .next_state_3__N_392(n521[4]), 
          .serial(serial), .n4413(n4413), .n1(n1)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(147[7] 155[2])
    
endmodule
//
// Verilog Description of module DEDFF
//

module DEDFF (serial_clk_c, n1115, clk_N_369, next_state_3__N_394, n4478, 
            next_state_3__N_392, serial, n4413, n1) /* synthesis syn_module_defined=1 */ ;
    input serial_clk_c;
    input n1115;
    input clk_N_369;
    input next_state_3__N_394;
    input n4478;
    input next_state_3__N_392;
    output serial;
    input n4413;
    input n1;
    
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(17[10:20])
    wire clk_N_369 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(17[11:24])
    
    wire pose_edge, Q1, neg_edge, Q2;
    
    FD1S3IX pose_edge_14 (.D(Q1), .CK(serial_clk_c), .CD(n1115), .Q(pose_edge));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/dedff.v(42[8] 45[4])
    defparam pose_edge_14.GSR = "DISABLED";
    FD1S3IX neg_edge_15 (.D(Q2), .CK(clk_N_369), .CD(n1115), .Q(neg_edge));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/dedff.v(48[8] 51[4])
    defparam neg_edge_15.GSR = "DISABLED";
    LUT4 pose_edge_I_0_4_lut (.A(pose_edge), .B(next_state_3__N_394), .C(n4478), 
         .D(next_state_3__N_392), .Z(Q2)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B+((D)+!C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/dedff.v(38[15:29])
    defparam pose_edge_I_0_4_lut.init = 16'haa9a;
    LUT4 neg_edge_I_0_16_2_lut (.A(neg_edge), .B(pose_edge), .Z(serial)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/dedff.v(39[15:35])
    defparam neg_edge_I_0_16_2_lut.init = 16'h9999;
    LUT4 neg_edge_I_0_4_lut (.A(neg_edge), .B(n4413), .C(n1), .D(next_state_3__N_394), 
         .Z(Q1)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B+(C+(D))))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/dedff.v(37[15:28])
    defparam neg_edge_I_0_4_lut.init = 16'h5556;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module FSKModulator
//

module FSKModulator (fskModule_symDone, clk_N_224, n4541, clockDivider_clk_4M, 
            fskModule_symVal, \fskModule_I[0] , counter_0_countDone, sampleCount, 
            IQSerializer_start, \fskModule_Q[0] , next_state_3__N_203, 
            next_state_3__N_202, n4082, next_state_3__N_205, n67, n1115, 
            clockDivider_clk_4M_enable_9, \fskModule_I[12] , \fskModule_I[11] , 
            \fskModule_I[7] , \fskModule_I[4] , \fskModule_I[2] , \fskModule_Q[2] , 
            \fskModule_Q[4] , \fskModule_Q[6] , \fskModule_Q[7] , \fskModule_Q[12] ) /* synthesis syn_module_defined=1 */ ;
    output fskModule_symDone;
    input clk_N_224;
    output n4541;
    input clockDivider_clk_4M;
    input fskModule_symVal;
    output \fskModule_I[0] ;
    input counter_0_countDone;
    output [11:0]sampleCount;
    output IQSerializer_start;
    output \fskModule_Q[0] ;
    input next_state_3__N_203;
    input next_state_3__N_202;
    output n4082;
    input next_state_3__N_205;
    input [11:0]n67;
    output n1115;
    output clockDivider_clk_4M_enable_9;
    output \fskModule_I[12] ;
    output \fskModule_I[11] ;
    output \fskModule_I[7] ;
    output \fskModule_I[4] ;
    output \fskModule_I[2] ;
    output \fskModule_Q[2] ;
    output \fskModule_Q[4] ;
    output \fskModule_Q[6] ;
    output \fskModule_Q[7] ;
    output \fskModule_Q[12] ;
    
    wire clk_N_224 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(21[12:18])
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(44[8:27])
    
    wire lastSym_N_311;
    wire [12:0]cosine;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(44[23:29])
    
    wire n623;
    wire [7:0]n376;
    
    wire lastSym, clockDivider_clk_4M_enable_1, fskModule_start;
    wire [12:0]sine;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(43[23:27])
    wire [11:0]sampleCount_11__N_283;
    
    wire firstFlag, cosOut_12__N_367, n1961;
    wire [2:0]sin_phase;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(35[23:32])
    
    wire n3724, n3981, n3941, n3804, n1, n3737, n23, n4533, 
        n3786, n4534, n3888, n17, n3790, n4526, n3982, n3620, 
        n3732;
    wire [2:0]n2;
    
    wire n3784;
    
    FD1S3IX symDone_57 (.D(lastSym_N_311), .CK(clk_N_224), .CD(n4541), 
            .Q(fskModule_symDone));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam symDone_57.GSR = "DISABLED";
    FD1S3JX cos_phase_FSM_i1 (.D(n376[7]), .CK(clockDivider_clk_4M), .PD(n623), 
            .Q(cosine[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i1.GSR = "DISABLED";
    FD1P3IX lastSym_53 (.D(fskModule_symVal), .SP(clockDivider_clk_4M_enable_1), 
            .CD(n4541), .CK(clockDivider_clk_4M), .Q(lastSym));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(70[8] 116[4])
    defparam lastSym_53.GSR = "DISABLED";
    FD1S3IX FSK_I__i0 (.D(sine[0]), .CK(clk_N_224), .CD(fskModule_start), 
            .Q(\fskModule_I[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i0.GSR = "DISABLED";
    LUT4 rst_n_I_0_1_lut_rep_76 (.A(counter_0_countDone), .Z(n4541)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(63[6:18])
    defparam rst_n_I_0_1_lut_rep_76.init = 16'h5555;
    FD1S3JX sampleCount_i0 (.D(sampleCount_11__N_283[0]), .CK(clk_N_224), 
            .PD(n4541), .Q(sampleCount[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i0.GSR = "DISABLED";
    FD1S3AX firstFlag_54 (.D(n4541), .CK(clockDivider_clk_4M), .Q(firstFlag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(70[8] 116[4])
    defparam firstFlag_54.GSR = "DISABLED";
    FD1S3AX start_55 (.D(counter_0_countDone), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_start)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(70[8] 116[4])
    defparam start_55.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(n376[2]), .B(cosOut_12__N_367), .Z(n1961)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam i1_2_lut.init = 16'heeee;
    FD1S3IX FSK_Q__i0 (.D(cosine[0]), .CK(clk_N_224), .CD(fskModule_start), 
            .Q(\fskModule_Q[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i0.GSR = "DISABLED";
    LUT4 i639_2_lut_2_lut (.A(counter_0_countDone), .B(lastSym_N_311), .Z(clockDivider_clk_4M_enable_1)) /* synthesis lut_function=((B)+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(63[6:18])
    defparam i639_2_lut_2_lut.init = 16'hdddd;
    LUT4 i392_2_lut_2_lut (.A(counter_0_countDone), .B(firstFlag), .Z(n623)) /* synthesis lut_function=((B)+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(63[6:18])
    defparam i392_2_lut_2_lut.init = 16'hdddd;
    LUT4 i3219_3_lut_3_lut (.A(counter_0_countDone), .B(next_state_3__N_203), 
         .C(next_state_3__N_202), .Z(n4082)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(63[6:18])
    defparam i3219_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i3118_1_lut_4_lut (.A(sin_phase[1]), .B(n3724), .C(sin_phase[2]), 
         .D(sin_phase[0]), .Z(n3981)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C)+!B !(C)))) */ ;
    defparam i3118_1_lut_4_lut.init = 16'h69c3;
    LUT4 i1_4_lut (.A(n3941), .B(n3804), .C(sampleCount[0]), .D(sampleCount[5]), 
         .Z(lastSym_N_311)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut.init = 16'h0004;
    LUT4 i1_4_lut_adj_102 (.A(sampleCount[3]), .B(sampleCount[8]), .C(sampleCount[1]), 
         .D(sampleCount[4]), .Z(n3804)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_102.init = 16'h0010;
    FD1S3IX sin_phase_583__i0 (.D(n1), .CK(clockDivider_clk_4M), .CD(n623), 
            .Q(sin_phase[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(89[12] 108[6])
    defparam sin_phase_583__i0.GSR = "DISABLED";
    LUT4 i1_4_lut_4_lut (.A(counter_0_countDone), .B(next_state_3__N_205), 
         .C(cosine[3]), .D(n1961), .Z(n3737)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(63[6:18])
    defparam i1_4_lut_4_lut.init = 16'hfffd;
    LUT4 i1_2_lut_adj_103 (.A(n23), .B(n67[8]), .Z(sampleCount_11__N_283[8])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_103.init = 16'h8888;
    LUT4 i664_1_lut (.A(IQSerializer_start), .Z(n1115)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(70[8] 116[4])
    defparam i664_1_lut.init = 16'h5555;
    LUT4 i637_2_lut_2_lut (.A(counter_0_countDone), .B(fskModule_symDone), 
         .Z(clockDivider_clk_4M_enable_9)) /* synthesis lut_function=((B)+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(63[6:18])
    defparam i637_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1879_2_lut_2_lut (.A(counter_0_countDone), .B(next_state_3__N_205), 
         .Z(fskModule_start)) /* synthesis lut_function=((B)+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(63[6:18])
    defparam i1879_2_lut_2_lut.init = 16'hdddd;
    FD1S3JX sampleCount_i11 (.D(sampleCount_11__N_283[11]), .CK(clk_N_224), 
            .PD(n4541), .Q(sampleCount[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i11.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_68 (.A(sampleCount[5]), .B(sampleCount[8]), .Z(n4533)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_68.init = 16'heeee;
    LUT4 i1_2_lut_adj_104 (.A(n23), .B(n67[7]), .Z(sampleCount_11__N_283[7])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_104.init = 16'h8888;
    LUT4 i1_3_lut_4_lut (.A(sampleCount[5]), .B(sampleCount[8]), .C(sampleCount[0]), 
         .D(sampleCount[3]), .Z(n3786)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_105 (.A(n23), .B(n67[0]), .Z(sampleCount_11__N_283[0])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_105.init = 16'h8888;
    LUT4 i5_2_lut_rep_69 (.A(sampleCount[9]), .B(sampleCount[10]), .Z(n4534)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam i5_2_lut_rep_69.init = 16'heeee;
    LUT4 i1_4_lut_adj_106 (.A(n3888), .B(sampleCount[0]), .C(n17), .D(sampleCount[1]), 
         .Z(n23)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i1_4_lut_adj_106.init = 16'hfbff;
    LUT4 i1_4_lut_adj_107 (.A(n4534), .B(sampleCount[4]), .C(n4533), .D(sampleCount[3]), 
         .Z(n3888)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_107.init = 16'hfffe;
    FD1S3JX sampleCount_i10 (.D(sampleCount_11__N_283[10]), .CK(clk_N_224), 
            .PD(n4541), .Q(sampleCount[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i10.GSR = "DISABLED";
    FD1S3JX sampleCount_i9 (.D(sampleCount_11__N_283[9]), .CK(clk_N_224), 
            .PD(n4541), .Q(sampleCount[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i9.GSR = "DISABLED";
    FD1S3JX sampleCount_i8 (.D(sampleCount_11__N_283[8]), .CK(clk_N_224), 
            .PD(n4541), .Q(sampleCount[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i8.GSR = "DISABLED";
    FD1S3JX sampleCount_i7 (.D(sampleCount_11__N_283[7]), .CK(clk_N_224), 
            .PD(n4541), .Q(sampleCount[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i7.GSR = "DISABLED";
    FD1S3JX sampleCount_i6 (.D(sampleCount_11__N_283[6]), .CK(clk_N_224), 
            .PD(n4541), .Q(sampleCount[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i6.GSR = "DISABLED";
    FD1S3JX sampleCount_i5 (.D(sampleCount_11__N_283[5]), .CK(clk_N_224), 
            .PD(n4541), .Q(sampleCount[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i5.GSR = "DISABLED";
    FD1S3JX sampleCount_i4 (.D(sampleCount_11__N_283[4]), .CK(clk_N_224), 
            .PD(n4541), .Q(sampleCount[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i4.GSR = "DISABLED";
    FD1S3JX sampleCount_i3 (.D(sampleCount_11__N_283[3]), .CK(clk_N_224), 
            .PD(n4541), .Q(sampleCount[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i3.GSR = "DISABLED";
    FD1S3JX sampleCount_i2 (.D(sampleCount_11__N_283[2]), .CK(clk_N_224), 
            .PD(n4541), .Q(sampleCount[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i2.GSR = "DISABLED";
    FD1S3JX sampleCount_i1 (.D(sampleCount_11__N_283[1]), .CK(clk_N_224), 
            .PD(n4541), .Q(sampleCount[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i1.GSR = "DISABLED";
    FD1S3IX FSK_I__i12 (.D(sine[12]), .CK(clk_N_224), .CD(fskModule_start), 
            .Q(\fskModule_I[12] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i12.GSR = "DISABLED";
    FD1S3IX FSK_I__i11 (.D(sine[11]), .CK(clk_N_224), .CD(fskModule_start), 
            .Q(\fskModule_I[11] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i11.GSR = "DISABLED";
    FD1S3IX FSK_I__i7 (.D(sine[5]), .CK(clk_N_224), .CD(fskModule_start), 
            .Q(\fskModule_I[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i7.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut_adj_108 (.A(sampleCount[9]), .B(sampleCount[10]), 
         .C(fskModule_symVal), .D(lastSym), .Z(n3790)) /* synthesis lut_function=(A+(B+(C (D)+!C !(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam i1_3_lut_4_lut_adj_108.init = 16'hfeef;
    FD1S3IX FSK_I__i4 (.D(sine[4]), .CK(clk_N_224), .CD(fskModule_start), 
            .Q(\fskModule_I[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i4.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_109 (.A(n23), .B(n67[6]), .Z(sampleCount_11__N_283[6])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_109.init = 16'h8888;
    FD1S3IX FSK_I__i2 (.D(n4526), .CK(clk_N_224), .CD(fskModule_start), 
            .Q(\fskModule_I[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i2.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_110 (.A(sampleCount[7]), .B(sampleCount[11]), .C(sampleCount[6]), 
         .D(sampleCount[2]), .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam i1_4_lut_adj_110.init = 16'hfffe;
    FD1S3IX cos_phase_FSM_i8 (.D(n376[6]), .CK(clockDivider_clk_4M), .CD(n623), 
            .Q(n376[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i8.GSR = "DISABLED";
    LUT4 i3072_2_lut_3_lut (.A(sampleCount[9]), .B(sampleCount[10]), .C(n17), 
         .Z(n3941)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam i3072_2_lut_3_lut.init = 16'hfefe;
    FD1S3IX cos_phase_FSM_i7 (.D(n376[5]), .CK(clockDivider_clk_4M), .CD(n623), 
            .Q(n376[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i7.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i6 (.D(n376[4]), .CK(clockDivider_clk_4M), .CD(n623), 
            .Q(n376[5]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i6.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i5 (.D(n376[3]), .CK(clockDivider_clk_4M), .CD(n623), 
            .Q(n376[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i5.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i4 (.D(n376[2]), .CK(clockDivider_clk_4M), .CD(n623), 
            .Q(n376[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i4.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i3 (.D(cosOut_12__N_367), .CK(clockDivider_clk_4M), 
            .CD(n623), .Q(n376[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i3.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i2 (.D(cosine[3]), .CK(clockDivider_clk_4M), .CD(n623), 
            .Q(cosOut_12__N_367));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i2.GSR = "DISABLED";
    LUT4 i3119_1_lut_3_lut_3_lut (.A(counter_0_countDone), .B(fskModule_symVal), 
         .C(firstFlag), .Z(n3982)) /* synthesis lut_function=(!((B (C))+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(63[6:18])
    defparam i3119_1_lut_3_lut_3_lut.init = 16'h2a2a;
    PFUMX sin_phase_583_mux_6_i3 (.BLUT(n3981), .ALUT(n3982), .C0(n623), 
          .Z(n3620));
    FD1S3IX FSK_Q__i2 (.D(cosine[3]), .CK(clk_N_224), .CD(fskModule_start), 
            .Q(\fskModule_Q[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i2.GSR = "DISABLED";
    FD1S3IX FSK_Q__i4 (.D(cosine[4]), .CK(clk_N_224), .CD(fskModule_start), 
            .Q(\fskModule_Q[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i4.GSR = "DISABLED";
    FD1S3IX FSK_Q__i6 (.D(cosine[6]), .CK(clk_N_224), .CD(fskModule_start), 
            .Q(\fskModule_Q[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i6.GSR = "DISABLED";
    FD1S3IX FSK_Q__i7 (.D(cosine[7]), .CK(clk_N_224), .CD(fskModule_start), 
            .Q(\fskModule_Q[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i7.GSR = "DISABLED";
    FD1S3IX FSK_Q__i12 (.D(n3732), .CK(clk_N_224), .CD(n3737), .Q(\fskModule_Q[12] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=263, LSE_RLINE=272 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i12.GSR = "DISABLED";
    FD1S3IX sin_phase_583__i1 (.D(n2[1]), .CK(clockDivider_clk_4M), .CD(n623), 
            .Q(sin_phase[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(89[12] 108[6])
    defparam sin_phase_583__i1.GSR = "DISABLED";
    FD1S3AX sin_phase_583__i2 (.D(n3620), .CK(clockDivider_clk_4M), .Q(sin_phase[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(89[12] 108[6])
    defparam sin_phase_583__i2.GSR = "DISABLED";
    LUT4 i1917_2_lut (.A(n67[11]), .B(n23), .Z(sampleCount_11__N_283[11])) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(125[12] 127[6])
    defparam i1917_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_111 (.A(n23), .B(n67[5]), .Z(sampleCount_11__N_283[5])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_111.init = 16'h8888;
    LUT4 i1918_2_lut (.A(n67[10]), .B(n23), .Z(sampleCount_11__N_283[10])) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(125[12] 127[6])
    defparam i1918_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_112 (.A(n23), .B(n67[9]), .Z(sampleCount_11__N_283[9])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_112.init = 16'h8888;
    LUT4 i1_2_lut_adj_113 (.A(n23), .B(n67[4]), .Z(sampleCount_11__N_283[4])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_113.init = 16'h8888;
    LUT4 i2516_2_lut (.A(sin_phase[1]), .B(sin_phase[0]), .Z(n2[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(89[12] 108[6])
    defparam i2516_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_adj_114 (.A(n23), .B(n67[3]), .Z(sampleCount_11__N_283[3])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_114.init = 16'h8888;
    LUT4 i1_4_lut_adj_115 (.A(n3786), .B(n3790), .C(n17), .D(n3784), 
         .Z(n3724)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(54[9:25])
    defparam i1_4_lut_adj_115.init = 16'hfffe;
    LUT4 i1_2_lut_adj_116 (.A(n23), .B(n67[2]), .Z(sampleCount_11__N_283[2])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_116.init = 16'h8888;
    LUT4 i1_2_lut_adj_117 (.A(n23), .B(n67[1]), .Z(sampleCount_11__N_283[1])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_117.init = 16'h8888;
    LUT4 i1_2_lut_adj_118 (.A(sampleCount[4]), .B(sampleCount[1]), .Z(n3784)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(54[9:25])
    defparam i1_2_lut_adj_118.init = 16'heeee;
    sinModule sin_instance (.sin_phase({sin_phase}), .n4526(n4526), .\sine[5] (sine[5]), 
            .\sine[12] (sine[12]), .\sine[11] (sine[11]), .n1(n1), .\sine[0] (sine[0]), 
            .\sine[4] (sine[4])) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(159[11] 162[2])
    cosModule cos_instance (.n381(n376[3]), .\cosine[3] (cosine[3]), .n1961(n1961), 
            .n380(n376[4]), .\cosine[0] (cosine[0]), .n379(n376[5]), .n3732(n3732), 
            .n377(n376[7]), .n378(n376[6]), .n382(n376[2]), .\cosine[4] (cosine[4]), 
            .cosOut_12__N_367(cosOut_12__N_367), .\cosine[6] (cosine[6]), 
            .\cosine[7] (cosine[7])) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(163[12] 166[2])
    
endmodule
//
// Verilog Description of module sinModule
//

module sinModule (sin_phase, n4526, \sine[5] , \sine[12] , \sine[11] , 
            n1, \sine[0] , \sine[4] ) /* synthesis syn_module_defined=1 */ ;
    input [2:0]sin_phase;
    output n4526;
    output \sine[5] ;
    output \sine[12] ;
    output \sine[11] ;
    output n1;
    output \sine[0] ;
    output \sine[4] ;
    
    
    LUT4 i3145_3_lut_rep_61 (.A(sin_phase[0]), .B(sin_phase[1]), .C(sin_phase[2]), 
         .Z(n4526)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/sinmodule.v(16[11:32])
    defparam i3145_3_lut_rep_61.init = 16'h0404;
    LUT4 i3134_3_lut_3_lut (.A(sin_phase[0]), .B(sin_phase[1]), .C(sin_phase[2]), 
         .Z(\sine[5] )) /* synthesis lut_function=(A (C)+!A !((C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/sinmodule.v(16[11:32])
    defparam i3134_3_lut_3_lut.init = 16'ha4a4;
    LUT4 i2769_2_lut_3_lut (.A(sin_phase[1]), .B(sin_phase[0]), .C(sin_phase[2]), 
         .Z(\sine[12] )) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i2769_2_lut_3_lut.init = 16'he0e0;
    LUT4 i3136_2_lut_3_lut (.A(sin_phase[1]), .B(sin_phase[0]), .C(sin_phase[2]), 
         .Z(\sine[11] )) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i3136_2_lut_3_lut.init = 16'h0e0e;
    LUT4 i1_1_lut (.A(sin_phase[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    LUT4 i3128_2_lut (.A(sin_phase[1]), .B(sin_phase[0]), .Z(\sine[0] )) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i3128_2_lut.init = 16'h2222;
    LUT4 i3142_3_lut (.A(sin_phase[0]), .B(sin_phase[2]), .C(sin_phase[1]), 
         .Z(\sine[4] )) /* synthesis lut_function=(A+!(B+!(C))) */ ;
    defparam i3142_3_lut.init = 16'hbaba;
    
endmodule
//
// Verilog Description of module cosModule
//

module cosModule (n381, \cosine[3] , n1961, n380, \cosine[0] , n379, 
            n3732, n377, n378, n382, \cosine[4] , cosOut_12__N_367, 
            \cosine[6] , \cosine[7] ) /* synthesis syn_module_defined=1 */ ;
    input n381;
    input \cosine[3] ;
    input n1961;
    input n380;
    output \cosine[0] ;
    input n379;
    output n3732;
    input n377;
    input n378;
    input n382;
    output \cosine[4] ;
    input cosOut_12__N_367;
    output \cosine[6] ;
    output \cosine[7] ;
    
    
    wire n4532;
    wire [9:0]n856;
    
    wire n3608, n3951, n3949;
    
    LUT4 i1890_4_lut (.A(n381), .B(\cosine[3] ), .C(n1961), .D(n380), 
         .Z(\cosine[0] )) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(14[7] 29[24])
    defparam i1890_4_lut.init = 16'hcdcc;
    LUT4 i1_3_lut (.A(n379), .B(n381), .C(n380), .Z(n3732)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(20[7] 29[24])
    defparam i1_3_lut.init = 16'hfefe;
    LUT4 i1888_2_lut_rep_67 (.A(n377), .B(n378), .Z(n4532)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(26[7] 29[24])
    defparam i1888_2_lut_rep_67.init = 16'h2222;
    LUT4 i1873_3_lut_4_lut (.A(n377), .B(n378), .C(n379), .D(n380), 
         .Z(n856[1])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A ((D)+!C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(26[7] 29[24])
    defparam i1873_3_lut_4_lut.init = 16'h00f2;
    LUT4 i1_4_lut (.A(n856[1]), .B(n3608), .C(n382), .D(n381), .Z(\cosine[4] )) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(14[7] 29[24])
    defparam i1_4_lut.init = 16'hcfce;
    LUT4 i1_2_lut (.A(\cosine[3] ), .B(cosOut_12__N_367), .Z(n3608)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(14[7] 29[24])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_101 (.A(n3951), .B(n3608), .C(n3949), .D(n4532), 
         .Z(\cosine[6] )) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(14[7] 29[24])
    defparam i1_4_lut_adj_101.init = 16'hcdcc;
    LUT4 i3082_2_lut (.A(n382), .B(n379), .Z(n3951)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3082_2_lut.init = 16'heeee;
    LUT4 i3080_2_lut (.A(n380), .B(n381), .Z(n3949)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3080_2_lut.init = 16'heeee;
    LUT4 i1938_4_lut (.A(n856[2]), .B(\cosine[3] ), .C(n1961), .D(n381), 
         .Z(\cosine[7] )) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(14[7] 29[24])
    defparam i1938_4_lut.init = 16'hcfce;
    LUT4 i1872_2_lut (.A(n379), .B(n380), .Z(n856[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(22[7] 29[24])
    defparam i1872_2_lut.init = 16'h2222;
    
endmodule
//
// Verilog Description of module packetGenerator
//

module packetGenerator (symCounter, next_state_3__N_203, clockDivider_clk_4M, 
            clockDivider_clk_4M_enable_9, n4541, fskModule_symVal, clk_N_224, 
            next_state_3__N_205, VCC_net, data, n4082, counter_0_countDone, 
            next_state_3__N_202, fskModule_symDone) /* synthesis syn_module_defined=1 */ ;
    output [7:0]symCounter;
    output next_state_3__N_203;
    input clockDivider_clk_4M;
    input clockDivider_clk_4M_enable_9;
    input n4541;
    output fskModule_symVal;
    input clk_N_224;
    output next_state_3__N_205;
    input VCC_net;
    input data;
    input n4082;
    input counter_0_countDone;
    output next_state_3__N_202;
    input fskModule_symDone;
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(44[8:27])
    wire clk_N_224 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(21[12:18])
    
    wire n4523, n4524;
    wire [7:0]n69;
    
    wire n3918, next_symVal_N_221, n3910, n4527, n3928, next_state_3__N_204, 
        next_symVal, n1797, n3926, n3730, n3818, n13, n15, n3900;
    
    LUT4 i1926_4_lut (.A(symCounter[4]), .B(next_state_3__N_203), .C(n4523), 
         .D(n4524), .Z(n69[4])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(115[13] 117[7])
    defparam i1926_4_lut.init = 16'h4888;
    LUT4 i753_2_lut_rep_58 (.A(symCounter[1]), .B(symCounter[0]), .Z(n4523)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(114[19:36])
    defparam i753_2_lut_rep_58.init = 16'h8888;
    LUT4 i1928_3_lut_4_lut (.A(symCounter[1]), .B(symCounter[0]), .C(next_state_3__N_203), 
         .D(symCounter[2]), .Z(n69[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(114[19:36])
    defparam i1928_3_lut_4_lut.init = 16'h7080;
    LUT4 i1_2_lut_rep_59 (.A(symCounter[2]), .B(symCounter[3]), .Z(n4524)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(114[19:36])
    defparam i1_2_lut_rep_59.init = 16'h8888;
    LUT4 i1_3_lut_4_lut (.A(symCounter[2]), .B(symCounter[3]), .C(symCounter[5]), 
         .D(symCounter[4]), .Z(n3918)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(114[19:36])
    defparam i1_3_lut_4_lut.init = 16'h8000;
    FD1P3IX symCounter__i0 (.D(n69[0]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n4541), .CK(clockDivider_clk_4M), .Q(symCounter[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=261 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(108[8] 122[4])
    defparam symCounter__i0.GSR = "DISABLED";
    FD1S3IX symVal_43 (.D(next_symVal_N_221), .CK(clk_N_224), .CD(n4541), 
            .Q(fskModule_symVal));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(53[8] 60[4])
    defparam symVal_43.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut (.A(symCounter[3]), .B(symCounter[4]), .C(symCounter[0]), 
         .Z(n3910)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(114[19:36])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_62 (.A(symCounter[1]), .B(symCounter[2]), .Z(n4527)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(114[19:36])
    defparam i1_2_lut_rep_62.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut (.A(symCounter[1]), .B(symCounter[2]), .C(symCounter[4]), 
         .D(symCounter[3]), .Z(n3928)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(114[19:36])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    FD1P3IX current_state_FSM_i1 (.D(VCC_net), .SP(next_state_3__N_204), 
            .CD(n4541), .CK(clockDivider_clk_4M), .Q(next_state_3__N_205));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(68[3] 103[10])
    defparam current_state_FSM_i1.GSR = "DISABLED";
    LUT4 i3217_4_lut (.A(next_symVal), .B(data), .C(n4082), .D(counter_0_countDone), 
         .Z(next_symVal)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(62[1] 105[4])
    defparam i3217_4_lut.init = 16'hca0a;
    FD1S3AX current_state_FSM_i4 (.D(n4541), .CK(clockDivider_clk_4M), .Q(next_state_3__N_202));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(68[3] 103[10])
    defparam current_state_FSM_i4.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i3 (.D(n1797), .CK(clockDivider_clk_4M), .CD(n4541), 
            .Q(next_state_3__N_203));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(68[3] 103[10])
    defparam current_state_FSM_i3.GSR = "DISABLED";
    LUT4 i1_3_lut (.A(symCounter[5]), .B(symCounter[0]), .C(symCounter[6]), 
         .Z(n3926)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(114[19:36])
    defparam i1_3_lut.init = 16'h8080;
    FD1S3IX current_state_FSM_i2 (.D(n3730), .CK(clockDivider_clk_4M), .CD(n4541), 
            .Q(next_state_3__N_204));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(68[3] 103[10])
    defparam current_state_FSM_i2.GSR = "DISABLED";
    LUT4 i1061_4_lut (.A(next_state_3__N_203), .B(next_state_3__N_202), 
         .C(n3818), .D(fskModule_symDone), .Z(n1797)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(68[3] 103[10])
    defparam i1061_4_lut.init = 16'hceee;
    LUT4 i1_4_lut (.A(n13), .B(n15), .C(symCounter[0]), .D(symCounter[5]), 
         .Z(n3818)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'h8000;
    LUT4 i4_2_lut (.A(symCounter[2]), .B(symCounter[6]), .Z(n13)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_98 (.A(symCounter[1]), .B(symCounter[4]), .C(symCounter[3]), 
         .D(symCounter[7]), .Z(n15)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_98.init = 16'h8000;
    LUT4 i1_4_lut_adj_99 (.A(n13), .B(fskModule_symDone), .C(n15), .D(n3900), 
         .Z(n3730)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_99.init = 16'h8000;
    LUT4 i1880_2_lut (.A(symCounter[0]), .B(next_state_3__N_203), .Z(n69[0])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(115[13] 117[7])
    defparam i1880_2_lut.init = 16'h4444;
    LUT4 i1_3_lut_adj_100 (.A(next_state_3__N_203), .B(symCounter[0]), .C(symCounter[5]), 
         .Z(n3900)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_100.init = 16'h8080;
    LUT4 i1923_4_lut (.A(symCounter[7]), .B(next_state_3__N_203), .C(n3928), 
         .D(n3926), .Z(n69[7])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(115[13] 117[7])
    defparam i1923_4_lut.init = 16'h4888;
    FD1P3IX symCounter__i7 (.D(n69[7]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n4541), .CK(clockDivider_clk_4M), .Q(symCounter[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=261 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(108[8] 122[4])
    defparam symCounter__i7.GSR = "DISABLED";
    FD1P3IX symCounter__i6 (.D(n69[6]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n4541), .CK(clockDivider_clk_4M), .Q(symCounter[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=261 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(108[8] 122[4])
    defparam symCounter__i6.GSR = "DISABLED";
    FD1P3IX symCounter__i5 (.D(n69[5]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n4541), .CK(clockDivider_clk_4M), .Q(symCounter[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=261 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(108[8] 122[4])
    defparam symCounter__i5.GSR = "DISABLED";
    FD1P3IX symCounter__i4 (.D(n69[4]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n4541), .CK(clockDivider_clk_4M), .Q(symCounter[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=261 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(108[8] 122[4])
    defparam symCounter__i4.GSR = "DISABLED";
    FD1P3IX symCounter__i3 (.D(n69[3]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n4541), .CK(clockDivider_clk_4M), .Q(symCounter[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=261 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(108[8] 122[4])
    defparam symCounter__i3.GSR = "DISABLED";
    FD1P3IX symCounter__i2 (.D(n69[2]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n4541), .CK(clockDivider_clk_4M), .Q(symCounter[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=261 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(108[8] 122[4])
    defparam symCounter__i2.GSR = "DISABLED";
    FD1P3IX symCounter__i1 (.D(n69[1]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n4541), .CK(clockDivider_clk_4M), .Q(symCounter[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=261 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(108[8] 122[4])
    defparam symCounter__i1.GSR = "DISABLED";
    LUT4 next_symVal_I_0_1_lut (.A(next_symVal), .Z(next_symVal_N_221)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(58[15:27])
    defparam next_symVal_I_0_1_lut.init = 16'h5555;
    LUT4 i1927_4_lut (.A(symCounter[3]), .B(next_state_3__N_203), .C(n4527), 
         .D(symCounter[0]), .Z(n69[3])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(115[13] 117[7])
    defparam i1927_4_lut.init = 16'h4888;
    LUT4 i1929_3_lut (.A(symCounter[1]), .B(next_state_3__N_203), .C(symCounter[0]), 
         .Z(n69[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(115[13] 117[7])
    defparam i1929_3_lut.init = 16'h4848;
    LUT4 i1924_4_lut (.A(symCounter[6]), .B(next_state_3__N_203), .C(n3918), 
         .D(n4523), .Z(n69[6])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(115[13] 117[7])
    defparam i1924_4_lut.init = 16'h4888;
    LUT4 i1925_4_lut (.A(symCounter[5]), .B(next_state_3__N_203), .C(n3910), 
         .D(n4527), .Z(n69[5])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(115[13] 117[7])
    defparam i1925_4_lut.init = 16'h4888;
    
endmodule
//
// Verilog Description of module clockDivider
//

module clockDivider (clk_N_224, clockDivider_clk_4M, GND_net, VCC_net, 
            serial_clk_c, top_test6_c, LED_c) /* synthesis syn_module_defined=1 */ ;
    output clk_N_224;
    output clockDivider_clk_4M;
    input GND_net;
    input VCC_net;
    input serial_clk_c;
    output top_test6_c;
    input LED_c;
    
    wire clk_N_224 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(21[12:18])
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(44[8:27])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(17[10:20])
    wire LED_c /* synthesis IO_TYPES=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(18[13:16])
    
    wire n3395;
    wire [7:0]counter;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(29[11:18])
    wire [7:0]n37;
    
    wire n3396, n3394, pll_lock_N_104, clkOut_N_114, n3393;
    wire [7:0]lockCounter;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(28[11:22])
    wire [7:0]n65;
    wire [7:0]n37_adj_569;
    
    wire n3390, n3391, n3392, n3389, n626, n1874, n3860, n3947, 
        n3858;
    
    INV i3681 (.A(clockDivider_clk_4M), .Z(clk_N_224));
    CCU2C counter_577_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3395), .COUT(n3396), .S0(n37[5]), .S1(n37[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_577_add_4_7.INIT0 = 16'haaa0;
    defparam counter_577_add_4_7.INIT1 = 16'haaa0;
    defparam counter_577_add_4_7.INJECT1_0 = "NO";
    defparam counter_577_add_4_7.INJECT1_1 = "NO";
    CCU2C counter_577_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3394), .COUT(n3395), .S0(n37[3]), .S1(n37[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_577_add_4_5.INIT0 = 16'haaa0;
    defparam counter_577_add_4_5.INIT1 = 16'haaa0;
    defparam counter_577_add_4_5.INJECT1_0 = "NO";
    defparam counter_577_add_4_5.INJECT1_1 = "NO";
    FD1S3IX clkOut_23 (.D(clkOut_N_114), .CK(serial_clk_c), .CD(pll_lock_N_104), 
            .Q(clockDivider_clk_4M));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(31[8] 52[4])
    defparam clkOut_23.GSR = "DISABLED";
    CCU2C counter_577_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3393), .COUT(n3394), .S0(n37[1]), .S1(n37[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_577_add_4_3.INIT0 = 16'haaa0;
    defparam counter_577_add_4_3.INIT1 = 16'haaa0;
    defparam counter_577_add_4_3.INJECT1_0 = "NO";
    defparam counter_577_add_4_3.INJECT1_1 = "NO";
    FD1P3IX clkLock_25 (.D(VCC_net), .SP(lockCounter[7]), .CD(pll_lock_N_104), 
            .CK(serial_clk_c), .Q(top_test6_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(31[8] 52[4])
    defparam clkLock_25.GSR = "DISABLED";
    CCU2C counter_577_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n3393), .S1(n37[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_577_add_4_1.INIT0 = 16'h0000;
    defparam counter_577_add_4_1.INIT1 = 16'h555f;
    defparam counter_577_add_4_1.INJECT1_0 = "NO";
    defparam counter_577_add_4_1.INJECT1_1 = "NO";
    FD1S3IX lockCounter_578__i0 (.D(n37_adj_569[0]), .CK(serial_clk_c), 
            .CD(pll_lock_N_104), .Q(n65[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_578__i0.GSR = "DISABLED";
    CCU2C lockCounter_578_add_4_5 (.A0(n65[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3390), .COUT(n3391), .S0(n37_adj_569[3]), .S1(n37_adj_569[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_578_add_4_5.INIT0 = 16'haaa0;
    defparam lockCounter_578_add_4_5.INIT1 = 16'haaa0;
    defparam lockCounter_578_add_4_5.INJECT1_0 = "NO";
    defparam lockCounter_578_add_4_5.INJECT1_1 = "NO";
    CCU2C lockCounter_578_add_4_7 (.A0(n65[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3391), .COUT(n3392), .S0(n37_adj_569[5]), .S1(n37_adj_569[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_578_add_4_7.INIT0 = 16'haaa0;
    defparam lockCounter_578_add_4_7.INIT1 = 16'haaa0;
    defparam lockCounter_578_add_4_7.INJECT1_0 = "NO";
    defparam lockCounter_578_add_4_7.INJECT1_1 = "NO";
    CCU2C lockCounter_578_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n65[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3389), .S1(n37_adj_569[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_578_add_4_1.INIT0 = 16'h0000;
    defparam lockCounter_578_add_4_1.INIT1 = 16'h555f;
    defparam lockCounter_578_add_4_1.INJECT1_0 = "NO";
    defparam lockCounter_578_add_4_1.INJECT1_1 = "NO";
    FD1S3IX counter_577__i0 (.D(n37[0]), .CK(serial_clk_c), .CD(n626), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_577__i0.GSR = "DISABLED";
    LUT4 i3132_2_lut (.A(n1874), .B(LED_c), .Z(n626)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i3132_2_lut.init = 16'h7777;
    LUT4 pll_lock_I_0_1_lut (.A(LED_c), .Z(pll_lock_N_104)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(32[9:25])
    defparam pll_lock_I_0_1_lut.init = 16'h5555;
    FD1S3IX lockCounter_578__i1 (.D(n37_adj_569[1]), .CK(serial_clk_c), 
            .CD(pll_lock_N_104), .Q(n65[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_578__i1.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(clockDivider_clk_4M), .B(n1874), .Z(clkOut_N_114)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut.init = 16'h9999;
    LUT4 i1_4_lut (.A(n3860), .B(n3947), .C(counter[2]), .D(n3858), 
         .Z(n1874)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_4_lut.init = 16'hffbf;
    LUT4 i1_3_lut (.A(counter[4]), .B(counter[7]), .C(counter[3]), .Z(n3860)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut.init = 16'hfefe;
    FD1S3IX lockCounter_578__i2 (.D(n37_adj_569[2]), .CK(serial_clk_c), 
            .CD(pll_lock_N_104), .Q(n65[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_578__i2.GSR = "DISABLED";
    FD1S3IX lockCounter_578__i3 (.D(n37_adj_569[3]), .CK(serial_clk_c), 
            .CD(pll_lock_N_104), .Q(n65[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_578__i3.GSR = "DISABLED";
    FD1S3IX lockCounter_578__i4 (.D(n37_adj_569[4]), .CK(serial_clk_c), 
            .CD(pll_lock_N_104), .Q(n65[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_578__i4.GSR = "DISABLED";
    FD1S3IX lockCounter_578__i5 (.D(n37_adj_569[5]), .CK(serial_clk_c), 
            .CD(pll_lock_N_104), .Q(n65[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_578__i5.GSR = "DISABLED";
    FD1S3IX lockCounter_578__i6 (.D(n37_adj_569[6]), .CK(serial_clk_c), 
            .CD(pll_lock_N_104), .Q(n65[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_578__i6.GSR = "DISABLED";
    FD1S3IX lockCounter_578__i7 (.D(n37_adj_569[7]), .CK(serial_clk_c), 
            .CD(pll_lock_N_104), .Q(lockCounter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_578__i7.GSR = "DISABLED";
    LUT4 i3078_2_lut (.A(counter[1]), .B(counter[0]), .Z(n3947)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3078_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_97 (.A(counter[5]), .B(counter[6]), .Z(n3858)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_97.init = 16'heeee;
    FD1S3IX counter_577__i1 (.D(n37[1]), .CK(serial_clk_c), .CD(n626), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_577__i1.GSR = "DISABLED";
    FD1S3IX counter_577__i2 (.D(n37[2]), .CK(serial_clk_c), .CD(n626), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_577__i2.GSR = "DISABLED";
    FD1S3IX counter_577__i3 (.D(n37[3]), .CK(serial_clk_c), .CD(n626), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_577__i3.GSR = "DISABLED";
    FD1S3IX counter_577__i4 (.D(n37[4]), .CK(serial_clk_c), .CD(n626), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_577__i4.GSR = "DISABLED";
    FD1S3IX counter_577__i5 (.D(n37[5]), .CK(serial_clk_c), .CD(n626), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_577__i5.GSR = "DISABLED";
    FD1S3IX counter_577__i6 (.D(n37[6]), .CK(serial_clk_c), .CD(n626), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_577__i6.GSR = "DISABLED";
    FD1S3IX counter_577__i7 (.D(n37[7]), .CK(serial_clk_c), .CD(n626), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_577__i7.GSR = "DISABLED";
    CCU2C lockCounter_578_add_4_9 (.A0(lockCounter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3392), .S0(n37_adj_569[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_578_add_4_9.INIT0 = 16'haaa0;
    defparam lockCounter_578_add_4_9.INIT1 = 16'h0000;
    defparam lockCounter_578_add_4_9.INJECT1_0 = "NO";
    defparam lockCounter_578_add_4_9.INJECT1_1 = "NO";
    CCU2C lockCounter_578_add_4_3 (.A0(n65[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3389), .COUT(n3390), .S0(n37_adj_569[1]), .S1(n37_adj_569[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_578_add_4_3.INIT0 = 16'haaa0;
    defparam lockCounter_578_add_4_3.INIT1 = 16'haaa0;
    defparam lockCounter_578_add_4_3.INJECT1_0 = "NO";
    defparam lockCounter_578_add_4_3.INJECT1_1 = "NO";
    CCU2C counter_577_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3396), .S0(n37[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_577_add_4_9.INIT0 = 16'haaa0;
    defparam counter_577_add_4_9.INIT1 = 16'h0000;
    defparam counter_577_add_4_9.INJECT1_0 = "NO";
    defparam counter_577_add_4_9.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module pll_64M
//

module pll_64M (top_rst_n_N_63, serial_clk_c, LED_c, GND_net, top_clk_c, 
            VCC_net, clk_N_369) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input top_rst_n_N_63;
    output serial_clk_c;
    output LED_c;
    input GND_net;
    input top_clk_c;
    input VCC_net;
    output clk_N_369;
    
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(17[10:20])
    wire LED_c /* synthesis IO_TYPES=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(18[13:16])
    wire CLKIt /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/ble_tx_clarity/pll_64m/pll_64m.v(20[10:15])
    wire top_clk_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(6[8:15])
    wire clk_N_369 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(17[11:24])
    
    EHXPLLL PLLInst_0 (.CLKI(CLKIt), .CLKFB(serial_clk_c), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .PHASELOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(top_rst_n_N_63), .ENCLKOP(GND_net), .ENCLKOS(GND_net), 
            .ENCLKOS2(GND_net), .ENCLKOS3(GND_net), .CLKOP(serial_clk_c), 
            .LOCK(LED_c)) /* synthesis FREQUENCY_PIN_CLKOP="64.000000", FREQUENCY_PIN_CLKI="32.000000", ICP_CURRENT="5", LPF_RESISTOR="16", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=231, LSE_RLINE=238 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(231[9] 238[2])
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
            .PLLCSOUT(CLKIt)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=231, LSE_RLINE=238 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(231[9] 238[2])
    INV i3680 (.A(serial_clk_c), .Z(clk_N_369));
    
endmodule
