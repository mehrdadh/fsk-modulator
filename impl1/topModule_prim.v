// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.3.144
// Netlist written on Wed May 22 15:18:02 2019
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
    
    wire top_clk_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(8[8:15])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(19[10:20])
    wire top_test0_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(22[10:19])
    wire top_test2_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(24[10:19])
    wire top_test6_c /* synthesis is_clock=1, SET_AS_NETWORK=top_test6_c */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(28[11:20])
    wire clk_N_207 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(9[32:40])
    wire clk_N_427 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(17[11:24])
    wire sclk_N_638 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(61[10:13])
    
    wire GND_net, VCC_net, top_rst_n_c, top_spi_mosi_c, top_spi_miso_c, 
        top_spi_sclk_c, top_spi_cs_c, top_test3_c, top_test4_c, top_test5_c, 
        pll_lock;
    wire [12:0]fskModule_I;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(57[21:32])
    wire [12:0]fskModule_Q;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(58[21:32])
    
    wire IQSerializer_start, spi_mosi, spi_rst, spi_rx_req, spi_st_load_en, 
        spi_st_load_trdy, spi_tx_load_en;
    wire [7:0]spi_tx_data;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(78[19:30])
    wire [7:0]spi_rx_data;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(81[20:31])
    
    wire spi_rx_ready, mem_inf_we;
    wire [7:0]mem_inf_addr;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(96[27:39])
    wire [7:0]mem_inf_dataIn;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(97[27:41])
    wire [7:0]mem_inf_q;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(98[27:36])
    wire [7:0]ble_mem_w_addr;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(101[27:41])
    wire [7:0]ble_mem_data_buff;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(102[27:44])
    wire [7:0]ble_mem_addr_buff;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(103[27:44])
    
    wire ble_mem_w_req, mem_r_req, ble_mem_operation, pktReader_ready;
    wire [7:0]pktReader_mem_addr;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(110[27:45])
    
    wire ble_flag_spi_pkt, ble_flag_spi_data;
    wire [7:0]ble_reg_pkt_size;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(169[11:27])
    wire [7:0]ble_reg_data_count;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(170[11:29])
    
    wire n5154, n5637, n607, n43, n14, n5153, n59, n1, n12, 
        ble_next_state_7__N_66, ble_next_state_7__N_67, ble_next_state_7__N_68, 
        ble_next_state_7__N_69, ble_next_state_7__N_70, ble_flag_spi_data_N_146, 
        mem_r_req_N_135, pktReader_ready_N_140, ble_mem_operation_N_138, 
        n10, mem_next_state_3__N_120, mem_next_state_3__N_121, mem_next_state_3__N_122, 
        mem_next_state_3__N_123, n5547, top_rst_n_N_131;
    wire [3:0]mem_current_state_adj_675;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(39[11:28])
    
    wire n40, n11, n5758, n5633, n2502, firstFlag;
    wire [11:0]sampleCount;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(41[23:34])
    
    wire n8;
    wire [12:0]cosine;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(44[23:29])
    
    wire n5155, n5443, n5757, n1396, n1395, n1394, clk_N_207_enable_13, 
        serial, n28;
    wire [3:0]spi_next_state_3__N_515;
    
    wire spi_st_load_en_N_531, spi_tx_data_7__N_502, n58, n31, n1393, 
        n1392, clk_N_207_enable_64, n1391, n1390, n1389, n1111, 
        cosOut_12__N_425, n37, n803, n61, n6, n685, n839, rrdy_N_623, 
        n34, n2097, n2090, n680, n677, n55, n52, n4, n49, 
        n46, n5480, n2840, n5809, n5436, clk_N_207_enable_36, clk_N_207_enable_57, 
        clk_N_207_enable_50, n5806, n2517, n38, n39, n40_adj_673, 
        n41, n42, n43_adj_674, n44, n45, n5140, n5470, n5641, 
        n5139, n5798, n5156, n6428, n6493, n6492, n5138, n5528, 
        n6488, n5838, n6455, n6485, n5137, n5965, n6484, n5957, 
        n6481, n6829, n5136, n6479, n6478, n5135, n5687, n5435, 
        n6618, clk_N_207_enable_29, n5741;
    
    VHI i2 (.Z(VCC_net));
    INV i5265 (.A(top_test0_c), .Z(sclk_N_638));
    FD1S3AX spi_mosi_111 (.D(top_spi_mosi_c), .CK(serial_clk_c), .Q(spi_mosi));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(136[8] 141[4])
    defparam spi_mosi_111.GSR = "DISABLED";
    FD1S3AX top_spi_miso_112 (.D(n6493), .CK(serial_clk_c), .Q(top_spi_miso_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(136[8] 141[4])
    defparam top_spi_miso_112.GSR = "DISABLED";
    FD1P3AX ble_mem_addr_buff_i0_i0 (.D(ble_reg_data_count[0]), .SP(clk_N_207_enable_64), 
            .CK(clk_N_207), .Q(ble_mem_addr_buff[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_mem_addr_buff_i0_i0.GSR = "DISABLED";
    FD1S3AX ble_flag_spi_data_115 (.D(ble_flag_spi_data_N_146), .CK(clk_N_207), 
            .Q(ble_flag_spi_data));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_flag_spi_data_115.GSR = "ENABLED";
    FD1S3AX pktReader_ready_117 (.D(pktReader_ready_N_140), .CK(clk_N_207), 
            .Q(pktReader_ready));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam pktReader_ready_117.GSR = "ENABLED";
    FD1S3AX ble_mem_operation_118 (.D(ble_mem_operation_N_138), .CK(clk_N_207), 
            .Q(ble_mem_operation));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_mem_operation_118.GSR = "ENABLED";
    FD1P3IX ble_mem_w_addr__i0 (.D(n1396), .SP(clk_N_207_enable_36), .CD(n2090), 
            .CK(clk_N_207), .Q(ble_mem_w_addr[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(346[8] 378[4])
    defparam ble_mem_w_addr__i0.GSR = "DISABLED";
    FD1S3JX mem_inf_we_127 (.D(mem_next_state_3__N_123), .CK(clk_N_207), 
            .PD(mem_next_state_3__N_122), .Q(mem_inf_we));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(346[8] 378[4])
    defparam mem_inf_we_127.GSR = "DISABLED";
    FD1S3AX spi_sclk_109 (.D(top_spi_sclk_c), .CK(serial_clk_c), .Q(top_test0_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(136[8] 141[4])
    defparam spi_sclk_109.GSR = "DISABLED";
    OB top_test3_pad (.I(top_test3_c), .O(top_test3));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(25[10:19])
    FD1P3AX ble_mem_w_req_119 (.D(ble_next_state_7__N_69), .SP(clk_N_207_enable_29), 
            .CK(clk_N_207), .Q(ble_mem_w_req));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_mem_w_req_119.GSR = "DISABLED";
    OB top_test2_pad (.I(top_test2_c), .O(top_test2));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(24[10:19])
    OB top_test1_pad (.I(clk_N_207_enable_29), .O(top_test1));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(23[10:19])
    OB top_test0_pad (.I(top_test0_c), .O(top_test0));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(22[10:19])
    OB LED_pad (.I(clk_N_207_enable_29), .O(LED));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(20[13:16])
    FD1P3AX ble_flag_spi_pkt_114 (.D(n1), .SP(clk_N_207_enable_13), .CK(clk_N_207), 
            .Q(ble_flag_spi_pkt));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_flag_spi_pkt_114.GSR = "ENABLED";
    FSKModulator fskModule_0 (.\fskModule_I[8] (fskModule_I[8]), .clk_N_207(clk_N_207), 
            .n6488(n6488), .\fskModule_I[5] (fskModule_I[5]), .top_test6_c(top_test6_c), 
            .\fskModule_I[4] (fskModule_I[4]), .\fskModule_I[0] (fskModule_I[0]), 
            .firstFlag(firstFlag), .top_test2_c(top_test2_c), .n6455(n6455), 
            .IQSerializer_start(IQSerializer_start), .clk_N_207_enable_29(clk_N_207_enable_29), 
            .sampleCount({sampleCount}), .\fskModule_I[2] (fskModule_I[2]), 
            .\cosine[1] (cosine[1]), .n1111(n1111), .\fskModule_Q[0] (fskModule_Q[0]), 
            .top_test3_c(top_test3_c), .n67({n28, n31, n34, n37, n40, 
            n43, n46, n49, n52, n55, n58, n61}), .n607(n607), 
            .cosOut_12__N_425(cosOut_12__N_425), .\fskModule_I[12] (fskModule_I[12]), 
            .\fskModule_Q[2] (fskModule_Q[2]), .\fskModule_Q[4] (fskModule_Q[4]), 
            .\fskModule_Q[6] (fskModule_Q[6]), .\fskModule_Q[7] (fskModule_Q[7]), 
            .\fskModule_Q[12] (fskModule_Q[12]), .n5528(n5528), .n2097(n2097), 
            .n5838(n5838)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(433[14] 442[2])
    FD1P3AX ble_current_state_FSM_i1 (.D(n5757), .SP(ble_next_state_7__N_69), 
            .CK(top_test2_c), .Q(ble_next_state_7__N_70));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(190[3] 232[10])
    defparam ble_current_state_FSM_i1.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(mem_r_req), .B(mem_next_state_3__N_121), .Z(n5687)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut.init = 16'h4444;
    FD1S3AX spi_cs_110 (.D(top_spi_cs_c), .CK(serial_clk_c), .Q(spi_next_state_3__N_515[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(136[8] 141[4])
    defparam spi_cs_110.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_64 (.A(mem_next_state_3__N_121), .B(ble_mem_w_req), 
         .Z(n839)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(316[3] 342[10])
    defparam i1_2_lut_adj_64.init = 16'h8888;
    GSR GSR_INST (.GSR(clk_N_207_enable_29));
    FD1P3IX mem_inf_dataIn__i0 (.D(ble_mem_data_buff[0]), .SP(clk_N_207_enable_50), 
            .CD(mem_next_state_3__N_120), .CK(clk_N_207), .Q(mem_inf_dataIn[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(346[8] 378[4])
    defparam mem_inf_dataIn__i0.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_65 (.A(spi_rx_data[6]), .B(spi_rx_data[0]), .Z(n5637)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_65.init = 16'heeee;
    FD1P3AX ble_reg_pkt_size_i0_i0 (.D(spi_rx_data[0]), .SP(clk_N_207_enable_57), 
            .CK(clk_N_207), .Q(ble_reg_pkt_size[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_reg_pkt_size_i0_i0.GSR = "DISABLED";
    OB top_test4_pad (.I(top_test4_c), .O(top_test4));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(26[10:19])
    FD1P3AX ble_mem_data_buff_i0_i0 (.D(spi_rx_data[0]), .SP(clk_N_207_enable_64), 
            .CK(clk_N_207), .Q(ble_mem_data_buff[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_mem_data_buff_i0_i0.GSR = "DISABLED";
    LUT4 ble_mem_w_addr_7__I_0_i1_3_lut (.A(ble_mem_w_addr[0]), .B(pktReader_mem_addr[0]), 
         .C(ble_mem_operation), .Z(mem_inf_addr[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(133[23:80])
    defparam ble_mem_w_addr_7__I_0_i1_3_lut.init = 16'hcaca;
    LUT4 i4548_3_lut (.A(ble_next_state_7__N_70), .B(n59), .Z(n5757)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i4548_3_lut.init = 16'hbbbb;
    OB serial_clk_pad (.I(serial_clk_c), .O(serial_clk));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(19[10:20])
    OB serial_iq_pad (.I(serial), .O(serial_iq));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(18[10:19])
    CCU2C ble_reg_data_count_943_add_4_7 (.A0(ble_reg_data_count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(ble_reg_data_count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n5155), .COUT(n5156), .S0(n40_adj_673), 
          .S1(n39));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(278[27:52])
    defparam ble_reg_data_count_943_add_4_7.INIT0 = 16'haaa0;
    defparam ble_reg_data_count_943_add_4_7.INIT1 = 16'haaa0;
    defparam ble_reg_data_count_943_add_4_7.INJECT1_0 = "NO";
    defparam ble_reg_data_count_943_add_4_7.INJECT1_1 = "NO";
    FD1P3AX mem_r_req_120 (.D(mem_r_req_N_135), .SP(clk_N_207_enable_29), 
            .CK(clk_N_207), .Q(mem_r_req));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam mem_r_req_120.GSR = "DISABLED";
    OB osc_en_pad (.I(VCC_net), .O(osc_en));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(17[10:16])
    OB top_spi_miso_pad (.I(top_spi_miso_c), .O(top_spi_miso));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(13[13:25])
    FD1S3AX ble_current_state_FSM_i5 (.D(n5480), .CK(top_test2_c), .Q(ble_next_state_7__N_66));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(190[3] 232[10])
    defparam ble_current_state_FSM_i5.GSR = "ENABLED";
    FD1P3IX ble_mem_w_addr__i7 (.D(n1389), .SP(clk_N_207_enable_36), .CD(n2090), 
            .CK(clk_N_207), .Q(ble_mem_w_addr[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(346[8] 378[4])
    defparam ble_mem_w_addr__i7.GSR = "DISABLED";
    FD1P3IX ble_mem_w_addr__i6 (.D(n1390), .SP(clk_N_207_enable_36), .CD(n2090), 
            .CK(clk_N_207), .Q(ble_mem_w_addr[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(346[8] 378[4])
    defparam ble_mem_w_addr__i6.GSR = "DISABLED";
    FD1P3IX ble_mem_w_addr__i5 (.D(n1391), .SP(clk_N_207_enable_36), .CD(n2090), 
            .CK(clk_N_207), .Q(ble_mem_w_addr[5]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(346[8] 378[4])
    defparam ble_mem_w_addr__i5.GSR = "DISABLED";
    FD1P3IX ble_mem_w_addr__i4 (.D(n1392), .SP(clk_N_207_enable_36), .CD(n2090), 
            .CK(clk_N_207), .Q(ble_mem_w_addr[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(346[8] 378[4])
    defparam ble_mem_w_addr__i4.GSR = "DISABLED";
    FD1P3IX ble_mem_w_addr__i3 (.D(n1393), .SP(clk_N_207_enable_36), .CD(n2090), 
            .CK(clk_N_207), .Q(ble_mem_w_addr[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(346[8] 378[4])
    defparam ble_mem_w_addr__i3.GSR = "DISABLED";
    FD1P3IX ble_mem_w_addr__i2 (.D(n1394), .SP(clk_N_207_enable_36), .CD(n2090), 
            .CK(clk_N_207), .Q(ble_mem_w_addr[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(346[8] 378[4])
    defparam ble_mem_w_addr__i2.GSR = "DISABLED";
    FD1P3IX ble_mem_w_addr__i1 (.D(n1395), .SP(clk_N_207_enable_36), .CD(n2090), 
            .CK(clk_N_207), .Q(ble_mem_w_addr[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(346[8] 378[4])
    defparam ble_mem_w_addr__i1.GSR = "DISABLED";
    LUT4 i306_2_lut (.A(n59), .B(ble_next_state_7__N_69), .Z(n803)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(190[3] 232[10])
    defparam i306_2_lut.init = 16'h8888;
    FD1P3AX ble_mem_addr_buff_i0_i7 (.D(ble_reg_data_count[7]), .SP(clk_N_207_enable_64), 
            .CK(clk_N_207), .Q(ble_mem_addr_buff[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_mem_addr_buff_i0_i7.GSR = "DISABLED";
    FD1P3AX ble_mem_addr_buff_i0_i6 (.D(ble_reg_data_count[6]), .SP(clk_N_207_enable_64), 
            .CK(clk_N_207), .Q(ble_mem_addr_buff[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_mem_addr_buff_i0_i6.GSR = "DISABLED";
    FD1P3AX ble_mem_addr_buff_i0_i5 (.D(ble_reg_data_count[5]), .SP(clk_N_207_enable_64), 
            .CK(clk_N_207), .Q(ble_mem_addr_buff[5]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_mem_addr_buff_i0_i5.GSR = "DISABLED";
    FD1P3AX ble_mem_addr_buff_i0_i4 (.D(ble_reg_data_count[4]), .SP(clk_N_207_enable_64), 
            .CK(clk_N_207), .Q(ble_mem_addr_buff[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_mem_addr_buff_i0_i4.GSR = "DISABLED";
    FD1P3AX ble_mem_addr_buff_i0_i3 (.D(ble_reg_data_count[3]), .SP(clk_N_207_enable_64), 
            .CK(clk_N_207), .Q(ble_mem_addr_buff[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_mem_addr_buff_i0_i3.GSR = "DISABLED";
    FD1P3AX ble_mem_addr_buff_i0_i2 (.D(ble_reg_data_count[2]), .SP(clk_N_207_enable_64), 
            .CK(clk_N_207), .Q(ble_mem_addr_buff[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_mem_addr_buff_i0_i2.GSR = "DISABLED";
    FD1P3AX ble_mem_addr_buff_i0_i1 (.D(ble_reg_data_count[1]), .SP(clk_N_207_enable_64), 
            .CK(clk_N_207), .Q(ble_mem_addr_buff[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_mem_addr_buff_i0_i1.GSR = "DISABLED";
    FD1S3AX ble_current_state_FSM_i4 (.D(n5436), .CK(top_test2_c), .Q(ble_next_state_7__N_67));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(190[3] 232[10])
    defparam ble_current_state_FSM_i4.GSR = "ENABLED";
    FD1S3AX ble_current_state_FSM_i3 (.D(n2840), .CK(top_test2_c), .Q(ble_next_state_7__N_68));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(190[3] 232[10])
    defparam ble_current_state_FSM_i3.GSR = "ENABLED";
    FD1S3AX ble_current_state_FSM_i2 (.D(n5435), .CK(top_test2_c), .Q(ble_next_state_7__N_69));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(190[3] 232[10])
    defparam ble_current_state_FSM_i2.GSR = "ENABLED";
    FD1P3IX ble_reg_data_count_943__i0 (.D(n45), .SP(ble_next_state_7__N_69), 
            .CD(mem_next_state_3__N_120), .CK(clk_N_207), .Q(ble_reg_data_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(278[27:52])
    defparam ble_reg_data_count_943__i0.GSR = "ENABLED";
    LUT4 i3418_2_lut (.A(ble_mem_addr_buff[7]), .B(mem_next_state_3__N_122), 
         .Z(n1389)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(347[2] 377[9])
    defparam i3418_2_lut.init = 16'h8888;
    FD1S3AY mem_current_state_FSM_i5 (.D(n6618), .CK(top_test2_c), .Q(mem_next_state_3__N_120));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(316[3] 342[10])
    defparam mem_current_state_FSM_i5.GSR = "ENABLED";
    FD1S3AX mem_current_state_FSM_i4 (.D(n5547), .CK(top_test2_c), .Q(mem_next_state_3__N_121));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(316[3] 342[10])
    defparam mem_current_state_FSM_i4.GSR = "ENABLED";
    FD1S3AX mem_current_state_FSM_i3 (.D(n839), .CK(top_test2_c), .Q(mem_next_state_3__N_122));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(316[3] 342[10])
    defparam mem_current_state_FSM_i3.GSR = "ENABLED";
    FD1S3AX mem_current_state_FSM_i2 (.D(mem_next_state_3__N_122), .CK(top_test2_c), 
            .Q(mem_next_state_3__N_123));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(316[3] 342[10])
    defparam mem_current_state_FSM_i2.GSR = "ENABLED";
    LUT4 i3417_2_lut (.A(ble_mem_addr_buff[6]), .B(mem_next_state_3__N_122), 
         .Z(n1390)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(347[2] 377[9])
    defparam i3417_2_lut.init = 16'h8888;
    LUT4 i3416_2_lut (.A(ble_mem_addr_buff[5]), .B(mem_next_state_3__N_122), 
         .Z(n1391)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(347[2] 377[9])
    defparam i3416_2_lut.init = 16'h8888;
    LUT4 LessThan_20_i4_4_lut (.A(ble_reg_pkt_size[0]), .B(ble_reg_pkt_size[1]), 
         .C(ble_reg_data_count[1]), .D(ble_reg_data_count[0]), .Z(n4)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(219[9:46])
    defparam LessThan_20_i4_4_lut.init = 16'h0c8e;
    OB top_test5_pad (.I(top_test5_c), .O(top_test5));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(27[11:20])
    OB top_test6_pad (.I(top_test6_c), .O(top_test6));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(28[11:20])
    IB top_clk_pad (.I(top_clk), .O(top_clk_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(8[8:15])
    IB top_rst_n_pad (.I(top_rst_n), .O(top_rst_n_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(9[8:17])
    IB top_spi_mosi_pad (.I(top_spi_mosi), .O(top_spi_mosi_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(12[9:21])
    IB top_spi_sclk_pad (.I(top_spi_sclk), .O(top_spi_sclk_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(14[9:21])
    IB top_spi_cs_pad (.I(top_spi_cs), .O(top_spi_cs_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(15[9:19])
    FD1P3IX mem_inf_dataIn__i1 (.D(ble_mem_data_buff[1]), .SP(clk_N_207_enable_50), 
            .CD(mem_next_state_3__N_120), .CK(clk_N_207), .Q(mem_inf_dataIn[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(346[8] 378[4])
    defparam mem_inf_dataIn__i1.GSR = "DISABLED";
    FD1P3IX mem_inf_dataIn__i2 (.D(ble_mem_data_buff[2]), .SP(clk_N_207_enable_50), 
            .CD(mem_next_state_3__N_120), .CK(clk_N_207), .Q(mem_inf_dataIn[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(346[8] 378[4])
    defparam mem_inf_dataIn__i2.GSR = "DISABLED";
    FD1P3IX mem_inf_dataIn__i3 (.D(ble_mem_data_buff[3]), .SP(clk_N_207_enable_50), 
            .CD(mem_next_state_3__N_120), .CK(clk_N_207), .Q(mem_inf_dataIn[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(346[8] 378[4])
    defparam mem_inf_dataIn__i3.GSR = "DISABLED";
    FD1P3IX mem_inf_dataIn__i4 (.D(ble_mem_data_buff[4]), .SP(clk_N_207_enable_50), 
            .CD(mem_next_state_3__N_120), .CK(clk_N_207), .Q(mem_inf_dataIn[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(346[8] 378[4])
    defparam mem_inf_dataIn__i4.GSR = "DISABLED";
    FD1P3IX mem_inf_dataIn__i5 (.D(ble_mem_data_buff[5]), .SP(clk_N_207_enable_50), 
            .CD(mem_next_state_3__N_120), .CK(clk_N_207), .Q(mem_inf_dataIn[5]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(346[8] 378[4])
    defparam mem_inf_dataIn__i5.GSR = "DISABLED";
    FD1P3IX mem_inf_dataIn__i6 (.D(ble_mem_data_buff[6]), .SP(clk_N_207_enable_50), 
            .CD(mem_next_state_3__N_120), .CK(clk_N_207), .Q(mem_inf_dataIn[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(346[8] 378[4])
    defparam mem_inf_dataIn__i6.GSR = "DISABLED";
    FD1P3IX mem_inf_dataIn__i7 (.D(ble_mem_data_buff[7]), .SP(clk_N_207_enable_50), 
            .CD(mem_next_state_3__N_120), .CK(clk_N_207), .Q(mem_inf_dataIn[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(346[8] 378[4])
    defparam mem_inf_dataIn__i7.GSR = "DISABLED";
    FD1P3AX ble_reg_pkt_size_i0_i1 (.D(spi_rx_data[1]), .SP(clk_N_207_enable_57), 
            .CK(clk_N_207), .Q(ble_reg_pkt_size[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_reg_pkt_size_i0_i1.GSR = "DISABLED";
    FD1P3AX ble_reg_pkt_size_i0_i2 (.D(spi_rx_data[2]), .SP(clk_N_207_enable_57), 
            .CK(clk_N_207), .Q(ble_reg_pkt_size[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_reg_pkt_size_i0_i2.GSR = "DISABLED";
    FD1P3AX ble_reg_pkt_size_i0_i3 (.D(spi_rx_data[3]), .SP(clk_N_207_enable_57), 
            .CK(clk_N_207), .Q(ble_reg_pkt_size[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_reg_pkt_size_i0_i3.GSR = "DISABLED";
    FD1P3AX ble_reg_pkt_size_i0_i4 (.D(spi_rx_data[4]), .SP(clk_N_207_enable_57), 
            .CK(clk_N_207), .Q(ble_reg_pkt_size[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_reg_pkt_size_i0_i4.GSR = "DISABLED";
    FD1P3AX ble_reg_pkt_size_i0_i5 (.D(spi_rx_data[5]), .SP(clk_N_207_enable_57), 
            .CK(clk_N_207), .Q(ble_reg_pkt_size[5]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_reg_pkt_size_i0_i5.GSR = "DISABLED";
    FD1P3AX ble_reg_pkt_size_i0_i6 (.D(spi_rx_data[6]), .SP(clk_N_207_enable_57), 
            .CK(clk_N_207), .Q(ble_reg_pkt_size[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_reg_pkt_size_i0_i6.GSR = "DISABLED";
    FD1P3AX ble_reg_pkt_size_i0_i7 (.D(spi_rx_data[7]), .SP(clk_N_207_enable_57), 
            .CK(clk_N_207), .Q(ble_reg_pkt_size[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_reg_pkt_size_i0_i7.GSR = "DISABLED";
    FD1P3AX ble_mem_data_buff_i0_i1 (.D(spi_rx_data[1]), .SP(clk_N_207_enable_64), 
            .CK(clk_N_207), .Q(ble_mem_data_buff[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_mem_data_buff_i0_i1.GSR = "DISABLED";
    FD1P3AX ble_mem_data_buff_i0_i2 (.D(spi_rx_data[2]), .SP(clk_N_207_enable_64), 
            .CK(clk_N_207), .Q(ble_mem_data_buff[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_mem_data_buff_i0_i2.GSR = "DISABLED";
    FD1P3AX ble_mem_data_buff_i0_i3 (.D(spi_rx_data[3]), .SP(clk_N_207_enable_64), 
            .CK(clk_N_207), .Q(ble_mem_data_buff[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_mem_data_buff_i0_i3.GSR = "DISABLED";
    FD1P3AX ble_mem_data_buff_i0_i4 (.D(spi_rx_data[4]), .SP(clk_N_207_enable_64), 
            .CK(clk_N_207), .Q(ble_mem_data_buff[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_mem_data_buff_i0_i4.GSR = "DISABLED";
    FD1P3AX ble_mem_data_buff_i0_i5 (.D(spi_rx_data[5]), .SP(clk_N_207_enable_64), 
            .CK(clk_N_207), .Q(ble_mem_data_buff[5]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_mem_data_buff_i0_i5.GSR = "DISABLED";
    FD1P3AX ble_mem_data_buff_i0_i6 (.D(spi_rx_data[6]), .SP(clk_N_207_enable_64), 
            .CK(clk_N_207), .Q(ble_mem_data_buff[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_mem_data_buff_i0_i6.GSR = "DISABLED";
    FD1P3AX ble_mem_data_buff_i0_i7 (.D(spi_rx_data[7]), .SP(clk_N_207_enable_64), 
            .CK(clk_N_207), .Q(ble_mem_data_buff[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(244[11] 290[5])
    defparam ble_mem_data_buff_i0_i7.GSR = "DISABLED";
    FD1P3IX ble_reg_data_count_943__i1 (.D(n44), .SP(ble_next_state_7__N_69), 
            .CD(mem_next_state_3__N_120), .CK(clk_N_207), .Q(ble_reg_data_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(278[27:52])
    defparam ble_reg_data_count_943__i1.GSR = "ENABLED";
    FD1P3IX ble_reg_data_count_943__i2 (.D(n43_adj_674), .SP(ble_next_state_7__N_69), 
            .CD(mem_next_state_3__N_120), .CK(clk_N_207), .Q(ble_reg_data_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(278[27:52])
    defparam ble_reg_data_count_943__i2.GSR = "ENABLED";
    FD1P3IX ble_reg_data_count_943__i3 (.D(n42), .SP(ble_next_state_7__N_69), 
            .CD(mem_next_state_3__N_120), .CK(clk_N_207), .Q(ble_reg_data_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(278[27:52])
    defparam ble_reg_data_count_943__i3.GSR = "ENABLED";
    FD1P3IX ble_reg_data_count_943__i4 (.D(n41), .SP(ble_next_state_7__N_69), 
            .CD(mem_next_state_3__N_120), .CK(clk_N_207), .Q(ble_reg_data_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(278[27:52])
    defparam ble_reg_data_count_943__i4.GSR = "ENABLED";
    FD1P3IX ble_reg_data_count_943__i5 (.D(n40_adj_673), .SP(ble_next_state_7__N_69), 
            .CD(mem_next_state_3__N_120), .CK(clk_N_207), .Q(ble_reg_data_count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(278[27:52])
    defparam ble_reg_data_count_943__i5.GSR = "ENABLED";
    FD1P3IX ble_reg_data_count_943__i6 (.D(n39), .SP(ble_next_state_7__N_69), 
            .CD(mem_next_state_3__N_120), .CK(clk_N_207), .Q(ble_reg_data_count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(278[27:52])
    defparam ble_reg_data_count_943__i6.GSR = "ENABLED";
    FD1P3IX ble_reg_data_count_943__i7 (.D(n38), .SP(ble_next_state_7__N_69), 
            .CD(mem_next_state_3__N_120), .CK(clk_N_207), .Q(ble_reg_data_count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(278[27:52])
    defparam ble_reg_data_count_943__i7.GSR = "ENABLED";
    CCU2C ble_reg_data_count_943_add_4_9 (.A0(ble_reg_data_count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5156), .S0(n38));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(278[27:52])
    defparam ble_reg_data_count_943_add_4_9.INIT0 = 16'haaa0;
    defparam ble_reg_data_count_943_add_4_9.INIT1 = 16'h0000;
    defparam ble_reg_data_count_943_add_4_9.INJECT1_0 = "NO";
    defparam ble_reg_data_count_943_add_4_9.INJECT1_1 = "NO";
    LUT4 i3415_2_lut (.A(ble_mem_addr_buff[4]), .B(mem_next_state_3__N_122), 
         .Z(n1392)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(347[2] 377[9])
    defparam i3415_2_lut.init = 16'h8888;
    LUT4 i3414_2_lut (.A(ble_mem_addr_buff[3]), .B(mem_next_state_3__N_122), 
         .Z(n1393)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(347[2] 377[9])
    defparam i3414_2_lut.init = 16'h8888;
    LUT4 i4646_4_lut_4_lut (.A(n6481), .B(n5806), .C(n12), .D(n4), .Z(n14)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(219[9:46])
    defparam i4646_4_lut_4_lut.init = 16'hf4b0;
    PFUMX LessThan_20_i16 (.BLUT(n8), .ALUT(n14), .C0(n5809), .Z(n59));
    CCU2C ble_reg_data_count_943_add_4_3 (.A0(ble_reg_data_count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(ble_reg_data_count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n5153), .COUT(n5154), .S0(n44), 
          .S1(n43_adj_674));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(278[27:52])
    defparam ble_reg_data_count_943_add_4_3.INIT0 = 16'haaa0;
    defparam ble_reg_data_count_943_add_4_3.INIT1 = 16'haaa0;
    defparam ble_reg_data_count_943_add_4_3.INJECT1_0 = "NO";
    defparam ble_reg_data_count_943_add_4_3.INJECT1_1 = "NO";
    LUT4 i4689_2_lut_rep_87 (.A(mem_next_state_3__N_121), .B(mem_next_state_3__N_123), 
         .Z(clk_N_207_enable_36)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i4689_2_lut_rep_87.init = 16'h1111;
    LUT4 i1_2_lut_3_lut (.A(mem_next_state_3__N_121), .B(mem_next_state_3__N_123), 
         .C(mem_next_state_3__N_120), .Z(n2090)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 reduce_nor_957_i1_2_lut (.A(mem_next_state_3__N_122), .B(mem_next_state_3__N_120), 
         .Z(clk_N_207_enable_50)) /* synthesis lut_function=(A+(B)) */ ;
    defparam reduce_nor_957_i1_2_lut.init = 16'heeee;
    LUT4 i4684_4_lut (.A(n6481), .B(n6479), .C(n6478), .D(n5798), .Z(n5809)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(219[9:46])
    defparam i4684_4_lut.init = 16'hfffe;
    LUT4 i4588_4_lut (.A(n6485), .B(n6484), .C(ble_reg_data_count[2]), 
         .D(ble_reg_pkt_size[2]), .Z(n5798)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(219[9:46])
    defparam i4588_4_lut.init = 16'h1001;
    LUT4 ble_mem_w_addr_7__I_0_i8_3_lut (.A(ble_mem_w_addr[7]), .B(pktReader_mem_addr[7]), 
         .C(ble_mem_operation), .Z(mem_inf_addr[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(133[23:80])
    defparam ble_mem_w_addr_7__I_0_i8_3_lut.init = 16'hcaca;
    LUT4 i4549_3_lut (.A(mem_current_state_adj_675[2]), .B(n11), .Z(n5758)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i4549_3_lut.init = 16'hbbbb;
    LUT4 ble_mem_w_addr_7__I_0_i7_3_lut (.A(ble_mem_w_addr[6]), .B(pktReader_mem_addr[6]), 
         .C(ble_mem_operation), .Z(mem_inf_addr[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(133[23:80])
    defparam ble_mem_w_addr_7__I_0_i7_3_lut.init = 16'hcaca;
    LUT4 ble_mem_w_addr_7__I_0_i6_3_lut (.A(ble_mem_w_addr[5]), .B(pktReader_mem_addr[5]), 
         .C(ble_mem_operation), .Z(mem_inf_addr[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(133[23:80])
    defparam ble_mem_w_addr_7__I_0_i6_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut (.A(mem_next_state_3__N_120), .B(ble_next_state_7__N_68), 
         .C(ble_flag_spi_data), .Z(ble_flag_spi_data_N_146)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(300[11:25])
    defparam i1_3_lut.init = 16'hdcdc;
    CCU2C _add_1_1209_add_4_13 (.A0(sampleCount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5140), .S0(n28));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_1209_add_4_13.INIT0 = 16'haaa0;
    defparam _add_1_1209_add_4_13.INIT1 = 16'h0000;
    defparam _add_1_1209_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_1209_add_4_13.INJECT1_1 = "NO";
    LUT4 i3413_2_lut (.A(ble_mem_addr_buff[2]), .B(mem_next_state_3__N_122), 
         .Z(n1394)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(347[2] 377[9])
    defparam i3413_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_adj_66 (.A(ble_next_state_7__N_70), .B(mem_next_state_3__N_120), 
         .C(pktReader_ready), .Z(pktReader_ready_N_140)) /* synthesis lut_function=(A+!(B+!(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(190[3] 232[10])
    defparam i1_3_lut_adj_66.init = 16'hbaba;
    LUT4 i1_3_lut_adj_67 (.A(mem_next_state_3__N_120), .B(ble_next_state_7__N_70), 
         .C(ble_mem_operation), .Z(ble_mem_operation_N_138)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(300[11:25])
    defparam i1_3_lut_adj_67.init = 16'hdcdc;
    LUT4 i1_2_lut_3_lut_4_lut (.A(ble_next_state_7__N_66), .B(spi_rx_ready), 
         .C(ble_flag_spi_data), .D(ble_flag_spi_pkt), .Z(n5435)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(190[3] 232[10])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_68 (.A(ble_next_state_7__N_66), .B(spi_rx_ready), 
         .C(ble_flag_spi_data), .D(ble_flag_spi_pkt), .Z(n5436)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(190[3] 232[10])
    defparam i1_2_lut_3_lut_4_lut_adj_68.init = 16'h0008;
    LUT4 i3369_2_lut (.A(ble_mem_addr_buff[0]), .B(mem_next_state_3__N_122), 
         .Z(n1396)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(347[2] 377[9])
    defparam i3369_2_lut.init = 16'hbbbb;
    spi_ctrl spi_ctrl_0 (.clk_N_207_enable_29(clk_N_207_enable_29), .spi_tx_data_7__N_502(spi_tx_data_7__N_502), 
            .spi_rx_data({spi_rx_data}), .spi_tx_data({spi_tx_data}), .spi_rst(spi_rst), 
            .n5470(n5470), .rrdy_N_623(rrdy_N_623), .n685(n685), .n677(n677), 
            .top_test3_c(top_test3_c), .firstFlag(firstFlag), .n5838(n5838), 
            .n6829(n6829), .n5957(n5957), .spi_st_load_en(spi_st_load_en), 
            .mem_next_state_3__N_120(mem_next_state_3__N_120), .spi_st_load_trdy(spi_st_load_trdy), 
            .n5633(n5633), .\spi_next_state_3__N_515[3] (spi_next_state_3__N_515[3]), 
            .n680(n680), .spi_st_load_en_N_531(spi_st_load_en_N_531), .top_test2_c(top_test2_c), 
            .n6492(n6492), .n2502(n2502), .spi_rx_req(spi_rx_req), .n5965(n5965), 
            .spi_rx_ready(spi_rx_ready), .spi_tx_load_en(spi_tx_load_en), 
            .n6428(n6428)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(454[10] 472[2])
    LUT4 i1_4_lut (.A(ble_next_state_7__N_70), .B(ble_next_state_7__N_69), 
         .C(mem_r_req), .D(n5443), .Z(mem_r_req_N_135)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(173[11:25])
    defparam i1_4_lut.init = 16'hfaea;
    LUT4 i1_2_lut_adj_69 (.A(ble_next_state_7__N_68), .B(ble_next_state_7__N_67), 
         .Z(n5443)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(190[3] 232[10])
    defparam i1_2_lut_adj_69.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_70 (.A(ble_next_state_7__N_66), .B(spi_rx_ready), 
         .C(ble_flag_spi_pkt), .Z(n2840)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(190[3] 232[10])
    defparam i1_2_lut_3_lut_adj_70.init = 16'h8080;
    spi spi_0 (.\spi_next_state_3__N_515[3] (spi_next_state_3__N_515[3]), 
        .spi_rst(spi_rst), .spi_tx_load_en(spi_tx_load_en), .spi_tx_data({spi_tx_data}), 
        .sclk_N_638(sclk_N_638), .top_test0_c(top_test0_c), .spi_mosi(spi_mosi), 
        .VCC_net(VCC_net), .rrdy_N_623(rrdy_N_623), .n6618(n6618), .n5470(n5470), 
        .spi_rx_data({spi_rx_data}), .n685(n685), .n5633(n5633), .n6492(n6492), 
        .n677(n677), .spi_st_load_en(spi_st_load_en), .spi_st_load_trdy(spi_st_load_trdy), 
        .n680(n680), .n2502(n2502), .n6493(n6493), .spi_rx_req(spi_rx_req));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(474[5] 494[2])
    LUT4 top_rst_n_I_0_1_lut (.A(top_rst_n_c), .Z(top_rst_n_N_131)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(388[8:18])
    defparam top_rst_n_I_0_1_lut.init = 16'h5555;
    LUT4 LessThan_20_i11_2_lut_rep_101 (.A(ble_reg_data_count[5]), .B(ble_reg_pkt_size[5]), 
         .Z(n6478)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(219[9:46])
    defparam LessThan_20_i11_2_lut_rep_101.init = 16'h6666;
    CCU2C ble_reg_data_count_943_add_4_5 (.A0(ble_reg_data_count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(ble_reg_data_count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n5154), .COUT(n5155), .S0(n42), 
          .S1(n41));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(278[27:52])
    defparam ble_reg_data_count_943_add_4_5.INIT0 = 16'haaa0;
    defparam ble_reg_data_count_943_add_4_5.INIT1 = 16'haaa0;
    defparam ble_reg_data_count_943_add_4_5.INJECT1_0 = "NO";
    defparam ble_reg_data_count_943_add_4_5.INJECT1_1 = "NO";
    CCU2C _add_1_1209_add_4_11 (.A0(sampleCount[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5139), .COUT(n5140), .S0(n34), .S1(n31));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_1209_add_4_11.INIT0 = 16'haaa0;
    defparam _add_1_1209_add_4_11.INIT1 = 16'haaa0;
    defparam _add_1_1209_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_1209_add_4_11.INJECT1_1 = "NO";
    LUT4 LessThan_20_i13_2_lut_rep_102 (.A(ble_reg_data_count[6]), .B(ble_reg_pkt_size[6]), 
         .Z(n6479)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(219[9:46])
    defparam LessThan_20_i13_2_lut_rep_102.init = 16'h6666;
    LUT4 ble_mem_w_addr_7__I_0_i5_3_lut (.A(ble_mem_w_addr[4]), .B(pktReader_mem_addr[4]), 
         .C(ble_mem_operation), .Z(mem_inf_addr[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(133[23:80])
    defparam ble_mem_w_addr_7__I_0_i5_3_lut.init = 16'hcaca;
    LUT4 i4596_2_lut_3_lut_4_lut (.A(ble_reg_data_count[6]), .B(ble_reg_pkt_size[6]), 
         .C(ble_reg_pkt_size[5]), .D(ble_reg_data_count[5]), .Z(n5806)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(219[9:46])
    defparam i4596_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_20_i10_3_lut_3_lut (.A(ble_reg_data_count[6]), .B(ble_reg_pkt_size[6]), 
         .C(ble_reg_pkt_size[5]), .Z(n10)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(219[9:46])
    defparam LessThan_20_i10_3_lut_3_lut.init = 16'hd4d4;
    CCU2C _add_1_1209_add_4_9 (.A0(sampleCount[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5138), .COUT(n5139), .S0(n40), .S1(n37));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_1209_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_1209_add_4_9.INIT1 = 16'haaa0;
    defparam _add_1_1209_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_1209_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_1209_add_4_7 (.A0(sampleCount[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5137), .COUT(n5138), .S0(n46), .S1(n43));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_1209_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_1209_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_1209_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_1209_add_4_7.INJECT1_1 = "NO";
    LUT4 LessThan_20_i15_2_lut_rep_104 (.A(ble_reg_data_count[7]), .B(ble_reg_pkt_size[7]), 
         .Z(n6481)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(219[9:46])
    defparam LessThan_20_i15_2_lut_rep_104.init = 16'h6666;
    LUT4 LessThan_20_i12_3_lut_3_lut (.A(ble_reg_data_count[7]), .B(ble_reg_pkt_size[7]), 
         .C(n10), .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(219[9:46])
    defparam LessThan_20_i12_3_lut_3_lut.init = 16'hd4d4;
    CCU2C _add_1_1209_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sampleCount[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n5135), .S1(n61));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_1209_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_1209_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_1209_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_1209_add_4_1.INJECT1_1 = "NO";
    CCU2C _add_1_1209_add_4_5 (.A0(sampleCount[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5136), .COUT(n5137), .S0(n52), .S1(n49));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_1209_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_1209_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_1209_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_1209_add_4_5.INJECT1_1 = "NO";
    LUT4 ble_mem_w_addr_7__I_0_i4_3_lut (.A(ble_mem_w_addr[3]), .B(pktReader_mem_addr[3]), 
         .C(ble_mem_operation), .Z(mem_inf_addr[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(133[23:80])
    defparam ble_mem_w_addr_7__I_0_i4_3_lut.init = 16'hcaca;
    LUT4 ble_mem_w_addr_7__I_0_i3_3_lut (.A(ble_mem_w_addr[2]), .B(pktReader_mem_addr[2]), 
         .C(ble_mem_operation), .Z(mem_inf_addr[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(133[23:80])
    defparam ble_mem_w_addr_7__I_0_i3_3_lut.init = 16'hcaca;
    CCU2C _add_1_1209_add_4_3 (.A0(sampleCount[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5135), .COUT(n5136), .S0(n58), .S1(n55));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_1209_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_1209_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_1209_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_1209_add_4_3.INJECT1_1 = "NO";
    CCU2C ble_reg_data_count_943_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ble_reg_data_count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n5153), .S1(n45));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(278[27:52])
    defparam ble_reg_data_count_943_add_4_1.INIT0 = 16'h0000;
    defparam ble_reg_data_count_943_add_4_1.INIT1 = 16'h555f;
    defparam ble_reg_data_count_943_add_4_1.INJECT1_0 = "NO";
    defparam ble_reg_data_count_943_add_4_1.INJECT1_1 = "NO";
    LUT4 i4692_3_lut (.A(ble_next_state_7__N_70), .B(ble_next_state_7__N_69), 
         .C(ble_next_state_7__N_66), .Z(clk_N_207_enable_13)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i4692_3_lut.init = 16'h0101;
    LUT4 i1_4_lut_adj_71 (.A(ble_next_state_7__N_67), .B(n5741), .C(ble_flag_spi_pkt), 
         .D(n5641), .Z(n1)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(81[20:31])
    defparam i1_4_lut_adj_71.init = 16'ha0a8;
    LUT4 LessThan_20_i7_2_lut_rep_107 (.A(ble_reg_data_count[3]), .B(ble_reg_pkt_size[3]), 
         .Z(n6484)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(219[9:46])
    defparam LessThan_20_i7_2_lut_rep_107.init = 16'h6666;
    LUT4 LessThan_20_i6_3_lut_3_lut (.A(ble_reg_data_count[3]), .B(ble_reg_pkt_size[3]), 
         .C(ble_reg_pkt_size[2]), .Z(n6)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(219[9:46])
    defparam LessThan_20_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i4534_3_lut (.A(spi_rx_data[5]), .B(spi_rx_data[3]), .C(spi_rx_data[7]), 
         .Z(n5741)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i4534_3_lut.init = 16'h8080;
    ble_packet_mem mem_inf_q_7__I_0 (.top_test2_c(top_test2_c), .VCC_net(VCC_net), 
            .n6455(n6455), .mem_inf_we(mem_inf_we), .mem_inf_addr({mem_inf_addr}), 
            .mem_inf_dataIn({mem_inf_dataIn}), .mem_inf_q({mem_inf_q}), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(496[16] 504[2])
    LUT4 LessThan_20_i9_2_lut_rep_108 (.A(ble_reg_data_count[4]), .B(ble_reg_pkt_size[4]), 
         .Z(n6485)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(219[9:46])
    defparam LessThan_20_i9_2_lut_rep_108.init = 16'h6666;
    packetReader packetReader_0 (.pktReader_mem_addr({pktReader_mem_addr}), 
            .clk_N_207(clk_N_207), .top_test6_c(top_test6_c), .top_test2_c(top_test2_c), 
            .top_test5_c(top_test5_c), .top_test4_c(top_test4_c), .pktReader_ready(pktReader_ready), 
            .\cosine[1] (cosine[1]), .cosOut_12__N_425(cosOut_12__N_425), 
            .n607(n607), .n5528(n5528), .top_test3_c(top_test3_c), .\mem_current_state[2] (mem_current_state_adj_675[2]), 
            .n5758(n5758), .ble_reg_pkt_size({ble_reg_pkt_size}), .n6488(n6488), 
            .n6618(n6618), .mem_inf_q({mem_inf_q}), .GND_net(GND_net), 
            .VCC_net(VCC_net), .n11(n11)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(417[14] 430[2])
    LUT4 LessThan_20_i8_3_lut_3_lut (.A(ble_reg_data_count[4]), .B(ble_reg_pkt_size[4]), 
         .C(n6), .Z(n8)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(219[9:46])
    defparam LessThan_20_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_4_lut_adj_72 (.A(n2517), .B(n803), .C(n5443), .D(mem_next_state_3__N_120), 
         .Z(n5480)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(190[3] 232[10])
    defparam i1_4_lut_adj_72.init = 16'hfffe;
    LUT4 i1336_2_lut (.A(ble_next_state_7__N_66), .B(spi_rx_ready), .Z(n2517)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(190[3] 232[10])
    defparam i1336_2_lut.init = 16'h2222;
    IQSerializer IQSerializer_0 (.clk_N_427(clk_N_427), .\fskModule_I[0] (fskModule_I[0]), 
            .\fskModule_I[8] (fskModule_I[8]), .\fskModule_Q[2] (fskModule_Q[2]), 
            .\fskModule_Q[0] (fskModule_Q[0]), .\fskModule_Q[4] (fskModule_Q[4]), 
            .\fskModule_Q[12] (fskModule_Q[12]), .\fskModule_Q[7] (fskModule_Q[7]), 
            .n2097(n2097), .\fskModule_Q[6] (fskModule_Q[6]), .IQSerializer_start(IQSerializer_start), 
            .\fskModule_I[5] (fskModule_I[5]), .\fskModule_I[2] (fskModule_I[2]), 
            .\fskModule_I[4] (fskModule_I[4]), .\fskModule_I[12] (fskModule_I[12]), 
            .serial_clk_c(serial_clk_c), .serial(serial)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(444[14] 452[2])
    LUT4 i1_4_lut_adj_73 (.A(spi_rx_data[1]), .B(spi_rx_data[2]), .C(n5637), 
         .D(spi_rx_data[4]), .Z(n5641)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_73.init = 16'hfffd;
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 ble_mem_w_addr_7__I_0_i2_3_lut (.A(ble_mem_w_addr[1]), .B(pktReader_mem_addr[1]), 
         .C(ble_mem_operation), .Z(mem_inf_addr[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(133[23:80])
    defparam ble_mem_w_addr_7__I_0_i2_3_lut.init = 16'hcaca;
    clockDivider clockDivider_0 (.GND_net(GND_net), .VCC_net(VCC_net), .top_test2_c(top_test2_c), 
            .serial_clk_c(serial_clk_c), .pll_lock(pll_lock), .n6829(n6829), 
            .clk_N_207_enable_29(clk_N_207_enable_29), .spi_tx_data_7__N_502(spi_tx_data_7__N_502), 
            .n5965(n5965), .spi_st_load_en_N_531(spi_st_load_en_N_531), 
            .n5957(n5957), .ble_next_state_7__N_68(ble_next_state_7__N_68), 
            .clk_N_207_enable_57(clk_N_207_enable_57), .n6455(n6455), .firstFlag(firstFlag), 
            .n1111(n1111), .ble_next_state_7__N_69(ble_next_state_7__N_69), 
            .clk_N_207_enable_64(clk_N_207_enable_64), .\spi_next_state_3__N_515[3] (spi_next_state_3__N_515[3]), 
            .n6428(n6428), .clk_N_207(clk_N_207)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(393[14] 398[2])
    LUT4 i1_4_lut_adj_74 (.A(mem_next_state_3__N_120), .B(n5687), .C(mem_next_state_3__N_123), 
         .D(ble_mem_w_req), .Z(n5547)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(316[3] 342[10])
    defparam i1_4_lut_adj_74.init = 16'hfafe;
    pll_64M pll_clko_I_0 (.top_rst_n_N_131(top_rst_n_N_131), .serial_clk_c(serial_clk_c), 
            .pll_lock(pll_lock), .GND_net(GND_net), .top_clk_c(top_clk_c), 
            .VCC_net(VCC_net), .clk_N_427(clk_N_427)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(384[9] 391[2])
    LUT4 i3412_2_lut (.A(ble_mem_addr_buff[1]), .B(mem_next_state_3__N_122), 
         .Z(n1395)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(347[2] 377[9])
    defparam i3412_2_lut.init = 16'h8888;
    LUT4 m0_lut (.Z(n6618)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    
endmodule
//
// Verilog Description of module FSKModulator
//

module FSKModulator (\fskModule_I[8] , clk_N_207, n6488, \fskModule_I[5] , 
            top_test6_c, \fskModule_I[4] , \fskModule_I[0] , firstFlag, 
            top_test2_c, n6455, IQSerializer_start, clk_N_207_enable_29, 
            sampleCount, \fskModule_I[2] , \cosine[1] , n1111, \fskModule_Q[0] , 
            top_test3_c, n67, n607, cosOut_12__N_425, \fskModule_I[12] , 
            \fskModule_Q[2] , \fskModule_Q[4] , \fskModule_Q[6] , \fskModule_Q[7] , 
            \fskModule_Q[12] , n5528, n2097, n5838) /* synthesis syn_module_defined=1 */ ;
    output \fskModule_I[8] ;
    input clk_N_207;
    input n6488;
    output \fskModule_I[5] ;
    output top_test6_c;
    output \fskModule_I[4] ;
    output \fskModule_I[0] ;
    output firstFlag;
    input top_test2_c;
    input n6455;
    output IQSerializer_start;
    input clk_N_207_enable_29;
    output [11:0]sampleCount;
    output \fskModule_I[2] ;
    output \cosine[1] ;
    input n1111;
    output \fskModule_Q[0] ;
    input top_test3_c;
    input [11:0]n67;
    output n607;
    output cosOut_12__N_425;
    output \fskModule_I[12] ;
    output \fskModule_Q[2] ;
    output \fskModule_Q[4] ;
    output \fskModule_Q[6] ;
    output \fskModule_Q[7] ;
    output \fskModule_Q[12] ;
    input n5528;
    output n2097;
    input n5838;
    
    wire clk_N_207 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(9[32:40])
    wire top_test6_c /* synthesis is_clock=1, SET_AS_NETWORK=top_test6_c */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(28[11:20])
    wire top_test2_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(24[10:19])
    wire [12:0]sine;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(43[23:27])
    
    wire n6441;
    wire [11:0]sampleCount_11__N_341;
    wire [7:0]n601;
    
    wire n17;
    wire [12:0]cosine;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(44[23:29])
    
    wire lastSym, top_test2_c_enable_1, n5491;
    wire [2:0]sin_phase;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(35[23:32])
    
    wire n1, n5538;
    wire [2:0]n2;
    
    wire n5459, n5613, n5617, n5611, n5534, n5837, n6462, n5599, 
        n5597;
    
    FD1S3IX FSK_I__i8 (.D(sine[11]), .CK(clk_N_207), .CD(n6488), .Q(\fskModule_I[8] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i8.GSR = "DISABLED";
    FD1S3IX FSK_I__i5 (.D(sine[7]), .CK(clk_N_207), .CD(n6488), .Q(\fskModule_I[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i5.GSR = "DISABLED";
    FD1S3IX symDone_60 (.D(n6441), .CK(clk_N_207), .CD(n6488), .Q(top_test6_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam symDone_60.GSR = "ENABLED";
    FD1S3IX FSK_I__i4 (.D(sine[4]), .CK(clk_N_207), .CD(n6488), .Q(\fskModule_I[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i4.GSR = "DISABLED";
    FD1S3IX FSK_I__i0 (.D(sine[0]), .CK(clk_N_207), .CD(n6488), .Q(\fskModule_I[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i0.GSR = "DISABLED";
    FD1S3AX firstFlag_56 (.D(n6455), .CK(top_test2_c), .Q(firstFlag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(70[8] 116[4])
    defparam firstFlag_56.GSR = "DISABLED";
    FD1S3AX start_57 (.D(clk_N_207_enable_29), .CK(top_test2_c), .Q(IQSerializer_start)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(70[8] 116[4])
    defparam start_57.GSR = "DISABLED";
    FD1S3JX sampleCount_i0 (.D(sampleCount_11__N_341[0]), .CK(clk_N_207), 
            .PD(n6488), .Q(sampleCount[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i0.GSR = "ENABLED";
    FD1S3IX FSK_I__i2 (.D(sine[3]), .CK(clk_N_207), .CD(n6488), .Q(\fskModule_I[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i2.GSR = "DISABLED";
    FD1S3JX cos_phase_FSM_i1 (.D(n601[7]), .CK(top_test2_c), .PD(n1111), 
            .Q(\cosine[1] ));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i1.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(sampleCount[8]), .B(sampleCount[7]), .C(sampleCount[6]), 
         .D(sampleCount[4]), .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam i1_4_lut.init = 16'hfffe;
    FD1S3IX FSK_Q__i0 (.D(cosine[0]), .CK(clk_N_207), .CD(n6488), .Q(\fskModule_Q[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i0.GSR = "DISABLED";
    FD1P3IX lastSym_55 (.D(top_test3_c), .SP(top_test2_c_enable_1), .CD(n6455), 
            .CK(top_test2_c), .Q(lastSym));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(70[8] 116[4])
    defparam lastSym_55.GSR = "DISABLED";
    LUT4 i3403_2_lut_4_lut (.A(sampleCount[1]), .B(n5491), .C(sampleCount[0]), 
         .D(n67[11]), .Z(sampleCount_11__N_341[11])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;
    defparam i3403_2_lut_4_lut.init = 16'hdf00;
    LUT4 i1_2_lut_4_lut (.A(sampleCount[1]), .B(n5491), .C(sampleCount[0]), 
         .D(n67[4]), .Z(sampleCount_11__N_341[4])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;
    defparam i1_2_lut_4_lut.init = 16'hdf00;
    LUT4 i3404_2_lut_4_lut (.A(sampleCount[1]), .B(n5491), .C(sampleCount[0]), 
         .D(n67[10]), .Z(sampleCount_11__N_341[10])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;
    defparam i3404_2_lut_4_lut.init = 16'hdf00;
    FD1S3IX sin_phase_947__i0 (.D(n1), .CK(top_test2_c), .CD(n1111), .Q(sin_phase[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(89[12] 108[6])
    defparam sin_phase_947__i0.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i8 (.D(n601[6]), .CK(top_test2_c), .CD(n1111), 
            .Q(n601[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i8.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i7 (.D(n601[5]), .CK(top_test2_c), .CD(n1111), 
            .Q(n601[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i7.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i6 (.D(n601[4]), .CK(top_test2_c), .CD(n1111), 
            .Q(n601[5]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i6.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i5 (.D(n601[3]), .CK(top_test2_c), .CD(n1111), 
            .Q(n601[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i5.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i4 (.D(n607), .CK(top_test2_c), .CD(n1111), 
            .Q(n601[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i4.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i3 (.D(cosOut_12__N_425), .CK(top_test2_c), .CD(n1111), 
            .Q(n607));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i3.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i2 (.D(\cosine[1] ), .CK(top_test2_c), .CD(n1111), 
            .Q(cosOut_12__N_425));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i2.GSR = "DISABLED";
    FD1S3JX sampleCount_i11 (.D(sampleCount_11__N_341[11]), .CK(clk_N_207), 
            .PD(n6488), .Q(sampleCount[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i11.GSR = "ENABLED";
    FD1S3JX sampleCount_i10 (.D(sampleCount_11__N_341[10]), .CK(clk_N_207), 
            .PD(n6488), .Q(sampleCount[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i10.GSR = "ENABLED";
    FD1S3JX sampleCount_i9 (.D(sampleCount_11__N_341[9]), .CK(clk_N_207), 
            .PD(n6488), .Q(sampleCount[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i9.GSR = "ENABLED";
    FD1S3JX sampleCount_i8 (.D(sampleCount_11__N_341[8]), .CK(clk_N_207), 
            .PD(n6488), .Q(sampleCount[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i8.GSR = "ENABLED";
    FD1S3JX sampleCount_i7 (.D(sampleCount_11__N_341[7]), .CK(clk_N_207), 
            .PD(n6488), .Q(sampleCount[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i7.GSR = "ENABLED";
    FD1S3JX sampleCount_i6 (.D(sampleCount_11__N_341[6]), .CK(clk_N_207), 
            .PD(n6488), .Q(sampleCount[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i6.GSR = "ENABLED";
    FD1S3JX sampleCount_i5 (.D(sampleCount_11__N_341[5]), .CK(clk_N_207), 
            .PD(n6488), .Q(sampleCount[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i5.GSR = "ENABLED";
    FD1S3JX sampleCount_i4 (.D(sampleCount_11__N_341[4]), .CK(clk_N_207), 
            .PD(n6488), .Q(sampleCount[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i4.GSR = "ENABLED";
    FD1S3JX sampleCount_i3 (.D(sampleCount_11__N_341[3]), .CK(clk_N_207), 
            .PD(n6488), .Q(sampleCount[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i3.GSR = "ENABLED";
    FD1S3JX sampleCount_i2 (.D(sampleCount_11__N_341[2]), .CK(clk_N_207), 
            .PD(n6488), .Q(sampleCount[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i2.GSR = "ENABLED";
    FD1S3JX sampleCount_i1 (.D(sampleCount_11__N_341[1]), .CK(clk_N_207), 
            .PD(n6488), .Q(sampleCount[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i1.GSR = "ENABLED";
    FD1S3IX FSK_I__i12 (.D(sine[12]), .CK(clk_N_207), .CD(n6488), .Q(\fskModule_I[12] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i12.GSR = "DISABLED";
    FD1S3IX FSK_Q__i2 (.D(\cosine[1] ), .CK(clk_N_207), .CD(n6488), .Q(\fskModule_Q[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i2.GSR = "DISABLED";
    FD1S3IX FSK_Q__i4 (.D(cosine[4]), .CK(clk_N_207), .CD(n6488), .Q(\fskModule_Q[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i4.GSR = "DISABLED";
    FD1S3IX FSK_Q__i6 (.D(cosine[8]), .CK(clk_N_207), .CD(n6488), .Q(\fskModule_Q[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i6.GSR = "DISABLED";
    FD1S3IX FSK_Q__i7 (.D(cosine[7]), .CK(clk_N_207), .CD(n6488), .Q(\fskModule_Q[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i7.GSR = "DISABLED";
    FD1S3IX FSK_Q__i12 (.D(n5538), .CK(clk_N_207), .CD(n5528), .Q(\fskModule_Q[12] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=433, LSE_RLINE=442 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i12.GSR = "DISABLED";
    FD1S3IX sin_phase_947__i1 (.D(n2[1]), .CK(top_test2_c), .CD(n1111), 
            .Q(sin_phase[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(89[12] 108[6])
    defparam sin_phase_947__i1.GSR = "DISABLED";
    FD1S3AX sin_phase_947__i2 (.D(n5459), .CK(top_test2_c), .Q(sin_phase[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(89[12] 108[6])
    defparam sin_phase_947__i2.GSR = "DISABLED";
    LUT4 i3405_2_lut_4_lut (.A(sampleCount[1]), .B(n5491), .C(sampleCount[0]), 
         .D(n67[9]), .Z(sampleCount_11__N_341[9])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;
    defparam i3405_2_lut_4_lut.init = 16'hdf00;
    LUT4 i3406_2_lut_4_lut (.A(sampleCount[1]), .B(n5491), .C(sampleCount[0]), 
         .D(n67[8]), .Z(sampleCount_11__N_341[8])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;
    defparam i3406_2_lut_4_lut.init = 16'hdf00;
    LUT4 i3836_2_lut (.A(sin_phase[1]), .B(sin_phase[0]), .Z(n2[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(89[12] 108[6])
    defparam i3836_2_lut.init = 16'h6666;
    LUT4 i3407_2_lut_4_lut (.A(sampleCount[1]), .B(n5491), .C(sampleCount[0]), 
         .D(n67[7]), .Z(sampleCount_11__N_341[7])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;
    defparam i3407_2_lut_4_lut.init = 16'hdf00;
    LUT4 i1_2_lut_4_lut_adj_53 (.A(sampleCount[1]), .B(n5491), .C(sampleCount[0]), 
         .D(n67[6]), .Z(sampleCount_11__N_341[6])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;
    defparam i1_2_lut_4_lut_adj_53.init = 16'hdf00;
    LUT4 i1_2_lut_4_lut_adj_54 (.A(sampleCount[1]), .B(n5491), .C(sampleCount[0]), 
         .D(n67[1]), .Z(sampleCount_11__N_341[1])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;
    defparam i1_2_lut_4_lut_adj_54.init = 16'hdf00;
    LUT4 i1011_1_lut (.A(IQSerializer_start), .Z(n2097)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(70[8] 116[4])
    defparam i1011_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_4_lut_adj_55 (.A(sampleCount[1]), .B(n5491), .C(sampleCount[0]), 
         .D(n67[0]), .Z(sampleCount_11__N_341[0])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;
    defparam i1_2_lut_4_lut_adj_55.init = 16'hdf00;
    LUT4 i4670_2_lut_4_lut (.A(sampleCount[1]), .B(n5491), .C(sampleCount[0]), 
         .D(clk_N_207_enable_29), .Z(top_test2_c_enable_1)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A (D))) */ ;
    defparam i4670_2_lut_4_lut.init = 16'h02ff;
    LUT4 i1_4_lut_adj_56 (.A(n5613), .B(n5617), .C(n17), .D(n5611), 
         .Z(n5534)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_56.init = 16'hfffe;
    LUT4 i1_4_lut_adj_57 (.A(sampleCount[1]), .B(sampleCount[10]), .C(sampleCount[2]), 
         .D(sampleCount[5]), .Z(n5613)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_57.init = 16'hfffe;
    PFUMX sin_phase_947_mux_6_i3 (.BLUT(n5837), .ALUT(n5838), .C0(n1111), 
          .Z(n5459));
    LUT4 i1_2_lut (.A(sampleCount[0]), .B(sampleCount[3]), .Z(n5611)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i5_2_lut_rep_85 (.A(sampleCount[9]), .B(sampleCount[11]), .Z(n6462)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam i5_2_lut_rep_85.init = 16'heeee;
    LUT4 i4674_3_lut_rep_64 (.A(sampleCount[1]), .B(n5491), .C(sampleCount[0]), 
         .Z(n6441)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i4674_3_lut_rep_64.init = 16'h0202;
    LUT4 i4648_1_lut_4_lut (.A(sin_phase[1]), .B(n5534), .C(sin_phase[2]), 
         .D(sin_phase[0]), .Z(n5837)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C)+!B !(C)))) */ ;
    defparam i4648_1_lut_4_lut.init = 16'h69c3;
    LUT4 i1_3_lut_4_lut (.A(sampleCount[9]), .B(sampleCount[11]), .C(top_test3_c), 
         .D(lastSym), .Z(n5617)) /* synthesis lut_function=(A+(B+(C (D)+!C !(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam i1_3_lut_4_lut.init = 16'hfeef;
    LUT4 i1_2_lut_4_lut_adj_58 (.A(sampleCount[1]), .B(n5491), .C(sampleCount[0]), 
         .D(n67[5]), .Z(sampleCount_11__N_341[5])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;
    defparam i1_2_lut_4_lut_adj_58.init = 16'hdf00;
    LUT4 i1_2_lut_4_lut_adj_59 (.A(sampleCount[1]), .B(n5491), .C(sampleCount[0]), 
         .D(n67[3]), .Z(sampleCount_11__N_341[3])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;
    defparam i1_2_lut_4_lut_adj_59.init = 16'hdf00;
    LUT4 i1_4_lut_adj_60 (.A(n6462), .B(n17), .C(n5599), .D(n5597), 
         .Z(n5491)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam i1_4_lut_adj_60.init = 16'hfffe;
    LUT4 i1_2_lut_adj_61 (.A(sampleCount[5]), .B(sampleCount[3]), .Z(n5599)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam i1_2_lut_adj_61.init = 16'heeee;
    LUT4 i1_2_lut_4_lut_adj_62 (.A(sampleCount[1]), .B(n5491), .C(sampleCount[0]), 
         .D(n67[2]), .Z(sampleCount_11__N_341[2])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;
    defparam i1_2_lut_4_lut_adj_62.init = 16'hdf00;
    LUT4 i1_2_lut_adj_63 (.A(sampleCount[10]), .B(sampleCount[2]), .Z(n5597)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam i1_2_lut_adj_63.init = 16'heeee;
    sinModule sin_instance (.sin_phase({sin_phase}), .\sine[11] (sine[11]), 
            .\sine[0] (sine[0]), .\sine[7] (sine[7]), .\sine[4] (sine[4]), 
            .\sine[3] (sine[3]), .n1(n1), .\sine[12] (sine[12])) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(159[11] 162[2])
    cosModule cos_instance (.n603(n601[6]), .n602(n601[7]), .n604(n601[5]), 
            .n605(n601[4]), .n607(n607), .n606(n601[3]), .\cosine[4] (cosine[4]), 
            .\cosine[1] (\cosine[1] ), .cosOut_12__N_425(cosOut_12__N_425), 
            .\cosine[8] (cosine[8]), .\cosine[7] (cosine[7]), .n5538(n5538), 
            .\cosine[0] (cosine[0])) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(163[12] 166[2])
    
endmodule
//
// Verilog Description of module sinModule
//

module sinModule (sin_phase, \sine[11] , \sine[0] , \sine[7] , \sine[4] , 
            \sine[3] , n1, \sine[12] ) /* synthesis syn_module_defined=1 */ ;
    input [2:0]sin_phase;
    output \sine[11] ;
    output \sine[0] ;
    output \sine[7] ;
    output \sine[4] ;
    output \sine[3] ;
    output n1;
    output \sine[12] ;
    
    
    LUT4 i1_2_lut_3_lut (.A(sin_phase[0]), .B(sin_phase[1]), .C(sin_phase[2]), 
         .Z(\sine[11] )) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0e0e;
    LUT4 i1_2_lut (.A(sin_phase[0]), .B(sin_phase[1]), .Z(\sine[0] )) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut.init = 16'h4444;
    LUT4 i13_3_lut_3_lut (.A(sin_phase[2]), .B(sin_phase[1]), .C(sin_phase[0]), 
         .Z(\sine[7] )) /* synthesis lut_function=(A (C)+!A !((C)+!B)) */ ;
    defparam i13_3_lut_3_lut.init = 16'ha4a4;
    LUT4 i1_4_lut_3_lut (.A(sin_phase[2]), .B(sin_phase[1]), .C(sin_phase[0]), 
         .Z(\sine[4] )) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;
    defparam i1_4_lut_3_lut.init = 16'hf4f4;
    LUT4 i4686_3_lut (.A(sin_phase[0]), .B(sin_phase[1]), .C(sin_phase[2]), 
         .Z(\sine[3] )) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/sinmodule.v(16[11:32])
    defparam i4686_3_lut.init = 16'h0404;
    LUT4 i1_1_lut (.A(sin_phase[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    LUT4 i4255_2_lut_3_lut (.A(sin_phase[0]), .B(sin_phase[1]), .C(sin_phase[2]), 
         .Z(\sine[12] )) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i4255_2_lut_3_lut.init = 16'he0e0;
    
endmodule
//
// Verilog Description of module cosModule
//

module cosModule (n603, n602, n604, n605, n607, n606, \cosine[4] , 
            \cosine[1] , cosOut_12__N_425, \cosine[8] , \cosine[7] , 
            n5538, \cosine[0] ) /* synthesis syn_module_defined=1 */ ;
    input n603;
    input n602;
    input n604;
    input n605;
    input n607;
    input n606;
    output \cosine[4] ;
    input \cosine[1] ;
    input cosOut_12__N_425;
    output \cosine[8] ;
    output \cosine[7] ;
    output n5538;
    output \cosine[0] ;
    
    
    wire n6490;
    wire [9:0]n1776;
    
    wire n5440, n5730, n5728, n6483;
    
    LUT4 i1_2_lut_rep_113 (.A(n603), .B(n602), .Z(n6490)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_113.init = 16'h4444;
    LUT4 i3390_3_lut_4_lut (.A(n603), .B(n602), .C(n604), .D(n605), 
         .Z(n1776[1])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam i3390_3_lut_4_lut.init = 16'h00f4;
    LUT4 i1_4_lut (.A(n1776[1]), .B(n5440), .C(n607), .D(n606), .Z(\cosine[4] )) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(14[7] 29[24])
    defparam i1_4_lut.init = 16'hcfce;
    LUT4 i1_2_lut (.A(\cosine[1] ), .B(cosOut_12__N_425), .Z(n5440)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(14[7] 29[24])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_52 (.A(n5730), .B(n5440), .C(n5728), .D(n6490), 
         .Z(\cosine[8] )) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(14[7] 29[24])
    defparam i1_4_lut_adj_52.init = 16'hcdcc;
    LUT4 i4523_2_lut (.A(n607), .B(n604), .Z(n5730)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4523_2_lut.init = 16'heeee;
    LUT4 i4521_2_lut (.A(n605), .B(n606), .Z(n5728)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4521_2_lut.init = 16'heeee;
    LUT4 i3330_4_lut (.A(n1776[2]), .B(\cosine[1] ), .C(n6483), .D(n606), 
         .Z(\cosine[7] )) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(14[7] 29[24])
    defparam i3330_4_lut.init = 16'hcfce;
    LUT4 i3387_2_lut (.A(n604), .B(n605), .Z(n1776[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(22[7] 29[24])
    defparam i3387_2_lut.init = 16'h2222;
    LUT4 i1_3_lut (.A(n604), .B(n606), .C(n605), .Z(n5538)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(20[7] 29[24])
    defparam i1_3_lut.init = 16'hfefe;
    LUT4 i3344_4_lut (.A(n606), .B(\cosine[1] ), .C(n6483), .D(n605), 
         .Z(\cosine[0] )) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(14[7] 29[24])
    defparam i3344_4_lut.init = 16'hcdcc;
    LUT4 i1326_2_lut_rep_106 (.A(n607), .B(cosOut_12__N_425), .Z(n6483)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(16[7] 29[24])
    defparam i1326_2_lut_rep_106.init = 16'heeee;
    
endmodule
//
// Verilog Description of module spi_ctrl
//

module spi_ctrl (clk_N_207_enable_29, spi_tx_data_7__N_502, spi_rx_data, 
            spi_tx_data, spi_rst, n5470, rrdy_N_623, n685, n677, 
            top_test3_c, firstFlag, n5838, n6829, n5957, spi_st_load_en, 
            mem_next_state_3__N_120, spi_st_load_trdy, n5633, \spi_next_state_3__N_515[3] , 
            n680, spi_st_load_en_N_531, top_test2_c, n6492, n2502, 
            spi_rx_req, n5965, spi_rx_ready, spi_tx_load_en, n6428) /* synthesis syn_module_defined=1 */ ;
    input clk_N_207_enable_29;
    output spi_tx_data_7__N_502;
    input [7:0]spi_rx_data;
    output [7:0]spi_tx_data;
    output spi_rst;
    input n5470;
    input rrdy_N_623;
    output n685;
    output n677;
    input top_test3_c;
    input firstFlag;
    output n5838;
    input n6829;
    input n5957;
    output spi_st_load_en;
    input mem_next_state_3__N_120;
    output spi_st_load_trdy;
    input n5633;
    input \spi_next_state_3__N_515[3] ;
    output n680;
    output spi_st_load_en_N_531;
    input top_test2_c;
    input n6492;
    input n2502;
    output spi_rx_req;
    input n5965;
    output spi_rx_ready;
    output spi_tx_load_en;
    input n6428;
    
    wire top_test2_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(24[10:19])
    wire [15:0]n671;
    
    wire rx_ready_N_524, n2713, n2714, n6334, spi_rst_N_525, spi_rst_N_526, 
        n2525, spi_tx_load_en_N_534, n2523, n4, n6429;
    
    LUT4 i4807_4_lut_4_lut_4_lut (.A(clk_N_207_enable_29), .B(spi_tx_data_7__N_502), 
         .C(spi_rx_data[5]), .D(spi_tx_data[5]), .Z(spi_tx_data[5])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam i4807_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 i4815_4_lut_4_lut_4_lut (.A(clk_N_207_enable_29), .B(spi_tx_data_7__N_502), 
         .C(spi_rx_data[7]), .D(spi_tx_data[7]), .Z(spi_tx_data[7])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam i4815_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 i4803_4_lut_4_lut_4_lut (.A(clk_N_207_enable_29), .B(spi_tx_data_7__N_502), 
         .C(spi_rx_data[4]), .D(spi_tx_data[4]), .Z(spi_tx_data[4])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam i4803_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 i4754_4_lut_4_lut_4_lut (.A(clk_N_207_enable_29), .B(spi_tx_data_7__N_502), 
         .C(spi_rx_data[0]), .D(spi_tx_data[0]), .Z(spi_tx_data[0])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam i4754_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 i4795_4_lut_4_lut_4_lut (.A(clk_N_207_enable_29), .B(spi_tx_data_7__N_502), 
         .C(spi_rx_data[2]), .D(spi_tx_data[2]), .Z(spi_tx_data[2])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam i4795_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 i4799_4_lut_4_lut_4_lut (.A(clk_N_207_enable_29), .B(spi_tx_data_7__N_502), 
         .C(spi_rx_data[3]), .D(spi_tx_data[3]), .Z(spi_tx_data[3])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam i4799_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 i4791_4_lut_4_lut_4_lut (.A(clk_N_207_enable_29), .B(spi_tx_data_7__N_502), 
         .C(spi_rx_data[1]), .D(spi_tx_data[1]), .Z(spi_tx_data[1])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam i4791_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 i4679_2_lut (.A(n671[9]), .B(n671[3]), .Z(rx_ready_N_524)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam i4679_2_lut.init = 16'h1111;
    LUT4 i1532_4_lut (.A(spi_rst), .B(n2713), .C(n5470), .D(rrdy_N_623), 
         .Z(n2714)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam i1532_4_lut.init = 16'hc4cc;
    LUT4 i1_2_lut (.A(n685), .B(n677), .Z(n2713)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i4649_1_lut_3_lut_3_lut (.A(clk_N_207_enable_29), .B(top_test3_c), 
         .C(firstFlag), .Z(n5838)) /* synthesis lut_function=(!((B (C))+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam i4649_1_lut_3_lut_3_lut.init = 16'h2a2a;
    PFUMX i5004 (.BLUT(n6334), .ALUT(n6829), .C0(spi_rst_N_525), .Z(spi_rst));
    LUT4 i4770_4_lut_4_lut (.A(clk_N_207_enable_29), .B(spi_rst_N_526), 
         .C(n5957), .D(spi_st_load_en), .Z(spi_st_load_en)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam i4770_4_lut_4_lut.init = 16'hf2d0;
    LUT4 i4774_4_lut_3_lut (.A(clk_N_207_enable_29), .B(mem_next_state_3__N_120), 
         .C(spi_st_load_trdy), .Z(spi_st_load_trdy)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam i4774_4_lut_3_lut.init = 16'h2020;
    LUT4 i1344_4_lut (.A(n671[3]), .B(n5633), .C(\spi_next_state_3__N_515[3] ), 
         .D(n5470), .Z(n2525)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam i1344_4_lut.init = 16'h0ace;
    LUT4 i1342_3_lut (.A(n680), .B(spi_tx_load_en_N_534), .C(\spi_next_state_3__N_515[3] ), 
         .Z(n2523)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam i1342_3_lut.init = 16'hecec;
    LUT4 reduce_or_246_i4_2_lut (.A(spi_st_load_en_N_531), .B(n671[5]), 
         .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam reduce_or_246_i4_2_lut.init = 16'heeee;
    FD1S3AX spi_current_state_FSM_i2 (.D(mem_next_state_3__N_120), .CK(top_test2_c), 
            .Q(n671[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i2.GSR = "ENABLED";
    FD1S3AX spi_current_state_FSM_i3 (.D(n2714), .CK(top_test2_c), .Q(n685));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i3.GSR = "ENABLED";
    FD1S3AX spi_current_state_FSM_i4 (.D(n2525), .CK(top_test2_c), .Q(n671[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i4.GSR = "ENABLED";
    FD1S3AX spi_current_state_FSM_i5 (.D(n671[9]), .CK(top_test2_c), .Q(spi_tx_data_7__N_502));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i5.GSR = "ENABLED";
    FD1S3AX spi_current_state_FSM_i6 (.D(spi_tx_data_7__N_502), .CK(top_test2_c), 
            .Q(n671[5]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i6.GSR = "ENABLED";
    FD1S3AX spi_current_state_FSM_i7 (.D(n671[1]), .CK(top_test2_c), .Q(spi_st_load_en_N_531));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i7.GSR = "ENABLED";
    FD1S3AX spi_current_state_FSM_i8 (.D(n2523), .CK(top_test2_c), .Q(n680));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i8.GSR = "ENABLED";
    FD1S3AX spi_current_state_FSM_i9 (.D(n4), .CK(top_test2_c), .Q(spi_tx_load_en_N_534));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i9.GSR = "ENABLED";
    FD1S3IX spi_current_state_FSM_i10 (.D(n671[3]), .CK(top_test2_c), .CD(n6492), 
            .Q(n671[9]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i10.GSR = "ENABLED";
    FD1S3AX spi_current_state_FSM_i11 (.D(n2502), .CK(top_test2_c), .Q(n677));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i11.GSR = "ENABLED";
    LUT4 spi_rst_bdd_3_lut_3_lut (.A(clk_N_207_enable_29), .B(mem_next_state_3__N_120), 
         .C(spi_rst), .Z(n6334)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam spi_rst_bdd_3_lut_3_lut.init = 16'h2020;
    LUT4 spi_rx_req_bdd_4_lut_4_lut (.A(clk_N_207_enable_29), .B(n671[9]), 
         .C(spi_tx_data_7__N_502), .D(spi_rx_req), .Z(n6429)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam spi_rx_req_bdd_4_lut_4_lut.init = 16'h0200;
    LUT4 i4778_4_lut_4_lut (.A(clk_N_207_enable_29), .B(rx_ready_N_524), 
         .C(n5965), .D(spi_rx_ready), .Z(spi_rx_ready)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam i4778_4_lut_4_lut.init = 16'hf2d0;
    LUT4 i4811_4_lut (.A(spi_tx_data[6]), .B(spi_rx_data[6]), .C(clk_N_207_enable_29), 
         .D(spi_tx_data_7__N_502), .Z(spi_tx_data[6])) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(105[1] 180[4])
    defparam i4811_4_lut.init = 16'hc0a0;
    LUT4 i4758_4_lut_4_lut (.A(clk_N_207_enable_29), .B(spi_tx_load_en_N_534), 
         .C(n680), .D(spi_tx_load_en), .Z(spi_tx_load_en)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam i4758_4_lut_4_lut.init = 16'h8a88;
    LUT4 i3_4_lut (.A(spi_st_load_en_N_531), .B(n671[1]), .C(spi_tx_load_en_N_534), 
         .D(n680), .Z(spi_rst_N_525)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_51 (.A(mem_next_state_3__N_120), .B(spi_rst_N_525), 
         .Z(spi_rst_N_526)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_51.init = 16'heeee;
    PFUMX i5058 (.BLUT(n6429), .ALUT(n6428), .C0(n671[3]), .Z(spi_rx_req));
    
endmodule
//
// Verilog Description of module spi
//

module spi (\spi_next_state_3__N_515[3] , spi_rst, spi_tx_load_en, spi_tx_data, 
            sclk_N_638, top_test0_c, spi_mosi, VCC_net, rrdy_N_623, 
            n6618, n5470, spi_rx_data, n685, n5633, n6492, n677, 
            spi_st_load_en, spi_st_load_trdy, n680, n2502, n6493, 
            spi_rx_req);
    input \spi_next_state_3__N_515[3] ;
    input spi_rst;
    input spi_tx_load_en;
    input [7:0]spi_tx_data;
    input sclk_N_638;
    input top_test0_c;
    input spi_mosi;
    input VCC_net;
    output rrdy_N_623;
    input n6618;
    output n5470;
    output [7:0]spi_rx_data;
    input n685;
    output n5633;
    output n6492;
    input n677;
    input spi_st_load_en;
    input spi_st_load_trdy;
    input n680;
    output n2502;
    output n6493;
    input spi_rx_req;
    
    wire sclk_N_638 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(61[10:13])
    wire top_test0_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(22[10:19])
    
    \spi_slave('0','0',8)  spi_slave_0 (.\spi_next_state_3__N_515[3] (\spi_next_state_3__N_515[3] ), 
            .spi_rst(spi_rst), .spi_tx_load_en(spi_tx_load_en), .spi_tx_data({spi_tx_data}), 
            .sclk_N_638(sclk_N_638), .top_test0_c(top_test0_c), .spi_mosi(spi_mosi), 
            .VCC_net(VCC_net), .rrdy_N_623(rrdy_N_623), .n6618(n6618), 
            .n5470(n5470), .spi_rx_data({spi_rx_data}), .n685(n685), .n5633(n5633), 
            .n6492(n6492), .n677(n677), .spi_st_load_en(spi_st_load_en), 
            .spi_st_load_trdy(spi_st_load_trdy), .n680(n680), .n2502(n2502), 
            .n6493(n6493), .spi_rx_req(spi_rx_req));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi.vhd(72[14:23])
    
endmodule
//
// Verilog Description of module \spi_slave('0','0',8) 
//

module \spi_slave('0','0',8)  (\spi_next_state_3__N_515[3] , spi_rst, spi_tx_load_en, 
            spi_tx_data, sclk_N_638, top_test0_c, spi_mosi, VCC_net, 
            rrdy_N_623, n6618, n5470, spi_rx_data, n685, n5633, 
            n6492, n677, spi_st_load_en, spi_st_load_trdy, n680, n2502, 
            n6493, spi_rx_req);
    input \spi_next_state_3__N_515[3] ;
    input spi_rst;
    input spi_tx_load_en;
    input [7:0]spi_tx_data;
    input sclk_N_638;
    input top_test0_c;
    input spi_mosi;
    input VCC_net;
    output rrdy_N_623;
    input n6618;
    output n5470;
    output [7:0]spi_rx_data;
    input n685;
    output n5633;
    output n6492;
    input n677;
    input spi_st_load_en;
    input spi_st_load_trdy;
    input n680;
    output n2502;
    output n6493;
    input spi_rx_req;
    
    wire sclk_N_638 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(61[10:13])
    wire top_test0_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(22[10:19])
    
    wire n6458, n2953, n6461;
    wire [7:0]n18;
    
    wire rd_add;
    wire [16:0]bit_cnt;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(62[10:17])
    
    wire n2950, n6452;
    wire [7:0]rx_buf;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(65[10:16])
    
    wire rx_buf_1__N_556, n6463, n2949, n6444, miso_N_637, sclk_N_638_enable_1, 
        bit_cnt_15__N_539, top_test0_c_enable_1, rx_buf_7__N_541, debug1, 
        rx_buf_6__N_546, roe_N_630, top_test0_c_enable_2, roe_N_652, 
        roe_N_650, n2946, n6451, n2945, n6445, rx_buf_2__N_554, 
        trdy_N_617, top_test0_c_enable_3, trdy_N_643, trdy_N_639, rrdy_N_648, 
        rrdy_N_646, n2962, n6446, n2961, n6460, miso_N_636, miso_N_655, 
        rx_buf_4__N_550, n6453, n5663;
    wire [7:0]tx_buf;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(66[10:16])
    
    wire n6480, n2958, n6454, n6617, rx_buf_3__N_552, n2957, n6450, 
        rx_buf_5__N_548, n6491, n2942, n6447, n2941, n6443, n2938, 
        n6448, n2934, n6456, n2933, n6457, debug0, n24, n5629, 
        n2954, n5791, trdy_N_619, n2937, n6449, n3, miso_N_656;
    wire [1:0]n1008;
    
    wire n5671, n6466, n6768, n6489, n6807, n6804, n6759, n6813, 
        n6822, n6783, n6467, n5527, n6756, n5516, n5659, n5655;
    
    LUT4 tx_buf_7__N_568_I_0_297_2_lut_rep_81_3_lut_4_lut (.A(\spi_next_state_3__N_515[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[6]), .Z(n6458)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_568_I_0_297_2_lut_rep_81_3_lut_4_lut.init = 16'h33b3;
    FD1S3BX tx_buf_i0_i1_1763_1764_set (.D(n18[1]), .CK(sclk_N_638), .PD(n6461), 
            .Q(n2953)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i1_1763_1764_set.GSR = "DISABLED";
    FD1P3AX rd_add_230 (.D(spi_mosi), .SP(bit_cnt[2]), .CK(top_test0_c), 
            .Q(rd_add));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(102[5] 104[12])
    defparam rd_add_230.GSR = "DISABLED";
    FD1S3DX tx_buf_i0_i2_1759_1760_reset (.D(n18[2]), .CK(sclk_N_638), .CD(n6452), 
            .Q(n2950)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i2_1759_1760_reset.GSR = "DISABLED";
    FD1P3DX rx_buf_1__240 (.D(spi_mosi), .SP(rx_buf_1__N_556), .CK(top_test0_c), 
            .CD(n6463), .Q(rx_buf[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[9] 155[16])
    defparam rx_buf_1__240.GSR = "DISABLED";
    FD1S3BX tx_buf_i0_i2_1759_1760_set (.D(n18[2]), .CK(sclk_N_638), .PD(n6444), 
            .Q(n2949)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i2_1759_1760_set.GSR = "DISABLED";
    FD1P3DX i223_277 (.D(VCC_net), .SP(sclk_N_638_enable_1), .CK(sclk_N_638), 
            .CD(bit_cnt_15__N_539), .Q(miso_N_637));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(175[5] 188[12])
    defparam i223_277.GSR = "DISABLED";
    FD1P3DX rx_buf_0__241 (.D(spi_mosi), .SP(top_test0_c_enable_1), .CK(top_test0_c), 
            .CD(n6463), .Q(rx_buf[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[9] 155[16])
    defparam rx_buf_0__241.GSR = "DISABLED";
    FD1P3DX rx_buf_7__234 (.D(spi_mosi), .SP(rx_buf_7__N_541), .CK(top_test0_c), 
            .CD(n6463), .Q(rx_buf[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[9] 155[16])
    defparam rx_buf_7__234.GSR = "DISABLED";
    FD1P3AX wr_add_229 (.D(spi_mosi), .SP(bit_cnt[1]), .CK(top_test0_c), 
            .Q(debug1));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(97[5] 99[12])
    defparam wr_add_229.GSR = "DISABLED";
    FD1P3DX rx_buf_6__235 (.D(spi_mosi), .SP(rx_buf_6__N_546), .CK(top_test0_c), 
            .CD(n6463), .Q(rx_buf[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[9] 155[16])
    defparam rx_buf_6__235.GSR = "DISABLED";
    FD1P3JX roe_233 (.D(roe_N_650), .SP(top_test0_c_enable_2), .PD(roe_N_652), 
            .CK(top_test0_c), .Q(roe_N_630)) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(135[5] 145[12])
    defparam roe_233.GSR = "DISABLED";
    FD1S3DX tx_buf_i0_i3_1755_1756_reset (.D(n18[3]), .CK(sclk_N_638), .CD(n6451), 
            .Q(n2946)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i3_1755_1756_reset.GSR = "DISABLED";
    FD1S3BX tx_buf_i0_i3_1755_1756_set (.D(n18[3]), .CK(sclk_N_638), .PD(n6445), 
            .Q(n2945)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i3_1755_1756_set.GSR = "DISABLED";
    FD1P3DX rx_buf_2__239 (.D(spi_mosi), .SP(rx_buf_2__N_554), .CK(top_test0_c), 
            .CD(n6463), .Q(rx_buf[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[9] 155[16])
    defparam rx_buf_2__239.GSR = "DISABLED";
    FD1P3BX trdy_231 (.D(trdy_N_639), .SP(top_test0_c_enable_3), .CK(top_test0_c), 
            .PD(trdy_N_643), .Q(trdy_N_617)) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(107[5] 117[12])
    defparam trdy_231.GSR = "DISABLED";
    FD1S3BX rrdy_232 (.D(rrdy_N_646), .CK(top_test0_c), .PD(rrdy_N_648), 
            .Q(rrdy_N_623)) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(120[5] 132[12])
    defparam rrdy_232.GSR = "DISABLED";
    FD1S3DX tx_buf_i0_i6_1771_1772_reset (.D(n18[6]), .CK(sclk_N_638), .CD(n6458), 
            .Q(n2962)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i6_1771_1772_reset.GSR = "DISABLED";
    LUT4 tx_buf_7__N_568_I_0_302_2_lut_rep_69_3_lut_4_lut (.A(\spi_next_state_3__N_515[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[1]), .Z(n6446)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_568_I_0_302_2_lut_rep_69_3_lut_4_lut.init = 16'h33b3;
    FD1S3BX tx_buf_i0_i6_1771_1772_set (.D(n18[6]), .CK(sclk_N_638), .PD(n6460), 
            .Q(n2961)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i6_1771_1772_set.GSR = "DISABLED";
    FD1S3DX miso_268 (.D(miso_N_655), .CK(sclk_N_638), .CD(bit_cnt_15__N_539), 
            .Q(miso_N_636)) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(175[5] 188[12])
    defparam miso_268.GSR = "DISABLED";
    FD1S3BX bit_cnt_i1 (.D(n6618), .CK(sclk_N_638), .PD(bit_cnt_15__N_539), 
            .Q(bit_cnt[1])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i1.GSR = "DISABLED";
    FD1P3DX rx_buf_4__237 (.D(spi_mosi), .SP(rx_buf_4__N_550), .CK(top_test0_c), 
            .CD(n6463), .Q(rx_buf[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[9] 155[16])
    defparam rx_buf_4__237.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_76 (.A(n5470), .B(spi_rst), .Z(n6453)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_76.init = 16'h4444;
    LUT4 tx_buf_i1_i6_3_lut_4_lut (.A(n5663), .B(rd_add), .C(tx_buf[4]), 
         .D(tx_buf[5]), .Z(n18[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam tx_buf_i1_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 i4787_4_lut_4_lut_4_lut (.A(rx_buf[0]), .B(spi_rst), .C(spi_rx_data[0]), 
         .D(n6480), .Z(spi_rx_data[0])) /* synthesis lut_function=(A (B (C+(D)))+!A !(((D)+!C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i4787_4_lut_4_lut_4_lut.init = 16'h88c0;
    LUT4 i4831_4_lut_4_lut_4_lut (.A(rx_buf[4]), .B(spi_rst), .C(spi_rx_data[4]), 
         .D(n6480), .Z(spi_rx_data[4])) /* synthesis lut_function=(A (B (C+(D)))+!A !(((D)+!C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i4831_4_lut_4_lut_4_lut.init = 16'h88c0;
    FD1S3DX tx_buf_i0_i7_1767_1768_reset (.D(n18[7]), .CK(sclk_N_638), .CD(n6454), 
            .Q(n2958)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i7_1767_1768_reset.GSR = "DISABLED";
    LUT4 i4823_4_lut_4_lut_4_lut (.A(rx_buf[2]), .B(spi_rst), .C(spi_rx_data[2]), 
         .D(n6480), .Z(spi_rx_data[2])) /* synthesis lut_function=(A (B (C+(D)))+!A !(((D)+!C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i4823_4_lut_4_lut_4_lut.init = 16'h88c0;
    LUT4 i4839_4_lut_4_lut_4_lut (.A(rx_buf[6]), .B(spi_rst), .C(spi_rx_data[6]), 
         .D(n6480), .Z(spi_rx_data[6])) /* synthesis lut_function=(A (B (C+(D)))+!A !(((D)+!C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i4839_4_lut_4_lut_4_lut.init = 16'h88c0;
    LUT4 i4827_4_lut_4_lut_4_lut (.A(rx_buf[3]), .B(spi_rst), .C(spi_rx_data[3]), 
         .D(n6480), .Z(spi_rx_data[3])) /* synthesis lut_function=(A (B (C+(D)))+!A !(((D)+!C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i4827_4_lut_4_lut_4_lut.init = 16'h88c0;
    LUT4 i4819_4_lut_4_lut_4_lut (.A(rx_buf[1]), .B(spi_rst), .C(spi_rx_data[1]), 
         .D(n6480), .Z(spi_rx_data[1])) /* synthesis lut_function=(A (B (C+(D)))+!A !(((D)+!C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i4819_4_lut_4_lut_4_lut.init = 16'h88c0;
    LUT4 mux_414_Mux_0_i7_4_lut_3_lut_rep_117 (.A(bit_cnt[9]), .B(bit_cnt[8]), 
         .C(bit_cnt[10]), .Z(n6617)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C)))) */ ;
    defparam mux_414_Mux_0_i7_4_lut_3_lut_rep_117.init = 16'h1616;
    LUT4 ss_n_I_0_288_2_lut_2_lut (.A(spi_rst), .B(\spi_next_state_3__N_515[3] ), 
         .Z(bit_cnt_15__N_539)) /* synthesis lut_function=((B)+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(107[68:81])
    defparam ss_n_I_0_288_2_lut_2_lut.init = 16'hdddd;
    FD1P3DX rx_buf_3__238 (.D(spi_mosi), .SP(rx_buf_3__N_552), .CK(top_test0_c), 
            .CD(n6463), .Q(rx_buf[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[9] 155[16])
    defparam rx_buf_3__238.GSR = "DISABLED";
    LUT4 debug1_N_543_I_0_286_2_lut (.A(debug1), .B(bit_cnt[14]), .Z(rx_buf_2__N_554)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[12:69])
    defparam debug1_N_543_I_0_286_2_lut.init = 16'h4444;
    FD1S3BX tx_buf_i0_i7_1767_1768_set (.D(n18[7]), .CK(sclk_N_638), .PD(n6450), 
            .Q(n2957)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i7_1767_1768_set.GSR = "DISABLED";
    FD1P3DX rx_buf_5__236 (.D(spi_mosi), .SP(rx_buf_5__N_548), .CK(top_test0_c), 
            .CD(n6463), .Q(rx_buf[5]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[9] 155[16])
    defparam rx_buf_5__236.GSR = "DISABLED";
    LUT4 tx_buf_i1_i2_3_lut_4_lut (.A(n5663), .B(rd_add), .C(tx_buf[0]), 
         .D(tx_buf[1]), .Z(n18[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam tx_buf_i1_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_3_lut (.A(n685), .B(spi_rst), .C(rrdy_N_623), .Z(n5633)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    LUT4 i4835_4_lut_4_lut (.A(spi_rst), .B(n6480), .C(rx_buf[5]), .D(spi_rx_data[5]), 
         .Z(spi_rx_data[5])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(107[68:81])
    defparam i4835_4_lut_4_lut.init = 16'ha280;
    LUT4 i1_2_lut_rep_114 (.A(bit_cnt[9]), .B(debug1), .Z(n6491)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam i1_2_lut_rep_114.init = 16'h8888;
    FD1S3DX tx_buf_i0_i4_1751_1752_reset (.D(n18[4]), .CK(sclk_N_638), .CD(n6447), 
            .Q(n2942)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i4_1751_1752_reset.GSR = "DISABLED";
    FD1S3BX tx_buf_i0_i4_1751_1752_set (.D(n18[4]), .CK(sclk_N_638), .PD(n6443), 
            .Q(n2941)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i4_1751_1752_set.GSR = "DISABLED";
    FD1S3DX tx_buf_i0_i0_1747_1748_reset (.D(n18[0]), .CK(sclk_N_638), .CD(n6448), 
            .Q(n2938)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i0_1747_1748_reset.GSR = "DISABLED";
    FD1S3DX tx_buf_i0_i5_1743_1744_reset (.D(n18[5]), .CK(sclk_N_638), .CD(n6456), 
            .Q(n2934)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i5_1743_1744_reset.GSR = "DISABLED";
    FD1S3BX tx_buf_i0_i5_1743_1744_set (.D(n18[5]), .CK(sclk_N_638), .PD(n6457), 
            .Q(n2933)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i5_1743_1744_set.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut (.A(bit_cnt[9]), .B(debug1), .C(spi_mosi), .Z(trdy_N_639)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 ss_n_I_0_310_1_lut_rep_115 (.A(\spi_next_state_3__N_515[3] ), .Z(n6492)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(73[11:19])
    defparam ss_n_I_0_310_1_lut_rep_115.init = 16'h5555;
    LUT4 i1_2_lut (.A(debug0), .B(rd_add), .Z(n24)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi.vhd(24[1:7])
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i1_3_lut_adj_43 (.A(n677), .B(spi_rst), .C(rrdy_N_623), .Z(n5629)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_43.init = 16'h8080;
    LUT4 ss_n_I_0_4_lut (.A(\spi_next_state_3__N_515[3] ), .B(spi_st_load_en), 
         .C(spi_tx_load_en), .D(spi_st_load_trdy), .Z(trdy_N_643)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(109[11:89])
    defparam ss_n_I_0_4_lut.init = 16'ha8a0;
    LUT4 i1321_4_lut_4_lut (.A(\spi_next_state_3__N_515[3] ), .B(n680), 
         .C(n5470), .D(n5629), .Z(n2502)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B+!(C+!(D))))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(73[11:19])
    defparam i1321_4_lut_4_lut.init = 16'h4f44;
    FD1S3DX bit_cnt_i2 (.D(bit_cnt[1]), .CK(sclk_N_638), .CD(bit_cnt_15__N_539), 
            .Q(bit_cnt[2])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i2.GSR = "DISABLED";
    FD1S3DX bit_cnt_i3 (.D(bit_cnt[2]), .CK(sclk_N_638), .CD(bit_cnt_15__N_539), 
            .Q(bit_cnt[3])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i3.GSR = "DISABLED";
    FD1S3DX bit_cnt_i4 (.D(bit_cnt[3]), .CK(sclk_N_638), .CD(bit_cnt_15__N_539), 
            .Q(bit_cnt[4])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i4.GSR = "DISABLED";
    FD1S3DX bit_cnt_i5 (.D(bit_cnt[4]), .CK(sclk_N_638), .CD(bit_cnt_15__N_539), 
            .Q(bit_cnt[5])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i5.GSR = "DISABLED";
    FD1S3DX bit_cnt_i6 (.D(bit_cnt[5]), .CK(sclk_N_638), .CD(bit_cnt_15__N_539), 
            .Q(bit_cnt[6])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i6.GSR = "DISABLED";
    FD1S3DX bit_cnt_i7 (.D(bit_cnt[6]), .CK(sclk_N_638), .CD(bit_cnt_15__N_539), 
            .Q(bit_cnt[7])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i7.GSR = "DISABLED";
    FD1S3DX bit_cnt_i8 (.D(bit_cnt[7]), .CK(sclk_N_638), .CD(bit_cnt_15__N_539), 
            .Q(bit_cnt[8])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i8.GSR = "DISABLED";
    FD1S3DX bit_cnt_i9 (.D(bit_cnt[8]), .CK(sclk_N_638), .CD(bit_cnt_15__N_539), 
            .Q(bit_cnt[9])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i9.GSR = "DISABLED";
    FD1S3DX bit_cnt_i10 (.D(bit_cnt[9]), .CK(sclk_N_638), .CD(bit_cnt_15__N_539), 
            .Q(bit_cnt[10])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i10.GSR = "DISABLED";
    FD1S3DX bit_cnt_i11 (.D(bit_cnt[10]), .CK(sclk_N_638), .CD(bit_cnt_15__N_539), 
            .Q(bit_cnt[11])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i11.GSR = "DISABLED";
    FD1S3DX bit_cnt_i12 (.D(bit_cnt[11]), .CK(sclk_N_638), .CD(bit_cnt_15__N_539), 
            .Q(bit_cnt[12])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i12.GSR = "DISABLED";
    FD1S3DX bit_cnt_i13 (.D(bit_cnt[12]), .CK(sclk_N_638), .CD(bit_cnt_15__N_539), 
            .Q(bit_cnt[13])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i13.GSR = "DISABLED";
    FD1S3DX bit_cnt_i14 (.D(bit_cnt[13]), .CK(sclk_N_638), .CD(bit_cnt_15__N_539), 
            .Q(bit_cnt[14])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i14.GSR = "DISABLED";
    FD1S3DX bit_cnt_i15 (.D(bit_cnt[14]), .CK(sclk_N_638), .CD(bit_cnt_15__N_539), 
            .Q(bit_cnt[15])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i15.GSR = "DISABLED";
    FD1S3DX bit_cnt_i16 (.D(bit_cnt[15]), .CK(sclk_N_638), .CD(bit_cnt_15__N_539), 
            .Q(debug0)) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i16.GSR = "DISABLED";
    LUT4 tx_buf_i1_i3_3_lut_4_lut (.A(n5663), .B(rd_add), .C(tx_buf[1]), 
         .D(tx_buf[2]), .Z(n18[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam tx_buf_i1_i3_3_lut_4_lut.init = 16'hfe10;
    FD1S3DX tx_buf_i0_i1_1763_1764_reset (.D(n18[1]), .CK(sclk_N_638), .CD(n6446), 
            .Q(n2954)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i1_1763_1764_reset.GSR = "DISABLED";
    LUT4 i4709_3_lut_3_lut_4_lut (.A(bit_cnt[9]), .B(bit_cnt[8]), .C(bit_cnt[10]), 
         .D(rd_add), .Z(n5791)) /* synthesis lut_function=(A (B+(C+!(D)))+!A ((C+!(D))+!B)) */ ;
    defparam i4709_3_lut_3_lut_4_lut.init = 16'hf9ff;
    LUT4 i1_4_lut_4_lut (.A(spi_rst), .B(trdy_N_619), .C(n6491), .D(n24), 
         .Z(top_test0_c_enable_3)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(107[68:81])
    defparam i1_4_lut_4_lut.init = 16'hfffd;
    FD1S3BX tx_buf_i0_i0_1747_1748_set (.D(n18[0]), .CK(sclk_N_638), .PD(n6449), 
            .Q(n2937)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i0_1747_1748_set.GSR = "DISABLED";
    LUT4 i4843_4_lut_4_lut (.A(spi_rst), .B(n6480), .C(rx_buf[7]), .D(spi_rx_data[7]), 
         .Z(spi_rx_data[7])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(107[68:81])
    defparam i4843_4_lut_4_lut.init = 16'ha280;
    LUT4 tx_buf_i1_i4_3_lut_4_lut (.A(n5663), .B(rd_add), .C(tx_buf[2]), 
         .D(tx_buf[3]), .Z(n18[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam tx_buf_i1_i4_3_lut_4_lut.init = 16'hfe10;
    PFUMX miso_I_0 (.BLUT(n3), .ALUT(miso_N_656), .C0(n5791), .Z(miso_N_655)) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;
    LUT4 tx_buf_i1_i7_3_lut_4_lut (.A(n5663), .B(rd_add), .C(tx_buf[5]), 
         .D(tx_buf[6]), .Z(n18[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam tx_buf_i1_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1259_2_lut_rep_116 (.A(miso_N_636), .B(miso_N_637), .Z(n6493)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i1259_2_lut_rep_116.init = 16'h8888;
    LUT4 debug1_N_543_I_0_287_2_lut (.A(debug1), .B(bit_cnt[15]), .Z(rx_buf_1__N_556)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[12:69])
    defparam debug1_N_543_I_0_287_2_lut.init = 16'h4444;
    LUT4 tx_buf_7__I_0_3_lut_4_lut (.A(miso_N_636), .B(miso_N_637), .C(sclk_N_638_enable_1), 
         .D(n1008[1]), .Z(miso_N_656)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam tx_buf_7__I_0_3_lut_4_lut.init = 16'hf808;
    LUT4 tx_buf_i1_i8_3_lut_4_lut (.A(n5663), .B(rd_add), .C(tx_buf[6]), 
         .D(tx_buf[7]), .Z(n18[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam tx_buf_i1_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 tx_buf_7__N_609_I_0_3_lut_rep_65 (.A(n5663), .B(n6617), .C(rd_add), 
         .Z(sclk_N_638_enable_1)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(178[7] 187[14])
    defparam tx_buf_7__N_609_I_0_3_lut_rep_65.init = 16'hc5c5;
    LUT4 mux_414_Mux_1_i7_4_lut (.A(n5671), .B(tx_buf[7]), .C(rd_add), 
         .D(roe_N_630), .Z(n1008[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(179[9] 184[18])
    defparam mux_414_Mux_1_i7_4_lut.init = 16'hac0c;
    LUT4 i1_4_lut (.A(bit_cnt[9]), .B(bit_cnt[8]), .C(n6466), .D(spi_rst), 
         .Z(n5671)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut.init = 16'h0100;
    LUT4 i4739_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[2]), .B(spi_rst), 
         .C(n6768), .D(n6489), .Z(n6768)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i4739_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 i1773_3_lut (.A(n2962), .B(n2961), .C(n6807), .Z(tx_buf[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i1773_3_lut.init = 16'hcaca;
    LUT4 i1745_3_lut (.A(n2934), .B(n2933), .C(n6804), .Z(tx_buf[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i1745_3_lut.init = 16'hcaca;
    LUT4 i4744_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[1]), .B(spi_rst), 
         .C(n6759), .D(n6489), .Z(n6759)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i4744_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 i4749_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[7]), .B(spi_rst), 
         .C(n6813), .D(n6489), .Z(n6813)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i4749_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 i1753_3_lut (.A(n2942), .B(n2941), .C(n6822), .Z(tx_buf[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i1753_3_lut.init = 16'hcaca;
    LUT4 debug1_N_543_I_0_284_2_lut (.A(debug1), .B(bit_cnt[12]), .Z(rx_buf_4__N_550)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[12:69])
    defparam debug1_N_543_I_0_284_2_lut.init = 16'h4444;
    LUT4 tx_buf_7__I_18_3_lut_rep_112 (.A(\spi_next_state_3__N_515[3] ), .B(spi_rst), 
         .C(spi_tx_load_en), .Z(n6489)) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__I_18_3_lut_rep_112.init = 16'hb3b3;
    LUT4 ss_n_I_0_306_2_lut_rep_89 (.A(\spi_next_state_3__N_515[3] ), .B(spi_st_load_en), 
         .Z(n6466)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(107[9:63])
    defparam ss_n_I_0_306_2_lut_rep_89.init = 16'h8888;
    LUT4 i4734_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[3]), .B(spi_rst), 
         .C(n6783), .D(n6489), .Z(n6783)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i4734_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 trdy_I_22_2_lut_3_lut (.A(\spi_next_state_3__N_515[3] ), .B(spi_st_load_en), 
         .C(spi_st_load_trdy), .Z(trdy_N_619)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(107[9:63])
    defparam trdy_I_22_2_lut_3_lut.init = 16'h0808;
    LUT4 tx_buf_7__N_568_I_0_293_2_lut_rep_67_3_lut_4_lut (.A(\spi_next_state_3__N_515[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[2]), .Z(n6444)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_568_I_0_293_2_lut_rep_67_3_lut_4_lut.init = 16'h8000;
    LUT4 trdy_N_620_I_0_317_2_lut_3_lut (.A(\spi_next_state_3__N_515[3] ), 
         .B(spi_st_load_en), .C(spi_st_load_trdy), .Z(rrdy_N_648)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(107[9:63])
    defparam trdy_N_620_I_0_317_2_lut_3_lut.init = 16'h8080;
    LUT4 debug1_I_0_2_lut_rep_90 (.A(debug1), .B(bit_cnt[11]), .Z(n6467)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(142[13:47])
    defparam debug1_I_0_2_lut_rep_90.init = 16'h8888;
    LUT4 i3347_2_lut_3_lut (.A(debug1), .B(bit_cnt[11]), .C(spi_mosi), 
         .Z(roe_N_650)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(142[13:47])
    defparam i3347_2_lut_3_lut.init = 16'h8080;
    LUT4 tx_buf_7__N_568_I_0_292_2_lut_rep_68_3_lut_4_lut (.A(\spi_next_state_3__N_515[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[3]), .Z(n6445)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_568_I_0_292_2_lut_rep_68_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_91 (.A(debug0), .B(debug1), .Z(top_test0_c_enable_1)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam i1_2_lut_rep_91.init = 16'h2222;
    LUT4 rx_buf_0__N_558_I_0_4_lut_4_lut (.A(debug0), .B(debug1), .C(bit_cnt[10]), 
         .D(spi_mosi), .Z(rrdy_N_646)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam rx_buf_0__N_558_I_0_4_lut_4_lut.init = 16'he222;
    LUT4 tx_buf_7__N_568_I_0_2_lut_rep_71_3_lut_4_lut (.A(\spi_next_state_3__N_515[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[0]), .Z(n6448)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_568_I_0_2_lut_rep_71_3_lut_4_lut.init = 16'h33b3;
    LUT4 i4729_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[4]), .B(spi_rst), 
         .C(n6822), .D(n6489), .Z(n6822)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i4729_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 i1_2_lut_adj_44 (.A(bit_cnt[9]), .B(debug1), .Z(rx_buf_7__N_541)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam i1_2_lut_adj_44.init = 16'h2222;
    LUT4 i1_4_lut_adj_45 (.A(bit_cnt[8]), .B(trdy_N_617), .C(trdy_N_619), 
         .D(spi_rst), .Z(n5527)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_45.init = 16'h0800;
    LUT4 debug1_N_543_I_0_282_2_lut (.A(debug1), .B(bit_cnt[10]), .Z(rx_buf_6__N_546)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[12:69])
    defparam debug1_N_543_I_0_282_2_lut.init = 16'h4444;
    LUT4 tx_buf_7__N_568_I_0_291_2_lut_rep_66_3_lut_4_lut (.A(\spi_next_state_3__N_515[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[4]), .Z(n6443)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_568_I_0_291_2_lut_rep_66_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_46 (.A(debug1), .B(debug0), .C(rrdy_N_623), .D(n6453), 
         .Z(roe_N_652)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_46.init = 16'h4000;
    LUT4 i1749_3_lut (.A(n2938), .B(n2937), .C(n6756), .Z(tx_buf[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i1749_3_lut.init = 16'hcaca;
    LUT4 i4268_4_lut (.A(\spi_next_state_3__N_515[3] ), .B(spi_st_load_en), 
         .C(spi_rx_req), .D(spi_st_load_trdy), .Z(n5470)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))) */ ;
    defparam i4268_4_lut.init = 16'ha0a8;
    LUT4 i1769_3_lut (.A(n2958), .B(n2957), .C(n6813), .Z(tx_buf[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i1769_3_lut.init = 16'hcaca;
    LUT4 tx_buf_i1_i5_3_lut_4_lut (.A(n5663), .B(rd_add), .C(tx_buf[3]), 
         .D(tx_buf[4]), .Z(n18[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam tx_buf_i1_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 i4654_3_lut (.A(n5527), .B(n5516), .C(bit_cnt[9]), .Z(n3)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(175[5] 188[12])
    defparam i4654_3_lut.init = 16'hcaca;
    LUT4 i1761_3_lut (.A(n2950), .B(n2949), .C(n6768), .Z(tx_buf[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i1761_3_lut.init = 16'hcaca;
    LUT4 i1765_3_lut (.A(n2954), .B(n2953), .C(n6759), .Z(tx_buf[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i1765_3_lut.init = 16'hcaca;
    LUT4 tx_buf_7__N_568_I_0_290_2_lut_rep_80_3_lut_4_lut (.A(\spi_next_state_3__N_515[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[5]), .Z(n6457)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_568_I_0_290_2_lut_rep_80_3_lut_4_lut.init = 16'h8000;
    LUT4 ss_n_I_0_279_2_lut_rep_103 (.A(\spi_next_state_3__N_515[3] ), .B(spi_rx_req), 
         .Z(n6480)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(161[11:38])
    defparam ss_n_I_0_279_2_lut_rep_103.init = 16'h8888;
    LUT4 tx_buf_i1_i1_3_lut_4_lut (.A(n5663), .B(rd_add), .C(tx_buf[7]), 
         .D(tx_buf[0]), .Z(n18[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam tx_buf_i1_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1757_3_lut (.A(n2946), .B(n2945), .C(n6783), .Z(tx_buf[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i1757_3_lut.init = 16'hcaca;
    LUT4 tx_buf_7__N_568_I_0_301_2_lut_rep_75_3_lut_4_lut (.A(\spi_next_state_3__N_515[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[2]), .Z(n6452)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_568_I_0_301_2_lut_rep_75_3_lut_4_lut.init = 16'h33b3;
    LUT4 i4719_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[5]), .B(spi_rst), 
         .C(n6804), .D(n6489), .Z(n6804)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i4719_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 i1_4_lut_adj_47 (.A(debug0), .B(n5659), .C(n5655), .D(bit_cnt[1]), 
         .Z(n5663)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_47.init = 16'hfffe;
    LUT4 debug1_N_543_I_0_285_2_lut (.A(debug1), .B(bit_cnt[13]), .Z(rx_buf_3__N_552)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[12:69])
    defparam debug1_N_543_I_0_285_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_adj_48 (.A(bit_cnt[7]), .B(bit_cnt[6]), .C(bit_cnt[4]), 
         .D(bit_cnt[5]), .Z(n5659)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_48.init = 16'hfffe;
    LUT4 tx_buf_7__N_568_I_0_289_2_lut_rep_83_3_lut_4_lut (.A(\spi_next_state_3__N_515[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[6]), .Z(n6460)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_568_I_0_289_2_lut_rep_83_3_lut_4_lut.init = 16'h8000;
    LUT4 i4724_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[0]), .B(spi_rst), 
         .C(n6756), .D(n6489), .Z(n6756)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i4724_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 reset_n_I_0_1_lut_rep_86 (.A(spi_rst), .Z(n6463)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(107[68:81])
    defparam reset_n_I_0_1_lut_rep_86.init = 16'h5555;
    LUT4 debug1_N_543_I_0_283_2_lut (.A(debug1), .B(bit_cnt[11]), .Z(rx_buf_5__N_548)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[12:69])
    defparam debug1_N_543_I_0_283_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_4_lut_adj_49 (.A(spi_rst), .B(n6466), .C(roe_N_652), 
         .D(n6467), .Z(top_test0_c_enable_2)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(107[68:81])
    defparam i1_4_lut_4_lut_adj_49.init = 16'hfffd;
    LUT4 i1_2_lut_adj_50 (.A(bit_cnt[2]), .B(bit_cnt[3]), .Z(n5655)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_50.init = 16'heeee;
    LUT4 tx_buf_7__N_568_I_0_295_2_lut_rep_72_3_lut_4_lut (.A(\spi_next_state_3__N_515[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[0]), .Z(n6449)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_568_I_0_295_2_lut_rep_72_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_4_lut (.A(bit_cnt[8]), .B(rrdy_N_623), .C(spi_rst), 
         .D(n5470), .Z(n5516)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 tx_buf_7__N_568_I_0_294_2_lut_rep_84_3_lut_4_lut (.A(\spi_next_state_3__N_515[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[1]), .Z(n6461)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_568_I_0_294_2_lut_rep_84_3_lut_4_lut.init = 16'h8000;
    LUT4 tx_buf_7__N_568_I_0_300_2_lut_rep_74_3_lut_4_lut (.A(\spi_next_state_3__N_515[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[3]), .Z(n6451)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_568_I_0_300_2_lut_rep_74_3_lut_4_lut.init = 16'h33b3;
    LUT4 tx_buf_7__N_568_I_0_296_2_lut_rep_77_3_lut_4_lut (.A(\spi_next_state_3__N_515[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[7]), .Z(n6454)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_568_I_0_296_2_lut_rep_77_3_lut_4_lut.init = 16'h33b3;
    LUT4 tx_buf_7__N_568_I_0_299_2_lut_rep_70_3_lut_4_lut (.A(\spi_next_state_3__N_515[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[4]), .Z(n6447)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_568_I_0_299_2_lut_rep_70_3_lut_4_lut.init = 16'h33b3;
    LUT4 tx_buf_7__I_0_303_2_lut_rep_73_3_lut_4_lut (.A(\spi_next_state_3__N_515[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[7]), .Z(n6450)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__I_0_303_2_lut_rep_73_3_lut_4_lut.init = 16'h8000;
    LUT4 tx_buf_7__N_568_I_0_298_2_lut_rep_79_3_lut_4_lut (.A(\spi_next_state_3__N_515[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[5]), .Z(n6456)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_568_I_0_298_2_lut_rep_79_3_lut_4_lut.init = 16'h33b3;
    LUT4 i4782_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[6]), .B(spi_rst), 
         .C(n6807), .D(n6489), .Z(n6807)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i4782_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    
endmodule
//
// Verilog Description of module ble_packet_mem
//

module ble_packet_mem (top_test2_c, VCC_net, n6455, mem_inf_we, mem_inf_addr, 
            mem_inf_dataIn, mem_inf_q, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input top_test2_c;
    input VCC_net;
    input n6455;
    input mem_inf_we;
    input [7:0]mem_inf_addr;
    input [7:0]mem_inf_dataIn;
    output [7:0]mem_inf_q;
    input GND_net;
    
    wire top_test2_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(24[10:19])
    
    DP16KD ble_packet_mem_0_0_0_0 (.DIA0(mem_inf_dataIn[0]), .DIA1(mem_inf_dataIn[1]), 
           .DIA2(mem_inf_dataIn[2]), .DIA3(mem_inf_dataIn[3]), .DIA4(mem_inf_dataIn[4]), 
           .DIA5(mem_inf_dataIn[5]), .DIA6(mem_inf_dataIn[6]), .DIA7(mem_inf_dataIn[7]), 
           .DIA8(GND_net), .DIA9(GND_net), .DIA10(GND_net), .DIA11(GND_net), 
           .DIA12(GND_net), .DIA13(GND_net), .DIA14(GND_net), .DIA15(GND_net), 
           .DIA16(GND_net), .DIA17(GND_net), .ADA0(GND_net), .ADA1(GND_net), 
           .ADA2(GND_net), .ADA3(mem_inf_addr[0]), .ADA4(mem_inf_addr[1]), 
           .ADA5(mem_inf_addr[2]), .ADA6(mem_inf_addr[3]), .ADA7(mem_inf_addr[4]), 
           .ADA8(mem_inf_addr[5]), .ADA9(mem_inf_addr[6]), .ADA10(mem_inf_addr[7]), 
           .ADA11(GND_net), .ADA12(GND_net), .ADA13(GND_net), .CEA(VCC_net), 
           .OCEA(VCC_net), .CLKA(top_test2_c), .WEA(mem_inf_we), .CSA0(GND_net), 
           .CSA1(GND_net), .CSA2(GND_net), .RSTA(n6455), .DIB0(GND_net), 
           .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), 
           .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), 
           .DIB9(GND_net), .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), 
           .DIB13(GND_net), .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), 
           .DIB17(GND_net), .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), 
           .ADB3(GND_net), .ADB4(GND_net), .ADB5(GND_net), .ADB6(GND_net), 
           .ADB7(GND_net), .ADB8(GND_net), .ADB9(GND_net), .ADB10(GND_net), 
           .ADB11(GND_net), .ADB12(GND_net), .ADB13(GND_net), .CEB(VCC_net), 
           .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), .CSB0(GND_net), 
           .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), .DOA0(mem_inf_q[0]), 
           .DOA1(mem_inf_q[1]), .DOA2(mem_inf_q[2]), .DOA3(mem_inf_q[3]), 
           .DOA4(mem_inf_q[4]), .DOA5(mem_inf_q[5]), .DOA6(mem_inf_q[6]), 
           .DOA7(mem_inf_q[7])) /* synthesis MEM_LPC_FILE="ble_packet_mem.lpc", MEM_INIT_FILE="INIT_ALL_0s", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=496, LSE_RLINE=504 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(496[16] 504[2])
    defparam ble_packet_mem_0_0_0_0.DATA_WIDTH_A = 9;
    defparam ble_packet_mem_0_0_0_0.DATA_WIDTH_B = 9;
    defparam ble_packet_mem_0_0_0_0.REGMODE_A = "OUTREG";
    defparam ble_packet_mem_0_0_0_0.REGMODE_B = "NOREG";
    defparam ble_packet_mem_0_0_0_0.RESETMODE = "SYNC";
    defparam ble_packet_mem_0_0_0_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam ble_packet_mem_0_0_0_0.WRITEMODE_A = "NORMAL";
    defparam ble_packet_mem_0_0_0_0.WRITEMODE_B = "NORMAL";
    defparam ble_packet_mem_0_0_0_0.CSDECODE_A = "0b000";
    defparam ble_packet_mem_0_0_0_0.CSDECODE_B = "0b111";
    defparam ble_packet_mem_0_0_0_0.GSR = "ENABLED";
    defparam ble_packet_mem_0_0_0_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ble_packet_mem_0_0_0_0.INIT_DATA = "STATIC";
    
endmodule
//
// Verilog Description of module packetReader
//

module packetReader (pktReader_mem_addr, clk_N_207, top_test6_c, top_test2_c, 
            top_test5_c, top_test4_c, pktReader_ready, \cosine[1] , 
            cosOut_12__N_425, n607, n5528, top_test3_c, \mem_current_state[2] , 
            n5758, ble_reg_pkt_size, n6488, n6618, mem_inf_q, GND_net, 
            VCC_net, n11) /* synthesis syn_module_defined=1 */ ;
    output [7:0]pktReader_mem_addr;
    input clk_N_207;
    input top_test6_c;
    input top_test2_c;
    output top_test5_c;
    output top_test4_c;
    input pktReader_ready;
    input \cosine[1] ;
    input cosOut_12__N_425;
    input n607;
    output n5528;
    output top_test3_c;
    output \mem_current_state[2] ;
    input n5758;
    input [7:0]ble_reg_pkt_size;
    output n6488;
    input n6618;
    input [7:0]mem_inf_q;
    input GND_net;
    input VCC_net;
    output n11;
    
    wire clk_N_207 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(9[32:40])
    wire top_test6_c /* synthesis is_clock=1, SET_AS_NETWORK=top_test6_c */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(28[11:20])
    wire top_test2_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(24[10:19])
    
    wire clk_N_207_enable_28, ready_N_205, n2975;
    wire [2:0]symCounter;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(137[11:21])
    
    wire n6502, top_test6_c_enable_2, n2972;
    wire [3:0]mod_current_state;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(135[11:28])
    wire [3:0]mod_next_state_3__N_220;
    
    wire ble_oct_rdy, mem_next_state_3__N_230, ble_mod_done, ble_mod_done_N_283, 
        n2969;
    wire [7:0]ble_oct;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(24[26:33])
    
    wire clk_N_207_enable_19;
    wire [7:0]ble_oct_7__N_208;
    
    wire fskModule_start, clk_N_207_enable_6, start_N_265, countRst, 
        clk_N_207_enable_7, n6474, clk_N_207_enable_9, n37, ble_oct_req;
    wire [0:0]n1560;
    
    wire n2967, mem_next_state_3__N_229, clk_N_207_enable_11, n5827, 
        n2985, n2987, n2977, n6500, n2983, n2981, top_test2_c_enable_2, 
        n2979, n49, n51, n4, n6504, n2557, mem_next_state_3__N_228, 
        n5433, mem_next_state_3__N_227, n6503, n6465, n5820, n5819, 
        n5141;
    wire [7:0]n1;
    
    wire n5142, n5818, n5817, n5816, n6472, n5775, n12, n14, 
        n5815, n5814, n5813;
    wire [3:0]n1529;
    
    wire n8, n5778, n5825, n5826, n5537, n6469, n6471, n5767, 
        n6476, n6475;
    wire [2:0]symVal_N_271;
    
    wire n10, n5821, n5822, n5823, n5824, n6, n5144, n6501, 
        n5143;
    
    FD1P3DX mem_addr_946__i1 (.D(n2975), .SP(clk_N_207_enable_28), .CK(clk_N_207), 
            .CD(ready_N_205), .Q(pktReader_mem_addr[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(101[17:44])
    defparam mem_addr_946__i1.GSR = "DISABLED";
    FD1S3BX symCounter_i0_i0 (.D(n6502), .CK(top_test6_c), .PD(ready_N_205), 
            .Q(symCounter[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=417, LSE_RLINE=430 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(271[11] 282[5])
    defparam symCounter_i0_i0.GSR = "DISABLED";
    FD1P3BX symCounter_i0_i1 (.D(n2972), .SP(top_test6_c_enable_2), .CK(top_test6_c), 
            .PD(ready_N_205), .Q(symCounter[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=417, LSE_RLINE=430 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(271[11] 282[5])
    defparam symCounter_i0_i1.GSR = "DISABLED";
    FD1S3DX mod_current_state_i1 (.D(mod_next_state_3__N_220[0]), .CK(top_test2_c), 
            .CD(ready_N_205), .Q(mod_current_state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=417, LSE_RLINE=430 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(145[11] 147[5])
    defparam mod_current_state_i1.GSR = "DISABLED";
    FD1S3DX ble_oct_rdy_113 (.D(mem_next_state_3__N_230), .CK(clk_N_207), 
            .CD(ready_N_205), .Q(ble_oct_rdy)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=417, LSE_RLINE=430 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(92[11] 127[5])
    defparam ble_oct_rdy_113.GSR = "DISABLED";
    FD1S3DX ble_mod_done_114 (.D(ble_mod_done_N_283), .CK(clk_N_207), .CD(ready_N_205), 
            .Q(ble_mod_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=417, LSE_RLINE=430 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(92[11] 127[5])
    defparam ble_mod_done_114.GSR = "DISABLED";
    FD1P3BX symCounter_i0_i2 (.D(n2969), .SP(top_test6_c_enable_2), .CK(top_test6_c), 
            .PD(ready_N_205), .Q(symCounter[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=417, LSE_RLINE=430 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(271[11] 282[5])
    defparam symCounter_i0_i2.GSR = "DISABLED";
    FD1P3DX ble_oct_i0 (.D(ble_oct_7__N_208[0]), .SP(clk_N_207_enable_19), 
            .CK(clk_N_207), .CD(ready_N_205), .Q(ble_oct[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=417, LSE_RLINE=430 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(202[11] 264[5])
    defparam ble_oct_i0.GSR = "DISABLED";
    FD1P3DX start_121 (.D(start_N_265), .SP(clk_N_207_enable_6), .CK(clk_N_207), 
            .CD(ready_N_205), .Q(fskModule_start)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=417, LSE_RLINE=430 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(202[11] 264[5])
    defparam start_121.GSR = "DISABLED";
    FD1P3BX countRst_122 (.D(n6474), .SP(clk_N_207_enable_7), .CK(clk_N_207), 
            .PD(ready_N_205), .Q(countRst)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=417, LSE_RLINE=430 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(202[11] 264[5])
    defparam countRst_122.GSR = "DISABLED";
    FD1P3DX debug1_123 (.D(n37), .SP(clk_N_207_enable_9), .CK(clk_N_207), 
            .CD(ready_N_205), .Q(top_test5_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=417, LSE_RLINE=430 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(202[11] 264[5])
    defparam debug1_123.GSR = "DISABLED";
    FD1P3BX ble_oct_req_120 (.D(n1560[0]), .SP(clk_N_207_enable_9), .CK(clk_N_207), 
            .PD(ready_N_205), .Q(ble_oct_req)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=417, LSE_RLINE=430 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(202[11] 264[5])
    defparam ble_oct_req_120.GSR = "DISABLED";
    FD1P3DX mem_addr_946__i0 (.D(n2967), .SP(clk_N_207_enable_28), .CK(clk_N_207), 
            .CD(ready_N_205), .Q(pktReader_mem_addr[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(101[17:44])
    defparam mem_addr_946__i0.GSR = "DISABLED";
    FD1P3AX debug0_115 (.D(mem_next_state_3__N_229), .SP(pktReader_ready), 
            .CK(clk_N_207), .Q(top_test4_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(92[11] 127[5])
    defparam debug0_115.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut_4_lut (.A(fskModule_start), .B(\cosine[1] ), .C(cosOut_12__N_425), 
         .D(n607), .Z(n5528)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(202[11] 264[5])
    defparam i1_3_lut_4_lut_4_lut.init = 16'hfffd;
    FD1P3DX symVal_117 (.D(n5827), .SP(clk_N_207_enable_11), .CK(clk_N_207), 
            .CD(ready_N_205), .Q(top_test3_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=417, LSE_RLINE=430 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(202[11] 264[5])
    defparam symVal_117.GSR = "DISABLED";
    FD1P3DX ble_oct_i7 (.D(ble_oct_7__N_208[7]), .SP(clk_N_207_enable_19), 
            .CK(clk_N_207), .CD(ready_N_205), .Q(ble_oct[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=417, LSE_RLINE=430 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(202[11] 264[5])
    defparam ble_oct_i7.GSR = "DISABLED";
    FD1P3DX ble_oct_i6 (.D(ble_oct_7__N_208[6]), .SP(clk_N_207_enable_19), 
            .CK(clk_N_207), .CD(ready_N_205), .Q(ble_oct[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=417, LSE_RLINE=430 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(202[11] 264[5])
    defparam ble_oct_i6.GSR = "DISABLED";
    FD1P3DX ble_oct_i5 (.D(ble_oct_7__N_208[5]), .SP(clk_N_207_enable_19), 
            .CK(clk_N_207), .CD(ready_N_205), .Q(ble_oct[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=417, LSE_RLINE=430 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(202[11] 264[5])
    defparam ble_oct_i5.GSR = "DISABLED";
    FD1P3DX ble_oct_i4 (.D(ble_oct_7__N_208[4]), .SP(clk_N_207_enable_19), 
            .CK(clk_N_207), .CD(ready_N_205), .Q(ble_oct[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=417, LSE_RLINE=430 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(202[11] 264[5])
    defparam ble_oct_i4.GSR = "DISABLED";
    FD1P3DX ble_oct_i3 (.D(ble_oct_7__N_208[3]), .SP(clk_N_207_enable_19), 
            .CK(clk_N_207), .CD(ready_N_205), .Q(ble_oct[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=417, LSE_RLINE=430 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(202[11] 264[5])
    defparam ble_oct_i3.GSR = "DISABLED";
    FD1P3DX ble_oct_i2 (.D(ble_oct_7__N_208[2]), .SP(clk_N_207_enable_19), 
            .CK(clk_N_207), .CD(ready_N_205), .Q(ble_oct[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=417, LSE_RLINE=430 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(202[11] 264[5])
    defparam ble_oct_i2.GSR = "DISABLED";
    FD1P3DX ble_oct_i1 (.D(ble_oct_7__N_208[1]), .SP(clk_N_207_enable_19), 
            .CK(clk_N_207), .CD(ready_N_205), .Q(ble_oct[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=417, LSE_RLINE=430 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(202[11] 264[5])
    defparam ble_oct_i1.GSR = "DISABLED";
    FD1P3DX mem_addr_946__i6 (.D(n2985), .SP(clk_N_207_enable_28), .CK(clk_N_207), 
            .CD(ready_N_205), .Q(pktReader_mem_addr[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(101[17:44])
    defparam mem_addr_946__i6.GSR = "DISABLED";
    FD1P3DX mem_addr_946__i7 (.D(n2987), .SP(clk_N_207_enable_28), .CK(clk_N_207), 
            .CD(ready_N_205), .Q(pktReader_mem_addr[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(101[17:44])
    defparam mem_addr_946__i7.GSR = "DISABLED";
    FD1S3DX mod_current_state_i3 (.D(mod_next_state_3__N_220[2]), .CK(top_test2_c), 
            .CD(ready_N_205), .Q(mod_current_state[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=417, LSE_RLINE=430 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(145[11] 147[5])
    defparam mod_current_state_i3.GSR = "DISABLED";
    FD1P3DX mem_addr_946__i2 (.D(n2977), .SP(clk_N_207_enable_28), .CK(clk_N_207), 
            .CD(ready_N_205), .Q(pktReader_mem_addr[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(101[17:44])
    defparam mem_addr_946__i2.GSR = "DISABLED";
    LUT4 i4706_4_lut_else_4_lut (.A(countRst), .B(mod_current_state[2]), 
         .C(mod_current_state[1]), .D(symCounter[0]), .Z(n6500)) /* synthesis lut_function=((B (D)+!B !(C (D)+!C !(D)))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(135[11:28])
    defparam i4706_4_lut_else_4_lut.init = 16'hdf75;
    FD1S3DX mod_current_state_i2 (.D(mod_next_state_3__N_220[1]), .CK(top_test2_c), 
            .CD(ready_N_205), .Q(mod_current_state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=417, LSE_RLINE=430 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(145[11] 147[5])
    defparam mod_current_state_i2.GSR = "DISABLED";
    FD1P3DX mem_addr_946__i5 (.D(n2983), .SP(clk_N_207_enable_28), .CK(clk_N_207), 
            .CD(ready_N_205), .Q(pktReader_mem_addr[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(101[17:44])
    defparam mem_addr_946__i5.GSR = "DISABLED";
    FD1P3DX mem_addr_946__i4 (.D(n2981), .SP(clk_N_207_enable_28), .CK(clk_N_207), 
            .CD(ready_N_205), .Q(pktReader_mem_addr[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(101[17:44])
    defparam mem_addr_946__i4.GSR = "DISABLED";
    FD1P3DX mem_current_state_FSM_i1 (.D(n5758), .SP(top_test2_c_enable_2), 
            .CK(top_test2_c), .CD(ready_N_205), .Q(\mem_current_state[2] ));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(56[3] 83[10])
    defparam mem_current_state_FSM_i1.GSR = "DISABLED";
    FD1P3DX mem_addr_946__i3 (.D(n2979), .SP(clk_N_207_enable_28), .CK(clk_N_207), 
            .CD(ready_N_205), .Q(pktReader_mem_addr[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(101[17:44])
    defparam mem_addr_946__i3.GSR = "DISABLED";
    LUT4 n49_bdd_4_lut (.A(n49), .B(n51), .C(mod_current_state[1]), .D(ble_mod_done), 
         .Z(mod_next_state_3__N_220[0])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n49_bdd_4_lut.init = 16'h00ca;
    LUT4 LessThan_8_i4_4_lut (.A(ble_reg_pkt_size[0]), .B(ble_reg_pkt_size[1]), 
         .C(pktReader_mem_addr[1]), .D(pktReader_mem_addr[0]), .Z(n4)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(68[10:29])
    defparam LessThan_8_i4_4_lut.init = 16'h0c8e;
    LUT4 i1447_1_lut_rep_111 (.A(fskModule_start), .Z(n6488)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(202[11] 264[5])
    defparam i1447_1_lut_rep_111.init = 16'h5555;
    LUT4 i1_4_lut_then_3_lut (.A(ble_mod_done), .B(mod_current_state[0]), 
         .C(mod_current_state[1]), .Z(n6504)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(145[11] 147[5])
    defparam i1_4_lut_then_3_lut.init = 16'h0404;
    FD1S3DX mem_current_state_FSM_i2 (.D(n2557), .CK(top_test2_c), .CD(ready_N_205), 
            .Q(mem_next_state_3__N_230));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(56[3] 83[10])
    defparam mem_current_state_FSM_i2.GSR = "DISABLED";
    FD1S3DX mem_current_state_FSM_i3 (.D(clk_N_207_enable_28), .CK(top_test2_c), 
            .CD(ready_N_205), .Q(mem_next_state_3__N_229));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(56[3] 83[10])
    defparam mem_current_state_FSM_i3.GSR = "DISABLED";
    FD1S3DX mem_current_state_FSM_i4 (.D(n5433), .CK(top_test2_c), .CD(ready_N_205), 
            .Q(mem_next_state_3__N_228));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(56[3] 83[10])
    defparam mem_current_state_FSM_i4.GSR = "DISABLED";
    FD1S3BX mem_current_state_FSM_i5 (.D(n6618), .CK(top_test2_c), .PD(ready_N_205), 
            .Q(mem_next_state_3__N_227));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(56[3] 83[10])
    defparam mem_current_state_FSM_i5.GSR = "DISABLED";
    LUT4 i1_4_lut_else_3_lut (.A(ble_mod_done), .B(mod_current_state[0]), 
         .C(top_test6_c), .D(mod_current_state[1]), .Z(n6503)) /* synthesis lut_function=(!(A+!(B (D)+!B !(C+!(D))))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(145[11] 147[5])
    defparam i1_4_lut_else_3_lut.init = 16'h4500;
    LUT4 i4610_4_lut (.A(n6465), .B(ble_oct[3]), .C(mod_current_state[1]), 
         .D(mem_inf_q[3]), .Z(n5820)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i4610_4_lut.init = 16'hcac0;
    LUT4 i4609_4_lut (.A(n6465), .B(ble_oct[2]), .C(mod_current_state[1]), 
         .D(mem_inf_q[2]), .Z(n5819)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i4609_4_lut.init = 16'hcac0;
    CCU2C mem_addr_946_add_4_3 (.A0(pktReader_mem_addr[1]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(pktReader_mem_addr[2]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n5141), .COUT(n5142), .S0(n1[1]), 
          .S1(n1[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(101[17:44])
    defparam mem_addr_946_add_4_3.INIT0 = 16'haaa0;
    defparam mem_addr_946_add_4_3.INIT1 = 16'haaa0;
    defparam mem_addr_946_add_4_3.INJECT1_0 = "NO";
    defparam mem_addr_946_add_4_3.INJECT1_1 = "NO";
    LUT4 i1376_3_lut (.A(mem_next_state_3__N_230), .B(mem_next_state_3__N_229), 
         .C(ble_oct_req), .Z(n2557)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(56[3] 83[10])
    defparam i1376_3_lut.init = 16'hcece;
    LUT4 i3427_2_lut (.A(n1[6]), .B(mem_next_state_3__N_227), .Z(n2985)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(101[17:44])
    defparam i3427_2_lut.init = 16'h2222;
    LUT4 i4608_4_lut (.A(n6465), .B(ble_oct[1]), .C(mod_current_state[1]), 
         .D(mem_inf_q[1]), .Z(n5818)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i4608_4_lut.init = 16'hcac0;
    LUT4 i4607_4_lut (.A(n6465), .B(ble_oct[0]), .C(mod_current_state[1]), 
         .D(mem_inf_q[0]), .Z(n5817)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i4607_4_lut.init = 16'hcac0;
    CCU2C mem_addr_946_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pktReader_mem_addr[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n5141), .S1(n1[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(101[17:44])
    defparam mem_addr_946_add_4_1.INIT0 = 16'h0000;
    defparam mem_addr_946_add_4_1.INIT1 = 16'h555f;
    defparam mem_addr_946_add_4_1.INJECT1_0 = "NO";
    defparam mem_addr_946_add_4_1.INJECT1_1 = "NO";
    LUT4 i1790_2_lut (.A(mem_next_state_3__N_227), .B(mem_next_state_3__N_228), 
         .Z(clk_N_207_enable_28)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(101[17:44])
    defparam i1790_2_lut.init = 16'heeee;
    LUT4 i3428_2_lut (.A(n1[7]), .B(mem_next_state_3__N_227), .Z(n2987)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(101[17:44])
    defparam i3428_2_lut.init = 16'h2222;
    LUT4 i4606_4_lut (.A(mem_inf_q[7]), .B(ble_oct[7]), .C(mod_current_state[1]), 
         .D(n6465), .Z(n5816)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i4606_4_lut.init = 16'hcac0;
    LUT4 i4642_4_lut_4_lut (.A(n6472), .B(n5775), .C(n12), .D(n4), .Z(n14)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(68[10:29])
    defparam i4642_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i4605_4_lut (.A(mem_inf_q[6]), .B(ble_oct[6]), .C(mod_current_state[1]), 
         .D(n6465), .Z(n5815)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i4605_4_lut.init = 16'hcac0;
    LUT4 i3393_3_lut (.A(symCounter[1]), .B(countRst), .C(symCounter[0]), 
         .Z(n2972)) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(271[11] 282[5])
    defparam i3393_3_lut.init = 16'hb7b7;
    LUT4 ready_I_0_1_lut (.A(pktReader_ready), .Z(ready_N_205)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(88[6:18])
    defparam ready_I_0_1_lut.init = 16'h5555;
    LUT4 i4604_4_lut (.A(n6465), .B(ble_oct[5]), .C(mod_current_state[1]), 
         .D(mem_inf_q[5]), .Z(n5814)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i4604_4_lut.init = 16'hcac0;
    LUT4 i4603_4_lut (.A(n6465), .B(ble_oct[4]), .C(mod_current_state[1]), 
         .D(mem_inf_q[4]), .Z(n5813)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i4603_4_lut.init = 16'hcac0;
    LUT4 i3422_2_lut (.A(n1[1]), .B(mem_next_state_3__N_227), .Z(n2975)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(101[17:44])
    defparam i3422_2_lut.init = 16'h2222;
    LUT4 i3421_3_lut (.A(n1529[2]), .B(ble_mod_done), .C(mod_current_state[2]), 
         .Z(mod_next_state_3__N_220[2])) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(155[11] 189[5])
    defparam i3421_3_lut.init = 16'hcece;
    LUT4 mux_642_Mux_2_i3_4_lut (.A(ble_oct_rdy), .B(mod_current_state[1]), 
         .C(mod_current_state[0]), .D(top_test6_c), .Z(n1529[2])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A ((C+!(D))+!B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(156[3] 188[10])
    defparam mux_642_Mux_2_i3_4_lut.init = 16'h2c20;
    LUT4 i1358_3_lut (.A(mem_next_state_3__N_227), .B(\mem_current_state[2] ), 
         .C(ble_mod_done), .Z(ble_mod_done_N_283)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(93[3] 126[10])
    defparam i1358_3_lut.init = 16'hdcdc;
    LUT4 i1_4_lut (.A(countRst), .B(symCounter[1]), .C(symCounter[2]), 
         .D(symCounter[0]), .Z(n2969)) /* synthesis lut_function=((B (C)+!B (C (D)+!C !(D)))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(202[11] 264[5])
    defparam i1_4_lut.init = 16'hf5d7;
    LUT4 i3373_2_lut_rep_88 (.A(mod_current_state[2]), .B(mod_current_state[0]), 
         .Z(n6465)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(204[3] 263[10])
    defparam i3373_2_lut_rep_88.init = 16'h8888;
    LUT4 i3423_2_lut (.A(n1[2]), .B(mem_next_state_3__N_227), .Z(n2977)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(101[17:44])
    defparam i3423_2_lut.init = 16'h2222;
    LUT4 i4717_4_lut_4_lut (.A(mod_current_state[2]), .B(mod_current_state[0]), 
         .C(mod_current_state[1]), .D(countRst), .Z(top_test6_c_enable_2)) /* synthesis lut_function=(!(A (B (C (D))+!B (D))+!A !(C+!(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(204[3] 263[10])
    defparam i4717_4_lut_4_lut.init = 16'h58ff;
    PFUMX LessThan_8_i16 (.BLUT(n8), .ALUT(n14), .C0(n5778), .Z(n11)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=417, LSE_RLINE=430 */ ;
    LUT4 i3397_2_lut_3_lut (.A(mod_current_state[2]), .B(mod_current_state[0]), 
         .C(mod_current_state[1]), .Z(start_N_265)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(204[3] 263[10])
    defparam i3397_2_lut_3_lut.init = 16'hf8f8;
    L6MUX21 i4617 (.D0(n5825), .D1(n5826), .SD(symCounter[2]), .Z(n5827));
    LUT4 i3426_2_lut (.A(n1[5]), .B(mem_next_state_3__N_227), .Z(n2983)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(101[17:44])
    defparam i3426_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_2_lut (.A(mod_current_state[2]), .B(mod_current_state[0]), 
         .Z(n49)) /* synthesis lut_function=((B)+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(145[11] 147[5])
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut (.A(mod_current_state[1]), .B(mod_current_state[0]), .Z(n37)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(145[11] 147[5])
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i3425_2_lut (.A(n1[4]), .B(mem_next_state_3__N_227), .Z(n2981)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(101[17:44])
    defparam i3425_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_4_lut (.A(mod_current_state[2]), .B(mod_current_state[0]), 
         .C(n5537), .D(top_test6_c), .Z(n51)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(145[11] 147[5])
    defparam i1_4_lut_4_lut.init = 16'h5140;
    LUT4 LessThan_8_i11_2_lut_rep_92 (.A(pktReader_mem_addr[5]), .B(ble_reg_pkt_size[5]), 
         .Z(n6469)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(68[10:29])
    defparam LessThan_8_i11_2_lut_rep_92.init = 16'h6666;
    LUT4 i1_2_lut_rep_93 (.A(mem_next_state_3__N_230), .B(ble_oct_req), 
         .Z(top_test2_c_enable_2)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(56[3] 83[10])
    defparam i1_2_lut_rep_93.init = 16'h8888;
    LUT4 i1_2_lut_3_lut (.A(mem_next_state_3__N_230), .B(ble_oct_req), .C(n11), 
         .Z(n5433)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(56[3] 83[10])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i4714_4_lut (.A(n6472), .B(n6471), .C(n6469), .D(n5767), .Z(n5778)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(68[10:29])
    defparam i4714_4_lut.init = 16'hfffe;
    LUT4 i4557_4_lut (.A(n6476), .B(n6475), .C(pktReader_mem_addr[2]), 
         .D(ble_reg_pkt_size[2]), .Z(n5767)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(68[10:29])
    defparam i4557_4_lut.init = 16'h1001;
    LUT4 LessThan_8_i13_2_lut_rep_94 (.A(pktReader_mem_addr[6]), .B(ble_reg_pkt_size[6]), 
         .Z(n6471)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(68[10:29])
    defparam LessThan_8_i13_2_lut_rep_94.init = 16'h6666;
    LUT4 i4565_2_lut_3_lut_4_lut (.A(pktReader_mem_addr[6]), .B(ble_reg_pkt_size[6]), 
         .C(ble_reg_pkt_size[5]), .D(pktReader_mem_addr[5]), .Z(n5775)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(68[10:29])
    defparam i4565_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 sub_63_inv_0_i2_1_lut (.A(symCounter[1]), .Z(symVal_N_271[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(226[24:41])
    defparam sub_63_inv_0_i2_1_lut.init = 16'h5555;
    LUT4 LessThan_8_i10_3_lut_3_lut (.A(pktReader_mem_addr[6]), .B(ble_reg_pkt_size[6]), 
         .C(ble_reg_pkt_size[5]), .Z(n10)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(68[10:29])
    defparam LessThan_8_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i3385_2_lut (.A(n1[0]), .B(mem_next_state_3__N_227), .Z(n2967)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(101[17:44])
    defparam i3385_2_lut.init = 16'h2222;
    L6MUX21 i4615 (.D0(n5821), .D1(n5822), .SD(symVal_N_271[1]), .Z(n5825));
    LUT4 i2_3_lut (.A(symCounter[0]), .B(symCounter[1]), .C(symCounter[2]), 
         .Z(n5537)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(271[11] 282[5])
    defparam i2_3_lut.init = 16'hfefe;
    L6MUX21 i4616 (.D0(n5823), .D1(n5824), .SD(symVal_N_271[1]), .Z(n5826));
    LUT4 sub_63_inv_0_i1_1_lut (.A(symCounter[0]), .Z(symVal_N_271[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(226[24:41])
    defparam sub_63_inv_0_i1_1_lut.init = 16'h5555;
    LUT4 LessThan_8_i15_2_lut_rep_95 (.A(pktReader_mem_addr[7]), .B(ble_reg_pkt_size[7]), 
         .Z(n6472)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(68[10:29])
    defparam LessThan_8_i15_2_lut_rep_95.init = 16'h6666;
    LUT4 LessThan_8_i12_3_lut_3_lut (.A(pktReader_mem_addr[7]), .B(ble_reg_pkt_size[7]), 
         .C(n10), .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(68[10:29])
    defparam LessThan_8_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i3424_2_lut (.A(n1[3]), .B(mem_next_state_3__N_227), .Z(n2979)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(101[17:44])
    defparam i3424_2_lut.init = 16'h2222;
    LUT4 i3383_2_lut_rep_97 (.A(top_test6_c), .B(mod_current_state[0]), 
         .Z(n6474)) /* synthesis lut_function=((B)+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(204[3] 263[10])
    defparam i3383_2_lut_rep_97.init = 16'hdddd;
    LUT4 LessThan_8_i7_2_lut_rep_98 (.A(pktReader_mem_addr[3]), .B(ble_reg_pkt_size[3]), 
         .Z(n6475)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(68[10:29])
    defparam LessThan_8_i7_2_lut_rep_98.init = 16'h6666;
    LUT4 LessThan_8_i6_3_lut_3_lut (.A(pktReader_mem_addr[3]), .B(ble_reg_pkt_size[3]), 
         .C(ble_reg_pkt_size[2]), .Z(n6)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(68[10:29])
    defparam LessThan_8_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_8_i9_2_lut_rep_99 (.A(pktReader_mem_addr[4]), .B(ble_reg_pkt_size[4]), 
         .Z(n6476)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(68[10:29])
    defparam LessThan_8_i9_2_lut_rep_99.init = 16'h6666;
    LUT4 LessThan_8_i8_3_lut_3_lut (.A(pktReader_mem_addr[4]), .B(ble_reg_pkt_size[4]), 
         .C(n6), .Z(n8)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(68[10:29])
    defparam LessThan_8_i8_3_lut_3_lut.init = 16'hd4d4;
    PFUMX i4611 (.BLUT(n5813), .ALUT(n5814), .C0(symVal_N_271[0]), .Z(n5821));
    LUT4 i1_2_lut_rep_100 (.A(mod_current_state[1]), .B(mod_current_state[2]), 
         .Z(clk_N_207_enable_7)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(145[11] 147[5])
    defparam i1_2_lut_rep_100.init = 16'h2222;
    LUT4 i1_3_lut_4_lut_3_lut (.A(mod_current_state[1]), .B(mod_current_state[2]), 
         .C(mod_current_state[0]), .Z(clk_N_207_enable_11)) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(145[11] 147[5])
    defparam i1_3_lut_4_lut_3_lut.init = 16'h6262;
    PFUMX i4612 (.BLUT(n5815), .ALUT(n5816), .C0(symVal_N_271[0]), .Z(n5822));
    PFUMX i4613 (.BLUT(n5817), .ALUT(n5818), .C0(symVal_N_271[0]), .Z(n5823));
    PFUMX i4614 (.BLUT(n5819), .ALUT(n5820), .C0(symVal_N_271[0]), .Z(n5824));
    CCU2C mem_addr_946_add_4_9 (.A0(pktReader_mem_addr[7]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5144), .S0(n1[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(101[17:44])
    defparam mem_addr_946_add_4_9.INIT0 = 16'haaa0;
    defparam mem_addr_946_add_4_9.INIT1 = 16'h0000;
    defparam mem_addr_946_add_4_9.INJECT1_0 = "NO";
    defparam mem_addr_946_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_35 (.A(mod_current_state[0]), .B(mod_current_state[1]), 
         .C(mem_inf_q[4]), .Z(ble_oct_7__N_208[4])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(145[11] 147[5])
    defparam i1_2_lut_3_lut_adj_35.init = 16'h2020;
    PFUMX i5074 (.BLUT(n6503), .ALUT(n6504), .C0(mod_current_state[2]), 
          .Z(mod_next_state_3__N_220[1]));
    LUT4 i1_2_lut_3_lut_adj_36 (.A(mod_current_state[0]), .B(mod_current_state[1]), 
         .C(mem_inf_q[5]), .Z(ble_oct_7__N_208[5])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(145[11] 147[5])
    defparam i1_2_lut_3_lut_adj_36.init = 16'h2020;
    LUT4 i3410_2_lut_3_lut (.A(mod_current_state[0]), .B(mod_current_state[1]), 
         .C(mem_inf_q[6]), .Z(ble_oct_7__N_208[6])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(145[11] 147[5])
    defparam i3410_2_lut_3_lut.init = 16'h2020;
    LUT4 i3411_2_lut_3_lut (.A(mod_current_state[0]), .B(mod_current_state[1]), 
         .C(mem_inf_q[7]), .Z(ble_oct_7__N_208[7])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(145[11] 147[5])
    defparam i3411_2_lut_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_37 (.A(mod_current_state[0]), .B(mod_current_state[1]), 
         .C(mod_current_state[2]), .Z(n1560[0])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(145[11] 147[5])
    defparam i1_2_lut_3_lut_adj_37.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_38 (.A(mod_current_state[0]), .B(mod_current_state[1]), 
         .C(mod_current_state[2]), .Z(clk_N_207_enable_9)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(145[11] 147[5])
    defparam i1_2_lut_3_lut_adj_38.init = 16'h2f2f;
    LUT4 i4706_4_lut_then_4_lut (.A(countRst), .B(mod_current_state[2]), 
         .C(mod_current_state[1]), .D(symCounter[0]), .Z(n6501)) /* synthesis lut_function=((B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(135[11:28])
    defparam i4706_4_lut_then_4_lut.init = 16'hd77d;
    LUT4 i1_2_lut_3_lut_adj_39 (.A(mod_current_state[0]), .B(mod_current_state[1]), 
         .C(mem_inf_q[0]), .Z(ble_oct_7__N_208[0])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(145[11] 147[5])
    defparam i1_2_lut_3_lut_adj_39.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_40 (.A(mod_current_state[0]), .B(mod_current_state[1]), 
         .C(mem_inf_q[3]), .Z(ble_oct_7__N_208[3])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(145[11] 147[5])
    defparam i1_2_lut_3_lut_adj_40.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_41 (.A(mod_current_state[0]), .B(mod_current_state[1]), 
         .C(mem_inf_q[2]), .Z(ble_oct_7__N_208[2])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(145[11] 147[5])
    defparam i1_2_lut_3_lut_adj_41.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_42 (.A(mod_current_state[0]), .B(mod_current_state[1]), 
         .C(mem_inf_q[1]), .Z(ble_oct_7__N_208[1])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(145[11] 147[5])
    defparam i1_2_lut_3_lut_adj_42.init = 16'h2020;
    LUT4 i4696_2_lut_rep_105 (.A(mod_current_state[1]), .B(mod_current_state[2]), 
         .Z(clk_N_207_enable_6)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(145[11] 147[5])
    defparam i4696_2_lut_rep_105.init = 16'h7777;
    LUT4 i1_2_lut_3_lut_3_lut (.A(mod_current_state[1]), .B(mod_current_state[2]), 
         .C(mod_current_state[0]), .Z(clk_N_207_enable_19)) /* synthesis lut_function=(A (B)+!A (C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(145[11] 147[5])
    defparam i1_2_lut_3_lut_3_lut.init = 16'hd8d8;
    CCU2C mem_addr_946_add_4_7 (.A0(pktReader_mem_addr[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(pktReader_mem_addr[6]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n5143), .COUT(n5144), .S0(n1[5]), 
          .S1(n1[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(101[17:44])
    defparam mem_addr_946_add_4_7.INIT0 = 16'haaa0;
    defparam mem_addr_946_add_4_7.INIT1 = 16'haaa0;
    defparam mem_addr_946_add_4_7.INJECT1_0 = "NO";
    defparam mem_addr_946_add_4_7.INJECT1_1 = "NO";
    PFUMX i5072 (.BLUT(n6500), .ALUT(n6501), .C0(mod_current_state[0]), 
          .Z(n6502));
    CCU2C mem_addr_946_add_4_5 (.A0(pktReader_mem_addr[3]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(pktReader_mem_addr[4]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n5142), .COUT(n5143), .S0(n1[3]), 
          .S1(n1[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(101[17:44])
    defparam mem_addr_946_add_4_5.INIT0 = 16'haaa0;
    defparam mem_addr_946_add_4_5.INIT1 = 16'haaa0;
    defparam mem_addr_946_add_4_5.INJECT1_0 = "NO";
    defparam mem_addr_946_add_4_5.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module IQSerializer
//

module IQSerializer (clk_N_427, \fskModule_I[0] , \fskModule_I[8] , \fskModule_Q[2] , 
            \fskModule_Q[0] , \fskModule_Q[4] , \fskModule_Q[12] , \fskModule_Q[7] , 
            n2097, \fskModule_Q[6] , IQSerializer_start, \fskModule_I[5] , 
            \fskModule_I[2] , \fskModule_I[4] , \fskModule_I[12] , serial_clk_c, 
            serial) /* synthesis syn_module_defined=1 */ ;
    input clk_N_427;
    input \fskModule_I[0] ;
    input \fskModule_I[8] ;
    input \fskModule_Q[2] ;
    input \fskModule_Q[0] ;
    input \fskModule_Q[4] ;
    input \fskModule_Q[12] ;
    input \fskModule_Q[7] ;
    input n2097;
    input \fskModule_Q[6] ;
    input IQSerializer_start;
    input \fskModule_I[5] ;
    input \fskModule_I[2] ;
    input \fskModule_I[4] ;
    input \fskModule_I[12] ;
    input serial_clk_c;
    output serial;
    
    wire clk_N_427 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(17[11:24])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(19[10:20])
    wire [3:0]ICounter;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(21[41:49])
    
    wire n2974;
    wire [4:0]n1;
    
    wire n6374;
    wire [3:0]QCounter;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(22[41:49])
    
    wire n2989;
    wire [4:0]n1_adj_672;
    wire [4:0]n1007;
    
    wire n6495, n6380, n6381, n6384, n6382, n6386, n6383, n6377, 
        n6379, n2565, n6494, n6496, n6499, n6332, n917, n2561, 
        n913, n6486, n5189;
    wire [3:0]n21;
    
    wire n6497, n6498, n6487;
    wire [3:0]next_state_3__N_461;
    
    wire n6375, n6376;
    
    FD1S3IX ICounter_949__i1 (.D(n1[1]), .CK(clk_N_427), .CD(n2974), .Q(ICounter[1])) /* synthesis syn_preserve="TRUE" */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(82[52:67])
    defparam ICounter_949__i1.GSR = "DISABLED";
    LUT4 fskModule_I_4__bdd_4_lut_5060 (.A(ICounter[1]), .B(\fskModule_I[0] ), 
         .C(\fskModule_I[8] ), .D(ICounter[3]), .Z(n6374)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam fskModule_I_4__bdd_4_lut_5060.init = 16'h44f0;
    FD1S3IX QCounter_942__i1 (.D(n1_adj_672[1]), .CK(clk_N_427), .CD(n2989), 
            .Q(QCounter[1])) /* synthesis syn_preserve="TRUE" */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(85[52:67])
    defparam QCounter_942__i1.GSR = "DISABLED";
    LUT4 n5754_bdd_4_lut_then_3_lut (.A(n1007[1]), .B(\fskModule_Q[2] ), 
         .C(QCounter[2]), .Z(n6495)) /* synthesis lut_function=(A+!((C)+!B)) */ ;
    defparam n5754_bdd_4_lut_then_3_lut.init = 16'haeae;
    LUT4 QCounter_1__bdd_2_lut_5047 (.A(\fskModule_Q[2] ), .B(QCounter[2]), 
         .Z(n6380)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam QCounter_1__bdd_2_lut_5047.init = 16'h2222;
    LUT4 QCounter_1__bdd_3_lut_5048 (.A(\fskModule_Q[0] ), .B(QCounter[2]), 
         .C(\fskModule_Q[4] ), .Z(n6381)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam QCounter_1__bdd_3_lut_5048.init = 16'hb8b8;
    LUT4 gnd_bdd_2_lut_5043_4_lut (.A(n6384), .B(n6382), .C(QCounter[3]), 
         .D(n1007[0]), .Z(n6386)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam gnd_bdd_2_lut_5043_4_lut.init = 16'hca00;
    LUT4 fskModule_Q_6__bdd_3_lut (.A(QCounter[1]), .B(\fskModule_Q[12] ), 
         .C(\fskModule_Q[7] ), .Z(n6383)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam fskModule_Q_6__bdd_3_lut.init = 16'he4e4;
    LUT4 gnd_bdd_2_lut_5029_4_lut (.A(n6377), .B(n6374), .C(ICounter[2]), 
         .D(n1007[2]), .Z(n6379)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam gnd_bdd_2_lut_5029_4_lut.init = 16'hca00;
    FD1S3IX current_state_FSM_i0 (.D(n2565), .CK(clk_N_427), .CD(n2097), 
            .Q(n1007[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam current_state_FSM_i0.GSR = "DISABLED";
    LUT4 n6383_bdd_3_lut (.A(n6383), .B(\fskModule_Q[6] ), .C(QCounter[2]), 
         .Z(n6384)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n6383_bdd_3_lut.init = 16'hcaca;
    LUT4 n5754_bdd_4_lut_else_3_lut (.A(n1007[1]), .B(\fskModule_Q[6] ), 
         .C(\fskModule_Q[7] ), .D(QCounter[2]), .Z(n6494)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam n5754_bdd_4_lut_else_3_lut.init = 16'hfaee;
    LUT4 i4702_2_lut (.A(n1007[0]), .B(IQSerializer_start), .Z(n2989)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(81[14] 97[8])
    defparam i4702_2_lut.init = 16'h7777;
    LUT4 n6331_bdd_3_lut (.A(n6496), .B(n6499), .C(n1007[2]), .Z(n6332)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n6331_bdd_3_lut.init = 16'hcaca;
    LUT4 i392_2_lut_4_lut (.A(ICounter[3]), .B(ICounter[2]), .C(ICounter[1]), 
         .D(n1007[2]), .Z(n917)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i392_2_lut_4_lut.init = 16'h0800;
    LUT4 i2228_1_lut (.A(QCounter[1]), .Z(n1_adj_672[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(85[52:67])
    defparam i2228_1_lut.init = 16'h5555;
    FD1S3IX current_state_FSM_i1 (.D(n917), .CK(clk_N_427), .CD(n2097), 
            .Q(n1007[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam current_state_FSM_i1.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i2 (.D(n2561), .CK(clk_N_427), .CD(n2097), 
            .Q(n1007[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam current_state_FSM_i2.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i3 (.D(n913), .CK(clk_N_427), .CD(n2097), 
            .Q(n1007[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam current_state_FSM_i3.GSR = "DISABLED";
    FD1S3AX current_state_FSM_i4 (.D(n2097), .CK(clk_N_427), .Q(n1007[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam current_state_FSM_i4.GSR = "DISABLED";
    FD1S3IX ICounter_949__i2 (.D(n6486), .CK(clk_N_427), .CD(n2974), .Q(ICounter[2])) /* synthesis syn_preserve="TRUE" */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(82[52:67])
    defparam ICounter_949__i2.GSR = "DISABLED";
    FD1S3IX ICounter_949__i3 (.D(n5189), .CK(clk_N_427), .CD(n2974), .Q(ICounter[3])) /* synthesis syn_preserve="TRUE" */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(82[52:67])
    defparam ICounter_949__i3.GSR = "DISABLED";
    FD1S3IX QCounter_942__i2 (.D(n21[2]), .CK(clk_N_427), .CD(n2989), 
            .Q(QCounter[2])) /* synthesis syn_preserve="TRUE" */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(85[52:67])
    defparam QCounter_942__i2.GSR = "DISABLED";
    FD1S3IX QCounter_942__i3 (.D(n21[3]), .CK(clk_N_427), .CD(n2989), 
            .Q(QCounter[3])) /* synthesis syn_preserve="TRUE" */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(85[52:67])
    defparam QCounter_942__i3.GSR = "DISABLED";
    PFUMX i5070 (.BLUT(n6497), .ALUT(n6498), .C0(\fskModule_I[5] ), .Z(n6499));
    LUT4 i1380_3_lut (.A(n1007[2]), .B(n1007[3]), .C(n6487), .Z(n2561)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam i1380_3_lut.init = 16'hecec;
    LUT4 reduce_or_387_i2_3_lut (.A(next_state_3__N_461[2]), .B(n1007[4]), 
         .C(n1007[0]), .Z(n913)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam reduce_or_387_i2_3_lut.init = 16'hdcdc;
    LUT4 i1_3_lut (.A(ICounter[3]), .B(ICounter[2]), .C(ICounter[1]), 
         .Z(n5189)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i1_3_lut.init = 16'h6a6a;
    LUT4 i4699_2_lut (.A(n1007[2]), .B(IQSerializer_start), .Z(n2974)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(81[14] 97[8])
    defparam i4699_2_lut.init = 16'h7777;
    LUT4 i3952_3_lut (.A(QCounter[3]), .B(QCounter[2]), .C(QCounter[1]), 
         .Z(n21[3])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(85[52:67])
    defparam i3952_3_lut.init = 16'h6a6a;
    LUT4 i3945_2_lut (.A(QCounter[2]), .B(QCounter[1]), .Z(n21[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(85[52:67])
    defparam i3945_2_lut.init = 16'h6666;
    LUT4 sub_4_inv_0_i2_1_lut (.A(ICounter[1]), .Z(n1[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(54[26:43])
    defparam sub_4_inv_0_i2_1_lut.init = 16'h5555;
    LUT4 i1_3_lut_adj_33 (.A(n1007[0]), .B(n1007[1]), .C(next_state_3__N_461[2]), 
         .Z(n2565)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam i1_3_lut_adj_33.init = 16'hecec;
    LUT4 i5001_then_4_lut (.A(ICounter[2]), .B(ICounter[3]), .C(\fskModule_I[8] ), 
         .D(\fskModule_I[2] ), .Z(n6498)) /* synthesis lut_function=(!(A (B)+!A !(B (D)+!B (C)))) */ ;
    defparam i5001_then_4_lut.init = 16'h7632;
    LUT4 fskModule_I_4__bdd_3_lut_5024 (.A(\fskModule_I[2] ), .B(\fskModule_I[5] ), 
         .C(ICounter[3]), .Z(n6375)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam fskModule_I_4__bdd_3_lut_5024.init = 16'hacac;
    LUT4 i5001_else_4_lut (.A(ICounter[2]), .B(ICounter[3]), .C(\fskModule_I[8] ), 
         .D(\fskModule_I[2] ), .Z(n6497)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;
    defparam i5001_else_4_lut.init = 16'h5410;
    LUT4 i1_3_lut_adj_34 (.A(QCounter[3]), .B(QCounter[2]), .C(QCounter[1]), 
         .Z(next_state_3__N_461[2])) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(133[21:38])
    defparam i1_3_lut_adj_34.init = 16'hf7f7;
    PFUMX i5068 (.BLUT(n6494), .ALUT(n6495), .C0(QCounter[3]), .Z(n6496));
    LUT4 i1_2_lut_rep_109 (.A(ICounter[2]), .B(ICounter[1]), .Z(n6486)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_rep_109.init = 16'h6666;
    LUT4 fskModule_I_4__bdd_3_lut_5061 (.A(\fskModule_I[4] ), .B(\fskModule_I[12] ), 
         .C(ICounter[3]), .Z(n6376)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam fskModule_I_4__bdd_3_lut_5061.init = 16'hacac;
    LUT4 i1_3_lut_rep_110 (.A(ICounter[3]), .B(ICounter[2]), .C(ICounter[1]), 
         .Z(n6487)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_3_lut_rep_110.init = 16'hf7f7;
    PFUMX i5027 (.BLUT(n6381), .ALUT(n6380), .C0(QCounter[1]), .Z(n6382));
    PFUMX i5025 (.BLUT(n6376), .ALUT(n6375), .C0(ICounter[1]), .Z(n6377));
    DEDFF DEDFF_0 (.serial_clk_c(serial_clk_c), .n2097(n2097), .clk_N_427(clk_N_427), 
          .next_state_3__N_452(n1007[3]), .n6332(n6332), .next_state_3__N_450(n1007[4]), 
          .n6386(n6386), .n6379(n6379), .serial(serial)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(147[7] 155[2])
    
endmodule
//
// Verilog Description of module DEDFF
//

module DEDFF (serial_clk_c, n2097, clk_N_427, next_state_3__N_452, n6332, 
            next_state_3__N_450, n6386, n6379, serial) /* synthesis syn_module_defined=1 */ ;
    input serial_clk_c;
    input n2097;
    input clk_N_427;
    input next_state_3__N_452;
    input n6332;
    input next_state_3__N_450;
    input n6386;
    input n6379;
    output serial;
    
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(19[10:20])
    wire clk_N_427 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(17[11:24])
    
    wire pose_edge, Q1, neg_edge, Q2;
    
    FD1S3IX pose_edge_14 (.D(Q1), .CK(serial_clk_c), .CD(n2097), .Q(pose_edge));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/dedff.v(42[8] 45[4])
    defparam pose_edge_14.GSR = "DISABLED";
    FD1S3IX neg_edge_15 (.D(Q2), .CK(clk_N_427), .CD(n2097), .Q(neg_edge));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/dedff.v(48[8] 51[4])
    defparam neg_edge_15.GSR = "DISABLED";
    LUT4 pose_edge_I_0_4_lut (.A(pose_edge), .B(next_state_3__N_452), .C(n6332), 
         .D(next_state_3__N_450), .Z(Q2)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B+((D)+!C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/dedff.v(38[15:29])
    defparam pose_edge_I_0_4_lut.init = 16'haa9a;
    LUT4 neg_edge_I_0_4_lut (.A(neg_edge), .B(n6386), .C(n6379), .D(next_state_3__N_452), 
         .Z(Q1)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B+(C+(D))))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/dedff.v(37[15:28])
    defparam neg_edge_I_0_4_lut.init = 16'h5556;
    LUT4 neg_edge_I_0_16_2_lut (.A(neg_edge), .B(pose_edge), .Z(serial)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/dedff.v(39[15:35])
    defparam neg_edge_I_0_16_2_lut.init = 16'h9999;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module clockDivider
//

module clockDivider (GND_net, VCC_net, top_test2_c, serial_clk_c, pll_lock, 
            n6829, clk_N_207_enable_29, spi_tx_data_7__N_502, n5965, 
            spi_st_load_en_N_531, n5957, ble_next_state_7__N_68, clk_N_207_enable_57, 
            n6455, firstFlag, n1111, ble_next_state_7__N_69, clk_N_207_enable_64, 
            \spi_next_state_3__N_515[3] , n6428, clk_N_207) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input VCC_net;
    output top_test2_c;
    input serial_clk_c;
    input pll_lock;
    output n6829;
    output clk_N_207_enable_29;
    input spi_tx_data_7__N_502;
    output n5965;
    input spi_st_load_en_N_531;
    output n5957;
    input ble_next_state_7__N_68;
    output clk_N_207_enable_57;
    output n6455;
    input firstFlag;
    output n1111;
    input ble_next_state_7__N_69;
    output clk_N_207_enable_64;
    input \spi_next_state_3__N_515[3] ;
    output n6428;
    output clk_N_207;
    
    wire top_test2_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(24[10:19])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(19[10:20])
    wire clk_N_207 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(9[32:40])
    
    wire n5150;
    wire [7:0]counter;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(29[11:18])
    wire [7:0]n37;
    
    wire n5151, n5152, pll_lock_N_173, clkOut_N_183;
    wire [7:0]lockCounter;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(28[11:22])
    wire [7:0]n37_adj_670;
    
    wire n1097, n2928, n6459, n4, n2929, n2930, n5533, n4_adj_669, 
        n5149, n5148, n5147, n5146, n2756, n5707, n5735, n5705, 
        n5145;
    
    CCU2C counter_944_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5150), .COUT(n5151), .S0(n37[3]), .S1(n37[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_944_add_4_5.INIT0 = 16'haaa0;
    defparam counter_944_add_4_5.INIT1 = 16'haaa0;
    defparam counter_944_add_4_5.INJECT1_0 = "NO";
    defparam counter_944_add_4_5.INJECT1_1 = "NO";
    CCU2C counter_944_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5152), .S0(n37[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_944_add_4_9.INIT0 = 16'haaa0;
    defparam counter_944_add_4_9.INIT1 = 16'h0000;
    defparam counter_944_add_4_9.INJECT1_0 = "NO";
    defparam counter_944_add_4_9.INJECT1_1 = "NO";
    FD1S3IX clkOut_28 (.D(clkOut_N_183), .CK(serial_clk_c), .CD(pll_lock_N_173), 
            .Q(top_test2_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(31[8] 47[4])
    defparam clkOut_28.GSR = "DISABLED";
    FD1S3IX lockCounter_945__i0 (.D(n37_adj_670[0]), .CK(serial_clk_c), 
            .CD(pll_lock_N_173), .Q(lockCounter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_945__i0.GSR = "DISABLED";
    FD1S3IX counter_944__i0 (.D(n37[0]), .CK(serial_clk_c), .CD(n1097), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_944__i0.GSR = "DISABLED";
    FD1S3IX lockCounter_945__i1 (.D(n37_adj_670[1]), .CK(serial_clk_c), 
            .CD(pll_lock_N_173), .Q(lockCounter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_945__i1.GSR = "DISABLED";
    FD1S3IX lockCounter_945__i2 (.D(n37_adj_670[2]), .CK(serial_clk_c), 
            .CD(pll_lock_N_173), .Q(lockCounter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_945__i2.GSR = "DISABLED";
    FD1S3IX lockCounter_945__i3 (.D(n37_adj_670[3]), .CK(serial_clk_c), 
            .CD(pll_lock_N_173), .Q(lockCounter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_945__i3.GSR = "DISABLED";
    FD1S3IX lockCounter_945__i4 (.D(n37_adj_670[4]), .CK(serial_clk_c), 
            .CD(pll_lock_N_173), .Q(lockCounter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_945__i4.GSR = "DISABLED";
    FD1S3IX lockCounter_945__i5 (.D(n37_adj_670[5]), .CK(serial_clk_c), 
            .CD(pll_lock_N_173), .Q(lockCounter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_945__i5.GSR = "DISABLED";
    FD1S3IX lockCounter_945__i6 (.D(n37_adj_670[6]), .CK(serial_clk_c), 
            .CD(pll_lock_N_173), .Q(lockCounter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_945__i6.GSR = "DISABLED";
    FD1S3IX lockCounter_945__i7 (.D(n37_adj_670[7]), .CK(serial_clk_c), 
            .CD(pll_lock_N_173), .Q(lockCounter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_945__i7.GSR = "DISABLED";
    FD1S3IX counter_944__i1 (.D(n37[1]), .CK(serial_clk_c), .CD(n1097), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_944__i1.GSR = "DISABLED";
    FD1S3IX counter_944__i2 (.D(n37[2]), .CK(serial_clk_c), .CD(n1097), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_944__i2.GSR = "DISABLED";
    FD1S3IX counter_944__i3 (.D(n37[3]), .CK(serial_clk_c), .CD(n1097), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_944__i3.GSR = "DISABLED";
    FD1S3IX counter_944__i4 (.D(n37[4]), .CK(serial_clk_c), .CD(n1097), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_944__i4.GSR = "DISABLED";
    FD1S3IX counter_944__i5 (.D(n37[5]), .CK(serial_clk_c), .CD(n1097), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_944__i5.GSR = "DISABLED";
    FD1S3IX counter_944__i6 (.D(n37[6]), .CK(serial_clk_c), .CD(n1097), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_944__i6.GSR = "DISABLED";
    FD1S3IX counter_944__i7 (.D(n37[7]), .CK(serial_clk_c), .CD(n1097), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_944__i7.GSR = "DISABLED";
    LUT4 i4847_4_lut (.A(n2928), .B(n6459), .C(pll_lock), .Z(n2928)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam i4847_4_lut.init = 16'he0e0;
    LUT4 i1_2_lut (.A(pll_lock), .B(lockCounter[7]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i4855_4_lut_2_lut (.A(n6459), .B(n2929), .Z(n2929)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4855_4_lut_2_lut.init = 16'heeee;
    LUT4 i1741_3_lut_rep_118 (.A(n2930), .B(n2929), .C(n2928), .Z(n6829)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam i1741_3_lut_rep_118.init = 16'hcaca;
    LUT4 i3_4_lut (.A(lockCounter[0]), .B(lockCounter[6]), .C(lockCounter[4]), 
         .D(lockCounter[3]), .Z(n5533)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_30 (.A(lockCounter[2]), .B(lockCounter[1]), .Z(n4_adj_669)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_30.init = 16'heeee;
    CCU2C counter_944_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5149), .COUT(n5150), .S0(n37[1]), .S1(n37[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_944_add_4_3.INIT0 = 16'haaa0;
    defparam counter_944_add_4_3.INIT1 = 16'haaa0;
    defparam counter_944_add_4_3.INJECT1_0 = "NO";
    defparam counter_944_add_4_3.INJECT1_1 = "NO";
    LUT4 i2_4_lut_rep_82 (.A(lockCounter[5]), .B(n4), .C(n5533), .D(n4_adj_669), 
         .Z(n6459)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam i2_4_lut_rep_82.init = 16'hccc8;
    CCU2C counter_944_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n5149), .S1(n37[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_944_add_4_1.INIT0 = 16'h0000;
    defparam counter_944_add_4_1.INIT1 = 16'h555f;
    defparam counter_944_add_4_1.INJECT1_0 = "NO";
    defparam counter_944_add_4_1.INJECT1_1 = "NO";
    CCU2C lockCounter_945_add_4_9 (.A0(lockCounter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5148), .S0(n37_adj_670[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_945_add_4_9.INIT0 = 16'haaa0;
    defparam lockCounter_945_add_4_9.INIT1 = 16'h0000;
    defparam lockCounter_945_add_4_9.INJECT1_0 = "NO";
    defparam lockCounter_945_add_4_9.INJECT1_1 = "NO";
    LUT4 i4851_3_lut (.A(n2930), .B(pll_lock), .Z(n2930)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam i4851_3_lut.init = 16'h8888;
    LUT4 i1741_3_lut_rep_96 (.A(n2930), .B(n2929), .C(n2928), .Z(clk_N_207_enable_29)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam i1741_3_lut_rep_96.init = 16'hcaca;
    LUT4 i4779_2_lut_4_lut (.A(n2930), .B(n2929), .C(n2928), .D(spi_tx_data_7__N_502), 
         .Z(n5965)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam i4779_2_lut_4_lut.init = 16'hca00;
    LUT4 i4771_2_lut_4_lut (.A(n2930), .B(n2929), .C(n2928), .D(spi_st_load_en_N_531), 
         .Z(n5957)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam i4771_2_lut_4_lut.init = 16'hca00;
    LUT4 i1_2_lut_4_lut (.A(n2930), .B(n2929), .C(n2928), .D(ble_next_state_7__N_68), 
         .Z(clk_N_207_enable_57)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam i1_2_lut_4_lut.init = 16'hca00;
    LUT4 rst_n_I_0_1_lut_rep_78_3_lut (.A(n2930), .B(n2929), .C(n2928), 
         .Z(n6455)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam rst_n_I_0_1_lut_rep_78_3_lut.init = 16'h3535;
    CCU2C lockCounter_945_add_4_7 (.A0(lockCounter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(lockCounter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5147), .COUT(n5148), .S0(n37_adj_670[5]), 
          .S1(n37_adj_670[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_945_add_4_7.INIT0 = 16'haaa0;
    defparam lockCounter_945_add_4_7.INIT1 = 16'haaa0;
    defparam lockCounter_945_add_4_7.INJECT1_0 = "NO";
    defparam lockCounter_945_add_4_7.INJECT1_1 = "NO";
    CCU2C lockCounter_945_add_4_5 (.A0(lockCounter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(lockCounter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5146), .COUT(n5147), .S0(n37_adj_670[3]), 
          .S1(n37_adj_670[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_945_add_4_5.INIT0 = 16'haaa0;
    defparam lockCounter_945_add_4_5.INIT1 = 16'haaa0;
    defparam lockCounter_945_add_4_5.INJECT1_0 = "NO";
    defparam lockCounter_945_add_4_5.INJECT1_1 = "NO";
    LUT4 i505_2_lut_2_lut_4_lut (.A(n2930), .B(n2929), .C(n2928), .D(firstFlag), 
         .Z(n1111)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam i505_2_lut_2_lut_4_lut.init = 16'hff35;
    LUT4 i1363_2_lut_4_lut (.A(n2930), .B(n2929), .C(n2928), .D(ble_next_state_7__N_69), 
         .Z(clk_N_207_enable_64)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam i1363_2_lut_4_lut.init = 16'hca00;
    LUT4 spi_rx_req_bdd_2_lut_4_lut (.A(n2930), .B(n2929), .C(n2928), 
         .D(\spi_next_state_3__N_515[3] ), .Z(n6428)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam spi_rx_req_bdd_2_lut_4_lut.init = 16'hca00;
    LUT4 pll_lock_I_0_1_lut (.A(pll_lock), .Z(pll_lock_N_173)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(32[9:25])
    defparam pll_lock_I_0_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_adj_31 (.A(top_test2_c), .B(n2756), .Z(clkOut_N_183)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_31.init = 16'h9999;
    LUT4 i1_4_lut (.A(n5707), .B(n5735), .C(counter[0]), .D(n5705), 
         .Z(n2756)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_4_lut.init = 16'hffbf;
    LUT4 i1_3_lut (.A(counter[4]), .B(counter[7]), .C(counter[5]), .Z(n5707)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut.init = 16'hfefe;
    CCU2C counter_944_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5151), .COUT(n5152), .S0(n37[5]), .S1(n37[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_944_add_4_7.INIT0 = 16'haaa0;
    defparam counter_944_add_4_7.INIT1 = 16'haaa0;
    defparam counter_944_add_4_7.INJECT1_0 = "NO";
    defparam counter_944_add_4_7.INJECT1_1 = "NO";
    LUT4 i4528_2_lut (.A(counter[2]), .B(counter[1]), .Z(n5735)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4528_2_lut.init = 16'h8888;
    CCU2C lockCounter_945_add_4_3 (.A0(lockCounter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(lockCounter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5145), .COUT(n5146), .S0(n37_adj_670[1]), 
          .S1(n37_adj_670[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_945_add_4_3.INIT0 = 16'haaa0;
    defparam lockCounter_945_add_4_3.INIT1 = 16'haaa0;
    defparam lockCounter_945_add_4_3.INJECT1_0 = "NO";
    defparam lockCounter_945_add_4_3.INJECT1_1 = "NO";
    CCU2C lockCounter_945_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(lockCounter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n5145), .S1(n37_adj_670[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_945_add_4_1.INIT0 = 16'h0000;
    defparam lockCounter_945_add_4_1.INIT1 = 16'h555f;
    defparam lockCounter_945_add_4_1.INJECT1_0 = "NO";
    defparam lockCounter_945_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_32 (.A(counter[3]), .B(counter[6]), .Z(n5705)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_32.init = 16'heeee;
    LUT4 i4682_2_lut (.A(n2756), .B(pll_lock), .Z(n1097)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i4682_2_lut.init = 16'h7777;
    INV i5264 (.A(top_test2_c), .Z(clk_N_207));
    
endmodule
//
// Verilog Description of module pll_64M
//

module pll_64M (top_rst_n_N_131, serial_clk_c, pll_lock, GND_net, top_clk_c, 
            VCC_net, clk_N_427) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input top_rst_n_N_131;
    output serial_clk_c;
    output pll_lock;
    input GND_net;
    input top_clk_c;
    input VCC_net;
    output clk_N_427;
    
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(19[10:20])
    wire CLKIt /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/ble_tx_clarity/pll_64m/pll_64m.v(20[10:15])
    wire top_clk_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(8[8:15])
    wire clk_N_427 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(17[11:24])
    
    EHXPLLL PLLInst_0 (.CLKI(CLKIt), .CLKFB(serial_clk_c), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .PHASELOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(top_rst_n_N_131), .ENCLKOP(GND_net), .ENCLKOS(GND_net), 
            .ENCLKOS2(GND_net), .ENCLKOS3(GND_net), .CLKOP(serial_clk_c), 
            .LOCK(pll_lock)) /* synthesis FREQUENCY_PIN_CLKOP="64.000000", FREQUENCY_PIN_CLKI="32.000000", ICP_CURRENT="5", LPF_RESISTOR="16", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(384[9] 391[2])
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
            .PLLCSOUT(CLKIt)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(384[9] 391[2])
    INV i5263 (.A(serial_clk_c), .Z(clk_N_427));
    
endmodule
