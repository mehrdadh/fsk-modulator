// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.3.144
// Netlist written on Wed Apr 24 12:26:42 2019
//
// Verilog Description of module topModule
//

module topModule (top_clk, top_rst, spi_mosi, spi_miso, spi_sclk, 
            spi_cs, osc_en, serial_iq, serial_clk, LED, clk_test, 
            top_test1, top_test2, sim_clk, sim_lock) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(4[8:17])
    input top_clk;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(30[7:14])
    input top_rst;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(31[7:14])
    input spi_mosi;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(33[7:15])
    output spi_miso;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(43[10:18])
    input spi_sclk;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(34[7:15])
    input spi_cs;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(35[7:13])
    output osc_en;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(44[10:16])
    output serial_iq /* synthesis IO_TYPES=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(45[10:19])
    output serial_clk /* synthesis IO_TYPES=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(46[10:20])
    output LED;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(47[15:18])
    output clk_test;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(49[14:22])
    output top_test1;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(50[14:23])
    output top_test2;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(51[14:23])
    input sim_clk;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(37[7:14])
    input sim_lock;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(38[7:15])
    
    wire top_clk_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(30[7:14])
    wire top_test1_c /* synthesis IO_TYPES=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(45[10:19])
    wire top_test2_c /* synthesis SET_AS_NETWORK=top_test2_c, is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(46[10:20])
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(63[8:27])
    wire clk_N_146 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(22[12:18])
    wire clk_N_291 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(17[11:24])
    
    wire GND_net, VCC_net, pll_lock, clockDivider_clkLock, counter_0_countDone, 
        fskModule_symVal;
    wire [12:0]fskModule_I;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(74[21:32])
    wire [12:0]fskModule_Q;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(75[21:32])
    
    wire fskModule_symDone, IQSerializer_start, n2169, n61, n58, n55;
    wire [25:0]waitcount;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(12[23:32])
    
    wire n52, n2168, n2167, n49, n46, n43;
    wire [7:0]symCounter;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(35[11:21])
    
    wire data, next_state_3__N_124, next_state_3__N_125, next_state_3__N_127, 
        n2121;
    wire [11:0]sampleCount;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(41[23:34])
    
    wire n40, n2737, n2120, n2608, n817, n37, n34, n31;
    wire [3:0]ICounter;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(21[41:49])
    
    wire n2119, n28, n1595, n2118, n2117, n2218, clockDivider_clk_4M_enable_9, 
        cout, n1846, n2189, n2188, n2187, n2186, n2185, cout_adj_366, 
        n2184, n2183, n2182, n2181, n2180, n2179, n2178, n2177, 
        n2176, n2175, n2174, n2173, n2122, n2172, n2171, n2170;
    
    VHI i2 (.Z(VCC_net));
    FSKModulator fskModule_1 (.sampleCount({sampleCount}), .fskModule_symDone(fskModule_symDone), 
            .clk_N_146(clk_N_146), .n2737(n2737), .\fskModule_I[0] (fskModule_I[0]), 
            .\fskModule_Q[0] (fskModule_Q[0]), .counter_0_countDone(counter_0_countDone), 
            .clockDivider_clk_4M(clockDivider_clk_4M), .IQSerializer_start(IQSerializer_start), 
            .next_state_3__N_127(next_state_3__N_127), .fskModule_symVal(fskModule_symVal), 
            .n67({n28, n31, n34, n37, n40, n43, n46, n49, n52, 
            n55, n58, n61}), .clockDivider_clk_4M_enable_9(clockDivider_clk_4M_enable_9), 
            .next_state_3__N_125(next_state_3__N_125), .next_state_3__N_124(next_state_3__N_124), 
            .n2608(n2608), .\fskModule_Q[12] (fskModule_Q[12]), .\fskModule_Q[11] (fskModule_Q[11]), 
            .\fskModule_Q[7] (fskModule_Q[7]), .\fskModule_Q[4] (fskModule_Q[4]), 
            .\fskModule_Q[2] (fskModule_Q[2]), .\fskModule_I[12] (fskModule_I[12]), 
            .\fskModule_I[11] (fskModule_I[11]), .\fskModule_I[7] (fskModule_I[7]), 
            .\fskModule_I[4] (fskModule_I[4]), .\fskModule_I[2] (fskModule_I[2]), 
            .n817(n817)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(141[14] 150[2])
    CCU2C _add_1_642_add_4_7 (.A0(sampleCount[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2119), .COUT(n2120), .S0(n46), .S1(n43));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_642_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_642_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_642_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_642_add_4_7.INJECT1_1 = "NO";
    CCU2C add_1221_7 (.A0(waitcount[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2169), .COUT(n2170));
    defparam add_1221_7.INIT0 = 16'haaa5;
    defparam add_1221_7.INIT1 = 16'h5555;
    defparam add_1221_7.INJECT1_0 = "NO";
    defparam add_1221_7.INJECT1_1 = "NO";
    CCU2C add_1221_5 (.A0(waitcount[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2168), .COUT(n2169));
    defparam add_1221_5.INIT0 = 16'h5555;
    defparam add_1221_5.INIT1 = 16'haaa5;
    defparam add_1221_5.INJECT1_0 = "NO";
    defparam add_1221_5.INJECT1_1 = "NO";
    CCU2C _add_1_642_add_4_5 (.A0(sampleCount[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2118), .COUT(n2119), .S0(n52), .S1(n49));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_642_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_642_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_642_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_642_add_4_5.INJECT1_1 = "NO";
    ROM256X1A addr_7__I_0 (.AD0(symCounter[0]), .AD1(symCounter[1]), .AD2(symCounter[2]), 
            .AD3(symCounter[3]), .AD4(symCounter[4]), .AD5(symCounter[5]), 
            .AD6(symCounter[6]), .AD7(symCounter[7]), .DO0(data)) /* synthesis initstate=0xB5463ABDE2A89C8349F82B64F363CE4D6143ADA31E8BE2DC5836468E89BED6AA */ ;
    defparam addr_7__I_0.initval = 256'hB5463ABDE2A89C8349F82B64F363CE4D6143ADA31E8BE2DC5836468E89BED6AA;
    IB top_clk_pad (.I(top_clk), .O(top_clk_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(30[7:14])
    OB top_test2_pad (.I(top_test2_c), .O(top_test2));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(51[14:23])
    CCU2C add_1221_3 (.A0(waitcount[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2167), .COUT(n2168));
    defparam add_1221_3.INIT0 = 16'haaa5;
    defparam add_1221_3.INIT1 = 16'h5555;
    defparam add_1221_3.INJECT1_0 = "NO";
    defparam add_1221_3.INJECT1_1 = "NO";
    CCU2C add_1221_27 (.A0(waitcount[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2179), .S1(cout_adj_366));
    defparam add_1221_27.INIT0 = 16'h5555;
    defparam add_1221_27.INIT1 = 16'h0000;
    defparam add_1221_27.INJECT1_0 = "NO";
    defparam add_1221_27.INJECT1_1 = "NO";
    CCU2C _add_1_642_add_4_3 (.A0(sampleCount[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2117), .COUT(n2118), .S0(n58), .S1(n55));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_642_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_642_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_642_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_642_add_4_3.INJECT1_1 = "NO";
    CCU2C add_1221_25 (.A0(waitcount[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2178), .COUT(n2179));
    defparam add_1221_25.INIT0 = 16'h5555;
    defparam add_1221_25.INIT1 = 16'h5555;
    defparam add_1221_25.INJECT1_0 = "NO";
    defparam add_1221_25.INJECT1_1 = "NO";
    OB osc_en_pad (.I(VCC_net), .O(osc_en));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(44[10:16])
    CCU2C _add_1_642_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sampleCount[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2117), .S1(n61));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_642_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_642_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_642_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_642_add_4_1.INJECT1_1 = "NO";
    OB top_test1_pad (.I(top_test1_c), .O(top_test1));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(50[14:23])
    OB clk_test_pad (.I(top_test2_c), .O(clk_test));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(49[14:22])
    CCU2C add_1221_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2167));
    defparam add_1221_1.INIT0 = 16'h0000;
    defparam add_1221_1.INIT1 = 16'haaaf;
    defparam add_1221_1.INJECT1_0 = "NO";
    defparam add_1221_1.INJECT1_1 = "NO";
    OB LED_pad (.I(VCC_net), .O(LED));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(47[15:18])
    OB serial_clk_pad (.I(top_test2_c), .O(serial_clk));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(46[10:20])
    OB serial_iq_pad (.I(top_test1_c), .O(serial_iq));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(45[10:19])
    CCU2C add_1221_23 (.A0(waitcount[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2177), .COUT(n2178));
    defparam add_1221_23.INIT0 = 16'h5555;
    defparam add_1221_23.INIT1 = 16'h5555;
    defparam add_1221_23.INJECT1_0 = "NO";
    defparam add_1221_23.INJECT1_1 = "NO";
    OB spi_miso_pad (.I(GND_net), .O(spi_miso));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(43[10:18])
    CCU2C add_1221_21 (.A0(waitcount[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2176), .COUT(n2177));
    defparam add_1221_21.INIT0 = 16'h5555;
    defparam add_1221_21.INIT1 = 16'h5555;
    defparam add_1221_21.INJECT1_0 = "NO";
    defparam add_1221_21.INJECT1_1 = "NO";
    CCU2C _add_1_642_add_4_13 (.A0(sampleCount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2122), .S0(n28));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_642_add_4_13.INIT0 = 16'haaa0;
    defparam _add_1_642_add_4_13.INIT1 = 16'h0000;
    defparam _add_1_642_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_642_add_4_13.INJECT1_1 = "NO";
    CCU2C _add_1_642_add_4_11 (.A0(sampleCount[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2121), .COUT(n2122), .S0(n34), .S1(n31));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_642_add_4_11.INIT0 = 16'haaa0;
    defparam _add_1_642_add_4_11.INIT1 = 16'haaa0;
    defparam _add_1_642_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_642_add_4_11.INJECT1_1 = "NO";
    VLO i1 (.Z(GND_net));
    CCU2C add_1221_19 (.A0(waitcount[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2175), .COUT(n2176));
    defparam add_1221_19.INIT0 = 16'h5555;
    defparam add_1221_19.INIT1 = 16'h5555;
    defparam add_1221_19.INJECT1_0 = "NO";
    defparam add_1221_19.INJECT1_1 = "NO";
    CCU2C add_1221_17 (.A0(waitcount[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2174), .COUT(n2175));
    defparam add_1221_17.INIT0 = 16'h5555;
    defparam add_1221_17.INIT1 = 16'h5555;
    defparam add_1221_17.INJECT1_0 = "NO";
    defparam add_1221_17.INJECT1_1 = "NO";
    packetCounter counter_0 (.waitcount({waitcount}), .GND_net(GND_net), 
            .VCC_net(VCC_net), .cout(cout), .clockDivider_clkLock(clockDivider_clkLock), 
            .clockDivider_clk_4M(clockDivider_clk_4M), .cout_adj_1(cout_adj_366), 
            .counter_0_countDone(counter_0_countDone), .n1595(n1595)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(126[15] 131[2])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    GSR GSR_INST (.GSR(VCC_net));
    CCU2C _add_1_642_add_4_9 (.A0(sampleCount[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2120), .COUT(n2121), .S0(n40), .S1(n37));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_642_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_642_add_4_9.INIT1 = 16'haaa0;
    defparam _add_1_642_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_642_add_4_9.INJECT1_1 = "NO";
    CCU2C add_1221_15 (.A0(waitcount[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2173), .COUT(n2174));
    defparam add_1221_15.INIT0 = 16'h5555;
    defparam add_1221_15.INIT1 = 16'h5555;
    defparam add_1221_15.INJECT1_0 = "NO";
    defparam add_1221_15.INJECT1_1 = "NO";
    CCU2C add_1221_13 (.A0(waitcount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2172), .COUT(n2173));
    defparam add_1221_13.INIT0 = 16'h5555;
    defparam add_1221_13.INIT1 = 16'h5555;
    defparam add_1221_13.INJECT1_0 = "NO";
    defparam add_1221_13.INJECT1_1 = "NO";
    CCU2C add_1221_11 (.A0(waitcount[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2171), .COUT(n2172));
    defparam add_1221_11.INIT0 = 16'h5555;
    defparam add_1221_11.INIT1 = 16'h5555;
    defparam add_1221_11.INJECT1_0 = "NO";
    defparam add_1221_11.INJECT1_1 = "NO";
    LUT4 i1_3_lut (.A(ICounter[3]), .B(ICounter[2]), .C(ICounter[1]), 
         .Z(n2218)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i1_3_lut.init = 16'h6a6a;
    CCU2C add_1222_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2189), 
          .S0(cout));
    defparam add_1222_cout.INIT0 = 16'h0000;
    defparam add_1222_cout.INIT1 = 16'h0000;
    defparam add_1222_cout.INJECT1_0 = "NO";
    defparam add_1222_cout.INJECT1_1 = "NO";
    CCU2C add_1222_20 (.A0(waitcount[24]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[25]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2188), .COUT(n2189));
    defparam add_1222_20.INIT0 = 16'h555f;
    defparam add_1222_20.INIT1 = 16'h555f;
    defparam add_1222_20.INJECT1_0 = "NO";
    defparam add_1222_20.INJECT1_1 = "NO";
    CCU2C add_1222_18 (.A0(waitcount[22]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[23]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2187), .COUT(n2188));
    defparam add_1222_18.INIT0 = 16'h555f;
    defparam add_1222_18.INIT1 = 16'h555f;
    defparam add_1222_18.INJECT1_0 = "NO";
    defparam add_1222_18.INJECT1_1 = "NO";
    CCU2C add_1222_16 (.A0(waitcount[20]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[21]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2186), .COUT(n2187));
    defparam add_1222_16.INIT0 = 16'h555f;
    defparam add_1222_16.INIT1 = 16'h555f;
    defparam add_1222_16.INJECT1_0 = "NO";
    defparam add_1222_16.INJECT1_1 = "NO";
    CCU2C add_1222_14 (.A0(waitcount[18]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[19]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2185), .COUT(n2186));
    defparam add_1222_14.INIT0 = 16'h555f;
    defparam add_1222_14.INIT1 = 16'h555f;
    defparam add_1222_14.INJECT1_0 = "NO";
    defparam add_1222_14.INJECT1_1 = "NO";
    CCU2C add_1222_12 (.A0(waitcount[16]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[17]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2184), .COUT(n2185));
    defparam add_1222_12.INIT0 = 16'haaa0;
    defparam add_1222_12.INIT1 = 16'h555f;
    defparam add_1222_12.INJECT1_0 = "NO";
    defparam add_1222_12.INJECT1_1 = "NO";
    CCU2C add_1222_10 (.A0(waitcount[14]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[15]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2183), .COUT(n2184));
    defparam add_1222_10.INIT0 = 16'h555f;
    defparam add_1222_10.INIT1 = 16'haaa0;
    defparam add_1222_10.INJECT1_0 = "NO";
    defparam add_1222_10.INJECT1_1 = "NO";
    CCU2C add_1222_8 (.A0(waitcount[12]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[13]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2182), .COUT(n2183));
    defparam add_1222_8.INIT0 = 16'h555f;
    defparam add_1222_8.INIT1 = 16'h555f;
    defparam add_1222_8.INJECT1_0 = "NO";
    defparam add_1222_8.INJECT1_1 = "NO";
    CCU2C add_1222_6 (.A0(waitcount[10]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[11]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2181), .COUT(n2182));
    defparam add_1222_6.INIT0 = 16'haaa0;
    defparam add_1222_6.INIT1 = 16'h555f;
    defparam add_1222_6.INJECT1_0 = "NO";
    defparam add_1222_6.INJECT1_1 = "NO";
    CCU2C add_1222_4 (.A0(waitcount[8]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[9]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2180), .COUT(n2181));
    defparam add_1222_4.INIT0 = 16'h555f;
    defparam add_1222_4.INIT1 = 16'haaa0;
    defparam add_1222_4.INJECT1_0 = "NO";
    defparam add_1222_4.INJECT1_1 = "NO";
    packetGenerator packetGen_1 (.fskModule_symVal(fskModule_symVal), .clk_N_146(clk_N_146), 
            .n2737(n2737), .next_state_3__N_127(next_state_3__N_127), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .VCC_net(VCC_net), .symCounter({symCounter}), .clockDivider_clk_4M_enable_9(clockDivider_clk_4M_enable_9), 
            .next_state_3__N_125(next_state_3__N_125), .next_state_3__N_124(next_state_3__N_124), 
            .fskModule_symDone(fskModule_symDone), .data(data), .n2608(n2608), 
            .counter_0_countDone(counter_0_countDone)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(133[17] 139[2])
    pll_64M my_pll_instance (.clk_N_291(clk_N_291), .top_test2_c(top_test2_c), 
            .GND_net(GND_net), .top_clk_c(top_clk_c), .VCC_net(VCC_net), 
            .pll_lock(pll_lock)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(108[9] 115[2])
    CCU2C add_1221_9 (.A0(waitcount[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2170), .COUT(n2171));
    defparam add_1221_9.INIT0 = 16'h5555;
    defparam add_1221_9.INIT1 = 16'h5555;
    defparam add_1221_9.INJECT1_0 = "NO";
    defparam add_1221_9.INJECT1_1 = "NO";
    LUT4 i1135_1_lut (.A(ICounter[1]), .Z(n1846)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(54[26:43])
    defparam i1135_1_lut.init = 16'h5555;
    CCU2C add_1222_2 (.A0(waitcount[5]), .B0(waitcount[6]), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[7]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2180));
    defparam add_1222_2.INIT0 = 16'h000e;
    defparam add_1222_2.INIT1 = 16'haaa0;
    defparam add_1222_2.INJECT1_0 = "NO";
    defparam add_1222_2.INJECT1_1 = "NO";
    IQSerializer IQSerializer_1 (.\ICounter[2] (ICounter[2]), .\ICounter[3] (ICounter[3]), 
            .\fskModule_I[11] (fskModule_I[11]), .\fskModule_I[2] (fskModule_I[2]), 
            .clk_N_291(clk_N_291), .n817(n817), .\fskModule_I[4] (fskModule_I[4]), 
            .\fskModule_I[12] (fskModule_I[12]), .\ICounter[1] (ICounter[1]), 
            .\fskModule_I[0] (fskModule_I[0]), .\fskModule_Q[2] (fskModule_Q[2]), 
            .\fskModule_I[7] (fskModule_I[7]), .\fskModule_Q[7] (fskModule_Q[7]), 
            .\fskModule_Q[11] (fskModule_Q[11]), .\fskModule_Q[0] (fskModule_Q[0]), 
            .\fskModule_Q[4] (fskModule_Q[4]), .\fskModule_Q[12] (fskModule_Q[12]), 
            .IQSerializer_start(IQSerializer_start), .n1846(n1846), .n2218(n2218), 
            .top_test2_c(top_test2_c), .top_test1_c(top_test1_c)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(153[14] 161[2])
    clockDivider clockDivider_0 (.clockDivider_clkLock(clockDivider_clkLock), 
            .top_test2_c(top_test2_c), .VCC_net(VCC_net), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .GND_net(GND_net), .pll_lock(pll_lock), .n1595(n1595), .clk_N_146(clk_N_146)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(119[14] 124[2])
    
endmodule
//
// Verilog Description of module FSKModulator
//

module FSKModulator (sampleCount, fskModule_symDone, clk_N_146, n2737, 
            \fskModule_I[0] , \fskModule_Q[0] , counter_0_countDone, clockDivider_clk_4M, 
            IQSerializer_start, next_state_3__N_127, fskModule_symVal, 
            n67, clockDivider_clk_4M_enable_9, next_state_3__N_125, next_state_3__N_124, 
            n2608, \fskModule_Q[12] , \fskModule_Q[11] , \fskModule_Q[7] , 
            \fskModule_Q[4] , \fskModule_Q[2] , \fskModule_I[12] , \fskModule_I[11] , 
            \fskModule_I[7] , \fskModule_I[4] , \fskModule_I[2] , n817) /* synthesis syn_module_defined=1 */ ;
    output [11:0]sampleCount;
    output fskModule_symDone;
    input clk_N_146;
    output n2737;
    output \fskModule_I[0] ;
    output \fskModule_Q[0] ;
    input counter_0_countDone;
    input clockDivider_clk_4M;
    output IQSerializer_start;
    input next_state_3__N_127;
    input fskModule_symVal;
    input [11:0]n67;
    output clockDivider_clk_4M_enable_9;
    input next_state_3__N_125;
    input next_state_3__N_124;
    output n2608;
    output \fskModule_Q[12] ;
    output \fskModule_Q[11] ;
    output \fskModule_Q[7] ;
    output \fskModule_Q[4] ;
    output \fskModule_Q[2] ;
    output \fskModule_I[12] ;
    output \fskModule_I[11] ;
    output \fskModule_I[7] ;
    output \fskModule_I[4] ;
    output \fskModule_I[2] ;
    output n817;
    
    wire clk_N_146 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(22[12:18])
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(63[8:27])
    
    wire n2534, n2419, lastSym_N_233, fskModule_start;
    wire [12:0]sine;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(43[23:27])
    wire [12:0]cosine;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(44[23:29])
    wire [11:0]sampleCount_11__N_205;
    
    wire firstFlag, n1400, n2381, n2732;
    wire [7:0]n151;
    
    wire lastSym, clockDivider_clk_4M_enable_1, n23, n2395, n2300, 
        n2731, n2399, n2734, n17, n2467, n2407;
    wire [2:0]sin_phase;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(35[23:32])
    
    wire n1, n2405, cosOut_12__N_289, n2471, n2735, n2376;
    wire [2:0]n2;
    
    LUT4 i1_4_lut (.A(n2534), .B(n2419), .C(sampleCount[0]), .D(sampleCount[5]), 
         .Z(lastSym_N_233)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut.init = 16'h0004;
    FD1S3IX symDone_57 (.D(lastSym_N_233), .CK(clk_N_146), .CD(n2737), 
            .Q(fskModule_symDone));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam symDone_57.GSR = "ENABLED";
    FD1S3IX FSK_I__i0 (.D(sine[0]), .CK(clk_N_146), .CD(fskModule_start), 
            .Q(\fskModule_I[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i0.GSR = "ENABLED";
    FD1S3IX FSK_Q__i0 (.D(cosine[0]), .CK(clk_N_146), .CD(fskModule_start), 
            .Q(\fskModule_Q[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i0.GSR = "ENABLED";
    FD1S3JX sampleCount_i0 (.D(sampleCount_11__N_205[0]), .CK(clk_N_146), 
            .PD(n2737), .Q(sampleCount[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i0.GSR = "ENABLED";
    LUT4 rst_I_0_1_lut_rep_15 (.A(counter_0_countDone), .Z(n2737)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(64[6:16])
    defparam rst_I_0_1_lut_rep_15.init = 16'h5555;
    FD1S3AX firstFlag_54 (.D(n2737), .CK(clockDivider_clk_4M), .Q(firstFlag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(70[8] 116[4])
    defparam firstFlag_54.GSR = "ENABLED";
    FD1S3AX start_55 (.D(counter_0_countDone), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_start)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(70[8] 116[4])
    defparam start_55.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut (.A(counter_0_countDone), .B(next_state_3__N_127), 
         .C(cosine[3]), .D(n1400), .Z(n2381)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(64[6:16])
    defparam i1_4_lut_4_lut.init = 16'hfffd;
    FD1S3JX cos_phase_FSM_i1 (.D(n151[7]), .CK(clockDivider_clk_4M), .PD(n2732), 
            .Q(cosine[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i1.GSR = "ENABLED";
    FD1P3IX lastSym_53 (.D(fskModule_symVal), .SP(clockDivider_clk_4M_enable_1), 
            .CD(n2737), .CK(clockDivider_clk_4M), .Q(lastSym));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(70[8] 116[4])
    defparam lastSym_53.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(n23), .B(n67[8]), .Z(sampleCount_11__N_205[8])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_16 (.A(n23), .B(n67[7]), .Z(sampleCount_11__N_205[7])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_16.init = 16'h8888;
    LUT4 i1_2_lut_adj_17 (.A(n23), .B(n67[6]), .Z(sampleCount_11__N_205[6])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_17.init = 16'h8888;
    LUT4 i388_2_lut_2_lut (.A(counter_0_countDone), .B(fskModule_symDone), 
         .Z(clockDivider_clk_4M_enable_9)) /* synthesis lut_function=((B)+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(64[6:16])
    defparam i388_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_adj_18 (.A(sampleCount[3]), .B(sampleCount[0]), .Z(n2395)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(73[9:25])
    defparam i1_2_lut_adj_18.init = 16'heeee;
    LUT4 n2300_bdd_3_lut_3_lut_4_lut_4_lut_4_lut (.A(counter_0_countDone), 
         .B(n2300), .C(fskModule_symVal), .D(firstFlag), .Z(n2731)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(64[6:16])
    defparam n2300_bdd_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0a22;
    LUT4 i1098_2_lut_2_lut (.A(counter_0_countDone), .B(next_state_3__N_127), 
         .Z(fskModule_start)) /* synthesis lut_function=((B)+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(64[6:16])
    defparam i1098_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_adj_19 (.A(sampleCount[4]), .B(sampleCount[1]), .Z(n2399)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(73[9:25])
    defparam i1_2_lut_adj_19.init = 16'heeee;
    LUT4 i5_2_lut_rep_12 (.A(sampleCount[9]), .B(sampleCount[10]), .Z(n2734)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam i5_2_lut_rep_12.init = 16'heeee;
    LUT4 i1_4_lut_adj_20 (.A(n2395), .B(n17), .C(n2399), .D(n2467), 
         .Z(n2407)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(73[9:25])
    defparam i1_4_lut_adj_20.init = 16'hfffe;
    LUT4 i1_2_lut_adj_21 (.A(n23), .B(n67[5]), .Z(sampleCount_11__N_205[5])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_21.init = 16'h8888;
    LUT4 i1_2_lut_adj_22 (.A(n23), .B(n67[4]), .Z(sampleCount_11__N_205[4])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_22.init = 16'h8888;
    LUT4 i1_2_lut_adj_23 (.A(n23), .B(n67[3]), .Z(sampleCount_11__N_205[3])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_23.init = 16'h8888;
    FD1S3IX sin_phase_378__i0 (.D(n1), .CK(clockDivider_clk_4M), .CD(n2732), 
            .Q(sin_phase[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(89[12] 108[6])
    defparam sin_phase_378__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_24 (.A(n23), .B(n67[2]), .Z(sampleCount_11__N_205[2])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_24.init = 16'h8888;
    LUT4 i1_4_lut_adj_25 (.A(sampleCount[7]), .B(sampleCount[11]), .C(sampleCount[6]), 
         .D(sampleCount[2]), .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam i1_4_lut_adj_25.init = 16'hfffe;
    LUT4 i1138_2_lut (.A(n67[10]), .B(n23), .Z(sampleCount_11__N_205[10])) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(125[12] 127[6])
    defparam i1138_2_lut.init = 16'h8888;
    LUT4 i390_2_lut_2_lut (.A(counter_0_countDone), .B(lastSym_N_233), .Z(clockDivider_clk_4M_enable_1)) /* synthesis lut_function=((B)+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(64[6:16])
    defparam i390_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_3_lut_4_lut (.A(sampleCount[9]), .B(sampleCount[10]), .C(fskModule_symVal), 
         .D(lastSym), .Z(n2405)) /* synthesis lut_function=(A+(B+(C (D)+!C !(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam i1_3_lut_4_lut.init = 16'hfeef;
    LUT4 i1_2_lut_adj_26 (.A(n23), .B(n67[1]), .Z(sampleCount_11__N_205[1])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_26.init = 16'h8888;
    LUT4 i1695_2_lut_3_lut (.A(sampleCount[9]), .B(sampleCount[10]), .C(n17), 
         .Z(n2534)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam i1695_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_27 (.A(sampleCount[3]), .B(sampleCount[8]), .C(sampleCount[1]), 
         .D(sampleCount[4]), .Z(n2419)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_27.init = 16'h0010;
    LUT4 i1749_2_lut_4_lut_3_lut (.A(sin_phase[1]), .B(sin_phase[0]), .C(sin_phase[2]), 
         .Z(sine[12])) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(89[12] 108[6])
    defparam i1749_2_lut_4_lut_3_lut.init = 16'he0e0;
    LUT4 i1_2_lut_adj_28 (.A(n23), .B(n67[0]), .Z(sampleCount_11__N_205[0])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_28.init = 16'h8888;
    LUT4 i1754_4_lut_3_lut (.A(sin_phase[1]), .B(sin_phase[0]), .C(sin_phase[2]), 
         .Z(sine[4])) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(89[12] 108[6])
    defparam i1754_4_lut_3_lut.init = 16'hcece;
    LUT4 i1744_2_lut_4_lut_3_lut (.A(sin_phase[1]), .B(sin_phase[0]), .C(sin_phase[2]), 
         .Z(sine[11])) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(89[12] 108[6])
    defparam i1744_2_lut_4_lut_3_lut.init = 16'h0e0e;
    FD1S3IX cos_phase_FSM_i8 (.D(n151[6]), .CK(clockDivider_clk_4M), .CD(n2732), 
            .Q(n151[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i8.GSR = "ENABLED";
    FD1S3IX cos_phase_FSM_i7 (.D(n151[5]), .CK(clockDivider_clk_4M), .CD(n2732), 
            .Q(n151[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i7.GSR = "ENABLED";
    FD1S3IX cos_phase_FSM_i6 (.D(n151[4]), .CK(clockDivider_clk_4M), .CD(n2732), 
            .Q(n151[5]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i6.GSR = "ENABLED";
    FD1S3IX cos_phase_FSM_i5 (.D(n151[3]), .CK(clockDivider_clk_4M), .CD(n2732), 
            .Q(n151[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i5.GSR = "ENABLED";
    FD1S3IX cos_phase_FSM_i4 (.D(n151[2]), .CK(clockDivider_clk_4M), .CD(n2732), 
            .Q(n151[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i4.GSR = "ENABLED";
    FD1S3IX cos_phase_FSM_i3 (.D(cosOut_12__N_289), .CK(clockDivider_clk_4M), 
            .CD(n2732), .Q(n151[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i3.GSR = "ENABLED";
    FD1S3IX cos_phase_FSM_i2 (.D(cosine[3]), .CK(clockDivider_clk_4M), .CD(n2732), 
            .Q(cosOut_12__N_289));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i2.GSR = "ENABLED";
    FD1S3JX sampleCount_i11 (.D(sampleCount_11__N_205[11]), .CK(clk_N_146), 
            .PD(n2737), .Q(sampleCount[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i11.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_29 (.A(n2471), .B(sampleCount[0]), .C(n17), .D(sampleCount[1]), 
         .Z(n23)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i1_4_lut_adj_29.init = 16'hfbff;
    LUT4 i1_2_lut_adj_30 (.A(n23), .B(n67[9]), .Z(sampleCount_11__N_205[9])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_30.init = 16'h8888;
    LUT4 i1292_rep_13 (.A(sin_phase[1]), .B(sin_phase[0]), .Z(n2735)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(89[12] 108[6])
    defparam i1292_rep_13.init = 16'h8888;
    LUT4 i1776_3_lut_3_lut (.A(counter_0_countDone), .B(next_state_3__N_125), 
         .C(next_state_3__N_124), .Z(n2608)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(64[6:16])
    defparam i1776_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i1137_2_lut (.A(n67[11]), .B(n23), .Z(sampleCount_11__N_205[11])) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(125[12] 127[6])
    defparam i1137_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_31 (.A(n2734), .B(sampleCount[4]), .C(n2467), .D(sampleCount[3]), 
         .Z(n2471)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_31.init = 16'hfffe;
    FD1S3JX sampleCount_i10 (.D(sampleCount_11__N_205[10]), .CK(clk_N_146), 
            .PD(n2737), .Q(sampleCount[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i10.GSR = "ENABLED";
    FD1S3JX sampleCount_i9 (.D(sampleCount_11__N_205[9]), .CK(clk_N_146), 
            .PD(n2737), .Q(sampleCount[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i9.GSR = "ENABLED";
    FD1S3JX sampleCount_i8 (.D(sampleCount_11__N_205[8]), .CK(clk_N_146), 
            .PD(n2737), .Q(sampleCount[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i8.GSR = "ENABLED";
    FD1S3JX sampleCount_i7 (.D(sampleCount_11__N_205[7]), .CK(clk_N_146), 
            .PD(n2737), .Q(sampleCount[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i7.GSR = "ENABLED";
    FD1S3JX sampleCount_i6 (.D(sampleCount_11__N_205[6]), .CK(clk_N_146), 
            .PD(n2737), .Q(sampleCount[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i6.GSR = "ENABLED";
    FD1S3JX sampleCount_i5 (.D(sampleCount_11__N_205[5]), .CK(clk_N_146), 
            .PD(n2737), .Q(sampleCount[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i5.GSR = "ENABLED";
    FD1S3JX sampleCount_i4 (.D(sampleCount_11__N_205[4]), .CK(clk_N_146), 
            .PD(n2737), .Q(sampleCount[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i4.GSR = "ENABLED";
    FD1S3JX sampleCount_i3 (.D(sampleCount_11__N_205[3]), .CK(clk_N_146), 
            .PD(n2737), .Q(sampleCount[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i3.GSR = "ENABLED";
    FD1S3JX sampleCount_i2 (.D(sampleCount_11__N_205[2]), .CK(clk_N_146), 
            .PD(n2737), .Q(sampleCount[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i2.GSR = "ENABLED";
    FD1S3JX sampleCount_i1 (.D(sampleCount_11__N_205[1]), .CK(clk_N_146), 
            .PD(n2737), .Q(sampleCount[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i1.GSR = "ENABLED";
    FD1S3IX FSK_Q__i12 (.D(n2376), .CK(clk_N_146), .CD(n2381), .Q(\fskModule_Q[12] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i12.GSR = "ENABLED";
    FD1S3IX FSK_Q__i11 (.D(cosine[6]), .CK(clk_N_146), .CD(fskModule_start), 
            .Q(\fskModule_Q[11] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i11.GSR = "ENABLED";
    FD1S3IX FSK_Q__i7 (.D(cosine[7]), .CK(clk_N_146), .CD(fskModule_start), 
            .Q(\fskModule_Q[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i7.GSR = "ENABLED";
    FD1S3IX FSK_Q__i4 (.D(cosine[4]), .CK(clk_N_146), .CD(fskModule_start), 
            .Q(\fskModule_Q[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i4.GSR = "ENABLED";
    FD1S3IX FSK_Q__i2 (.D(cosine[3]), .CK(clk_N_146), .CD(fskModule_start), 
            .Q(\fskModule_Q[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i2.GSR = "ENABLED";
    FD1S3IX FSK_I__i12 (.D(sine[12]), .CK(clk_N_146), .CD(fskModule_start), 
            .Q(\fskModule_I[12] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i12.GSR = "ENABLED";
    FD1S3IX FSK_I__i11 (.D(sine[11]), .CK(clk_N_146), .CD(fskModule_start), 
            .Q(\fskModule_I[11] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i11.GSR = "ENABLED";
    FD1S3IX FSK_I__i7 (.D(sine[10]), .CK(clk_N_146), .CD(fskModule_start), 
            .Q(\fskModule_I[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i7.GSR = "ENABLED";
    FD1S3IX FSK_I__i4 (.D(sine[4]), .CK(clk_N_146), .CD(fskModule_start), 
            .Q(\fskModule_I[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i4.GSR = "ENABLED";
    FD1S3IX FSK_I__i2 (.D(sine[1]), .CK(clk_N_146), .CD(fskModule_start), 
            .Q(\fskModule_I[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=141, LSE_RLINE=150 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i2.GSR = "ENABLED";
    LUT4 i1452_2_lut_rep_10_2_lut (.A(counter_0_countDone), .B(firstFlag), 
         .Z(n2732)) /* synthesis lut_function=((B)+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(64[6:16])
    defparam i1452_2_lut_rep_10_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_adj_32 (.A(sampleCount[5]), .B(sampleCount[8]), .Z(n2467)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_32.init = 16'heeee;
    LUT4 i392_1_lut (.A(IQSerializer_start), .Z(n817)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(70[8] 116[4])
    defparam i392_1_lut.init = 16'h5555;
    FD1S3IX sin_phase_378__i1 (.D(n2[1]), .CK(clockDivider_clk_4M), .CD(n2732), 
            .Q(sin_phase[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(89[12] 108[6])
    defparam sin_phase_378__i1.GSR = "ENABLED";
    LUT4 i1289_2_lut (.A(sin_phase[1]), .B(sin_phase[0]), .Z(n2[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(89[12] 108[6])
    defparam i1289_2_lut.init = 16'h6666;
    FD1S3AX sin_phase_378__i2 (.D(n2731), .CK(clockDivider_clk_4M), .Q(sin_phase[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(89[12] 108[6])
    defparam sin_phase_378__i2.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_33 (.A(n2735), .B(n2407), .C(sin_phase[2]), .D(n2405), 
         .Z(n2300)) /* synthesis lut_function=(A (B (C)+!B (C (D)+!C !(D)))+!A !(B (C)+!B (C (D)+!C !(D)))) */ ;
    defparam i1_4_lut_adj_33.init = 16'ha596;
    sinModule sin_instance (.sin_phase({sin_phase}), .\sine[0] (sine[0]), 
            .\sine[10] (sine[10]), .\sine[1] (sine[1]), .n1(n1)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(159[11] 162[2])
    cosModule cos_instance (.n157(n151[2]), .n156(n151[3]), .\cosine[4] (cosine[4]), 
            .n153(n151[6]), .n152(n151[7]), .n154(n151[5]), .n155(n151[4]), 
            .\cosine[3] (cosine[3]), .n1400(n1400), .\cosine[0] (cosine[0]), 
            .cosOut_12__N_289(cosOut_12__N_289), .n2376(n2376), .\cosine[6] (cosine[6]), 
            .\cosine[7] (cosine[7])) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(163[12] 166[2])
    
endmodule
//
// Verilog Description of module sinModule
//

module sinModule (sin_phase, \sine[0] , \sine[10] , \sine[1] , n1) /* synthesis syn_module_defined=1 */ ;
    input [2:0]sin_phase;
    output \sine[0] ;
    output \sine[10] ;
    output \sine[1] ;
    output n1;
    
    
    LUT4 i1751_2_lut (.A(sin_phase[1]), .B(sin_phase[0]), .Z(\sine[0] )) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1751_2_lut.init = 16'h2222;
    LUT4 sin_phase_2__bdd_3_lut (.A(sin_phase[2]), .B(sin_phase[0]), .C(sin_phase[1]), 
         .Z(\sine[10] )) /* synthesis lut_function=(A (B)+!A !(B+!(C))) */ ;
    defparam sin_phase_2__bdd_3_lut.init = 16'h9898;
    LUT4 i1762_3_lut (.A(sin_phase[0]), .B(sin_phase[1]), .C(sin_phase[2]), 
         .Z(\sine[1] )) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/sinmodule.v(16[11:32])
    defparam i1762_3_lut.init = 16'h0404;
    LUT4 i631_1_lut (.A(sin_phase[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/sinmodule.v(26[11:32])
    defparam i631_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module cosModule
//

module cosModule (n157, n156, \cosine[4] , n153, n152, n154, n155, 
            \cosine[3] , n1400, \cosine[0] , cosOut_12__N_289, n2376, 
            \cosine[6] , \cosine[7] ) /* synthesis syn_module_defined=1 */ ;
    input n157;
    input n156;
    output \cosine[4] ;
    input n153;
    input n152;
    input n154;
    input n155;
    input \cosine[3] ;
    output n1400;
    output \cosine[0] ;
    input cosOut_12__N_289;
    output n2376;
    output \cosine[6] ;
    output \cosine[7] ;
    
    wire [9:0]n623;
    
    wire n2280, n2532, n2530, n2741;
    
    LUT4 i1_4_lut (.A(n623[1]), .B(n2280), .C(n157), .D(n156), .Z(\cosine[4] )) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(14[7] 29[24])
    defparam i1_4_lut.init = 16'hcfce;
    LUT4 i1125_3_lut_4_lut (.A(n153), .B(n152), .C(n154), .D(n155), 
         .Z(n623[1])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam i1125_3_lut_4_lut.init = 16'h00f4;
    LUT4 i1109_4_lut (.A(n156), .B(\cosine[3] ), .C(n1400), .D(n155), 
         .Z(\cosine[0] )) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(14[7] 29[24])
    defparam i1109_4_lut.init = 16'hcdcc;
    LUT4 i696_2_lut (.A(n157), .B(cosOut_12__N_289), .Z(n1400)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(16[7] 29[24])
    defparam i696_2_lut.init = 16'heeee;
    LUT4 i1_3_lut (.A(n154), .B(n156), .C(n155), .Z(n2376)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(20[7] 29[24])
    defparam i1_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_15 (.A(n2532), .B(n2280), .C(n2530), .D(n2741), 
         .Z(\cosine[6] )) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(14[7] 29[24])
    defparam i1_4_lut_adj_15.init = 16'hcdcc;
    LUT4 i1693_2_lut (.A(n157), .B(n154), .Z(n2532)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1693_2_lut.init = 16'heeee;
    LUT4 i1691_2_lut (.A(n155), .B(n156), .Z(n2530)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1691_2_lut.init = 16'heeee;
    LUT4 i1_2_lut (.A(\cosine[3] ), .B(cosOut_12__N_289), .Z(n2280)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(14[7] 29[24])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1148_4_lut (.A(n623[2]), .B(\cosine[3] ), .C(n1400), .D(n156), 
         .Z(\cosine[7] )) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(14[7] 29[24])
    defparam i1148_4_lut.init = 16'hcfce;
    LUT4 i1124_2_lut (.A(n154), .B(n155), .Z(n623[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(22[7] 29[24])
    defparam i1124_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_rep_19 (.A(n153), .B(n152), .Z(n2741)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_19.init = 16'h4444;
    
endmodule
//
// Verilog Description of module packetCounter
//

module packetCounter (waitcount, GND_net, VCC_net, cout, clockDivider_clkLock, 
            clockDivider_clk_4M, cout_adj_1, counter_0_countDone, n1595) /* synthesis syn_module_defined=1 */ ;
    output [25:0]waitcount;
    input GND_net;
    input VCC_net;
    input cout;
    input clockDivider_clkLock;
    input clockDivider_clk_4M;
    input cout_adj_1;
    output counter_0_countDone;
    input n1595;
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(63[8:27])
    
    wire n2135;
    wire [25:0]n109;
    
    wire n2134, n2130, n2131, n2129, n2133, n2128, n2132, n2127, 
        n2126, n2125, n2124, n2123, n1596, countDone_N_105;
    
    CCU2C waitcount_375_add_4_27 (.A0(waitcount[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2135), .S0(n109[25]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375_add_4_27.INIT0 = 16'haaa0;
    defparam waitcount_375_add_4_27.INIT1 = 16'h0000;
    defparam waitcount_375_add_4_27.INJECT1_0 = "NO";
    defparam waitcount_375_add_4_27.INJECT1_1 = "NO";
    CCU2C waitcount_375_add_4_25 (.A0(waitcount[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2134), .COUT(n2135), .S0(n109[23]), .S1(n109[24]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375_add_4_25.INIT0 = 16'haaa0;
    defparam waitcount_375_add_4_25.INIT1 = 16'haaa0;
    defparam waitcount_375_add_4_25.INJECT1_0 = "NO";
    defparam waitcount_375_add_4_25.INJECT1_1 = "NO";
    CCU2C waitcount_375_add_4_17 (.A0(waitcount[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2130), .COUT(n2131), .S0(n109[15]), .S1(n109[16]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375_add_4_17.INIT0 = 16'haaa0;
    defparam waitcount_375_add_4_17.INIT1 = 16'haaa0;
    defparam waitcount_375_add_4_17.INJECT1_0 = "NO";
    defparam waitcount_375_add_4_17.INJECT1_1 = "NO";
    CCU2C waitcount_375_add_4_15 (.A0(waitcount[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2129), .COUT(n2130), .S0(n109[13]), .S1(n109[14]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375_add_4_15.INIT0 = 16'haaa0;
    defparam waitcount_375_add_4_15.INIT1 = 16'haaa0;
    defparam waitcount_375_add_4_15.INJECT1_0 = "NO";
    defparam waitcount_375_add_4_15.INJECT1_1 = "NO";
    CCU2C waitcount_375_add_4_23 (.A0(waitcount[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2133), .COUT(n2134), .S0(n109[21]), .S1(n109[22]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375_add_4_23.INIT0 = 16'haaa0;
    defparam waitcount_375_add_4_23.INIT1 = 16'haaa0;
    defparam waitcount_375_add_4_23.INJECT1_0 = "NO";
    defparam waitcount_375_add_4_23.INJECT1_1 = "NO";
    CCU2C waitcount_375_add_4_13 (.A0(waitcount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2128), .COUT(n2129), .S0(n109[11]), .S1(n109[12]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375_add_4_13.INIT0 = 16'haaa0;
    defparam waitcount_375_add_4_13.INIT1 = 16'haaa0;
    defparam waitcount_375_add_4_13.INJECT1_0 = "NO";
    defparam waitcount_375_add_4_13.INJECT1_1 = "NO";
    CCU2C waitcount_375_add_4_21 (.A0(waitcount[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2132), .COUT(n2133), .S0(n109[19]), .S1(n109[20]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375_add_4_21.INIT0 = 16'haaa0;
    defparam waitcount_375_add_4_21.INIT1 = 16'haaa0;
    defparam waitcount_375_add_4_21.INJECT1_0 = "NO";
    defparam waitcount_375_add_4_21.INJECT1_1 = "NO";
    CCU2C waitcount_375_add_4_11 (.A0(waitcount[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2127), .COUT(n2128), .S0(n109[9]), .S1(n109[10]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375_add_4_11.INIT0 = 16'haaa0;
    defparam waitcount_375_add_4_11.INIT1 = 16'haaa0;
    defparam waitcount_375_add_4_11.INJECT1_0 = "NO";
    defparam waitcount_375_add_4_11.INJECT1_1 = "NO";
    CCU2C waitcount_375_add_4_9 (.A0(waitcount[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2126), .COUT(n2127), .S0(n109[7]), .S1(n109[8]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375_add_4_9.INIT0 = 16'haaa0;
    defparam waitcount_375_add_4_9.INIT1 = 16'haaa0;
    defparam waitcount_375_add_4_9.INJECT1_0 = "NO";
    defparam waitcount_375_add_4_9.INJECT1_1 = "NO";
    CCU2C waitcount_375_add_4_7 (.A0(waitcount[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2125), .COUT(n2126), .S0(n109[5]), .S1(n109[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375_add_4_7.INIT0 = 16'haaa0;
    defparam waitcount_375_add_4_7.INIT1 = 16'haaa0;
    defparam waitcount_375_add_4_7.INJECT1_0 = "NO";
    defparam waitcount_375_add_4_7.INJECT1_1 = "NO";
    CCU2C waitcount_375_add_4_5 (.A0(waitcount[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2124), .COUT(n2125), .S0(n109[3]), .S1(n109[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375_add_4_5.INIT0 = 16'haaa0;
    defparam waitcount_375_add_4_5.INIT1 = 16'haaa0;
    defparam waitcount_375_add_4_5.INJECT1_0 = "NO";
    defparam waitcount_375_add_4_5.INJECT1_1 = "NO";
    CCU2C waitcount_375_add_4_19 (.A0(waitcount[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2131), .COUT(n2132), .S0(n109[17]), .S1(n109[18]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375_add_4_19.INIT0 = 16'haaa0;
    defparam waitcount_375_add_4_19.INIT1 = 16'haaa0;
    defparam waitcount_375_add_4_19.INJECT1_0 = "NO";
    defparam waitcount_375_add_4_19.INJECT1_1 = "NO";
    CCU2C waitcount_375_add_4_3 (.A0(waitcount[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2123), .COUT(n2124), .S0(n109[1]), .S1(n109[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375_add_4_3.INIT0 = 16'haaa0;
    defparam waitcount_375_add_4_3.INIT1 = 16'haaa0;
    defparam waitcount_375_add_4_3.INJECT1_0 = "NO";
    defparam waitcount_375_add_4_3.INJECT1_1 = "NO";
    CCU2C waitcount_375_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(waitcount[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2123), .S1(n109[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375_add_4_1.INIT0 = 16'h0000;
    defparam waitcount_375_add_4_1.INIT1 = 16'h555f;
    defparam waitcount_375_add_4_1.INJECT1_0 = "NO";
    defparam waitcount_375_add_4_1.INJECT1_1 = "NO";
    LUT4 i1759_2_lut (.A(cout), .B(clockDivider_clkLock), .Z(n1596)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(18[14] 25[8])
    defparam i1759_2_lut.init = 16'hbbbb;
    FD1S3IX waitcount_375__i0 (.D(n109[0]), .CK(clockDivider_clk_4M), .CD(n1596), 
            .Q(waitcount[0])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i0.GSR = "ENABLED";
    FD1S3IX waitcount_375__i1 (.D(n109[1]), .CK(clockDivider_clk_4M), .CD(n1596), 
            .Q(waitcount[1])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i1.GSR = "ENABLED";
    FD1S3IX waitcount_375__i2 (.D(n109[2]), .CK(clockDivider_clk_4M), .CD(n1596), 
            .Q(waitcount[2])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i2.GSR = "ENABLED";
    FD1S3IX waitcount_375__i3 (.D(n109[3]), .CK(clockDivider_clk_4M), .CD(n1596), 
            .Q(waitcount[3])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i3.GSR = "ENABLED";
    FD1S3IX waitcount_375__i4 (.D(n109[4]), .CK(clockDivider_clk_4M), .CD(n1596), 
            .Q(waitcount[4])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i4.GSR = "ENABLED";
    FD1S3IX waitcount_375__i5 (.D(n109[5]), .CK(clockDivider_clk_4M), .CD(n1596), 
            .Q(waitcount[5])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i5.GSR = "ENABLED";
    FD1S3IX waitcount_375__i6 (.D(n109[6]), .CK(clockDivider_clk_4M), .CD(n1596), 
            .Q(waitcount[6])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i6.GSR = "ENABLED";
    FD1S3IX waitcount_375__i7 (.D(n109[7]), .CK(clockDivider_clk_4M), .CD(n1596), 
            .Q(waitcount[7])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i7.GSR = "ENABLED";
    FD1S3IX waitcount_375__i8 (.D(n109[8]), .CK(clockDivider_clk_4M), .CD(n1596), 
            .Q(waitcount[8])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i8.GSR = "ENABLED";
    FD1S3IX waitcount_375__i9 (.D(n109[9]), .CK(clockDivider_clk_4M), .CD(n1596), 
            .Q(waitcount[9])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i9.GSR = "ENABLED";
    FD1S3IX waitcount_375__i10 (.D(n109[10]), .CK(clockDivider_clk_4M), 
            .CD(n1596), .Q(waitcount[10])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i10.GSR = "ENABLED";
    FD1S3IX waitcount_375__i11 (.D(n109[11]), .CK(clockDivider_clk_4M), 
            .CD(n1596), .Q(waitcount[11])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i11.GSR = "ENABLED";
    FD1S3IX waitcount_375__i12 (.D(n109[12]), .CK(clockDivider_clk_4M), 
            .CD(n1596), .Q(waitcount[12])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i12.GSR = "ENABLED";
    FD1S3IX waitcount_375__i13 (.D(n109[13]), .CK(clockDivider_clk_4M), 
            .CD(n1596), .Q(waitcount[13])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i13.GSR = "ENABLED";
    FD1S3IX waitcount_375__i14 (.D(n109[14]), .CK(clockDivider_clk_4M), 
            .CD(n1596), .Q(waitcount[14])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i14.GSR = "ENABLED";
    FD1S3IX waitcount_375__i15 (.D(n109[15]), .CK(clockDivider_clk_4M), 
            .CD(n1596), .Q(waitcount[15])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i15.GSR = "ENABLED";
    FD1S3IX waitcount_375__i16 (.D(n109[16]), .CK(clockDivider_clk_4M), 
            .CD(n1596), .Q(waitcount[16])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i16.GSR = "ENABLED";
    FD1S3IX waitcount_375__i17 (.D(n109[17]), .CK(clockDivider_clk_4M), 
            .CD(n1596), .Q(waitcount[17])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i17.GSR = "ENABLED";
    FD1S3IX waitcount_375__i18 (.D(n109[18]), .CK(clockDivider_clk_4M), 
            .CD(n1596), .Q(waitcount[18])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i18.GSR = "ENABLED";
    FD1S3IX waitcount_375__i19 (.D(n109[19]), .CK(clockDivider_clk_4M), 
            .CD(n1596), .Q(waitcount[19])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i19.GSR = "ENABLED";
    FD1S3IX waitcount_375__i20 (.D(n109[20]), .CK(clockDivider_clk_4M), 
            .CD(n1596), .Q(waitcount[20])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i20.GSR = "ENABLED";
    FD1S3IX waitcount_375__i21 (.D(n109[21]), .CK(clockDivider_clk_4M), 
            .CD(n1596), .Q(waitcount[21])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i21.GSR = "ENABLED";
    FD1S3IX waitcount_375__i22 (.D(n109[22]), .CK(clockDivider_clk_4M), 
            .CD(n1596), .Q(waitcount[22])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i22.GSR = "ENABLED";
    FD1S3IX waitcount_375__i23 (.D(n109[23]), .CK(clockDivider_clk_4M), 
            .CD(n1596), .Q(waitcount[23])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i23.GSR = "ENABLED";
    FD1S3IX waitcount_375__i24 (.D(n109[24]), .CK(clockDivider_clk_4M), 
            .CD(n1596), .Q(waitcount[24])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i24.GSR = "ENABLED";
    FD1S3IX waitcount_375__i25 (.D(n109[25]), .CK(clockDivider_clk_4M), 
            .CD(n1596), .Q(waitcount[25])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(19[53:78])
    defparam waitcount_375__i25.GSR = "ENABLED";
    LUT4 i263_1_lut (.A(cout_adj_1), .Z(countDone_N_105)) /* synthesis lut_function=(!(A)) */ ;
    defparam i263_1_lut.init = 16'h5555;
    FD1S3IX countDone_13 (.D(countDone_N_105), .CK(clockDivider_clk_4M), 
            .CD(n1595), .Q(counter_0_countDone));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetcounter.v(14[8] 26[4])
    defparam countDone_13.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module packetGenerator
//

module packetGenerator (fskModule_symVal, clk_N_146, n2737, next_state_3__N_127, 
            clockDivider_clk_4M, VCC_net, symCounter, clockDivider_clk_4M_enable_9, 
            next_state_3__N_125, next_state_3__N_124, fskModule_symDone, 
            data, n2608, counter_0_countDone) /* synthesis syn_module_defined=1 */ ;
    output fskModule_symVal;
    input clk_N_146;
    input n2737;
    output next_state_3__N_127;
    input clockDivider_clk_4M;
    input VCC_net;
    output [7:0]symCounter;
    input clockDivider_clk_4M_enable_9;
    output next_state_3__N_125;
    output next_state_3__N_124;
    input fskModule_symDone;
    input data;
    input n2608;
    input counter_0_countDone;
    
    wire clk_N_146 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(22[12:18])
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(63[8:27])
    
    wire next_symVal_N_143, next_state_3__N_126;
    wire [7:0]n69;
    
    wire n2740, n2501, n2431, n1429, n2495, n2373, n13, n15, 
        n2739, n2481, next_symVal, n2738, n2509, n2493;
    
    FD1S3IX symVal_43 (.D(next_symVal_N_143), .CK(clk_N_146), .CD(n2737), 
            .Q(fskModule_symVal));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(54[8] 61[4])
    defparam symVal_43.GSR = "ENABLED";
    FD1P3IX current_state_FSM_i1 (.D(VCC_net), .SP(next_state_3__N_126), 
            .CD(n2737), .CK(clockDivider_clk_4M), .Q(next_state_3__N_127));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i1.GSR = "ENABLED";
    FD1P3IX symCounter__i0 (.D(n69[0]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2737), .CK(clockDivider_clk_4M), .Q(symCounter[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=133, LSE_RLINE=139 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i0.GSR = "ENABLED";
    LUT4 i1144_3_lut_4_lut (.A(symCounter[0]), .B(symCounter[1]), .C(next_state_3__N_125), 
         .D(symCounter[2]), .Z(n69[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(115[19:36])
    defparam i1144_3_lut_4_lut.init = 16'h7080;
    LUT4 i1_2_lut_rep_18 (.A(symCounter[0]), .B(symCounter[1]), .Z(n2740)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(115[19:36])
    defparam i1_2_lut_rep_18.init = 16'h8888;
    LUT4 i1_2_lut_3_lut (.A(symCounter[3]), .B(symCounter[4]), .C(symCounter[0]), 
         .Z(n2501)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(115[19:36])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    FD1S3AX current_state_FSM_i4 (.D(n2737), .CK(clockDivider_clk_4M), .Q(next_state_3__N_124));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i4.GSR = "ENABLED";
    LUT4 i1145_3_lut (.A(symCounter[1]), .B(next_state_3__N_125), .C(symCounter[0]), 
         .Z(n69[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(116[13] 118[7])
    defparam i1145_3_lut.init = 16'h4848;
    LUT4 i725_4_lut (.A(next_state_3__N_125), .B(next_state_3__N_124), .C(n2431), 
         .D(fskModule_symDone), .Z(n1429)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(69[3] 104[10])
    defparam i725_4_lut.init = 16'hceee;
    LUT4 i1_2_lut_3_lut_4_lut (.A(symCounter[1]), .B(symCounter[2]), .C(symCounter[4]), 
         .D(symCounter[3]), .Z(n2495)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(115[19:36])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    FD1S3IX current_state_FSM_i3 (.D(n1429), .CK(clockDivider_clk_4M), .CD(n2737), 
            .Q(next_state_3__N_125));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i3.GSR = "ENABLED";
    FD1S3IX current_state_FSM_i2 (.D(n2373), .CK(clockDivider_clk_4M), .CD(n2737), 
            .Q(next_state_3__N_126));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i2.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n13), .B(n15), .C(symCounter[0]), .D(symCounter[5]), 
         .Z(n2431)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'h8000;
    LUT4 i1143_4_lut (.A(symCounter[3]), .B(next_state_3__N_125), .C(n2739), 
         .D(symCounter[0]), .Z(n69[3])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(116[13] 118[7])
    defparam i1143_4_lut.init = 16'h4888;
    LUT4 i4_2_lut (.A(symCounter[2]), .B(symCounter[6]), .Z(n13)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_12 (.A(symCounter[1]), .B(symCounter[4]), .C(symCounter[3]), 
         .D(symCounter[7]), .Z(n15)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_12.init = 16'h8000;
    LUT4 i1_4_lut_adj_13 (.A(n13), .B(fskModule_symDone), .C(n15), .D(n2481), 
         .Z(n2373)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_13.init = 16'h8000;
    LUT4 i1774_4_lut (.A(next_symVal), .B(data), .C(n2608), .D(counter_0_countDone), 
         .Z(next_symVal)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(63[1] 106[4])
    defparam i1774_4_lut.init = 16'hca0a;
    LUT4 i1_3_lut (.A(next_state_3__N_125), .B(symCounter[0]), .C(symCounter[5]), 
         .Z(n2481)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    LUT4 i1142_4_lut (.A(symCounter[4]), .B(next_state_3__N_125), .C(n2740), 
         .D(n2738), .Z(n69[4])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(116[13] 118[7])
    defparam i1142_4_lut.init = 16'h4888;
    LUT4 i1_2_lut_rep_16 (.A(symCounter[2]), .B(symCounter[3]), .Z(n2738)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(115[19:36])
    defparam i1_2_lut_rep_16.init = 16'h8888;
    LUT4 i1141_4_lut (.A(symCounter[5]), .B(next_state_3__N_125), .C(n2501), 
         .D(n2739), .Z(n69[5])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(116[13] 118[7])
    defparam i1141_4_lut.init = 16'h4888;
    LUT4 i1140_4_lut (.A(symCounter[6]), .B(next_state_3__N_125), .C(n2509), 
         .D(n2740), .Z(n69[6])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(116[13] 118[7])
    defparam i1140_4_lut.init = 16'h4888;
    FD1P3IX symCounter__i1 (.D(n69[1]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2737), .CK(clockDivider_clk_4M), .Q(symCounter[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=133, LSE_RLINE=139 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i1.GSR = "ENABLED";
    FD1P3IX symCounter__i2 (.D(n69[2]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2737), .CK(clockDivider_clk_4M), .Q(symCounter[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=133, LSE_RLINE=139 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i2.GSR = "ENABLED";
    FD1P3IX symCounter__i3 (.D(n69[3]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2737), .CK(clockDivider_clk_4M), .Q(symCounter[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=133, LSE_RLINE=139 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i3.GSR = "ENABLED";
    FD1P3IX symCounter__i4 (.D(n69[4]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2737), .CK(clockDivider_clk_4M), .Q(symCounter[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=133, LSE_RLINE=139 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i4.GSR = "ENABLED";
    FD1P3IX symCounter__i5 (.D(n69[5]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2737), .CK(clockDivider_clk_4M), .Q(symCounter[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=133, LSE_RLINE=139 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i5.GSR = "ENABLED";
    FD1P3IX symCounter__i6 (.D(n69[6]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2737), .CK(clockDivider_clk_4M), .Q(symCounter[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=133, LSE_RLINE=139 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i6.GSR = "ENABLED";
    FD1P3IX symCounter__i7 (.D(n69[7]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2737), .CK(clockDivider_clk_4M), .Q(symCounter[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=133, LSE_RLINE=139 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i7.GSR = "ENABLED";
    LUT4 i1097_2_lut (.A(symCounter[0]), .B(next_state_3__N_125), .Z(n69[0])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(116[13] 118[7])
    defparam i1097_2_lut.init = 16'h4444;
    LUT4 i1139_4_lut (.A(symCounter[7]), .B(next_state_3__N_125), .C(n2495), 
         .D(n2493), .Z(n69[7])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(116[13] 118[7])
    defparam i1139_4_lut.init = 16'h4888;
    LUT4 i1_3_lut_adj_14 (.A(symCounter[5]), .B(symCounter[0]), .C(symCounter[6]), 
         .Z(n2493)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(115[19:36])
    defparam i1_3_lut_adj_14.init = 16'h8080;
    LUT4 i1_3_lut_4_lut (.A(symCounter[2]), .B(symCounter[3]), .C(symCounter[5]), 
         .D(symCounter[4]), .Z(n2509)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(115[19:36])
    defparam i1_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_17 (.A(symCounter[1]), .B(symCounter[2]), .Z(n2739)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(115[19:36])
    defparam i1_2_lut_rep_17.init = 16'h8888;
    LUT4 next_symVal_I_0_1_lut (.A(next_symVal), .Z(next_symVal_N_143)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(59[15:27])
    defparam next_symVal_I_0_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module pll_64M
//

module pll_64M (clk_N_291, top_test2_c, GND_net, top_clk_c, VCC_net, 
            pll_lock) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output clk_N_291;
    output top_test2_c;
    input GND_net;
    input top_clk_c;
    input VCC_net;
    output pll_lock;
    
    wire clk_N_291 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(17[11:24])
    wire top_test2_c /* synthesis SET_AS_NETWORK=top_test2_c, is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(46[10:20])
    wire top_clk_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(30[7:14])
    wire CLKIt /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/ble_tx_clarity/pll_64m/pll_64m.v(20[10:15])
    
    INV i1922 (.A(top_test2_c), .Z(clk_N_291));
    PLLREFCS PLLRefcs_0 (.CLK0(GND_net), .CLK1(top_clk_c), .SEL(VCC_net), 
            .PLLCSOUT(CLKIt)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=108, LSE_RLINE=115 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(108[9] 115[2])
    EHXPLLL PLLInst_0 (.CLKI(CLKIt), .CLKFB(top_test2_c), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .PHASELOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .CLKOP(top_test2_c), .LOCK(pll_lock)) /* synthesis FREQUENCY_PIN_CLKOP="64.000000", FREQUENCY_PIN_CLKI="32.000000", ICP_CURRENT="5", LPF_RESISTOR="16", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=108, LSE_RLINE=115 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(108[9] 115[2])
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
    
endmodule
//
// Verilog Description of module IQSerializer
//

module IQSerializer (\ICounter[2] , \ICounter[3] , \fskModule_I[11] , 
            \fskModule_I[2] , clk_N_291, n817, \fskModule_I[4] , \fskModule_I[12] , 
            \ICounter[1] , \fskModule_I[0] , \fskModule_Q[2] , \fskModule_I[7] , 
            \fskModule_Q[7] , \fskModule_Q[11] , \fskModule_Q[0] , \fskModule_Q[4] , 
            \fskModule_Q[12] , IQSerializer_start, n1846, n2218, top_test2_c, 
            top_test1_c) /* synthesis syn_module_defined=1 */ ;
    output \ICounter[2] ;
    output \ICounter[3] ;
    input \fskModule_I[11] ;
    input \fskModule_I[2] ;
    input clk_N_291;
    input n817;
    input \fskModule_I[4] ;
    input \fskModule_I[12] ;
    output \ICounter[1] ;
    input \fskModule_I[0] ;
    input \fskModule_Q[2] ;
    input \fskModule_I[7] ;
    input \fskModule_Q[7] ;
    input \fskModule_Q[11] ;
    input \fskModule_Q[0] ;
    input \fskModule_Q[4] ;
    input \fskModule_Q[12] ;
    input IQSerializer_start;
    input n1846;
    input n2218;
    input top_test2_c;
    output top_test1_c;
    
    wire clk_N_291 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(17[11:24])
    wire top_test2_c /* synthesis SET_AS_NETWORK=top_test2_c, is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(46[10:20])
    wire top_test1_c /* synthesis IO_TYPES=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(45[10:19])
    
    wire n2742;
    wire [4:0]n296;
    
    wire n1435, n261;
    wire [3:0]QCounter;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(22[41:49])
    wire [3:0]n21;
    
    wire n2645, n2653, n2651, n2655, n2643, n2649, n1393, n265, 
        n2644;
    wire [3:0]next_state_3__N_325;
    
    wire n2646, n2648, n2746, n2745, n2650, n2652, n2743, n2744, 
        n1597, n1598, n2736;
    wire [4:0]n83;
    
    wire n2747, n2700, n2733;
    
    LUT4 i1830_else_4_lut (.A(\ICounter[2] ), .B(\ICounter[3] ), .C(\fskModule_I[11] ), 
         .D(\fskModule_I[2] ), .Z(n2742)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;
    defparam i1830_else_4_lut.init = 16'h5410;
    FD1S3IX current_state_FSM_i0 (.D(n1435), .CK(clk_N_291), .CD(n817), 
            .Q(n296[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam current_state_FSM_i0.GSR = "ENABLED";
    FD1S3AX current_state_FSM_i4 (.D(n817), .CK(clk_N_291), .Q(n296[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam current_state_FSM_i4.GSR = "ENABLED";
    FD1S3IX current_state_FSM_i3 (.D(n261), .CK(clk_N_291), .CD(n817), 
            .Q(n296[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam current_state_FSM_i3.GSR = "ENABLED";
    LUT4 i1312_2_lut (.A(QCounter[2]), .B(QCounter[1]), .Z(n21[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(85[52:67])
    defparam i1312_2_lut.init = 16'h6666;
    LUT4 fskModule_I_4__bdd_3_lut_1840 (.A(\fskModule_I[4] ), .B(\fskModule_I[12] ), 
         .C(\ICounter[3] ), .Z(n2645)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam fskModule_I_4__bdd_3_lut_1840.init = 16'hacac;
    LUT4 spi_miso_c_0_bdd_2_lut_4_lut (.A(n2653), .B(n2651), .C(QCounter[3]), 
         .D(n296[0]), .Z(n2655)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam spi_miso_c_0_bdd_2_lut_4_lut.init = 16'hca00;
    LUT4 fskModule_I_4__bdd_4_lut_1839 (.A(\ICounter[1] ), .B(\fskModule_I[0] ), 
         .C(\fskModule_I[11] ), .D(\ICounter[3] ), .Z(n2643)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam fskModule_I_4__bdd_4_lut_1839.init = 16'h44f0;
    LUT4 QCounter_1__bdd_2_lut_1846 (.A(\fskModule_Q[2] ), .B(QCounter[2]), 
         .Z(n2649)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam QCounter_1__bdd_2_lut_1846.init = 16'h2222;
    FD1S3IX current_state_FSM_i2 (.D(n1393), .CK(clk_N_291), .CD(n817), 
            .Q(n296[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam current_state_FSM_i2.GSR = "ENABLED";
    FD1S3IX current_state_FSM_i1 (.D(n265), .CK(clk_N_291), .CD(n817), 
            .Q(n296[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam current_state_FSM_i1.GSR = "ENABLED";
    LUT4 fskModule_I_4__bdd_3_lut_1791 (.A(\fskModule_I[2] ), .B(\fskModule_I[7] ), 
         .C(\ICounter[3] ), .Z(n2644)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam fskModule_I_4__bdd_3_lut_1791.init = 16'hacac;
    LUT4 reduce_or_88_i2_3_lut (.A(next_state_3__N_325[2]), .B(n296[4]), 
         .C(n296[0]), .Z(n261)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam reduce_or_88_i2_3_lut.init = 16'hdcdc;
    LUT4 spi_miso_c_0_bdd_2_lut_1796_4_lut (.A(n2646), .B(n2643), .C(\ICounter[2] ), 
         .D(n296[2]), .Z(n2648)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam spi_miso_c_0_bdd_2_lut_1796_4_lut.init = 16'hca00;
    LUT4 n2545_bdd_4_lut_then_3_lut (.A(n296[1]), .B(\fskModule_Q[7] ), 
         .C(QCounter[3]), .Z(n2746)) /* synthesis lut_function=(A+!((C)+!B)) */ ;
    defparam n2545_bdd_4_lut_then_3_lut.init = 16'haeae;
    LUT4 n2545_bdd_4_lut_else_3_lut (.A(\fskModule_Q[2] ), .B(\fskModule_Q[11] ), 
         .C(n296[1]), .D(QCounter[3]), .Z(n2745)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+!(D))+!B (C))) */ ;
    defparam n2545_bdd_4_lut_else_3_lut.init = 16'hfafc;
    LUT4 QCounter_1__bdd_3_lut_1847 (.A(\fskModule_Q[0] ), .B(QCounter[2]), 
         .C(\fskModule_Q[4] ), .Z(n2650)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam QCounter_1__bdd_3_lut_1847.init = 16'hb8b8;
    LUT4 i1319_3_lut (.A(QCounter[3]), .B(QCounter[2]), .C(QCounter[1]), 
         .Z(n21[3])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(85[52:67])
    defparam i1319_3_lut.init = 16'h6a6a;
    PFUMX i1792 (.BLUT(n2645), .ALUT(n2644), .C0(\ICounter[1] ), .Z(n2646));
    LUT4 fskModule_Q_11__bdd_3_lut (.A(QCounter[1]), .B(\fskModule_Q[12] ), 
         .C(\fskModule_Q[7] ), .Z(n2652)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam fskModule_Q_11__bdd_3_lut.init = 16'he4e4;
    LUT4 n2652_bdd_3_lut (.A(n2652), .B(\fskModule_Q[11] ), .C(QCounter[2]), 
         .Z(n2653)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n2652_bdd_3_lut.init = 16'hcaca;
    PFUMX i1851 (.BLUT(n2742), .ALUT(n2743), .C0(\fskModule_I[7] ), .Z(n2744));
    LUT4 i1769_2_lut (.A(n296[0]), .B(IQSerializer_start), .Z(n1597)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(81[14] 97[8])
    defparam i1769_2_lut.init = 16'h7777;
    FD1S3IX ICounter_377__i1 (.D(n1846), .CK(clk_N_291), .CD(n1598), .Q(\ICounter[1] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(82[52:67])
    defparam ICounter_377__i1.GSR = "ENABLED";
    LUT4 i689_3_lut (.A(n296[2]), .B(n296[3]), .C(n2736), .Z(n1393)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam i689_3_lut.init = 16'hecec;
    PFUMX i1794 (.BLUT(n2650), .ALUT(n2649), .C0(QCounter[1]), .Z(n2651));
    FD1S3IX QCounter_380__i1 (.D(n83[1]), .CK(clk_N_291), .CD(n1597), 
            .Q(QCounter[1])) /* synthesis syn_preserve="TRUE" */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(85[52:67])
    defparam QCounter_380__i1.GSR = "ENABLED";
    LUT4 i1830_then_4_lut (.A(\ICounter[2] ), .B(\ICounter[3] ), .C(\fskModule_I[11] ), 
         .D(\fskModule_I[2] ), .Z(n2743)) /* synthesis lut_function=(!(A (B)+!A !(B (D)+!B (C)))) */ ;
    defparam i1830_then_4_lut.init = 16'h7632;
    LUT4 i1_3_lut_rep_14 (.A(\ICounter[3] ), .B(\ICounter[2] ), .C(\ICounter[1] ), 
         .Z(n2736)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(123[21:38])
    defparam i1_3_lut_rep_14.init = 16'hf7f7;
    LUT4 n2699_bdd_3_lut (.A(n2747), .B(n2744), .C(n296[2]), .Z(n2700)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n2699_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_11 (.A(\ICounter[2] ), .B(\ICounter[1] ), .Z(n2733)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_rep_11.init = 16'h6666;
    LUT4 i731_3_lut (.A(n296[0]), .B(n296[1]), .C(next_state_3__N_325[2]), 
         .Z(n1435)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam i731_3_lut.init = 16'hecec;
    LUT4 i1_3_lut (.A(QCounter[3]), .B(QCounter[2]), .C(QCounter[1]), 
         .Z(next_state_3__N_325[2])) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(133[21:38])
    defparam i1_3_lut.init = 16'hf7f7;
    FD1S3IX QCounter_380__i2 (.D(n21[2]), .CK(clk_N_291), .CD(n1597), 
            .Q(QCounter[2])) /* synthesis syn_preserve="TRUE" */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(85[52:67])
    defparam QCounter_380__i2.GSR = "ENABLED";
    FD1S3IX QCounter_380__i3 (.D(n21[3]), .CK(clk_N_291), .CD(n1597), 
            .Q(QCounter[3])) /* synthesis syn_preserve="TRUE" */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(85[52:67])
    defparam QCounter_380__i3.GSR = "ENABLED";
    FD1S3IX ICounter_377__i2 (.D(n2733), .CK(clk_N_291), .CD(n1598), .Q(\ICounter[2] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(82[52:67])
    defparam ICounter_377__i2.GSR = "ENABLED";
    FD1S3IX ICounter_377__i3 (.D(n2218), .CK(clk_N_291), .CD(n1598), .Q(\ICounter[3] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(82[52:67])
    defparam ICounter_377__i3.GSR = "ENABLED";
    LUT4 i93_2_lut_4_lut (.A(\ICounter[3] ), .B(\ICounter[2] ), .C(\ICounter[1] ), 
         .D(n296[2]), .Z(n265)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(123[21:38])
    defparam i93_2_lut_4_lut.init = 16'h0800;
    LUT4 i679_1_lut (.A(QCounter[1]), .Z(n83[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(62[26:43])
    defparam i679_1_lut.init = 16'h5555;
    PFUMX i1853 (.BLUT(n2745), .ALUT(n2746), .C0(QCounter[2]), .Z(n2747));
    LUT4 i1772_2_lut (.A(n296[2]), .B(IQSerializer_start), .Z(n1598)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(81[14] 97[8])
    defparam i1772_2_lut.init = 16'h7777;
    DEDFF DEDFF_0 (.clk_N_291(clk_N_291), .n817(n817), .top_test2_c(top_test2_c), 
          .next_state_3__N_316(n296[3]), .n2700(n2700), .next_state_3__N_314(n296[4]), 
          .top_test1_c(top_test1_c), .n2655(n2655), .n2648(n2648)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(147[7] 155[2])
    
endmodule
//
// Verilog Description of module DEDFF
//

module DEDFF (clk_N_291, n817, top_test2_c, next_state_3__N_316, n2700, 
            next_state_3__N_314, top_test1_c, n2655, n2648) /* synthesis syn_module_defined=1 */ ;
    input clk_N_291;
    input n817;
    input top_test2_c;
    input next_state_3__N_316;
    input n2700;
    input next_state_3__N_314;
    output top_test1_c;
    input n2655;
    input n2648;
    
    wire clk_N_291 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(17[11:24])
    wire top_test2_c /* synthesis SET_AS_NETWORK=top_test2_c, is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(46[10:20])
    wire top_test1_c /* synthesis IO_TYPES=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(45[10:19])
    
    wire neg_edge, Q2, pose_edge, Q1;
    
    FD1S3IX neg_edge_15 (.D(Q2), .CK(clk_N_291), .CD(n817), .Q(neg_edge));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/dedff.v(48[8] 51[4])
    defparam neg_edge_15.GSR = "ENABLED";
    FD1S3IX pose_edge_14 (.D(Q1), .CK(top_test2_c), .CD(n817), .Q(pose_edge));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/dedff.v(42[8] 45[4])
    defparam pose_edge_14.GSR = "ENABLED";
    LUT4 pose_edge_I_0_4_lut (.A(pose_edge), .B(next_state_3__N_316), .C(n2700), 
         .D(next_state_3__N_314), .Z(Q2)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B+((D)+!C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/dedff.v(38[15:29])
    defparam pose_edge_I_0_4_lut.init = 16'haa9a;
    LUT4 neg_edge_I_0_16_2_lut (.A(neg_edge), .B(pose_edge), .Z(top_test1_c)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/dedff.v(39[15:35])
    defparam neg_edge_I_0_16_2_lut.init = 16'h9999;
    LUT4 neg_edge_I_0_4_lut (.A(neg_edge), .B(n2655), .C(n2648), .D(next_state_3__N_316), 
         .Z(Q1)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B+(C+(D))))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/dedff.v(37[15:28])
    defparam neg_edge_I_0_4_lut.init = 16'h5556;
    
endmodule
//
// Verilog Description of module clockDivider
//

module clockDivider (clockDivider_clkLock, top_test2_c, VCC_net, clockDivider_clk_4M, 
            GND_net, pll_lock, n1595, clk_N_146) /* synthesis syn_module_defined=1 */ ;
    output clockDivider_clkLock;
    input top_test2_c;
    input VCC_net;
    output clockDivider_clk_4M;
    input GND_net;
    input pll_lock;
    output n1595;
    output clk_N_146;
    
    wire top_test2_c /* synthesis SET_AS_NETWORK=top_test2_c, is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(46[10:20])
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(63[8:27])
    wire clk_N_146 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetgenerator.v(22[12:18])
    wire [7:0]lockCounter;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(28[11:22])
    
    wire pll_lock_N_26, clkOut_N_36, n2116;
    wire [7:0]n37;
    
    wire n2139;
    wire [7:0]counter;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(29[11:18])
    wire [7:0]n37_adj_364;
    wire [7:0]n65;
    
    wire n2115, n2138, n394, n2114, n2455, n2137, n2113, n1522, 
        n2136, n2526, n2453;
    
    FD1P3IX clkLock_25 (.D(VCC_net), .SP(lockCounter[7]), .CD(pll_lock_N_26), 
            .CK(top_test2_c), .Q(clockDivider_clkLock));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(31[8] 52[4])
    defparam clkLock_25.GSR = "ENABLED";
    FD1S3IX clkOut_23 (.D(clkOut_N_36), .CK(top_test2_c), .CD(pll_lock_N_26), 
            .Q(clockDivider_clk_4M));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(31[8] 52[4])
    defparam clkOut_23.GSR = "ENABLED";
    CCU2C lockCounter_373_add_4_9 (.A0(lockCounter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2116), .S0(n37[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_373_add_4_9.INIT0 = 16'haaa0;
    defparam lockCounter_373_add_4_9.INIT1 = 16'h0000;
    defparam lockCounter_373_add_4_9.INJECT1_0 = "NO";
    defparam lockCounter_373_add_4_9.INJECT1_1 = "NO";
    CCU2C counter_372_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2139), .S0(n37_adj_364[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_372_add_4_9.INIT0 = 16'haaa0;
    defparam counter_372_add_4_9.INIT1 = 16'h0000;
    defparam counter_372_add_4_9.INJECT1_0 = "NO";
    defparam counter_372_add_4_9.INJECT1_1 = "NO";
    FD1S3IX lockCounter_373__i0 (.D(n37[0]), .CK(top_test2_c), .CD(pll_lock_N_26), 
            .Q(n65[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_373__i0.GSR = "ENABLED";
    CCU2C lockCounter_373_add_4_7 (.A0(n65[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2115), .COUT(n2116), .S0(n37[5]), .S1(n37[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_373_add_4_7.INIT0 = 16'haaa0;
    defparam lockCounter_373_add_4_7.INIT1 = 16'haaa0;
    defparam lockCounter_373_add_4_7.INJECT1_0 = "NO";
    defparam lockCounter_373_add_4_7.INJECT1_1 = "NO";
    CCU2C counter_372_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2138), .COUT(n2139), .S0(n37_adj_364[5]), 
          .S1(n37_adj_364[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_372_add_4_7.INIT0 = 16'haaa0;
    defparam counter_372_add_4_7.INIT1 = 16'haaa0;
    defparam counter_372_add_4_7.INJECT1_0 = "NO";
    defparam counter_372_add_4_7.INJECT1_1 = "NO";
    FD1S3IX counter_372__i0 (.D(n37_adj_364[0]), .CK(top_test2_c), .CD(n394), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_372__i0.GSR = "ENABLED";
    CCU2C lockCounter_373_add_4_5 (.A0(n65[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2114), .COUT(n2115), .S0(n37[3]), .S1(n37[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_373_add_4_5.INIT0 = 16'haaa0;
    defparam lockCounter_373_add_4_5.INIT1 = 16'haaa0;
    defparam lockCounter_373_add_4_5.INJECT1_0 = "NO";
    defparam lockCounter_373_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_3_lut (.A(counter[4]), .B(counter[7]), .C(counter[3]), .Z(n2455)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut.init = 16'hfefe;
    CCU2C counter_372_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2137), .COUT(n2138), .S0(n37_adj_364[3]), 
          .S1(n37_adj_364[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_372_add_4_5.INIT0 = 16'haaa0;
    defparam counter_372_add_4_5.INIT1 = 16'haaa0;
    defparam counter_372_add_4_5.INJECT1_0 = "NO";
    defparam counter_372_add_4_5.INJECT1_1 = "NO";
    CCU2C lockCounter_373_add_4_3 (.A0(n65[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2113), .COUT(n2114), .S0(n37[1]), .S1(n37[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_373_add_4_3.INIT0 = 16'haaa0;
    defparam lockCounter_373_add_4_3.INIT1 = 16'haaa0;
    defparam lockCounter_373_add_4_3.INJECT1_0 = "NO";
    defparam lockCounter_373_add_4_3.INJECT1_1 = "NO";
    LUT4 i1757_2_lut (.A(n1522), .B(pll_lock), .Z(n394)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i1757_2_lut.init = 16'h7777;
    CCU2C counter_372_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2136), .COUT(n2137), .S0(n37_adj_364[1]), 
          .S1(n37_adj_364[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_372_add_4_3.INIT0 = 16'haaa0;
    defparam counter_372_add_4_3.INIT1 = 16'haaa0;
    defparam counter_372_add_4_3.INJECT1_0 = "NO";
    defparam counter_372_add_4_3.INJECT1_1 = "NO";
    LUT4 i1687_2_lut (.A(counter[1]), .B(counter[0]), .Z(n2526)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1687_2_lut.init = 16'h8888;
    LUT4 pll_lock_I_0_1_lut (.A(pll_lock), .Z(pll_lock_N_26)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(32[9:25])
    defparam pll_lock_I_0_1_lut.init = 16'h5555;
    LUT4 i1_2_lut (.A(counter[5]), .B(counter[6]), .Z(n2453)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_11 (.A(clockDivider_clk_4M), .B(n1522), .Z(clkOut_N_36)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_11.init = 16'h9999;
    FD1S3IX lockCounter_373__i1 (.D(n37[1]), .CK(top_test2_c), .CD(pll_lock_N_26), 
            .Q(n65[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_373__i1.GSR = "ENABLED";
    FD1S3IX lockCounter_373__i2 (.D(n37[2]), .CK(top_test2_c), .CD(pll_lock_N_26), 
            .Q(n65[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_373__i2.GSR = "ENABLED";
    FD1S3IX lockCounter_373__i3 (.D(n37[3]), .CK(top_test2_c), .CD(pll_lock_N_26), 
            .Q(n65[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_373__i3.GSR = "ENABLED";
    FD1S3IX lockCounter_373__i4 (.D(n37[4]), .CK(top_test2_c), .CD(pll_lock_N_26), 
            .Q(n65[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_373__i4.GSR = "ENABLED";
    FD1S3IX lockCounter_373__i5 (.D(n37[5]), .CK(top_test2_c), .CD(pll_lock_N_26), 
            .Q(n65[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_373__i5.GSR = "ENABLED";
    FD1S3IX lockCounter_373__i6 (.D(n37[6]), .CK(top_test2_c), .CD(pll_lock_N_26), 
            .Q(n65[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_373__i6.GSR = "ENABLED";
    FD1S3IX lockCounter_373__i7 (.D(n37[7]), .CK(top_test2_c), .CD(pll_lock_N_26), 
            .Q(lockCounter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_373__i7.GSR = "ENABLED";
    FD1S3IX counter_372__i1 (.D(n37_adj_364[1]), .CK(top_test2_c), .CD(n394), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_372__i1.GSR = "ENABLED";
    FD1S3IX counter_372__i2 (.D(n37_adj_364[2]), .CK(top_test2_c), .CD(n394), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_372__i2.GSR = "ENABLED";
    FD1S3IX counter_372__i3 (.D(n37_adj_364[3]), .CK(top_test2_c), .CD(n394), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_372__i3.GSR = "ENABLED";
    FD1S3IX counter_372__i4 (.D(n37_adj_364[4]), .CK(top_test2_c), .CD(n394), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_372__i4.GSR = "ENABLED";
    FD1S3IX counter_372__i5 (.D(n37_adj_364[5]), .CK(top_test2_c), .CD(n394), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_372__i5.GSR = "ENABLED";
    FD1S3IX counter_372__i6 (.D(n37_adj_364[6]), .CK(top_test2_c), .CD(n394), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_372__i6.GSR = "ENABLED";
    FD1S3IX counter_372__i7 (.D(n37_adj_364[7]), .CK(top_test2_c), .CD(n394), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_372__i7.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n2455), .B(n2526), .C(counter[2]), .D(n2453), 
         .Z(n1522)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_4_lut.init = 16'hffbf;
    LUT4 i885_1_lut (.A(clockDivider_clkLock), .Z(n1595)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(31[8] 52[4])
    defparam i885_1_lut.init = 16'h5555;
    CCU2C counter_372_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2136), .S1(n37_adj_364[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(38[24:38])
    defparam counter_372_add_4_1.INIT0 = 16'h0000;
    defparam counter_372_add_4_1.INIT1 = 16'h555f;
    defparam counter_372_add_4_1.INJECT1_0 = "NO";
    defparam counter_372_add_4_1.INJECT1_1 = "NO";
    CCU2C lockCounter_373_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n65[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2113), .S1(n37[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(46[24:42])
    defparam lockCounter_373_add_4_1.INIT0 = 16'h0000;
    defparam lockCounter_373_add_4_1.INIT1 = 16'h555f;
    defparam lockCounter_373_add_4_1.INJECT1_0 = "NO";
    defparam lockCounter_373_add_4_1.INJECT1_1 = "NO";
    INV i1921 (.A(clockDivider_clk_4M), .Z(clk_N_146));
    
endmodule
