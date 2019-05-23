// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.3.144
// Netlist written on Wed May 22 17:58:29 2019
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
    wire clk_N_219 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(9[32:40])
    wire clk_N_440 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(17[11:24])
    wire sclk_N_651 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(61[10:13])
    
    wire GND_net, VCC_net, top_rst_n_c, top_spi_mosi_c, top_spi_miso_c, 
        top_spi_sclk_c, top_spi_cs_c, top_test3_c, top_test4_c, top_test5_c, 
        pll_lock;
    wire [12:0]fskModule_I;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(57[21:32])
    wire [12:0]fskModule_Q;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(58[21:32])
    
    wire fskModule_start, IQSerializer_start, spi_mosi, spi_rst, spi_rx_req, 
        spi_st_load_en, spi_st_load_trdy, spi_tx_load_en;
    wire [7:0]spi_tx_data;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(78[19:30])
    wire [7:0]spi_rx_data;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(81[20:31])
    
    wire spi_rx_ready, mem_inf_rst, mem_inf_we;
    wire [7:0]mem_inf_addr;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(96[27:39])
    wire [7:0]mem_inf_dataIn;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(97[27:41])
    wire [7:0]mem_inf_q;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(98[27:36])
    wire [7:0]ble_mem_w_addr;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(101[27:41])
    wire [7:0]ble_mem_data_buff;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(102[27:44])
    wire [7:0]ble_mem_addr_buff;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(103[27:44])
    
    wire ble_mem_w_req, mem_r_req, ble_mem_operation, pktReader_ready;
    wire [7:0]pktReader_mem_addr;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(110[27:45])
    
    wire pktReader_done, ble_flag_spi_pkt, ble_flag_spi_data;
    wire [7:0]ble_reg_pkt_size;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(172[11:27])
    wire [7:0]ble_reg_data_count;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(173[11:29])
    
    wire n5907, n34, n5569, n40, n8, n59, n46, n5275, n43, 
        n5904, mem_inf_rst_N_14, mem_inf_rst_N_15, mem_inf_rst_N_17, 
        mem_inf_rst_N_18, mem_inf_rst_N_19, mem_inf_rst_N_20, ble_flag_spi_data_N_158, 
        n5745, mem_r_req_N_147, pktReader_ready_N_152, ble_mem_operation_N_150, 
        mem_inf_rst_N_13, n5274, n8_adj_688, n14, n12, mem_inf_rst_N_12, 
        mem_next_state_3__N_132, mem_next_state_3__N_133, mem_next_state_3__N_134, 
        mem_next_state_3__N_135, n10, top_rst_n_N_143, n5741, n5640;
    wire [3:0]mem_current_state_adj_692;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(40[11:28])
    
    wire n1, n11, n5861, firstFlag;
    wire [11:0]sampleCount;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(41[23:34])
    
    wire n3022, clk_N_219_enable_29, n3020, n3018, n3016, n2545, 
        n31, n3014, n1417, n1416, n1415, n3012, n3010, n2880;
    wire [11:0]sampleCount_11__N_332;
    
    wire serial;
    wire [3:0]QCounter;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(22[41:49])
    
    wire n2761, n3008, n6555, clk_N_219_enable_57, n28;
    wire [3:0]spi_next_state_3__N_528;
    
    wire n862, spi_rx_req_N_540, spi_st_load_en_N_544, spi_tx_data_7__N_515, 
        n5261, n37, n5260, n5256, n1414, n1413, clk_N_219_enable_64, 
        n1412, n1411, n6700, n5896, n1410, n1131, n702, n23, 
        n701, clk_N_219_enable_19, n2135, n2128, n694, n58, n61, 
        n55, n6, n52, n49, n5601, n5259, n4, n5258, n5565, 
        n5257, n6592, n38, n39, n40_adj_689, n41, n42, n43_adj_690, 
        n44, n45, clk_N_219_enable_36, clk_N_219_enable_50, n5277, 
        n5757, n6542, n6060, n5753, n6052, n5276, n6579, n6578, 
        n6576, n6575, clk_N_219_enable_26, n6574, n5564, n5941, 
        n5845, n5699, n5317, n43_adj_691, n6562, n6911, n5309;
    
    VHI i2 (.Z(VCC_net));
    FD1S3AX spi_mosi_116 (.D(top_spi_mosi_c), .CK(serial_clk_c), .Q(spi_mosi));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(137[8] 142[4])
    defparam spi_mosi_116.GSR = "DISABLED";
    FD1S3AX top_spi_miso_117 (.D(n6562), .CK(serial_clk_c), .Q(top_spi_miso_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(137[8] 142[4])
    defparam top_spi_miso_117.GSR = "DISABLED";
    FD1S3DX ble_flag_spi_data_120 (.D(ble_flag_spi_data_N_158), .CK(clk_N_219), 
            .CD(n6542), .Q(ble_flag_spi_data));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_flag_spi_data_120.GSR = "DISABLED";
    FD1P3AX ble_mem_addr_buff_i0_i0 (.D(ble_reg_data_count[0]), .SP(clk_N_219_enable_64), 
            .CK(clk_N_219), .Q(ble_mem_addr_buff[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_mem_addr_buff_i0_i0.GSR = "DISABLED";
    FD1S3DX pktReader_ready_122 (.D(pktReader_ready_N_152), .CK(clk_N_219), 
            .CD(n6542), .Q(pktReader_ready));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam pktReader_ready_122.GSR = "DISABLED";
    FD1S3DX ble_mem_operation_123 (.D(ble_mem_operation_N_150), .CK(clk_N_219), 
            .CD(n6542), .Q(ble_mem_operation));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_mem_operation_123.GSR = "DISABLED";
    FD1S3DX mem_inf_rst_124 (.D(mem_inf_rst_N_13), .CK(clk_N_219), .CD(n6542), 
            .Q(mem_inf_rst));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam mem_inf_rst_124.GSR = "DISABLED";
    FD1P3IX ble_mem_w_addr__i0 (.D(n1417), .SP(clk_N_219_enable_36), .CD(n2128), 
            .CK(clk_N_219), .Q(ble_mem_w_addr[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(354[8] 386[4])
    defparam ble_mem_w_addr__i0.GSR = "DISABLED";
    FD1S3DX mem_current_state_FSM_i0 (.D(mem_next_state_3__N_134), .CK(top_test2_c), 
            .CD(mem_inf_rst_N_12), .Q(mem_next_state_3__N_135));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(325[3] 350[10])
    defparam mem_current_state_FSM_i0.GSR = "DISABLED";
    FD1S3JX mem_inf_we_133 (.D(mem_next_state_3__N_135), .CK(clk_N_219), 
            .PD(mem_next_state_3__N_134), .Q(mem_inf_we));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(354[8] 386[4])
    defparam mem_inf_we_133.GSR = "DISABLED";
    FD1S3AX spi_sclk_114 (.D(top_spi_sclk_c), .CK(serial_clk_c), .Q(top_test0_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(137[8] 142[4])
    defparam spi_sclk_114.GSR = "DISABLED";
    OB top_test3_pad (.I(top_test3_c), .O(top_test3));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(25[10:19])
    LUT4 ble_mem_w_addr_7__I_0_i5_3_lut (.A(ble_mem_w_addr[4]), .B(pktReader_mem_addr[4]), 
         .C(ble_mem_operation), .Z(mem_inf_addr[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(134[23:80])
    defparam ble_mem_w_addr_7__I_0_i5_3_lut.init = 16'hcaca;
    packetReader packetReader_0 (.clk_N_219(clk_N_219), .mem_inf_q({mem_inf_q}), 
            .top_test2_c(top_test2_c), .pktReader_done(pktReader_done), 
            .pktReader_mem_addr({pktReader_mem_addr}), .GND_net(GND_net), 
            .VCC_net(VCC_net), .fskModule_start(fskModule_start), .top_test5_c(top_test5_c), 
            .top_test3_c(top_test3_c), .top_test4_c(top_test4_c), .pktReader_ready(pktReader_ready), 
            .top_test6_c(top_test6_c), .\mem_current_state[2] (mem_current_state_adj_692[2]), 
            .n5861(n5861), .mem_inf_rst_N_14(mem_inf_rst_N_14), .mem_inf_rst_N_20(mem_inf_rst_N_20), 
            .pktReader_ready_N_152(pktReader_ready_N_152), .ble_mem_operation(ble_mem_operation), 
            .ble_mem_operation_N_150(ble_mem_operation_N_150), .n23(n23), 
            .n67({n28, n31, n34, n37, n40, n43, n46, n49, n52, 
            n55, n58, n61}), .sampleCount_11__N_332({sampleCount_11__N_332}), 
            .ble_reg_pkt_size({ble_reg_pkt_size}), .n6700(n6700), .n11(n11), 
            .n6555(n6555)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(424[14] 438[2])
    OB top_test2_pad (.I(top_test2_c), .O(top_test2));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(24[10:19])
    FD1P3DX ble_reg_data_count_965__i5 (.D(n3018), .SP(clk_N_219_enable_29), 
            .CK(clk_N_219), .CD(n6542), .Q(ble_reg_data_count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(285[27:52])
    defparam ble_reg_data_count_965__i5.GSR = "DISABLED";
    OB top_test1_pad (.I(clk_N_219_enable_26), .O(top_test1));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(23[10:19])
    FD1P3AX ble_mem_w_req_125 (.D(mem_inf_rst_N_19), .SP(clk_N_219_enable_26), 
            .CK(clk_N_219), .Q(ble_mem_w_req));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_mem_w_req_125.GSR = "DISABLED";
    OB top_test0_pad (.I(top_test0_c), .O(top_test0));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(22[10:19])
    LUT4 LessThan_20_i11_2_lut_rep_100 (.A(ble_reg_data_count[5]), .B(ble_reg_pkt_size[5]), 
         .Z(n6574)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(220[9:46])
    defparam LessThan_20_i11_2_lut_rep_100.init = 16'h6666;
    OB LED_pad (.I(clk_N_219_enable_26), .O(LED));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(20[13:16])
    OB serial_clk_pad (.I(serial_clk_c), .O(serial_clk));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(19[10:20])
    OB serial_iq_pad (.I(serial), .O(serial_iq));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(18[10:19])
    FD1P3DX ble_reg_data_count_965__i1 (.D(n3010), .SP(clk_N_219_enable_29), 
            .CK(clk_N_219), .CD(n6542), .Q(ble_reg_data_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(285[27:52])
    defparam ble_reg_data_count_965__i1.GSR = "DISABLED";
    FD1S3DX ble_current_state_FSM_i1 (.D(n2545), .CK(top_test2_c), .CD(n6542), 
            .Q(mem_inf_rst_N_20));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(192[3] 236[10])
    defparam ble_current_state_FSM_i1.GSR = "DISABLED";
    GSR GSR_INST (.GSR(pktReader_ready));
    FSKModulator fskModule_0 (.top_test2_c(top_test2_c), .n6542(n6542), 
            .top_test3_c(top_test3_c), .\fskModule_I[12] (fskModule_I[12]), 
            .clk_N_219(clk_N_219), .n6555(n6555), .\fskModule_I[11] (fskModule_I[11]), 
            .\fskModule_I[7] (fskModule_I[7]), .\fskModule_I[0] (fskModule_I[0]), 
            .firstFlag(firstFlag), .IQSerializer_start(IQSerializer_start), 
            .clk_N_219_enable_26(clk_N_219_enable_26), .sampleCount({sampleCount}), 
            .sampleCount_11__N_332({sampleCount_11__N_332}), .\fskModule_I[4] (fskModule_I[4]), 
            .\fskModule_I[2] (fskModule_I[2]), .n1131(n1131), .top_test6_c(top_test6_c), 
            .\fskModule_Q[0] (fskModule_Q[0]), .fskModule_start(fskModule_start), 
            .n5941(n5941), .\fskModule_Q[2] (fskModule_Q[2]), .\fskModule_Q[4] (fskModule_Q[4]), 
            .\fskModule_Q[6] (fskModule_Q[6]), .\fskModule_Q[7] (fskModule_Q[7]), 
            .\fskModule_Q[12] (fskModule_Q[12]), .n2135(n2135), .n23(n23)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(441[14] 450[2])
    FD1P3DX ble_reg_data_count_965__i7 (.D(n3022), .SP(clk_N_219_enable_29), 
            .CK(clk_N_219), .CD(n6542), .Q(ble_reg_data_count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(285[27:52])
    defparam ble_reg_data_count_965__i7.GSR = "DISABLED";
    LUT4 i1_3_lut (.A(mem_inf_rst_N_14), .B(mem_inf_rst_N_18), .C(ble_flag_spi_data), 
         .Z(ble_flag_spi_data_N_158)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(94[12:23])
    defparam i1_3_lut.init = 16'hdcdc;
    FD1P3DX ble_reg_data_count_965__i4 (.D(n3016), .SP(clk_N_219_enable_29), 
            .CK(clk_N_219), .CD(n6542), .Q(ble_reg_data_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(285[27:52])
    defparam ble_reg_data_count_965__i4.GSR = "DISABLED";
    FD1P3DX ble_flag_spi_pkt_119 (.D(n1), .SP(clk_N_219_enable_19), .CK(clk_N_219), 
            .CD(n6542), .Q(ble_flag_spi_pkt));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_flag_spi_pkt_119.GSR = "DISABLED";
    FD1P3DX ble_reg_data_count_965__i3 (.D(n3014), .SP(clk_N_219_enable_29), 
            .CK(clk_N_219), .CD(n6542), .Q(ble_reg_data_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(285[27:52])
    defparam ble_reg_data_count_965__i3.GSR = "DISABLED";
    FD1S3AX spi_cs_115 (.D(top_spi_cs_c), .CK(serial_clk_c), .Q(spi_next_state_3__N_528[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(137[8] 142[4])
    defparam spi_cs_115.GSR = "DISABLED";
    FD1P3DX ble_reg_data_count_965__i6 (.D(n3020), .SP(clk_N_219_enable_29), 
            .CK(clk_N_219), .CD(n6542), .Q(ble_reg_data_count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(285[27:52])
    defparam ble_reg_data_count_965__i6.GSR = "DISABLED";
    FD1P3DX ble_reg_data_count_965__i0 (.D(n3008), .SP(clk_N_219_enable_29), 
            .CK(clk_N_219), .CD(n6542), .Q(ble_reg_data_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(285[27:52])
    defparam ble_reg_data_count_965__i0.GSR = "DISABLED";
    FD1P3IX mem_inf_dataIn__i0 (.D(ble_mem_data_buff[0]), .SP(clk_N_219_enable_50), 
            .CD(mem_next_state_3__N_132), .CK(clk_N_219), .Q(mem_inf_dataIn[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(354[8] 386[4])
    defparam mem_inf_dataIn__i0.GSR = "DISABLED";
    FD1P3AX mem_r_req_126 (.D(mem_r_req_N_147), .SP(clk_N_219_enable_26), 
            .CK(clk_N_219), .Q(mem_r_req));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam mem_r_req_126.GSR = "DISABLED";
    LUT4 ble_mem_w_addr_7__I_0_i4_3_lut (.A(ble_mem_w_addr[3]), .B(pktReader_mem_addr[3]), 
         .C(ble_mem_operation), .Z(mem_inf_addr[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(134[23:80])
    defparam ble_mem_w_addr_7__I_0_i4_3_lut.init = 16'hcaca;
    LUT4 LessThan_20_i13_2_lut_rep_101 (.A(ble_reg_data_count[6]), .B(ble_reg_pkt_size[6]), 
         .Z(n6575)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(220[9:46])
    defparam LessThan_20_i13_2_lut_rep_101.init = 16'h6666;
    FD1P3AX ble_reg_pkt_size_i0_i0 (.D(spi_rx_data[0]), .SP(clk_N_219_enable_57), 
            .CK(clk_N_219), .Q(ble_reg_pkt_size[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_reg_pkt_size_i0_i0.GSR = "DISABLED";
    FD1P3AX ble_mem_data_buff_i0_i0 (.D(spi_rx_data[0]), .SP(clk_N_219_enable_64), 
            .CK(clk_N_219), .Q(ble_mem_data_buff[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_mem_data_buff_i0_i0.GSR = "DISABLED";
    OB top_test4_pad (.I(top_test4_c), .O(top_test4));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(26[10:19])
    LUT4 ble_mem_w_addr_7__I_0_i3_3_lut (.A(ble_mem_w_addr[2]), .B(pktReader_mem_addr[2]), 
         .C(ble_mem_operation), .Z(mem_inf_addr[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(134[23:80])
    defparam ble_mem_w_addr_7__I_0_i3_3_lut.init = 16'hcaca;
    LUT4 i4674_2_lut_3_lut_4_lut (.A(ble_reg_data_count[6]), .B(ble_reg_pkt_size[6]), 
         .C(ble_reg_pkt_size[5]), .D(ble_reg_data_count[5]), .Z(n5904)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(220[9:46])
    defparam i4674_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_20_i10_3_lut_3_lut (.A(ble_reg_data_count[6]), .B(ble_reg_pkt_size[6]), 
         .C(ble_reg_pkt_size[5]), .Z(n10)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(220[9:46])
    defparam LessThan_20_i10_3_lut_3_lut.init = 16'hd4d4;
    FD1P3DX ble_reg_data_count_965__i2 (.D(n3012), .SP(clk_N_219_enable_29), 
            .CK(clk_N_219), .CD(n6542), .Q(ble_reg_data_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(285[27:52])
    defparam ble_reg_data_count_965__i2.GSR = "DISABLED";
    LUT4 LessThan_20_i15_2_lut_rep_102 (.A(ble_reg_data_count[7]), .B(ble_reg_pkt_size[7]), 
         .Z(n6576)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(220[9:46])
    defparam LessThan_20_i15_2_lut_rep_102.init = 16'h6666;
    LUT4 ble_mem_w_addr_7__I_0_i2_3_lut (.A(ble_mem_w_addr[1]), .B(pktReader_mem_addr[1]), 
         .C(ble_mem_operation), .Z(mem_inf_addr[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(134[23:80])
    defparam ble_mem_w_addr_7__I_0_i2_3_lut.init = 16'hcaca;
    LUT4 LessThan_20_i12_3_lut_3_lut (.A(ble_reg_data_count[7]), .B(ble_reg_pkt_size[7]), 
         .C(n10), .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(220[9:46])
    defparam LessThan_20_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i2487_2_lut (.A(n41), .B(mem_inf_rst_N_14), .Z(n3016)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(285[27:52])
    defparam i2487_2_lut.init = 16'h2222;
    OB osc_en_pad (.I(VCC_net), .O(osc_en));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(17[10:16])
    OB top_spi_miso_pad (.I(top_spi_miso_c), .O(top_spi_miso));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(13[13:25])
    LUT4 LessThan_20_i7_2_lut_rep_104 (.A(ble_reg_data_count[3]), .B(ble_reg_pkt_size[3]), 
         .Z(n6578)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(220[9:46])
    defparam LessThan_20_i7_2_lut_rep_104.init = 16'h6666;
    FD1S3BX mem_current_state_FSM_i3 (.D(n6700), .CK(top_test2_c), .PD(mem_inf_rst_N_12), 
            .Q(mem_next_state_3__N_132));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(325[3] 350[10])
    defparam mem_current_state_FSM_i3.GSR = "DISABLED";
    FD1S3DX mem_current_state_FSM_i2 (.D(n8), .CK(top_test2_c), .CD(mem_inf_rst_N_12), 
            .Q(mem_next_state_3__N_133));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(325[3] 350[10])
    defparam mem_current_state_FSM_i2.GSR = "DISABLED";
    FD1S3DX mem_current_state_FSM_i1 (.D(n862), .CK(top_test2_c), .CD(mem_inf_rst_N_12), 
            .Q(mem_next_state_3__N_134));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(325[3] 350[10])
    defparam mem_current_state_FSM_i1.GSR = "DISABLED";
    FD1P3IX ble_mem_w_addr__i7 (.D(n1410), .SP(clk_N_219_enable_36), .CD(n2128), 
            .CK(clk_N_219), .Q(ble_mem_w_addr[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(354[8] 386[4])
    defparam ble_mem_w_addr__i7.GSR = "DISABLED";
    FD1P3IX ble_mem_w_addr__i6 (.D(n1411), .SP(clk_N_219_enable_36), .CD(n2128), 
            .CK(clk_N_219), .Q(ble_mem_w_addr[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(354[8] 386[4])
    defparam ble_mem_w_addr__i6.GSR = "DISABLED";
    FD1P3IX ble_mem_w_addr__i5 (.D(n1412), .SP(clk_N_219_enable_36), .CD(n2128), 
            .CK(clk_N_219), .Q(ble_mem_w_addr[5]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(354[8] 386[4])
    defparam ble_mem_w_addr__i5.GSR = "DISABLED";
    FD1P3IX ble_mem_w_addr__i4 (.D(n1413), .SP(clk_N_219_enable_36), .CD(n2128), 
            .CK(clk_N_219), .Q(ble_mem_w_addr[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(354[8] 386[4])
    defparam ble_mem_w_addr__i4.GSR = "DISABLED";
    FD1P3IX ble_mem_w_addr__i3 (.D(n1414), .SP(clk_N_219_enable_36), .CD(n2128), 
            .CK(clk_N_219), .Q(ble_mem_w_addr[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(354[8] 386[4])
    defparam ble_mem_w_addr__i3.GSR = "DISABLED";
    FD1P3IX ble_mem_w_addr__i2 (.D(n1415), .SP(clk_N_219_enable_36), .CD(n2128), 
            .CK(clk_N_219), .Q(ble_mem_w_addr[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(354[8] 386[4])
    defparam ble_mem_w_addr__i2.GSR = "DISABLED";
    FD1P3IX ble_mem_w_addr__i1 (.D(n1416), .SP(clk_N_219_enable_36), .CD(n2128), 
            .CK(clk_N_219), .Q(ble_mem_w_addr[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(354[8] 386[4])
    defparam ble_mem_w_addr__i1.GSR = "DISABLED";
    FD1P3AX ble_mem_addr_buff_i0_i7 (.D(ble_reg_data_count[7]), .SP(clk_N_219_enable_64), 
            .CK(clk_N_219), .Q(ble_mem_addr_buff[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_mem_addr_buff_i0_i7.GSR = "DISABLED";
    FD1P3AX ble_mem_addr_buff_i0_i6 (.D(ble_reg_data_count[6]), .SP(clk_N_219_enable_64), 
            .CK(clk_N_219), .Q(ble_mem_addr_buff[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_mem_addr_buff_i0_i6.GSR = "DISABLED";
    FD1P3AX ble_mem_addr_buff_i0_i5 (.D(ble_reg_data_count[5]), .SP(clk_N_219_enable_64), 
            .CK(clk_N_219), .Q(ble_mem_addr_buff[5]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_mem_addr_buff_i0_i5.GSR = "DISABLED";
    FD1P3AX ble_mem_addr_buff_i0_i4 (.D(ble_reg_data_count[4]), .SP(clk_N_219_enable_64), 
            .CK(clk_N_219), .Q(ble_mem_addr_buff[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_mem_addr_buff_i0_i4.GSR = "DISABLED";
    FD1P3AX ble_mem_addr_buff_i0_i3 (.D(ble_reg_data_count[3]), .SP(clk_N_219_enable_64), 
            .CK(clk_N_219), .Q(ble_mem_addr_buff[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_mem_addr_buff_i0_i3.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(mem_inf_rst_N_15), .B(n5569), .C(spi_rx_ready), 
         .D(mem_inf_rst_N_14), .Z(n5699)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(192[3] 236[10])
    defparam i1_4_lut.init = 16'hffce;
    FD1P3AX ble_mem_addr_buff_i0_i2 (.D(ble_reg_data_count[2]), .SP(clk_N_219_enable_64), 
            .CK(clk_N_219), .Q(ble_mem_addr_buff[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_mem_addr_buff_i0_i2.GSR = "DISABLED";
    FD1P3AX ble_mem_addr_buff_i0_i1 (.D(ble_reg_data_count[1]), .SP(clk_N_219_enable_64), 
            .CK(clk_N_219), .Q(ble_mem_addr_buff[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_mem_addr_buff_i0_i1.GSR = "DISABLED";
    FD1S3BX ble_current_state_FSM_i6 (.D(n43_adj_691), .CK(top_test2_c), 
            .PD(n6542), .Q(mem_inf_rst_N_14));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(192[3] 236[10])
    defparam ble_current_state_FSM_i6.GSR = "DISABLED";
    FD1S3DX ble_current_state_FSM_i5 (.D(n5601), .CK(top_test2_c), .CD(n6542), 
            .Q(mem_inf_rst_N_15));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(192[3] 236[10])
    defparam ble_current_state_FSM_i5.GSR = "DISABLED";
    FD1S3DX ble_current_state_FSM_i4 (.D(n5565), .CK(top_test2_c), .CD(n6542), 
            .Q(mem_inf_rst_N_17));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(192[3] 236[10])
    defparam ble_current_state_FSM_i4.GSR = "DISABLED";
    FD1S3DX ble_current_state_FSM_i3 (.D(n2880), .CK(top_test2_c), .CD(n6542), 
            .Q(mem_inf_rst_N_18));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(192[3] 236[10])
    defparam ble_current_state_FSM_i3.GSR = "DISABLED";
    FD1S3DX ble_current_state_FSM_i2 (.D(n5564), .CK(top_test2_c), .CD(n6542), 
            .Q(mem_inf_rst_N_19));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(192[3] 236[10])
    defparam ble_current_state_FSM_i2.GSR = "DISABLED";
    LUT4 i1_3_lut_adj_55 (.A(n5699), .B(n59), .C(mem_inf_rst_N_19), .Z(n5601)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(192[3] 236[10])
    defparam i1_3_lut_adj_55.init = 16'heaea;
    LUT4 LessThan_20_i6_3_lut_3_lut (.A(ble_reg_data_count[3]), .B(ble_reg_pkt_size[3]), 
         .C(ble_reg_pkt_size[2]), .Z(n6)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(220[9:46])
    defparam LessThan_20_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_adj_56 (.A(mem_inf_rst_N_14), .B(mem_inf_rst_N_15), .C(mem_inf_rst), 
         .Z(mem_inf_rst_N_13)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;
    defparam i1_3_lut_adj_56.init = 16'hdcdc;
    LUT4 LessThan_20_i9_2_lut_rep_105 (.A(ble_reg_data_count[4]), .B(ble_reg_pkt_size[4]), 
         .Z(n6579)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(220[9:46])
    defparam LessThan_20_i9_2_lut_rep_105.init = 16'h6666;
    LUT4 i4782_3_lut (.A(mem_inf_rst_N_20), .B(mem_inf_rst_N_19), .C(mem_inf_rst_N_15), 
         .Z(clk_N_219_enable_19)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i4782_3_lut.init = 16'h0101;
    LUT4 i1_4_lut_adj_57 (.A(mem_inf_rst_N_17), .B(n5845), .C(ble_flag_spi_pkt), 
         .D(n5745), .Z(n1)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(81[20:31])
    defparam i1_4_lut_adj_57.init = 16'ha0a8;
    CCU2C ble_reg_data_count_965_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ble_reg_data_count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n5274), .S1(n45));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(285[27:52])
    defparam ble_reg_data_count_965_add_4_1.INIT0 = 16'h0000;
    defparam ble_reg_data_count_965_add_4_1.INIT1 = 16'h555f;
    defparam ble_reg_data_count_965_add_4_1.INJECT1_0 = "NO";
    defparam ble_reg_data_count_965_add_4_1.INJECT1_1 = "NO";
    LUT4 ble_mem_w_addr_7__I_0_i1_3_lut (.A(ble_mem_w_addr[0]), .B(pktReader_mem_addr[0]), 
         .C(ble_mem_operation), .Z(mem_inf_addr[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(134[23:80])
    defparam ble_mem_w_addr_7__I_0_i1_3_lut.init = 16'hcaca;
    OB top_test5_pad (.I(top_test5_c), .O(top_test5));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(27[11:20])
    OB top_test6_pad (.I(top_test6_c), .O(top_test6));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(28[11:20])
    IB top_clk_pad (.I(top_clk), .O(top_clk_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(8[8:15])
    IB top_rst_n_pad (.I(top_rst_n), .O(top_rst_n_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(9[8:17])
    IB top_spi_mosi_pad (.I(top_spi_mosi), .O(top_spi_mosi_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(12[9:21])
    IB top_spi_sclk_pad (.I(top_spi_sclk), .O(top_spi_sclk_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(14[9:21])
    IB top_spi_cs_pad (.I(top_spi_cs), .O(top_spi_cs_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(15[9:19])
    LUT4 LessThan_20_i8_3_lut_3_lut (.A(ble_reg_data_count[4]), .B(ble_reg_pkt_size[4]), 
         .C(n6), .Z(n8_adj_688)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(220[9:46])
    defparam LessThan_20_i8_3_lut_3_lut.init = 16'hd4d4;
    FD1P3IX mem_inf_dataIn__i1 (.D(ble_mem_data_buff[1]), .SP(clk_N_219_enable_50), 
            .CD(mem_next_state_3__N_132), .CK(clk_N_219), .Q(mem_inf_dataIn[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(354[8] 386[4])
    defparam mem_inf_dataIn__i1.GSR = "DISABLED";
    FD1P3IX mem_inf_dataIn__i2 (.D(ble_mem_data_buff[2]), .SP(clk_N_219_enable_50), 
            .CD(mem_next_state_3__N_132), .CK(clk_N_219), .Q(mem_inf_dataIn[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(354[8] 386[4])
    defparam mem_inf_dataIn__i2.GSR = "DISABLED";
    FD1P3IX mem_inf_dataIn__i3 (.D(ble_mem_data_buff[3]), .SP(clk_N_219_enable_50), 
            .CD(mem_next_state_3__N_132), .CK(clk_N_219), .Q(mem_inf_dataIn[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(354[8] 386[4])
    defparam mem_inf_dataIn__i3.GSR = "DISABLED";
    FD1P3IX mem_inf_dataIn__i4 (.D(ble_mem_data_buff[4]), .SP(clk_N_219_enable_50), 
            .CD(mem_next_state_3__N_132), .CK(clk_N_219), .Q(mem_inf_dataIn[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(354[8] 386[4])
    defparam mem_inf_dataIn__i4.GSR = "DISABLED";
    FD1P3IX mem_inf_dataIn__i5 (.D(ble_mem_data_buff[5]), .SP(clk_N_219_enable_50), 
            .CD(mem_next_state_3__N_132), .CK(clk_N_219), .Q(mem_inf_dataIn[5]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(354[8] 386[4])
    defparam mem_inf_dataIn__i5.GSR = "DISABLED";
    FD1P3IX mem_inf_dataIn__i6 (.D(ble_mem_data_buff[6]), .SP(clk_N_219_enable_50), 
            .CD(mem_next_state_3__N_132), .CK(clk_N_219), .Q(mem_inf_dataIn[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(354[8] 386[4])
    defparam mem_inf_dataIn__i6.GSR = "DISABLED";
    FD1P3IX mem_inf_dataIn__i7 (.D(ble_mem_data_buff[7]), .SP(clk_N_219_enable_50), 
            .CD(mem_next_state_3__N_132), .CK(clk_N_219), .Q(mem_inf_dataIn[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(354[8] 386[4])
    defparam mem_inf_dataIn__i7.GSR = "DISABLED";
    FD1P3AX ble_reg_pkt_size_i0_i1 (.D(spi_rx_data[1]), .SP(clk_N_219_enable_57), 
            .CK(clk_N_219), .Q(ble_reg_pkt_size[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_reg_pkt_size_i0_i1.GSR = "DISABLED";
    FD1P3AX ble_reg_pkt_size_i0_i2 (.D(spi_rx_data[2]), .SP(clk_N_219_enable_57), 
            .CK(clk_N_219), .Q(ble_reg_pkt_size[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_reg_pkt_size_i0_i2.GSR = "DISABLED";
    FD1P3AX ble_reg_pkt_size_i0_i3 (.D(spi_rx_data[3]), .SP(clk_N_219_enable_57), 
            .CK(clk_N_219), .Q(ble_reg_pkt_size[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_reg_pkt_size_i0_i3.GSR = "DISABLED";
    FD1P3AX ble_reg_pkt_size_i0_i4 (.D(spi_rx_data[4]), .SP(clk_N_219_enable_57), 
            .CK(clk_N_219), .Q(ble_reg_pkt_size[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_reg_pkt_size_i0_i4.GSR = "DISABLED";
    FD1P3AX ble_reg_pkt_size_i0_i5 (.D(spi_rx_data[5]), .SP(clk_N_219_enable_57), 
            .CK(clk_N_219), .Q(ble_reg_pkt_size[5]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_reg_pkt_size_i0_i5.GSR = "DISABLED";
    FD1P3AX ble_reg_pkt_size_i0_i6 (.D(spi_rx_data[6]), .SP(clk_N_219_enable_57), 
            .CK(clk_N_219), .Q(ble_reg_pkt_size[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_reg_pkt_size_i0_i6.GSR = "DISABLED";
    FD1P3AX ble_reg_pkt_size_i0_i7 (.D(spi_rx_data[7]), .SP(clk_N_219_enable_57), 
            .CK(clk_N_219), .Q(ble_reg_pkt_size[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_reg_pkt_size_i0_i7.GSR = "DISABLED";
    FD1P3AX ble_mem_data_buff_i0_i1 (.D(spi_rx_data[1]), .SP(clk_N_219_enable_64), 
            .CK(clk_N_219), .Q(ble_mem_data_buff[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_mem_data_buff_i0_i1.GSR = "DISABLED";
    FD1P3AX ble_mem_data_buff_i0_i2 (.D(spi_rx_data[2]), .SP(clk_N_219_enable_64), 
            .CK(clk_N_219), .Q(ble_mem_data_buff[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_mem_data_buff_i0_i2.GSR = "DISABLED";
    FD1P3AX ble_mem_data_buff_i0_i3 (.D(spi_rx_data[3]), .SP(clk_N_219_enable_64), 
            .CK(clk_N_219), .Q(ble_mem_data_buff[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_mem_data_buff_i0_i3.GSR = "DISABLED";
    FD1P3AX ble_mem_data_buff_i0_i4 (.D(spi_rx_data[4]), .SP(clk_N_219_enable_64), 
            .CK(clk_N_219), .Q(ble_mem_data_buff[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_mem_data_buff_i0_i4.GSR = "DISABLED";
    FD1P3AX ble_mem_data_buff_i0_i5 (.D(spi_rx_data[5]), .SP(clk_N_219_enable_64), 
            .CK(clk_N_219), .Q(ble_mem_data_buff[5]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_mem_data_buff_i0_i5.GSR = "DISABLED";
    FD1P3AX ble_mem_data_buff_i0_i6 (.D(spi_rx_data[6]), .SP(clk_N_219_enable_64), 
            .CK(clk_N_219), .Q(ble_mem_data_buff[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_mem_data_buff_i0_i6.GSR = "DISABLED";
    FD1P3AX ble_mem_data_buff_i0_i7 (.D(spi_rx_data[7]), .SP(clk_N_219_enable_64), 
            .CK(clk_N_219), .Q(ble_mem_data_buff[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(249[11] 297[5])
    defparam ble_mem_data_buff_i0_i7.GSR = "DISABLED";
    CCU2C _add_1_1232_add_4_13 (.A0(sampleCount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5261), .S0(n28));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_1232_add_4_13.INIT0 = 16'haaa0;
    defparam _add_1_1232_add_4_13.INIT1 = 16'h0000;
    defparam _add_1_1232_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_1232_add_4_13.INJECT1_1 = "NO";
    CCU2C _add_1_1232_add_4_11 (.A0(sampleCount[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5260), .COUT(n5261), .S0(n34), .S1(n31));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_1232_add_4_11.INIT0 = 16'haaa0;
    defparam _add_1_1232_add_4_11.INIT1 = 16'haaa0;
    defparam _add_1_1232_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_1232_add_4_11.INJECT1_1 = "NO";
    LUT4 i4618_3_lut (.A(spi_rx_data[5]), .B(spi_rx_data[3]), .C(spi_rx_data[7]), 
         .Z(n5845)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i4618_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_58 (.A(spi_rx_data[1]), .B(spi_rx_data[0]), .C(n5741), 
         .D(spi_rx_data[4]), .Z(n5745)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_58.init = 16'hfffd;
    LUT4 i4752_4_lut (.A(n6576), .B(n6575), .C(n6574), .D(n5896), .Z(n5907)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(220[9:46])
    defparam i4752_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(spi_rx_data[6]), .B(spi_rx_data[2]), .Z(n5741)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    PFUMX LessThan_20_i16 (.BLUT(n8_adj_688), .ALUT(n14), .C0(n5907), 
          .Z(n59));
    LUT4 i4666_4_lut (.A(n6579), .B(n6578), .C(ble_reg_data_count[2]), 
         .D(ble_reg_pkt_size[2]), .Z(n5896)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(220[9:46])
    defparam i4666_4_lut.init = 16'h1001;
    LUT4 i4726_4_lut_4_lut (.A(n6576), .B(n5904), .C(n12), .D(n4), .Z(n14)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(220[9:46])
    defparam i4726_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i2486_2_lut (.A(n42), .B(mem_inf_rst_N_14), .Z(n3014)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(285[27:52])
    defparam i2486_2_lut.init = 16'h2222;
    CCU2C ble_reg_data_count_965_add_4_9 (.A0(ble_reg_data_count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5277), .S0(n38));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(285[27:52])
    defparam ble_reg_data_count_965_add_4_9.INIT0 = 16'haaa0;
    defparam ble_reg_data_count_965_add_4_9.INIT1 = 16'h0000;
    defparam ble_reg_data_count_965_add_4_9.INJECT1_0 = "NO";
    defparam ble_reg_data_count_965_add_4_9.INJECT1_1 = "NO";
    LUT4 i4762_2_lut_rep_79 (.A(mem_next_state_3__N_133), .B(mem_next_state_3__N_135), 
         .Z(clk_N_219_enable_36)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i4762_2_lut_rep_79.init = 16'h1111;
    LUT4 i1_2_lut_adj_59 (.A(spi_next_state_3__N_528[3]), .B(n701), .Z(spi_rx_req_N_540)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(137[8] 142[4])
    defparam i1_2_lut_adj_59.init = 16'h8888;
    LUT4 i2489_2_lut (.A(n39), .B(mem_inf_rst_N_14), .Z(n3020)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(285[27:52])
    defparam i2489_2_lut.init = 16'h2222;
    LUT4 i2434_2_lut (.A(n45), .B(mem_inf_rst_N_14), .Z(n3008)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(285[27:52])
    defparam i2434_2_lut.init = 16'h2222;
    LUT4 i1_3_lut_adj_60 (.A(QCounter[3]), .B(QCounter[2]), .C(QCounter[1]), 
         .Z(n5309)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i1_3_lut_adj_60.init = 16'h6a6a;
    LUT4 i2490_2_lut (.A(n38), .B(mem_inf_rst_N_14), .Z(n3022)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(285[27:52])
    defparam i2490_2_lut.init = 16'h2222;
    LUT4 i1028_2_lut_3_lut (.A(mem_next_state_3__N_133), .B(mem_next_state_3__N_135), 
         .C(mem_next_state_3__N_132), .Z(n2128)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1028_2_lut_3_lut.init = 16'h1010;
    LUT4 i1807_2_lut (.A(mem_inf_rst_N_14), .B(mem_inf_rst_N_19), .Z(clk_N_219_enable_29)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(285[27:52])
    defparam i1807_2_lut.init = 16'heeee;
    LUT4 i2488_2_lut (.A(n40_adj_689), .B(mem_inf_rst_N_14), .Z(n3018)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(285[27:52])
    defparam i2488_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_adj_61 (.A(QCounter[2]), .B(QCounter[1]), .Z(n5317)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_61.init = 16'h6666;
    CCU2C ble_reg_data_count_965_add_4_3 (.A0(ble_reg_data_count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(ble_reg_data_count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n5274), .COUT(n5275), .S0(n44), 
          .S1(n43_adj_690));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(285[27:52])
    defparam ble_reg_data_count_965_add_4_3.INIT0 = 16'haaa0;
    defparam ble_reg_data_count_965_add_4_3.INIT1 = 16'haaa0;
    defparam ble_reg_data_count_965_add_4_3.INJECT1_0 = "NO";
    defparam ble_reg_data_count_965_add_4_3.INJECT1_1 = "NO";
    LUT4 reduce_nor_980_i1_2_lut (.A(mem_next_state_3__N_134), .B(mem_next_state_3__N_132), 
         .Z(clk_N_219_enable_50)) /* synthesis lut_function=(A+(B)) */ ;
    defparam reduce_nor_980_i1_2_lut.init = 16'heeee;
    LUT4 LessThan_20_i4_4_lut (.A(ble_reg_pkt_size[0]), .B(ble_reg_pkt_size[1]), 
         .C(ble_reg_data_count[1]), .D(ble_reg_data_count[0]), .Z(n4)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(220[9:46])
    defparam LessThan_20_i4_4_lut.init = 16'h0c8e;
    LUT4 i1_4_lut_adj_62 (.A(mem_inf_rst_N_20), .B(mem_inf_rst_N_19), .C(mem_r_req), 
         .D(n5569), .Z(mem_r_req_N_147)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(94[12:23])
    defparam i1_4_lut_adj_62.init = 16'hfaea;
    LUT4 i1_2_lut_3_lut_4_lut (.A(mem_inf_rst_N_15), .B(spi_rx_ready), .C(ble_flag_spi_data), 
         .D(ble_flag_spi_pkt), .Z(n5565)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(192[3] 236[10])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_adj_63 (.A(mem_inf_rst_N_18), .B(mem_inf_rst_N_17), .Z(n5569)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(192[3] 236[10])
    defparam i1_2_lut_adj_63.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(mem_inf_rst_N_15), .B(spi_rx_ready), .C(ble_flag_spi_pkt), 
         .Z(n2880)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(192[3] 236[10])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    CCU2C _add_1_1232_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sampleCount[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n5256), .S1(n61));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_1232_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_1232_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_1232_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_1232_add_4_1.INJECT1_1 = "NO";
    CCU2C _add_1_1232_add_4_9 (.A0(sampleCount[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5259), .COUT(n5260), .S0(n40), .S1(n37));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_1232_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_1232_add_4_9.INIT1 = 16'haaa0;
    defparam _add_1_1232_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_1232_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_1232_add_4_7 (.A0(sampleCount[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5258), .COUT(n5259), .S0(n46), .S1(n43));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_1232_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_1232_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_1232_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_1232_add_4_7.INJECT1_1 = "NO";
    CCU2C ble_reg_data_count_965_add_4_5 (.A0(ble_reg_data_count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(ble_reg_data_count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n5275), .COUT(n5276), .S0(n42), 
          .S1(n41));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(285[27:52])
    defparam ble_reg_data_count_965_add_4_5.INIT0 = 16'haaa0;
    defparam ble_reg_data_count_965_add_4_5.INIT1 = 16'haaa0;
    defparam ble_reg_data_count_965_add_4_5.INJECT1_0 = "NO";
    defparam ble_reg_data_count_965_add_4_5.INJECT1_1 = "NO";
    LUT4 i4632_3_lut (.A(mem_current_state_adj_692[2]), .B(n11), .Z(n5861)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i4632_3_lut.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_4_lut_adj_64 (.A(mem_inf_rst_N_15), .B(spi_rx_ready), 
         .C(ble_flag_spi_data), .D(ble_flag_spi_pkt), .Z(n5564)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(192[3] 236[10])
    defparam i1_2_lut_3_lut_4_lut_adj_64.init = 16'h0080;
    CCU2C _add_1_1232_add_4_5 (.A0(sampleCount[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5257), .COUT(n5258), .S0(n52), .S1(n49));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_1232_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_1232_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_1232_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_1232_add_4_5.INJECT1_1 = "NO";
    CCU2C ble_reg_data_count_965_add_4_7 (.A0(ble_reg_data_count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(ble_reg_data_count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n5276), .COUT(n5277), .S0(n40_adj_689), 
          .S1(n39));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(285[27:52])
    defparam ble_reg_data_count_965_add_4_7.INIT0 = 16'haaa0;
    defparam ble_reg_data_count_965_add_4_7.INIT1 = 16'haaa0;
    defparam ble_reg_data_count_965_add_4_7.INJECT1_0 = "NO";
    defparam ble_reg_data_count_965_add_4_7.INJECT1_1 = "NO";
    LUT4 i2485_2_lut (.A(n43_adj_690), .B(mem_inf_rst_N_14), .Z(n3012)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(285[27:52])
    defparam i2485_2_lut.init = 16'h2222;
    LUT4 i2405_2_lut (.A(ble_mem_addr_buff[0]), .B(mem_next_state_3__N_134), 
         .Z(n1417)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(355[2] 385[9])
    defparam i2405_2_lut.init = 16'hbbbb;
    CCU2C _add_1_1232_add_4_3 (.A0(sampleCount[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5256), .COUT(n5257), .S0(n58), .S1(n55));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(126[19:46])
    defparam _add_1_1232_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_1232_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_1232_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_1232_add_4_3.INJECT1_1 = "NO";
    LUT4 i13_4_lut (.A(mem_next_state_3__N_134), .B(ble_mem_w_req), .C(mem_next_state_3__N_133), 
         .D(mem_r_req), .Z(n8)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C)+!B (C (D))))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(309[11:25])
    defparam i13_4_lut.init = 16'h0535;
    LUT4 mem_inf_rst_I_0_1_lut (.A(mem_inf_rst), .Z(mem_inf_rst_N_12)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(322[6:24])
    defparam mem_inf_rst_I_0_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_adj_65 (.A(mem_next_state_3__N_133), .B(ble_mem_w_req), 
         .Z(n862)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(325[3] 350[10])
    defparam i1_2_lut_adj_65.init = 16'h8888;
    LUT4 i2474_2_lut (.A(ble_mem_addr_buff[7]), .B(mem_next_state_3__N_134), 
         .Z(n1410)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(355[2] 385[9])
    defparam i2474_2_lut.init = 16'h8888;
    LUT4 i2473_2_lut (.A(ble_mem_addr_buff[6]), .B(mem_next_state_3__N_134), 
         .Z(n1411)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(355[2] 385[9])
    defparam i2473_2_lut.init = 16'h8888;
    LUT4 i2472_2_lut (.A(ble_mem_addr_buff[5]), .B(mem_next_state_3__N_134), 
         .Z(n1412)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(355[2] 385[9])
    defparam i2472_2_lut.init = 16'h8888;
    LUT4 i2471_2_lut (.A(ble_mem_addr_buff[4]), .B(mem_next_state_3__N_134), 
         .Z(n1413)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(355[2] 385[9])
    defparam i2471_2_lut.init = 16'h8888;
    LUT4 i2470_2_lut (.A(ble_mem_addr_buff[3]), .B(mem_next_state_3__N_134), 
         .Z(n1414)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(355[2] 385[9])
    defparam i2470_2_lut.init = 16'h8888;
    INV i5328 (.A(top_test0_c), .Z(sclk_N_651));
    LUT4 i2469_2_lut (.A(ble_mem_addr_buff[2]), .B(mem_next_state_3__N_134), 
         .Z(n1415)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(355[2] 385[9])
    defparam i2469_2_lut.init = 16'h8888;
    LUT4 i2468_2_lut (.A(ble_mem_addr_buff[1]), .B(mem_next_state_3__N_134), 
         .Z(n1416)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(355[2] 385[9])
    defparam i2468_2_lut.init = 16'h8888;
    spi_ctrl spi_ctrl_0 (.n694(n694), .top_test2_c(top_test2_c), .n6542(n6542), 
            .spi_rx_req_N_540(spi_rx_req_N_540), .spi_st_load_en_N_544(spi_st_load_en_N_544), 
            .spi_tx_data_7__N_515(spi_tx_data_7__N_515), .n701(n701), .n702(n702), 
            .n2761(n2761), .n6700(n6700), .clk_N_219_enable_26(clk_N_219_enable_26), 
            .spi_rx_data({spi_rx_data}), .spi_tx_data({spi_tx_data}), .n6060(n6060), 
            .spi_rx_ready(spi_rx_ready), .n6052(n6052), .spi_st_load_en(spi_st_load_en), 
            .spi_rst(spi_rst), .spi_tx_load_en(spi_tx_load_en), .\spi_next_state_3__N_528[3] (spi_next_state_3__N_528[3]), 
            .n5757(n5757), .n5640(n5640), .spi_st_load_trdy(spi_st_load_trdy), 
            .top_test3_c(top_test3_c), .firstFlag(firstFlag), .n5941(n5941), 
            .n5753(n5753), .spi_rx_req(spi_rx_req), .n6911(n6911), .n6592(n6592)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(462[10] 480[2])
    LUT4 i2483_2_lut (.A(n44), .B(mem_inf_rst_N_14), .Z(n3010)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(285[27:52])
    defparam i2483_2_lut.init = 16'h2222;
    VLO i1 (.Z(GND_net));
    clockDivider clockDivider_0 (.pll_lock(pll_lock), .top_test2_c(top_test2_c), 
            .serial_clk_c(serial_clk_c), .clk_N_219_enable_26(clk_N_219_enable_26), 
            .GND_net(GND_net), .VCC_net(VCC_net), .\spi_next_state_3__N_528[3] (spi_next_state_3__N_528[3]), 
            .n6592(n6592), .firstFlag(firstFlag), .n1131(n1131), .spi_tx_data_7__N_515(spi_tx_data_7__N_515), 
            .n6060(n6060), .spi_st_load_en_N_544(spi_st_load_en_N_544), 
            .n6052(n6052), .mem_inf_rst_N_18(mem_inf_rst_N_18), .clk_N_219_enable_57(clk_N_219_enable_57), 
            .n6911(n6911), .n6542(n6542), .mem_inf_rst_N_19(mem_inf_rst_N_19), 
            .clk_N_219_enable_64(clk_N_219_enable_64), .clk_N_219(clk_N_219)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(400[14] 405[2])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1349_4_lut (.A(mem_inf_rst_N_20), .B(n59), .C(pktReader_done), 
         .D(mem_inf_rst_N_19), .Z(n2545)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(192[3] 236[10])
    defparam i1349_4_lut.init = 16'h3b0a;
    IQSerializer IQSerializer_0 (.clk_N_440(clk_N_440), .\QCounter[1] (QCounter[1]), 
            .\QCounter[3] (QCounter[3]), .n2135(n2135), .\fskModule_I[11] (fskModule_I[11]), 
            .\fskModule_I[2] (fskModule_I[2]), .IQSerializer_start(IQSerializer_start), 
            .\QCounter[2] (QCounter[2]), .n5317(n5317), .n5309(n5309), 
            .\fskModule_Q[2] (fskModule_Q[2]), .\fskModule_I[7] (fskModule_I[7]), 
            .\fskModule_Q[12] (fskModule_Q[12]), .\fskModule_Q[7] (fskModule_Q[7]), 
            .\fskModule_Q[6] (fskModule_Q[6]), .\fskModule_I[0] (fskModule_I[0]), 
            .\fskModule_I[4] (fskModule_I[4]), .\fskModule_I[12] (fskModule_I[12]), 
            .\fskModule_Q[0] (fskModule_Q[0]), .\fskModule_Q[4] (fskModule_Q[4]), 
            .serial_clk_c(serial_clk_c), .serial(serial)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(452[14] 460[2])
    ble_packet_mem mem_inf_q_7__I_0 (.top_test2_c(top_test2_c), .VCC_net(VCC_net), 
            .mem_inf_rst_N_12(mem_inf_rst_N_12), .mem_inf_we(mem_inf_we), 
            .mem_inf_addr({mem_inf_addr}), .mem_inf_dataIn({mem_inf_dataIn}), 
            .mem_inf_q({mem_inf_q}), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(504[16] 512[2])
    LUT4 i1_2_lut_adj_66 (.A(mem_inf_rst_N_20), .B(pktReader_done), .Z(n43_adj_691)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(192[3] 236[10])
    defparam i1_2_lut_adj_66.init = 16'h8888;
    LUT4 ble_mem_w_addr_7__I_0_i8_3_lut (.A(ble_mem_w_addr[7]), .B(pktReader_mem_addr[7]), 
         .C(ble_mem_operation), .Z(mem_inf_addr[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(134[23:80])
    defparam ble_mem_w_addr_7__I_0_i8_3_lut.init = 16'hcaca;
    LUT4 top_rst_n_I_0_1_lut (.A(top_rst_n_c), .Z(top_rst_n_N_143)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(395[8:18])
    defparam top_rst_n_I_0_1_lut.init = 16'h5555;
    LUT4 ble_mem_w_addr_7__I_0_i7_3_lut (.A(ble_mem_w_addr[6]), .B(pktReader_mem_addr[6]), 
         .C(ble_mem_operation), .Z(mem_inf_addr[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(134[23:80])
    defparam ble_mem_w_addr_7__I_0_i7_3_lut.init = 16'hcaca;
    pll_64M pll_clko_I_0 (.clk_N_440(clk_N_440), .serial_clk_c(serial_clk_c), 
            .top_rst_n_N_143(top_rst_n_N_143), .pll_lock(pll_lock), .GND_net(GND_net), 
            .top_clk_c(top_clk_c), .VCC_net(VCC_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(391[9] 398[2])
    LUT4 ble_mem_w_addr_7__I_0_i6_3_lut (.A(ble_mem_w_addr[5]), .B(pktReader_mem_addr[5]), 
         .C(ble_mem_operation), .Z(mem_inf_addr[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(134[23:80])
    defparam ble_mem_w_addr_7__I_0_i6_3_lut.init = 16'hcaca;
    LUT4 m0_lut (.Z(n6700)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    spi spi_0 (.sclk_N_651(sclk_N_651), .top_test0_c(top_test0_c), .spi_mosi(spi_mosi), 
        .VCC_net(VCC_net), .spi_rst(spi_rst), .spi_rx_data({spi_rx_data}), 
        .n6700(n6700), .n5640(n5640), .\spi_next_state_3__N_528[3] (spi_next_state_3__N_528[3]), 
        .spi_st_load_en(spi_st_load_en), .spi_tx_load_en(spi_tx_load_en), 
        .spi_st_load_trdy(spi_st_load_trdy), .n694(n694), .n702(n702), 
        .n2761(n2761), .n5757(n5757), .spi_rx_req(spi_rx_req), .spi_tx_data({spi_tx_data}), 
        .n5753(n5753), .n6562(n6562));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(482[5] 502[2])
    
endmodule
//
// Verilog Description of module packetReader
//

module packetReader (clk_N_219, mem_inf_q, top_test2_c, pktReader_done, 
            pktReader_mem_addr, GND_net, VCC_net, fskModule_start, top_test5_c, 
            top_test3_c, top_test4_c, pktReader_ready, top_test6_c, 
            \mem_current_state[2] , n5861, mem_inf_rst_N_14, mem_inf_rst_N_20, 
            pktReader_ready_N_152, ble_mem_operation, ble_mem_operation_N_150, 
            n23, n67, sampleCount_11__N_332, ble_reg_pkt_size, n6700, 
            n11, n6555) /* synthesis syn_module_defined=1 */ ;
    input clk_N_219;
    input [7:0]mem_inf_q;
    input top_test2_c;
    output pktReader_done;
    output [7:0]pktReader_mem_addr;
    input GND_net;
    input VCC_net;
    output fskModule_start;
    output top_test5_c;
    output top_test3_c;
    output top_test4_c;
    input pktReader_ready;
    input top_test6_c;
    output \mem_current_state[2] ;
    input n5861;
    input mem_inf_rst_N_14;
    input mem_inf_rst_N_20;
    output pktReader_ready_N_152;
    input ble_mem_operation;
    output ble_mem_operation_N_150;
    input n23;
    input [11:0]n67;
    output [11:0]sampleCount_11__N_332;
    input [7:0]ble_reg_pkt_size;
    input n6700;
    output n11;
    output n6555;
    
    wire clk_N_219 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(9[32:40])
    wire top_test2_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(24[10:19])
    wire top_test6_c /* synthesis is_clock=1, SET_AS_NETWORK=top_test6_c */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(28[11:20])
    wire [7:0]ble_oct;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(25[26:33])
    
    wire clk_N_219_enable_25, n6558;
    wire [3:0]mod_current_state;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(142[11:28])
    
    wire ble_mod_done;
    wire [3:0]mod_next_state_3__N_257;
    
    wire ble_oct_rdy, mem_next_state_3__N_242, ble_mod_done_N_297, packetDone_N_287, 
        n5262;
    wire [7:0]n1;
    
    wire n5263, clk_N_219_enable_10, start_N_277, countRst, clk_N_219_enable_11;
    wire [0:0]n1659;
    
    wire clk_N_219_enable_13;
    wire [0:0]n1643;
    
    wire ble_oct_req, n4882, clk_N_219_enable_15, n5930, mem_next_state_3__N_241;
    wire [2:0]symCounter;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(144[11:21])
    
    wire n2995, n2571;
    wire [3:0]mod_next_state_3__N_232;
    
    wire top_test2_c_enable_2, top_test6_c_enable_2, mem_next_state_3__N_240, 
        mem_next_state_3__N_239, n4922, n5946, n2606, n889, n6, 
        n8, n5562, n6571, n5878, n12, n4, n14, n5881, n5928, 
        n5929, n6570, n6569, n5870, n6573, n6572;
    wire [2:0]symVal_N_283;
    
    wire n5924, n5925, n4_adj_686, n4890, n5926, n5927, n5916, 
        n5917, n30, n5918, n5919, n5920, n5921, n5922, n5923, 
        n6565, n5265, n5264, n10;
    
    FD1P3IX ble_oct_i4 (.D(mem_inf_q[4]), .SP(clk_N_219_enable_25), .CD(n6558), 
            .CK(clk_N_219), .Q(ble_oct[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=424, LSE_RLINE=438 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam ble_oct_i4.GSR = "ENABLED";
    FD1P3IX ble_oct_i5 (.D(mem_inf_q[5]), .SP(clk_N_219_enable_25), .CD(n6558), 
            .CK(clk_N_219), .Q(ble_oct[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=424, LSE_RLINE=438 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam ble_oct_i5.GSR = "ENABLED";
    FD1P3IX ble_oct_i6 (.D(mem_inf_q[6]), .SP(clk_N_219_enable_25), .CD(n6558), 
            .CK(clk_N_219), .Q(ble_oct[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=424, LSE_RLINE=438 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam ble_oct_i6.GSR = "ENABLED";
    FD1P3IX ble_oct_i7 (.D(mem_inf_q[7]), .SP(clk_N_219_enable_25), .CD(n6558), 
            .CK(clk_N_219), .Q(ble_oct[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=424, LSE_RLINE=438 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam ble_oct_i7.GSR = "ENABLED";
    FD1P3IX ble_oct_i0 (.D(mem_inf_q[0]), .SP(clk_N_219_enable_25), .CD(n6558), 
            .CK(clk_N_219), .Q(ble_oct[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=424, LSE_RLINE=438 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam ble_oct_i0.GSR = "ENABLED";
    FD1S3IX mod_current_state_i1 (.D(mod_next_state_3__N_257[0]), .CK(top_test2_c), 
            .CD(ble_mod_done), .Q(mod_current_state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=424, LSE_RLINE=438 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(152[11] 154[5])
    defparam mod_current_state_i1.GSR = "ENABLED";
    FD1S3AX ble_oct_rdy_116 (.D(mem_next_state_3__N_242), .CK(clk_N_219), 
            .Q(ble_oct_rdy)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=424, LSE_RLINE=438 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(94[11] 134[5])
    defparam ble_oct_rdy_116.GSR = "ENABLED";
    FD1S3AX ble_mod_done_117 (.D(ble_mod_done_N_297), .CK(clk_N_219), .Q(ble_mod_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=424, LSE_RLINE=438 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(94[11] 134[5])
    defparam ble_mod_done_117.GSR = "ENABLED";
    FD1S3AX packetDone_118 (.D(packetDone_N_287), .CK(clk_N_219), .Q(pktReader_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=424, LSE_RLINE=438 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(94[11] 134[5])
    defparam packetDone_118.GSR = "ENABLED";
    CCU2C mem_addr_968_add_4_3 (.A0(pktReader_mem_addr[1]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(pktReader_mem_addr[2]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n5262), .COUT(n5263), .S0(n1[1]), 
          .S1(n1[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(106[17:44])
    defparam mem_addr_968_add_4_3.INIT0 = 16'haaa0;
    defparam mem_addr_968_add_4_3.INIT1 = 16'haaa0;
    defparam mem_addr_968_add_4_3.INJECT1_0 = "NO";
    defparam mem_addr_968_add_4_3.INJECT1_1 = "NO";
    FD1P3AX start_125 (.D(start_N_277), .SP(clk_N_219_enable_10), .CK(clk_N_219), 
            .Q(fskModule_start)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=424, LSE_RLINE=438 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam start_125.GSR = "ENABLED";
    FD1P3AY countRst_126 (.D(n1659[0]), .SP(clk_N_219_enable_11), .CK(clk_N_219), 
            .Q(countRst)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=424, LSE_RLINE=438 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam countRst_126.GSR = "ENABLED";
    FD1P3AX debug1_127 (.D(n1643[0]), .SP(clk_N_219_enable_13), .CK(clk_N_219), 
            .Q(top_test5_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=424, LSE_RLINE=438 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam debug1_127.GSR = "ENABLED";
    FD1P3AY ble_oct_req_124 (.D(n4882), .SP(clk_N_219_enable_13), .CK(clk_N_219), 
            .Q(ble_oct_req)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=424, LSE_RLINE=438 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam ble_oct_req_124.GSR = "ENABLED";
    FD1P3AX symVal_121 (.D(n5930), .SP(clk_N_219_enable_15), .CK(clk_N_219), 
            .Q(top_test3_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=424, LSE_RLINE=438 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam symVal_121.GSR = "ENABLED";
    FD1P3AX debug0_119 (.D(mem_next_state_3__N_241), .SP(pktReader_ready), 
            .CK(clk_N_219), .Q(top_test4_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(94[11] 134[5])
    defparam debug0_119.GSR = "DISABLED";
    FD1S3JX symCounter_i0_i0 (.D(n2571), .CK(top_test6_c), .PD(n2995), 
            .Q(symCounter[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=424, LSE_RLINE=438 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(278[11] 289[5])
    defparam symCounter_i0_i0.GSR = "ENABLED";
    FD1P3IX ble_oct_i1 (.D(mem_inf_q[1]), .SP(clk_N_219_enable_25), .CD(n6558), 
            .CK(clk_N_219), .Q(ble_oct[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=424, LSE_RLINE=438 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam ble_oct_i1.GSR = "ENABLED";
    FD1P3IX ble_oct_i2 (.D(mem_inf_q[2]), .SP(clk_N_219_enable_25), .CD(n6558), 
            .CK(clk_N_219), .Q(ble_oct[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=424, LSE_RLINE=438 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam ble_oct_i2.GSR = "ENABLED";
    FD1S3AX mod_current_state_i3 (.D(mod_next_state_3__N_232[2]), .CK(top_test2_c), 
            .Q(mod_current_state[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=424, LSE_RLINE=438 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(152[11] 154[5])
    defparam mod_current_state_i3.GSR = "ENABLED";
    FD1P3IX ble_oct_i3 (.D(mem_inf_q[3]), .SP(clk_N_219_enable_25), .CD(n6558), 
            .CK(clk_N_219), .Q(ble_oct[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=424, LSE_RLINE=438 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam ble_oct_i3.GSR = "ENABLED";
    FD1S3IX mod_current_state_i2 (.D(mod_next_state_3__N_257[1]), .CK(top_test2_c), 
            .CD(ble_mod_done), .Q(mod_current_state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=424, LSE_RLINE=438 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(152[11] 154[5])
    defparam mod_current_state_i2.GSR = "ENABLED";
    CCU2C mem_addr_968_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pktReader_mem_addr[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n5262), .S1(n1[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(106[17:44])
    defparam mem_addr_968_add_4_1.INIT0 = 16'h0000;
    defparam mem_addr_968_add_4_1.INIT1 = 16'h555f;
    defparam mem_addr_968_add_4_1.INJECT1_0 = "NO";
    defparam mem_addr_968_add_4_1.INJECT1_1 = "NO";
    FD1P3AX mem_current_state_FSM_i1 (.D(n5861), .SP(top_test2_c_enable_2), 
            .CK(top_test2_c), .Q(\mem_current_state[2] ));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(57[3] 84[10])
    defparam mem_current_state_FSM_i1.GSR = "ENABLED";
    LUT4 mod_current_state_0__bdd_3_lut (.A(mod_current_state[0]), .B(mod_current_state[1]), 
         .C(mod_current_state[2]), .Z(top_test6_c_enable_2)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;
    defparam mod_current_state_0__bdd_3_lut.init = 16'h2c2c;
    LUT4 i1_3_lut (.A(mem_inf_rst_N_14), .B(mem_inf_rst_N_20), .C(pktReader_ready), 
         .Z(pktReader_ready_N_152)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;
    defparam i1_3_lut.init = 16'hdcdc;
    LUT4 mod_current_state_1__bdd_4_lut (.A(mod_current_state[1]), .B(mod_current_state[0]), 
         .C(mod_current_state[2]), .D(top_test6_c), .Z(mod_next_state_3__N_257[1])) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A !(B (C)))) */ ;
    defparam mod_current_state_1__bdd_4_lut.init = 16'h484a;
    FD1P3IX mem_addr_968__i0 (.D(n1[0]), .SP(mem_next_state_3__N_240), .CD(mem_next_state_3__N_239), 
            .CK(clk_N_219), .Q(pktReader_mem_addr[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(106[17:44])
    defparam mem_addr_968__i0.GSR = "ENABLED";
    LUT4 i1_3_lut_adj_47 (.A(mem_inf_rst_N_14), .B(mem_inf_rst_N_20), .C(ble_mem_operation), 
         .Z(ble_mem_operation_N_150)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;
    defparam i1_3_lut_adj_47.init = 16'hdcdc;
    LUT4 i2452_3_lut_3_lut (.A(fskModule_start), .B(n23), .C(n67[9]), 
         .Z(sampleCount_11__N_332[9])) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam i2452_3_lut_3_lut.init = 16'hd5d5;
    LUT4 i2453_3_lut_3_lut (.A(fskModule_start), .B(n23), .C(n67[8]), 
         .Z(sampleCount_11__N_332[8])) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam i2453_3_lut_3_lut.init = 16'hd5d5;
    FD1P3JX symCounter_i0_i2 (.D(n4922), .SP(top_test6_c_enable_2), .PD(n2995), 
            .CK(top_test6_c), .Q(symCounter[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=424, LSE_RLINE=438 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(278[11] 289[5])
    defparam symCounter_i0_i2.GSR = "ENABLED";
    FD1P3JX symCounter_i0_i1 (.D(n5946), .SP(top_test6_c_enable_2), .PD(n2995), 
            .CK(top_test6_c), .Q(symCounter[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=424, LSE_RLINE=438 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(278[11] 289[5])
    defparam symCounter_i0_i1.GSR = "ENABLED";
    LUT4 i2454_3_lut_3_lut (.A(fskModule_start), .B(n23), .C(n67[7]), 
         .Z(sampleCount_11__N_332[7])) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam i2454_3_lut_3_lut.init = 16'hd5d5;
    LUT4 i1410_3_lut (.A(mem_next_state_3__N_242), .B(mem_next_state_3__N_241), 
         .C(ble_oct_req), .Z(n2606)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(57[3] 84[10])
    defparam i1410_3_lut.init = 16'hcece;
    LUT4 reduce_or_370_i1_2_lut (.A(mem_next_state_3__N_240), .B(mem_next_state_3__N_239), 
         .Z(n889)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(57[3] 84[10])
    defparam reduce_or_370_i1_2_lut.init = 16'heeee;
    LUT4 LessThan_8_i8_3_lut_3_lut (.A(pktReader_mem_addr[4]), .B(ble_reg_pkt_size[4]), 
         .C(n6), .Z(n8)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(69[10:29])
    defparam LessThan_8_i8_3_lut_3_lut.init = 16'hd4d4;
    FD1S3AX mem_current_state_FSM_i2 (.D(n2606), .CK(top_test2_c), .Q(mem_next_state_3__N_242));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(57[3] 84[10])
    defparam mem_current_state_FSM_i2.GSR = "ENABLED";
    FD1S3AX mem_current_state_FSM_i3 (.D(n889), .CK(top_test2_c), .Q(mem_next_state_3__N_241));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(57[3] 84[10])
    defparam mem_current_state_FSM_i3.GSR = "ENABLED";
    FD1S3AX mem_current_state_FSM_i4 (.D(n5562), .CK(top_test2_c), .Q(mem_next_state_3__N_240));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(57[3] 84[10])
    defparam mem_current_state_FSM_i4.GSR = "ENABLED";
    FD1S3AY mem_current_state_FSM_i5 (.D(n6700), .CK(top_test2_c), .Q(mem_next_state_3__N_239));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(57[3] 84[10])
    defparam mem_current_state_FSM_i5.GSR = "ENABLED";
    LUT4 i2458_3_lut_3_lut (.A(fskModule_start), .B(n67[3]), .C(n23), 
         .Z(sampleCount_11__N_332[3])) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam i2458_3_lut_3_lut.init = 16'hd5d5;
    FD1P3IX mem_addr_968__i1 (.D(n1[1]), .SP(mem_next_state_3__N_240), .CD(mem_next_state_3__N_239), 
            .CK(clk_N_219), .Q(pktReader_mem_addr[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(106[17:44])
    defparam mem_addr_968__i1.GSR = "ENABLED";
    LUT4 i4724_4_lut_4_lut (.A(n6571), .B(n5878), .C(n12), .D(n4), .Z(n14)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(69[10:29])
    defparam i4724_4_lut_4_lut.init = 16'hf4b0;
    FD1P3IX mem_addr_968__i2 (.D(n1[2]), .SP(mem_next_state_3__N_240), .CD(mem_next_state_3__N_239), 
            .CK(clk_N_219), .Q(pktReader_mem_addr[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(106[17:44])
    defparam mem_addr_968__i2.GSR = "ENABLED";
    FD1P3IX mem_addr_968__i3 (.D(n1[3]), .SP(mem_next_state_3__N_240), .CD(mem_next_state_3__N_239), 
            .CK(clk_N_219), .Q(pktReader_mem_addr[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(106[17:44])
    defparam mem_addr_968__i3.GSR = "ENABLED";
    FD1P3IX mem_addr_968__i4 (.D(n1[4]), .SP(mem_next_state_3__N_240), .CD(mem_next_state_3__N_239), 
            .CK(clk_N_219), .Q(pktReader_mem_addr[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(106[17:44])
    defparam mem_addr_968__i4.GSR = "ENABLED";
    FD1P3IX mem_addr_968__i5 (.D(n1[5]), .SP(mem_next_state_3__N_240), .CD(mem_next_state_3__N_239), 
            .CK(clk_N_219), .Q(pktReader_mem_addr[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(106[17:44])
    defparam mem_addr_968__i5.GSR = "ENABLED";
    FD1P3IX mem_addr_968__i6 (.D(n1[6]), .SP(mem_next_state_3__N_240), .CD(mem_next_state_3__N_239), 
            .CK(clk_N_219), .Q(pktReader_mem_addr[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(106[17:44])
    defparam mem_addr_968__i6.GSR = "ENABLED";
    FD1P3IX mem_addr_968__i7 (.D(n1[7]), .SP(mem_next_state_3__N_240), .CD(mem_next_state_3__N_239), 
            .CK(clk_N_219), .Q(pktReader_mem_addr[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(106[17:44])
    defparam mem_addr_968__i7.GSR = "ENABLED";
    PFUMX LessThan_8_i16 (.BLUT(n8), .ALUT(n14), .C0(n5881), .Z(n11)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=424, LSE_RLINE=438 */ ;
    LUT4 i2459_3_lut_3_lut (.A(fskModule_start), .B(n67[2]), .C(n23), 
         .Z(sampleCount_11__N_332[2])) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam i2459_3_lut_3_lut.init = 16'hd5d5;
    L6MUX21 i4700 (.D0(n5928), .D1(n5929), .SD(symCounter[2]), .Z(n5930));
    LUT4 i4774_4_lut (.A(n6571), .B(n6570), .C(n6569), .D(n5870), .Z(n5881)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(69[10:29])
    defparam i4774_4_lut.init = 16'hfffe;
    LUT4 i4640_4_lut (.A(n6573), .B(n6572), .C(pktReader_mem_addr[2]), 
         .D(ble_reg_pkt_size[2]), .Z(n5870)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(69[10:29])
    defparam i4640_4_lut.init = 16'h1001;
    LUT4 sub_66_inv_0_i2_1_lut (.A(symCounter[1]), .Z(symVal_N_283[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(233[24:41])
    defparam sub_66_inv_0_i2_1_lut.init = 16'h5555;
    LUT4 sub_66_inv_0_i1_1_lut (.A(symCounter[0]), .Z(symVal_N_283[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(233[24:41])
    defparam sub_66_inv_0_i1_1_lut.init = 16'h5555;
    L6MUX21 i4698 (.D0(n5924), .D1(n5925), .SD(symVal_N_283[1]), .Z(n5928));
    LUT4 i3693_4_lut (.A(top_test6_c), .B(symCounter[0]), .C(mod_current_state[0]), 
         .D(n4_adj_686), .Z(n4890)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(142[11:28])
    defparam i3693_4_lut.init = 16'hfaca;
    LUT4 i1_2_lut (.A(symCounter[1]), .B(symCounter[2]), .Z(n4_adj_686)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(278[11] 289[5])
    defparam i1_2_lut.init = 16'heeee;
    L6MUX21 i4699 (.D0(n5926), .D1(n5927), .SD(symVal_N_283[1]), .Z(n5929));
    PFUMX i4694 (.BLUT(n5916), .ALUT(n5917), .C0(symVal_N_283[0]), .Z(n5924));
    LUT4 i1_3_lut_adj_48 (.A(ble_mod_done), .B(mod_current_state[2]), .C(n30), 
         .Z(mod_next_state_3__N_232[2])) /* synthesis lut_function=(A+!(B+!(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(142[11:28])
    defparam i1_3_lut_adj_48.init = 16'hbaba;
    LUT4 i3703_4_lut (.A(mod_current_state[0]), .B(mod_current_state[1]), 
         .C(ble_oct_rdy), .D(top_test6_c), .Z(n30)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(142[11:28])
    defparam i3703_4_lut.init = 16'h6420;
    LUT4 LessThan_8_i4_4_lut (.A(ble_reg_pkt_size[0]), .B(ble_reg_pkt_size[1]), 
         .C(pktReader_mem_addr[1]), .D(pktReader_mem_addr[0]), .Z(n4)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(69[10:29])
    defparam LessThan_8_i4_4_lut.init = 16'h0c8e;
    PFUMX i4695 (.BLUT(n5918), .ALUT(n5919), .C0(symVal_N_283[0]), .Z(n5925));
    PFUMX i4696 (.BLUT(n5920), .ALUT(n5921), .C0(symVal_N_283[0]), .Z(n5926));
    LUT4 i1_3_lut_adj_49 (.A(mem_next_state_3__N_239), .B(\mem_current_state[2] ), 
         .C(ble_mod_done), .Z(ble_mod_done_N_297)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(41[11:25])
    defparam i1_3_lut_adj_49.init = 16'hdcdc;
    LUT4 i1_3_lut_adj_50 (.A(mem_next_state_3__N_239), .B(\mem_current_state[2] ), 
         .C(pktReader_done), .Z(packetDone_N_287)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(41[11:25])
    defparam i1_3_lut_adj_50.init = 16'hdcdc;
    LUT4 i1_4_lut_4_lut (.A(mod_current_state[0]), .B(mod_current_state[1]), 
         .C(n4890), .D(mod_current_state[2]), .Z(mod_next_state_3__N_257[0])) /* synthesis lut_function=(!(A (B ((D)+!C))+!A (B ((D)+!C)+!B (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(152[11] 154[5])
    defparam i1_4_lut_4_lut.init = 16'h22f3;
    LUT4 i1_2_lut_3_lut (.A(mod_current_state[0]), .B(mod_current_state[1]), 
         .C(mod_current_state[2]), .Z(clk_N_219_enable_13)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(152[11] 154[5])
    defparam i1_2_lut_3_lut.init = 16'h2f2f;
    LUT4 i2455_3_lut_3_lut (.A(fskModule_start), .B(n67[6]), .C(n23), 
         .Z(sampleCount_11__N_332[6])) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam i2455_3_lut_3_lut.init = 16'hd5d5;
    PFUMX i4697 (.BLUT(n5922), .ALUT(n5923), .C0(symVal_N_283[0]), .Z(n5927));
    LUT4 i1_2_lut_3_lut_adj_51 (.A(mod_current_state[0]), .B(mod_current_state[1]), 
         .C(mod_current_state[2]), .Z(n4882)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(152[11] 154[5])
    defparam i1_2_lut_3_lut_adj_51.init = 16'h2020;
    LUT4 i4693_4_lut (.A(mem_inf_q[3]), .B(ble_oct[3]), .C(mod_current_state[1]), 
         .D(n6565), .Z(n5923)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i4693_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_rep_84 (.A(mod_current_state[1]), .B(mod_current_state[2]), 
         .Z(n6558)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(152[11] 154[5])
    defparam i1_2_lut_rep_84.init = 16'h8888;
    LUT4 i2451_3_lut_3_lut (.A(fskModule_start), .B(n23), .C(n67[10]), 
         .Z(sampleCount_11__N_332[10])) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam i2451_3_lut_3_lut.init = 16'hd5d5;
    LUT4 i3746_1_lut_2_lut (.A(mod_current_state[1]), .B(mod_current_state[2]), 
         .Z(clk_N_219_enable_10)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(152[11] 154[5])
    defparam i3746_1_lut_2_lut.init = 16'h7777;
    LUT4 i4692_4_lut (.A(mem_inf_q[2]), .B(ble_oct[2]), .C(mod_current_state[1]), 
         .D(n6565), .Z(n5922)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i4692_4_lut.init = 16'hcac0;
    LUT4 i2456_3_lut_3_lut (.A(fskModule_start), .B(n67[5]), .C(n23), 
         .Z(sampleCount_11__N_332[5])) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam i2456_3_lut_3_lut.init = 16'hd5d5;
    LUT4 i1_2_lut_3_lut_3_lut (.A(mod_current_state[1]), .B(mod_current_state[2]), 
         .C(mod_current_state[0]), .Z(clk_N_219_enable_25)) /* synthesis lut_function=(A (B)+!A (C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(152[11] 154[5])
    defparam i1_2_lut_3_lut_3_lut.init = 16'hd8d8;
    LUT4 i4691_4_lut (.A(mem_inf_q[1]), .B(ble_oct[1]), .C(mod_current_state[1]), 
         .D(n6565), .Z(n5921)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i4691_4_lut.init = 16'hcac0;
    LUT4 i4690_4_lut (.A(mem_inf_q[0]), .B(ble_oct[0]), .C(mod_current_state[1]), 
         .D(n6565), .Z(n5920)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i4690_4_lut.init = 16'hcac0;
    LUT4 i4689_4_lut (.A(mem_inf_q[7]), .B(ble_oct[7]), .C(mod_current_state[1]), 
         .D(n6565), .Z(n5919)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i4689_4_lut.init = 16'hcac0;
    LUT4 i4688_4_lut (.A(mem_inf_q[6]), .B(ble_oct[6]), .C(mod_current_state[1]), 
         .D(n6565), .Z(n5918)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i4688_4_lut.init = 16'hcac0;
    CCU2C mem_addr_968_add_4_9 (.A0(pktReader_mem_addr[7]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5265), .S0(n1[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(106[17:44])
    defparam mem_addr_968_add_4_9.INIT0 = 16'haaa0;
    defparam mem_addr_968_add_4_9.INIT1 = 16'h0000;
    defparam mem_addr_968_add_4_9.INJECT1_0 = "NO";
    defparam mem_addr_968_add_4_9.INJECT1_1 = "NO";
    LUT4 i4687_4_lut (.A(mem_inf_q[5]), .B(ble_oct[5]), .C(mod_current_state[1]), 
         .D(n6565), .Z(n5917)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i4687_4_lut.init = 16'hcac0;
    LUT4 i4686_4_lut (.A(mem_inf_q[4]), .B(ble_oct[4]), .C(mod_current_state[1]), 
         .D(n6565), .Z(n5916)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i4686_4_lut.init = 16'hcac0;
    CCU2C mem_addr_968_add_4_7 (.A0(pktReader_mem_addr[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(pktReader_mem_addr[6]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n5264), .COUT(n5265), .S0(n1[5]), 
          .S1(n1[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(106[17:44])
    defparam mem_addr_968_add_4_7.INIT0 = 16'haaa0;
    defparam mem_addr_968_add_4_7.INIT1 = 16'haaa0;
    defparam mem_addr_968_add_4_7.INJECT1_0 = "NO";
    defparam mem_addr_968_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_52 (.A(mod_current_state[0]), .B(top_test6_c), .Z(n1659[0])) /* synthesis lut_function=(A+!(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(152[11] 154[5])
    defparam i1_2_lut_adj_52.init = 16'hbbbb;
    LUT4 i2457_3_lut_3_lut (.A(fskModule_start), .B(n67[4]), .C(n23), 
         .Z(sampleCount_11__N_332[4])) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam i2457_3_lut_3_lut.init = 16'hd5d5;
    LUT4 i1_2_lut_adj_53 (.A(mod_current_state[1]), .B(mod_current_state[0]), 
         .Z(n1643[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(152[11] 154[5])
    defparam i1_2_lut_adj_53.init = 16'h2222;
    CCU2C mem_addr_968_add_4_5 (.A0(pktReader_mem_addr[3]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(pktReader_mem_addr[4]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n5263), .COUT(n5264), .S0(n1[3]), 
          .S1(n1[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(106[17:44])
    defparam mem_addr_968_add_4_5.INIT0 = 16'haaa0;
    defparam mem_addr_968_add_4_5.INIT1 = 16'haaa0;
    defparam mem_addr_968_add_4_5.INJECT1_0 = "NO";
    defparam mem_addr_968_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_89 (.A(mod_current_state[1]), .B(mod_current_state[2]), 
         .Z(clk_N_219_enable_11)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(152[11] 154[5])
    defparam i1_2_lut_rep_89.init = 16'h2222;
    LUT4 i927_2_lut_rep_91 (.A(mod_current_state[2]), .B(mod_current_state[0]), 
         .Z(n6565)) /* synthesis lut_function=(A (B)) */ ;
    defparam i927_2_lut_rep_91.init = 16'h8888;
    LUT4 i1_3_lut_3_lut_3_lut (.A(mod_current_state[2]), .B(mod_current_state[0]), 
         .C(mod_current_state[1]), .Z(clk_N_219_enable_15)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(C))) */ ;
    defparam i1_3_lut_3_lut_3_lut.init = 16'h5858;
    LUT4 i2358_2_lut_3_lut (.A(mod_current_state[2]), .B(mod_current_state[0]), 
         .C(mod_current_state[1]), .Z(start_N_277)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i2358_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i1_2_lut_rep_92 (.A(mem_next_state_3__N_242), .B(ble_oct_req), 
         .Z(top_test2_c_enable_2)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(57[3] 84[10])
    defparam i1_2_lut_rep_92.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_54 (.A(mem_next_state_3__N_242), .B(ble_oct_req), 
         .C(n11), .Z(n5562)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(57[3] 84[10])
    defparam i1_2_lut_3_lut_adj_54.init = 16'h8080;
    LUT4 i3725_3_lut (.A(symCounter[1]), .B(symCounter[2]), .C(symCounter[0]), 
         .Z(n4922)) /* synthesis lut_function=(A (B)+!A (B (C)+!B !(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(144[11:21])
    defparam i3725_3_lut.init = 16'hc9c9;
    LUT4 i2460_3_lut_3_lut (.A(fskModule_start), .B(n67[1]), .C(n23), 
         .Z(sampleCount_11__N_332[1])) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam i2460_3_lut_3_lut.init = 16'hd5d5;
    LUT4 i4740_2_lut (.A(symCounter[1]), .B(symCounter[0]), .Z(n5946)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(144[11:21])
    defparam i4740_2_lut.init = 16'h9999;
    LUT4 i1466_1_lut_rep_81 (.A(fskModule_start), .Z(n6555)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam i1466_1_lut_rep_81.init = 16'h5555;
    LUT4 LessThan_8_i11_2_lut_rep_95 (.A(pktReader_mem_addr[5]), .B(ble_reg_pkt_size[5]), 
         .Z(n6569)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(69[10:29])
    defparam LessThan_8_i11_2_lut_rep_95.init = 16'h6666;
    LUT4 LessThan_8_i13_2_lut_rep_96 (.A(pktReader_mem_addr[6]), .B(ble_reg_pkt_size[6]), 
         .Z(n6570)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(69[10:29])
    defparam LessThan_8_i13_2_lut_rep_96.init = 16'h6666;
    LUT4 i4648_2_lut_3_lut_4_lut (.A(pktReader_mem_addr[6]), .B(ble_reg_pkt_size[6]), 
         .C(ble_reg_pkt_size[5]), .D(pktReader_mem_addr[5]), .Z(n5878)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(69[10:29])
    defparam i4648_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_8_i10_3_lut_3_lut (.A(pktReader_mem_addr[6]), .B(ble_reg_pkt_size[6]), 
         .C(ble_reg_pkt_size[5]), .Z(n10)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(69[10:29])
    defparam LessThan_8_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_8_i15_2_lut_rep_97 (.A(pktReader_mem_addr[7]), .B(ble_reg_pkt_size[7]), 
         .Z(n6571)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(69[10:29])
    defparam LessThan_8_i15_2_lut_rep_97.init = 16'h6666;
    LUT4 i2365_3_lut_3_lut (.A(fskModule_start), .B(n67[0]), .C(n23), 
         .Z(sampleCount_11__N_332[0])) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam i2365_3_lut_3_lut.init = 16'hd5d5;
    LUT4 i2450_3_lut_3_lut (.A(fskModule_start), .B(n23), .C(n67[11]), 
         .Z(sampleCount_11__N_332[11])) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam i2450_3_lut_3_lut.init = 16'hd5d5;
    LUT4 LessThan_8_i12_3_lut_3_lut (.A(pktReader_mem_addr[7]), .B(ble_reg_pkt_size[7]), 
         .C(n10), .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(69[10:29])
    defparam LessThan_8_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_8_i7_2_lut_rep_98 (.A(pktReader_mem_addr[3]), .B(ble_reg_pkt_size[3]), 
         .Z(n6572)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(69[10:29])
    defparam LessThan_8_i7_2_lut_rep_98.init = 16'h6666;
    LUT4 LessThan_8_i6_3_lut_3_lut (.A(pktReader_mem_addr[3]), .B(ble_reg_pkt_size[3]), 
         .C(ble_reg_pkt_size[2]), .Z(n6)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(69[10:29])
    defparam LessThan_8_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_8_i9_2_lut_rep_99 (.A(pktReader_mem_addr[4]), .B(ble_reg_pkt_size[4]), 
         .Z(n6573)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(69[10:29])
    defparam LessThan_8_i9_2_lut_rep_99.init = 16'h6666;
    LUT4 i1789_1_lut (.A(countRst), .Z(n2995)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(209[11] 271[5])
    defparam i1789_1_lut.init = 16'h5555;
    LUT4 i3715_4_lut (.A(mod_current_state[0]), .B(symCounter[0]), .C(mod_current_state[1]), 
         .D(mod_current_state[2]), .Z(n2571)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (B ((D)+!C)+!B !((D)+!C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(142[11:28])
    defparam i3715_4_lut.init = 16'hc63c;
    
endmodule
//
// Verilog Description of module FSKModulator
//

module FSKModulator (top_test2_c, n6542, top_test3_c, \fskModule_I[12] , 
            clk_N_219, n6555, \fskModule_I[11] , \fskModule_I[7] , \fskModule_I[0] , 
            firstFlag, IQSerializer_start, clk_N_219_enable_26, sampleCount, 
            sampleCount_11__N_332, \fskModule_I[4] , \fskModule_I[2] , 
            n1131, top_test6_c, \fskModule_Q[0] , fskModule_start, n5941, 
            \fskModule_Q[2] , \fskModule_Q[4] , \fskModule_Q[6] , \fskModule_Q[7] , 
            \fskModule_Q[12] , n2135, n23) /* synthesis syn_module_defined=1 */ ;
    input top_test2_c;
    input n6542;
    input top_test3_c;
    output \fskModule_I[12] ;
    input clk_N_219;
    input n6555;
    output \fskModule_I[11] ;
    output \fskModule_I[7] ;
    output \fskModule_I[0] ;
    output firstFlag;
    output IQSerializer_start;
    input clk_N_219_enable_26;
    output [11:0]sampleCount;
    input [11:0]sampleCount_11__N_332;
    output \fskModule_I[4] ;
    output \fskModule_I[2] ;
    input n1131;
    output top_test6_c;
    output \fskModule_Q[0] ;
    input fskModule_start;
    input n5941;
    output \fskModule_Q[2] ;
    output \fskModule_Q[4] ;
    output \fskModule_Q[6] ;
    output \fskModule_Q[7] ;
    output \fskModule_Q[12] ;
    output n2135;
    output n23;
    
    wire top_test2_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(24[10:19])
    wire clk_N_219 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(9[32:40])
    wire top_test6_c /* synthesis is_clock=1, SET_AS_NETWORK=top_test6_c */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(28[11:20])
    
    wire lastSym, top_test2_c_enable_1;
    wire [12:0]sine;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(43[23:27])
    wire [12:0]cosine;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(44[23:29])
    wire [7:0]n618;
    
    wire n2155;
    wire [2:0]sin_phase;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(35[23:32])
    
    wire n1, n5612, n5940, n5580, cosOut_12__N_438, n5671;
    wire [2:0]n2;
    
    wire n5652, n5668, n5725, n5729, n17, n5723, n6556, n6581, 
        n5713, n5711;
    
    FD1P3IX lastSym_55 (.D(top_test3_c), .SP(top_test2_c_enable_1), .CD(n6542), 
            .CK(top_test2_c), .Q(lastSym));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(70[8] 116[4])
    defparam lastSym_55.GSR = "DISABLED";
    FD1S3IX FSK_I__i12 (.D(sine[12]), .CK(clk_N_219), .CD(n6555), .Q(\fskModule_I[12] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i12.GSR = "DISABLED";
    FD1S3IX FSK_I__i11 (.D(sine[11]), .CK(clk_N_219), .CD(n6555), .Q(\fskModule_I[11] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i11.GSR = "DISABLED";
    FD1S3IX FSK_I__i7 (.D(sine[7]), .CK(clk_N_219), .CD(n6555), .Q(\fskModule_I[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i7.GSR = "DISABLED";
    FD1S3IX FSK_I__i0 (.D(sine[0]), .CK(clk_N_219), .CD(n6555), .Q(\fskModule_I[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i0.GSR = "DISABLED";
    FD1S3AX firstFlag_56 (.D(n6542), .CK(top_test2_c), .Q(firstFlag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(70[8] 116[4])
    defparam firstFlag_56.GSR = "DISABLED";
    FD1S3AX start_57 (.D(clk_N_219_enable_26), .CK(top_test2_c), .Q(IQSerializer_start)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(70[8] 116[4])
    defparam start_57.GSR = "DISABLED";
    FD1S3BX sampleCount_i0 (.D(sampleCount_11__N_332[0]), .CK(clk_N_219), 
            .PD(n6542), .Q(sampleCount[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i0.GSR = "DISABLED";
    FD1S3IX FSK_I__i4 (.D(sine[4]), .CK(clk_N_219), .CD(n6555), .Q(\fskModule_I[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i4.GSR = "DISABLED";
    FD1S3IX FSK_I__i2 (.D(sine[3]), .CK(clk_N_219), .CD(n6555), .Q(\fskModule_I[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i2.GSR = "DISABLED";
    FD1S3JX cos_phase_FSM_i1 (.D(n618[7]), .CK(top_test2_c), .PD(n1131), 
            .Q(cosine[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i1.GSR = "DISABLED";
    FD1S3DX symDone_60 (.D(n2155), .CK(clk_N_219), .CD(n6542), .Q(top_test6_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam symDone_60.GSR = "DISABLED";
    FD1S3IX FSK_Q__i0 (.D(cosine[0]), .CK(clk_N_219), .CD(n6555), .Q(\fskModule_Q[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i0.GSR = "DISABLED";
    FD1S3IX sin_phase_969__i0 (.D(n1), .CK(top_test2_c), .CD(n1131), .Q(sin_phase[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(89[12] 108[6])
    defparam sin_phase_969__i0.GSR = "DISABLED";
    LUT4 i4750_2_lut_4_lut (.A(sampleCount[1]), .B(n5612), .C(sampleCount[0]), 
         .D(clk_N_219_enable_26), .Z(top_test2_c_enable_1)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A (D))) */ ;
    defparam i4750_2_lut_4_lut.init = 16'h02ff;
    LUT4 i2364_2_lut_4_lut (.A(sampleCount[1]), .B(n5612), .C(sampleCount[0]), 
         .D(fskModule_start), .Z(n2155)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i2364_2_lut_4_lut.init = 16'h0200;
    PFUMX sin_phase_969_mux_6_i3 (.BLUT(n5940), .ALUT(n5941), .C0(n1131), 
          .Z(n5580));
    FD1S3IX cos_phase_FSM_i8 (.D(n618[6]), .CK(top_test2_c), .CD(n1131), 
            .Q(n618[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i8.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i7 (.D(n618[5]), .CK(top_test2_c), .CD(n1131), 
            .Q(n618[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i7.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i6 (.D(n618[4]), .CK(top_test2_c), .CD(n1131), 
            .Q(n618[5]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i6.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i5 (.D(n618[3]), .CK(top_test2_c), .CD(n1131), 
            .Q(n618[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i5.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i4 (.D(n618[2]), .CK(top_test2_c), .CD(n1131), 
            .Q(n618[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i4.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i3 (.D(cosOut_12__N_438), .CK(top_test2_c), .CD(n1131), 
            .Q(n618[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i3.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i2 (.D(cosine[1]), .CK(top_test2_c), .CD(n1131), 
            .Q(cosOut_12__N_438));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i2.GSR = "DISABLED";
    LUT4 i4730_1_lut_4_lut (.A(sin_phase[1]), .B(n5671), .C(sin_phase[2]), 
         .D(sin_phase[0]), .Z(n5940)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C)+!B !(C)))) */ ;
    defparam i4730_1_lut_4_lut.init = 16'h69c3;
    FD1S3BX sampleCount_i11 (.D(sampleCount_11__N_332[11]), .CK(clk_N_219), 
            .PD(n6542), .Q(sampleCount[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i11.GSR = "DISABLED";
    LUT4 i3992_2_lut (.A(sin_phase[1]), .B(sin_phase[0]), .Z(n2[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(89[12] 108[6])
    defparam i3992_2_lut.init = 16'h6666;
    FD1S3BX sampleCount_i10 (.D(sampleCount_11__N_332[10]), .CK(clk_N_219), 
            .PD(n6542), .Q(sampleCount[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i10.GSR = "DISABLED";
    FD1S3BX sampleCount_i9 (.D(sampleCount_11__N_332[9]), .CK(clk_N_219), 
            .PD(n6542), .Q(sampleCount[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i9.GSR = "DISABLED";
    FD1S3BX sampleCount_i8 (.D(sampleCount_11__N_332[8]), .CK(clk_N_219), 
            .PD(n6542), .Q(sampleCount[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i8.GSR = "DISABLED";
    FD1S3BX sampleCount_i7 (.D(sampleCount_11__N_332[7]), .CK(clk_N_219), 
            .PD(n6542), .Q(sampleCount[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i7.GSR = "DISABLED";
    FD1S3BX sampleCount_i6 (.D(sampleCount_11__N_332[6]), .CK(clk_N_219), 
            .PD(n6542), .Q(sampleCount[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i6.GSR = "DISABLED";
    FD1S3BX sampleCount_i5 (.D(sampleCount_11__N_332[5]), .CK(clk_N_219), 
            .PD(n6542), .Q(sampleCount[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i5.GSR = "DISABLED";
    FD1S3BX sampleCount_i4 (.D(sampleCount_11__N_332[4]), .CK(clk_N_219), 
            .PD(n6542), .Q(sampleCount[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i4.GSR = "DISABLED";
    FD1S3BX sampleCount_i3 (.D(sampleCount_11__N_332[3]), .CK(clk_N_219), 
            .PD(n6542), .Q(sampleCount[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i3.GSR = "DISABLED";
    FD1S3BX sampleCount_i2 (.D(sampleCount_11__N_332[2]), .CK(clk_N_219), 
            .PD(n6542), .Q(sampleCount[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i2.GSR = "DISABLED";
    FD1S3BX sampleCount_i1 (.D(sampleCount_11__N_332[1]), .CK(clk_N_219), 
            .PD(n6542), .Q(sampleCount[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i1.GSR = "DISABLED";
    FD1S3IX FSK_Q__i2 (.D(cosine[1]), .CK(clk_N_219), .CD(n6555), .Q(\fskModule_Q[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i2.GSR = "DISABLED";
    FD1S3IX FSK_Q__i4 (.D(cosine[4]), .CK(clk_N_219), .CD(n6555), .Q(\fskModule_Q[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i4.GSR = "DISABLED";
    FD1S3IX FSK_Q__i6 (.D(cosine[11]), .CK(clk_N_219), .CD(n6555), .Q(\fskModule_Q[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i6.GSR = "DISABLED";
    FD1S3IX FSK_Q__i7 (.D(cosine[7]), .CK(clk_N_219), .CD(n6555), .Q(\fskModule_Q[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i7.GSR = "DISABLED";
    FD1S3IX FSK_Q__i12 (.D(n5668), .CK(clk_N_219), .CD(n5652), .Q(\fskModule_Q[12] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=441, LSE_RLINE=450 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i12.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(n5725), .B(n5729), .C(n17), .D(n5723), .Z(n5671)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hfffe;
    FD1S3IX sin_phase_969__i1 (.D(n2[1]), .CK(top_test2_c), .CD(n1131), 
            .Q(sin_phase[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(89[12] 108[6])
    defparam sin_phase_969__i1.GSR = "DISABLED";
    FD1S3AX sin_phase_969__i2 (.D(n5580), .CK(top_test2_c), .Q(sin_phase[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(89[12] 108[6])
    defparam sin_phase_969__i2.GSR = "DISABLED";
    LUT4 i5_2_lut_rep_82 (.A(sampleCount[9]), .B(sampleCount[11]), .Z(n6556)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam i5_2_lut_rep_82.init = 16'heeee;
    LUT4 i1_3_lut_4_lut (.A(sampleCount[9]), .B(sampleCount[11]), .C(top_test3_c), 
         .D(lastSym), .Z(n5729)) /* synthesis lut_function=(A+(B+(C (D)+!C !(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam i1_3_lut_4_lut.init = 16'hfeef;
    LUT4 i1_4_lut_adj_42 (.A(sampleCount[1]), .B(sampleCount[10]), .C(sampleCount[2]), 
         .D(sampleCount[5]), .Z(n5725)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_42.init = 16'hfffe;
    LUT4 i2_2_lut_rep_107 (.A(cosOut_12__N_438), .B(cosine[1]), .Z(n6581)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam i2_2_lut_rep_107.init = 16'heeee;
    LUT4 i1_2_lut (.A(sampleCount[0]), .B(sampleCount[3]), .Z(n5723)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_3_lut_3_lut_4_lut (.A(cosOut_12__N_438), .B(cosine[1]), .C(n618[2]), 
         .D(fskModule_start), .Z(n5652)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(59[8] 67[4])
    defparam i1_3_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1034_1_lut (.A(IQSerializer_start), .Z(n2135)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(70[8] 116[4])
    defparam i1034_1_lut.init = 16'h5555;
    LUT4 i1_3_lut (.A(sampleCount[1]), .B(n5612), .C(sampleCount[0]), 
         .Z(n23)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i1_3_lut.init = 16'hdfdf;
    LUT4 i1_4_lut_adj_43 (.A(n6556), .B(n17), .C(n5713), .D(n5711), 
         .Z(n5612)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam i1_4_lut_adj_43.init = 16'hfffe;
    LUT4 i1_2_lut_adj_44 (.A(sampleCount[5]), .B(sampleCount[3]), .Z(n5713)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam i1_2_lut_adj_44.init = 16'heeee;
    LUT4 i1_2_lut_adj_45 (.A(sampleCount[10]), .B(sampleCount[2]), .Z(n5711)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam i1_2_lut_adj_45.init = 16'heeee;
    LUT4 i1_4_lut_adj_46 (.A(sampleCount[8]), .B(sampleCount[7]), .C(sampleCount[6]), 
         .D(sampleCount[4]), .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(122[11] 135[5])
    defparam i1_4_lut_adj_46.init = 16'hfffe;
    sinModule sin_instance (.sin_phase({sin_phase}), .n1(n1), .\sine[0] (sine[0]), 
            .\sine[3] (sine[3]), .\sine[12] (sine[12]), .\sine[11] (sine[11]), 
            .\sine[7] (sine[7]), .\sine[4] (sine[4])) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(159[11] 162[2])
    cosModule cos_instance (.n6581(n6581), .n624(n618[2]), .n623(n618[3]), 
            .\cosine[4] (cosine[4]), .\cosine[11] (cosine[11]), .n621(n618[5]), 
            .n622(n618[4]), .\cosine[1] (cosine[1]), .\cosine[7] (cosine[7]), 
            .n5668(n5668), .\cosine[0] (cosine[0]), .cosOut_12__N_438(cosOut_12__N_438), 
            .n619(n618[7]), .n620(n618[6])) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(163[12] 166[2])
    
endmodule
//
// Verilog Description of module sinModule
//

module sinModule (sin_phase, n1, \sine[0] , \sine[3] , \sine[12] , 
            \sine[11] , \sine[7] , \sine[4] ) /* synthesis syn_module_defined=1 */ ;
    input [2:0]sin_phase;
    output n1;
    output \sine[0] ;
    output \sine[3] ;
    output \sine[12] ;
    output \sine[11] ;
    output \sine[7] ;
    output \sine[4] ;
    
    
    LUT4 i1_1_lut (.A(sin_phase[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    LUT4 i1_2_lut (.A(sin_phase[0]), .B(sin_phase[1]), .Z(\sine[0] )) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut.init = 16'h4444;
    LUT4 i4764_3_lut (.A(sin_phase[0]), .B(sin_phase[1]), .C(sin_phase[2]), 
         .Z(\sine[3] )) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/sinmodule.v(16[11:32])
    defparam i4764_3_lut.init = 16'h0404;
    LUT4 i4372_2_lut_3_lut (.A(sin_phase[0]), .B(sin_phase[1]), .C(sin_phase[2]), 
         .Z(\sine[12] )) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i4372_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1_2_lut_3_lut (.A(sin_phase[0]), .B(sin_phase[1]), .C(sin_phase[2]), 
         .Z(\sine[11] )) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0e0e;
    LUT4 i13_3_lut_3_lut (.A(sin_phase[2]), .B(sin_phase[1]), .C(sin_phase[0]), 
         .Z(\sine[7] )) /* synthesis lut_function=(A (C)+!A !((C)+!B)) */ ;
    defparam i13_3_lut_3_lut.init = 16'ha4a4;
    LUT4 i1_4_lut_3_lut (.A(sin_phase[2]), .B(sin_phase[1]), .C(sin_phase[0]), 
         .Z(\sine[4] )) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;
    defparam i1_4_lut_3_lut.init = 16'hf4f4;
    
endmodule
//
// Verilog Description of module cosModule
//

module cosModule (n6581, n624, n623, \cosine[4] , \cosine[11] , n621, 
            n622, \cosine[1] , \cosine[7] , n5668, \cosine[0] , cosOut_12__N_438, 
            n619, n620) /* synthesis syn_module_defined=1 */ ;
    input n6581;
    input n624;
    input n623;
    output \cosine[4] ;
    output \cosine[11] ;
    input n621;
    input n622;
    input \cosine[1] ;
    output \cosine[7] ;
    output n5668;
    output \cosine[0] ;
    input cosOut_12__N_438;
    input n619;
    input n620;
    
    wire [9:0]n1805;
    
    wire n5835, n5833, n6582, n5575;
    
    LUT4 i2355_4_lut (.A(n1805[1]), .B(n6581), .C(n624), .D(n623), .Z(\cosine[4] )) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(14[7] 29[24])
    defparam i2355_4_lut.init = 16'hcfce;
    LUT4 i2363_4_lut (.A(n5835), .B(n6581), .C(n5833), .D(n6582), .Z(\cosine[11] )) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(14[7] 29[24])
    defparam i2363_4_lut.init = 16'hcdcc;
    LUT4 i4608_2_lut (.A(n624), .B(n621), .Z(n5835)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4608_2_lut.init = 16'heeee;
    LUT4 i4606_2_lut (.A(n622), .B(n623), .Z(n5833)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4606_2_lut.init = 16'heeee;
    LUT4 i2377_4_lut (.A(n1805[2]), .B(\cosine[1] ), .C(n5575), .D(n623), 
         .Z(\cosine[7] )) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(14[7] 29[24])
    defparam i2377_4_lut.init = 16'hcfce;
    LUT4 i2427_2_lut (.A(n621), .B(n622), .Z(n1805[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(22[7] 29[24])
    defparam i2427_2_lut.init = 16'h2222;
    LUT4 i1_3_lut (.A(n621), .B(n623), .C(n622), .Z(n5668)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(20[7] 29[24])
    defparam i1_3_lut.init = 16'hfefe;
    LUT4 i2385_4_lut (.A(n623), .B(\cosine[1] ), .C(n5575), .D(n622), 
         .Z(\cosine[0] )) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(14[7] 29[24])
    defparam i2385_4_lut.init = 16'hcdcc;
    LUT4 i4355_2_lut (.A(n624), .B(cosOut_12__N_438), .Z(n5575)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4355_2_lut.init = 16'heeee;
    LUT4 i2383_2_lut_rep_108 (.A(n619), .B(n620), .Z(n6582)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(26[7] 29[24])
    defparam i2383_2_lut_rep_108.init = 16'h2222;
    LUT4 i2428_3_lut_4_lut (.A(n619), .B(n620), .C(n621), .D(n622), 
         .Z(n1805[1])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A ((D)+!C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/cosmodule.v(26[7] 29[24])
    defparam i2428_3_lut_4_lut.init = 16'h00f2;
    
endmodule
//
// Verilog Description of module spi_ctrl
//

module spi_ctrl (n694, top_test2_c, n6542, spi_rx_req_N_540, spi_st_load_en_N_544, 
            spi_tx_data_7__N_515, n701, n702, n2761, n6700, clk_N_219_enable_26, 
            spi_rx_data, spi_tx_data, n6060, spi_rx_ready, n6052, 
            spi_st_load_en, spi_rst, spi_tx_load_en, \spi_next_state_3__N_528[3] , 
            n5757, n5640, spi_st_load_trdy, top_test3_c, firstFlag, 
            n5941, n5753, spi_rx_req, n6911, n6592) /* synthesis syn_module_defined=1 */ ;
    output n694;
    input top_test2_c;
    input n6542;
    input spi_rx_req_N_540;
    output spi_st_load_en_N_544;
    output spi_tx_data_7__N_515;
    output n701;
    output n702;
    input n2761;
    input n6700;
    input clk_N_219_enable_26;
    input [7:0]spi_rx_data;
    output [7:0]spi_tx_data;
    input n6060;
    output spi_rx_ready;
    input n6052;
    output spi_st_load_en;
    output spi_rst;
    output spi_tx_load_en;
    input \spi_next_state_3__N_528[3] ;
    input n5757;
    input n5640;
    output spi_st_load_trdy;
    input top_test3_c;
    input firstFlag;
    output n5941;
    input n5753;
    output spi_rx_req;
    input n6911;
    input n6592;
    
    wire top_test2_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(24[10:19])
    
    wire n2557;
    wire [15:0]n688;
    
    wire spi_tx_load_en_N_547, n4, n2566, n2570, spi_st_load_trdy_N_546, 
        n6554, spi_rst_N_539, n6480, spi_rst_N_538, n6591;
    
    FD1S3DX spi_current_state_FSM_i11 (.D(n2557), .CK(top_test2_c), .CD(n6542), 
            .Q(n694));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i11.GSR = "DISABLED";
    FD1S3DX spi_current_state_FSM_i10 (.D(spi_rx_req_N_540), .CK(top_test2_c), 
            .CD(n6542), .Q(n688[9]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i10.GSR = "DISABLED";
    FD1S3DX spi_current_state_FSM_i9 (.D(n4), .CK(top_test2_c), .CD(n6542), 
            .Q(spi_tx_load_en_N_547));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i9.GSR = "DISABLED";
    FD1S3DX spi_current_state_FSM_i8 (.D(n2566), .CK(top_test2_c), .CD(n6542), 
            .Q(n688[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i8.GSR = "DISABLED";
    FD1S3DX spi_current_state_FSM_i7 (.D(n688[1]), .CK(top_test2_c), .CD(n6542), 
            .Q(spi_st_load_en_N_544));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i7.GSR = "DISABLED";
    FD1S3DX spi_current_state_FSM_i6 (.D(spi_tx_data_7__N_515), .CK(top_test2_c), 
            .CD(n6542), .Q(n688[5]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i6.GSR = "DISABLED";
    FD1S3DX spi_current_state_FSM_i5 (.D(n688[9]), .CK(top_test2_c), .CD(n6542), 
            .Q(spi_tx_data_7__N_515));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i5.GSR = "DISABLED";
    FD1S3DX spi_current_state_FSM_i4 (.D(n2570), .CK(top_test2_c), .CD(n6542), 
            .Q(n701));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i4.GSR = "DISABLED";
    FD1S3DX spi_current_state_FSM_i3 (.D(n2761), .CK(top_test2_c), .CD(n6542), 
            .Q(n702));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i3.GSR = "DISABLED";
    FD1S3DX spi_current_state_FSM_i2 (.D(spi_st_load_trdy_N_546), .CK(top_test2_c), 
            .CD(n6542), .Q(n688[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i2.GSR = "DISABLED";
    FD1S3BX spi_current_state_FSM_i1 (.D(n6700), .CK(top_test2_c), .PD(n6542), 
            .Q(spi_st_load_trdy_N_546));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam spi_current_state_FSM_i1.GSR = "DISABLED";
    LUT4 i4884_4_lut_4_lut_4_lut (.A(clk_N_219_enable_26), .B(spi_tx_data_7__N_515), 
         .C(spi_rx_data[7]), .D(spi_tx_data[7]), .Z(spi_tx_data[7])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam i4884_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 i4852_4_lut_4_lut (.A(clk_N_219_enable_26), .B(n6554), .C(n6060), 
         .D(spi_rx_ready), .Z(spi_rx_ready)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam i4852_4_lut_4_lut.init = 16'hf2d0;
    LUT4 i4844_4_lut_4_lut (.A(clk_N_219_enable_26), .B(spi_rst_N_539), 
         .C(n6052), .D(spi_st_load_en), .Z(spi_st_load_en)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam i4844_4_lut_4_lut.init = 16'hf2d0;
    LUT4 i4864_4_lut_4_lut_4_lut (.A(clk_N_219_enable_26), .B(spi_tx_data_7__N_515), 
         .C(spi_rx_data[2]), .D(spi_tx_data[2]), .Z(spi_tx_data[2])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam i4864_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 i4876_4_lut_4_lut_4_lut (.A(clk_N_219_enable_26), .B(spi_tx_data_7__N_515), 
         .C(spi_rx_data[5]), .D(spi_tx_data[5]), .Z(spi_tx_data[5])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam i4876_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 spi_rst_bdd_3_lut_3_lut (.A(clk_N_219_enable_26), .B(spi_st_load_trdy_N_546), 
         .C(spi_rst), .Z(n6480)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam spi_rst_bdd_3_lut_3_lut.init = 16'h2020;
    LUT4 i4872_4_lut_4_lut_4_lut (.A(clk_N_219_enable_26), .B(spi_tx_data_7__N_515), 
         .C(spi_rx_data[4]), .D(spi_tx_data[4]), .Z(spi_tx_data[4])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam i4872_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 i4818_4_lut_4_lut_4_lut (.A(clk_N_219_enable_26), .B(spi_tx_data_7__N_515), 
         .C(spi_rx_data[0]), .D(spi_tx_data[0]), .Z(spi_tx_data[0])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam i4818_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 i4868_4_lut_4_lut_4_lut (.A(clk_N_219_enable_26), .B(spi_tx_data_7__N_515), 
         .C(spi_rx_data[3]), .D(spi_tx_data[3]), .Z(spi_tx_data[3])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam i4868_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 i4860_4_lut_4_lut_4_lut (.A(clk_N_219_enable_26), .B(spi_tx_data_7__N_515), 
         .C(spi_rx_data[1]), .D(spi_tx_data[1]), .Z(spi_tx_data[1])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam i4860_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 i4822_4_lut_4_lut (.A(clk_N_219_enable_26), .B(spi_tx_load_en_N_547), 
         .C(n688[7]), .D(spi_tx_load_en), .Z(spi_tx_load_en)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam i4822_4_lut_4_lut.init = 16'h8a88;
    LUT4 i4880_4_lut_4_lut_4_lut (.A(clk_N_219_enable_26), .B(spi_tx_data_7__N_515), 
         .C(spi_rx_data[6]), .D(spi_tx_data[6]), .Z(spi_tx_data[6])) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam i4880_4_lut_4_lut_4_lut.init = 16'ha280;
    LUT4 i1_4_lut (.A(\spi_next_state_3__N_528[3] ), .B(n5757), .C(n688[7]), 
         .D(n5640), .Z(n2557)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(32[11:25])
    defparam i1_4_lut.init = 16'h50dc;
    LUT4 i4848_4_lut_3_lut (.A(clk_N_219_enable_26), .B(spi_st_load_trdy_N_546), 
         .C(spi_st_load_trdy), .Z(spi_st_load_trdy)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam i4848_4_lut_3_lut.init = 16'h2020;
    LUT4 i1_2_lut (.A(spi_st_load_en_N_544), .B(n688[5]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_3_lut (.A(\spi_next_state_3__N_528[3] ), .B(spi_tx_load_en_N_547), 
         .C(n688[7]), .Z(n2566)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(32[11:25])
    defparam i1_3_lut.init = 16'hecec;
    LUT4 i4731_1_lut_3_lut_3_lut (.A(clk_N_219_enable_26), .B(top_test3_c), 
         .C(firstFlag), .Z(n5941)) /* synthesis lut_function=(!((B (C))+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/fskmodulator.v(119[6:20])
    defparam i4731_1_lut_3_lut_3_lut.init = 16'h2a2a;
    LUT4 i52_4_lut (.A(\spi_next_state_3__N_528[3] ), .B(n5753), .C(n701), 
         .D(n5640), .Z(n2570)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(32[11:25])
    defparam i52_4_lut.init = 16'h50dc;
    LUT4 i4786_2_lut_rep_80 (.A(n701), .B(n688[9]), .Z(n6554)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam i4786_2_lut_rep_80.init = 16'h1111;
    LUT4 i3_4_lut (.A(n688[1]), .B(spi_tx_load_en_N_547), .C(n688[7]), 
         .D(spi_st_load_en_N_544), .Z(spi_rst_N_538)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_41 (.A(spi_st_load_trdy_N_546), .B(spi_rst_N_538), 
         .Z(spi_rst_N_539)) /* synthesis lut_function=(A+(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(48[3] 101[10])
    defparam i1_2_lut_adj_41.init = 16'heeee;
    LUT4 i4836_4_lut_else_2_lut (.A(spi_rx_req), .B(spi_tx_data_7__N_515), 
         .C(n688[9]), .D(clk_N_219_enable_26), .Z(n6591)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_ctrl.v(105[1] 180[4])
    defparam i4836_4_lut_else_2_lut.init = 16'h0200;
    PFUMX i5117 (.BLUT(n6480), .ALUT(n6911), .C0(spi_rst_N_538), .Z(spi_rst));
    PFUMX i5140 (.BLUT(n6591), .ALUT(n6592), .C0(n701), .Z(spi_rx_req));
    
endmodule
//
// Verilog Description of module clockDivider
//

module clockDivider (pll_lock, top_test2_c, serial_clk_c, clk_N_219_enable_26, 
            GND_net, VCC_net, \spi_next_state_3__N_528[3] , n6592, firstFlag, 
            n1131, spi_tx_data_7__N_515, n6060, spi_st_load_en_N_544, 
            n6052, mem_inf_rst_N_18, clk_N_219_enable_57, n6911, n6542, 
            mem_inf_rst_N_19, clk_N_219_enable_64, clk_N_219) /* synthesis syn_module_defined=1 */ ;
    input pll_lock;
    output top_test2_c;
    input serial_clk_c;
    output clk_N_219_enable_26;
    input GND_net;
    input VCC_net;
    input \spi_next_state_3__N_528[3] ;
    output n6592;
    input firstFlag;
    output n1131;
    input spi_tx_data_7__N_515;
    output n6060;
    input spi_st_load_en_N_544;
    output n6052;
    input mem_inf_rst_N_18;
    output clk_N_219_enable_57;
    output n6911;
    output n6542;
    input mem_inf_rst_N_19;
    output clk_N_219_enable_64;
    output clk_N_219;
    
    wire top_test2_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(24[10:19])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(19[10:20])
    wire clk_N_219 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/packetreader.v(9[32:40])
    
    wire n2958, n6551, n6584, clkOut_N_195, n2960, n2959, n5271;
    wire [7:0]counter;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(29[11:18])
    wire [7:0]n37;
    
    wire n5272, n5273, n5270;
    wire [7:0]lockCounter;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(28[11:22])
    wire [7:0]n37_adj_684;
    
    wire n1117, n4, n12, n8, n2805, n5807, n5651, n5269, n5268, 
        n5267, n5266;
    
    LUT4 i4916_4_lut_4_lut_3_lut (.A(pll_lock), .B(n2958), .C(n6551), 
         .Z(n2958)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(32[9:25])
    defparam i4916_4_lut_4_lut_3_lut.init = 16'ha8a8;
    FD1S3IX clkOut_28 (.D(clkOut_N_195), .CK(serial_clk_c), .CD(n6584), 
            .Q(top_test2_c));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(31[8] 47[4])
    defparam clkOut_28.GSR = "DISABLED";
    LUT4 i4920_4_lut_2_lut (.A(pll_lock), .B(n2960), .Z(n2960)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(32[9:25])
    defparam i4920_4_lut_2_lut.init = 16'h8888;
    LUT4 i1755_3_lut_rep_112 (.A(n2960), .B(n2959), .C(n2958), .Z(clk_N_219_enable_26)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam i1755_3_lut_rep_112.init = 16'hcaca;
    CCU2C counter_966_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5271), .COUT(n5272), .S0(n37[3]), .S1(n37[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_966_add_4_5.INIT0 = 16'haaa0;
    defparam counter_966_add_4_5.INIT1 = 16'haaa0;
    defparam counter_966_add_4_5.INJECT1_0 = "NO";
    defparam counter_966_add_4_5.INJECT1_1 = "NO";
    LUT4 i4836_4_lut_then_2_lut_4_lut (.A(n2960), .B(n2959), .C(n2958), 
         .D(\spi_next_state_3__N_528[3] ), .Z(n6592)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam i4836_4_lut_then_2_lut_4_lut.init = 16'hca00;
    CCU2C counter_966_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5273), .S0(n37[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_966_add_4_9.INIT0 = 16'haaa0;
    defparam counter_966_add_4_9.INIT1 = 16'h0000;
    defparam counter_966_add_4_9.INJECT1_0 = "NO";
    defparam counter_966_add_4_9.INJECT1_1 = "NO";
    CCU2C counter_966_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5270), .COUT(n5271), .S0(n37[1]), .S1(n37[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_966_add_4_3.INIT0 = 16'haaa0;
    defparam counter_966_add_4_3.INIT1 = 16'haaa0;
    defparam counter_966_add_4_3.INJECT1_0 = "NO";
    defparam counter_966_add_4_3.INJECT1_1 = "NO";
    CCU2C counter_966_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n5270), .S1(n37[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_966_add_4_1.INIT0 = 16'h0000;
    defparam counter_966_add_4_1.INIT1 = 16'h555f;
    defparam counter_966_add_4_1.INJECT1_0 = "NO";
    defparam counter_966_add_4_1.INJECT1_1 = "NO";
    FD1S3IX lockCounter_967__i0 (.D(n37_adj_684[0]), .CK(serial_clk_c), 
            .CD(n6584), .Q(lockCounter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_967__i0.GSR = "DISABLED";
    FD1S3IX counter_966__i0 (.D(n37[0]), .CK(serial_clk_c), .CD(n1117), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_966__i0.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(pll_lock), .B(lockCounter[7]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i5_4_lut (.A(lockCounter[1]), .B(lockCounter[4]), .C(lockCounter[5]), 
         .D(lockCounter[3]), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_37 (.A(lockCounter[2]), .B(lockCounter[0]), .Z(n8)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_37.init = 16'heeee;
    CCU2C counter_966_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5272), .COUT(n5273), .S0(n37[5]), .S1(n37[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_966_add_4_7.INIT0 = 16'haaa0;
    defparam counter_966_add_4_7.INIT1 = 16'haaa0;
    defparam counter_966_add_4_7.INJECT1_0 = "NO";
    defparam counter_966_add_4_7.INJECT1_1 = "NO";
    LUT4 i4924_4_lut_2_lut (.A(n6551), .B(n2959), .Z(n2959)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4924_4_lut_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_38 (.A(top_test2_c), .B(n2805), .Z(clkOut_N_195)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_38.init = 16'h9999;
    LUT4 i1_4_lut (.A(counter[0]), .B(n5807), .C(n5651), .D(counter[1]), 
         .Z(n2805)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i1_4_lut.init = 16'hfdff;
    LUT4 i1_2_lut_adj_39 (.A(counter[2]), .B(counter[3]), .Z(n5807)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_39.init = 16'hdddd;
    LUT4 i1_4_lut_adj_40 (.A(counter[4]), .B(counter[6]), .C(counter[7]), 
         .D(counter[5]), .Z(n5651)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_40.init = 16'hfffe;
    FD1S3IX lockCounter_967__i1 (.D(n37_adj_684[1]), .CK(serial_clk_c), 
            .CD(n6584), .Q(lockCounter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_967__i1.GSR = "DISABLED";
    FD1S3IX lockCounter_967__i2 (.D(n37_adj_684[2]), .CK(serial_clk_c), 
            .CD(n6584), .Q(lockCounter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_967__i2.GSR = "DISABLED";
    FD1S3IX lockCounter_967__i3 (.D(n37_adj_684[3]), .CK(serial_clk_c), 
            .CD(n6584), .Q(lockCounter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_967__i3.GSR = "DISABLED";
    FD1S3IX lockCounter_967__i4 (.D(n37_adj_684[4]), .CK(serial_clk_c), 
            .CD(n6584), .Q(lockCounter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_967__i4.GSR = "DISABLED";
    FD1S3IX lockCounter_967__i5 (.D(n37_adj_684[5]), .CK(serial_clk_c), 
            .CD(n6584), .Q(lockCounter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_967__i5.GSR = "DISABLED";
    FD1S3IX lockCounter_967__i6 (.D(n37_adj_684[6]), .CK(serial_clk_c), 
            .CD(n6584), .Q(lockCounter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_967__i6.GSR = "DISABLED";
    FD1S3IX lockCounter_967__i7 (.D(n37_adj_684[7]), .CK(serial_clk_c), 
            .CD(n6584), .Q(lockCounter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_967__i7.GSR = "DISABLED";
    FD1S3IX counter_966__i1 (.D(n37[1]), .CK(serial_clk_c), .CD(n1117), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_966__i1.GSR = "DISABLED";
    LUT4 i2_4_lut_rep_77 (.A(lockCounter[6]), .B(n4), .C(n12), .D(n8), 
         .Z(n6551)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam i2_4_lut_rep_77.init = 16'hccc8;
    FD1S3IX counter_966__i2 (.D(n37[2]), .CK(serial_clk_c), .CD(n1117), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_966__i2.GSR = "DISABLED";
    FD1S3IX counter_966__i3 (.D(n37[3]), .CK(serial_clk_c), .CD(n1117), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_966__i3.GSR = "DISABLED";
    FD1S3IX counter_966__i4 (.D(n37[4]), .CK(serial_clk_c), .CD(n1117), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_966__i4.GSR = "DISABLED";
    FD1S3IX counter_966__i5 (.D(n37[5]), .CK(serial_clk_c), .CD(n1117), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_966__i5.GSR = "DISABLED";
    FD1S3IX counter_966__i6 (.D(n37[6]), .CK(serial_clk_c), .CD(n1117), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_966__i6.GSR = "DISABLED";
    FD1S3IX counter_966__i7 (.D(n37[7]), .CK(serial_clk_c), .CD(n1117), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(37[24:38])
    defparam counter_966__i7.GSR = "DISABLED";
    CCU2C lockCounter_967_add_4_9 (.A0(lockCounter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5269), .S0(n37_adj_684[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_967_add_4_9.INIT0 = 16'haaa0;
    defparam lockCounter_967_add_4_9.INIT1 = 16'h0000;
    defparam lockCounter_967_add_4_9.INJECT1_0 = "NO";
    defparam lockCounter_967_add_4_9.INJECT1_1 = "NO";
    LUT4 i518_2_lut_2_lut_4_lut (.A(n2960), .B(n2959), .C(n2958), .D(firstFlag), 
         .Z(n1131)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam i518_2_lut_2_lut_4_lut.init = 16'hff35;
    LUT4 i4853_2_lut_4_lut (.A(n2960), .B(n2959), .C(n2958), .D(spi_tx_data_7__N_515), 
         .Z(n6060)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam i4853_2_lut_4_lut.init = 16'hca00;
    LUT4 i4845_2_lut_4_lut (.A(n2960), .B(n2959), .C(n2958), .D(spi_st_load_en_N_544), 
         .Z(n6052)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam i4845_2_lut_4_lut.init = 16'hca00;
    LUT4 i1_2_lut_4_lut (.A(n2960), .B(n2959), .C(n2958), .D(mem_inf_rst_N_18), 
         .Z(clk_N_219_enable_57)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam i1_2_lut_4_lut.init = 16'hca00;
    LUT4 i1755_3_lut_rep_113 (.A(n2960), .B(n2959), .C(n2958), .Z(n6911)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam i1755_3_lut_rep_113.init = 16'hcaca;
    CCU2C lockCounter_967_add_4_7 (.A0(lockCounter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(lockCounter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5268), .COUT(n5269), .S0(n37_adj_684[5]), 
          .S1(n37_adj_684[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_967_add_4_7.INIT0 = 16'haaa0;
    defparam lockCounter_967_add_4_7.INIT1 = 16'haaa0;
    defparam lockCounter_967_add_4_7.INJECT1_0 = "NO";
    defparam lockCounter_967_add_4_7.INJECT1_1 = "NO";
    LUT4 rst_n_I_0_1_lut_rep_68_3_lut (.A(n2960), .B(n2959), .C(n2958), 
         .Z(n6542)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam rst_n_I_0_1_lut_rep_68_3_lut.init = 16'h3535;
    LUT4 i1344_2_lut_4_lut (.A(n2960), .B(n2959), .C(n2958), .D(mem_inf_rst_N_19), 
         .Z(clk_N_219_enable_64)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(49[1] 59[4])
    defparam i1344_2_lut_4_lut.init = 16'hca00;
    CCU2C lockCounter_967_add_4_5 (.A0(lockCounter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(lockCounter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5267), .COUT(n5268), .S0(n37_adj_684[3]), 
          .S1(n37_adj_684[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_967_add_4_5.INIT0 = 16'haaa0;
    defparam lockCounter_967_add_4_5.INIT1 = 16'haaa0;
    defparam lockCounter_967_add_4_5.INJECT1_0 = "NO";
    defparam lockCounter_967_add_4_5.INJECT1_1 = "NO";
    CCU2C lockCounter_967_add_4_3 (.A0(lockCounter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(lockCounter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5266), .COUT(n5267), .S0(n37_adj_684[1]), 
          .S1(n37_adj_684[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_967_add_4_3.INIT0 = 16'haaa0;
    defparam lockCounter_967_add_4_3.INIT1 = 16'haaa0;
    defparam lockCounter_967_add_4_3.INJECT1_0 = "NO";
    defparam lockCounter_967_add_4_3.INJECT1_1 = "NO";
    CCU2C lockCounter_967_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(lockCounter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n5266), .S1(n37_adj_684[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(45[24:42])
    defparam lockCounter_967_add_4_1.INIT0 = 16'h0000;
    defparam lockCounter_967_add_4_1.INIT1 = 16'h555f;
    defparam lockCounter_967_add_4_1.INJECT1_0 = "NO";
    defparam lockCounter_967_add_4_1.INJECT1_1 = "NO";
    LUT4 i4758_2_lut (.A(n2805), .B(pll_lock), .Z(n1117)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i4758_2_lut.init = 16'h7777;
    INV i5327 (.A(top_test2_c), .Z(clk_N_219));
    LUT4 pll_lock_I_0_1_lut_rep_110 (.A(pll_lock), .Z(n6584)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/clockdivider.v(32[9:25])
    defparam pll_lock_I_0_1_lut_rep_110.init = 16'h5555;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module IQSerializer
//

module IQSerializer (clk_N_440, \QCounter[1] , \QCounter[3] , n2135, 
            \fskModule_I[11] , \fskModule_I[2] , IQSerializer_start, \QCounter[2] , 
            n5317, n5309, \fskModule_Q[2] , \fskModule_I[7] , \fskModule_Q[12] , 
            \fskModule_Q[7] , \fskModule_Q[6] , \fskModule_I[0] , \fskModule_I[4] , 
            \fskModule_I[12] , \fskModule_Q[0] , \fskModule_Q[4] , serial_clk_c, 
            serial) /* synthesis syn_module_defined=1 */ ;
    input clk_N_440;
    output \QCounter[1] ;
    output \QCounter[3] ;
    input n2135;
    input \fskModule_I[11] ;
    input \fskModule_I[2] ;
    input IQSerializer_start;
    output \QCounter[2] ;
    input n5317;
    input n5309;
    input \fskModule_Q[2] ;
    input \fskModule_I[7] ;
    input \fskModule_Q[12] ;
    input \fskModule_Q[7] ;
    input \fskModule_Q[6] ;
    input \fskModule_I[0] ;
    input \fskModule_I[4] ;
    input \fskModule_I[12] ;
    input \fskModule_Q[0] ;
    input \fskModule_Q[4] ;
    input serial_clk_c;
    output serial;
    
    wire clk_N_440 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(17[11:24])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(19[10:20])
    wire [3:0]ICounter;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(21[41:49])
    
    wire n2996, n6577;
    wire [4:0]n1;
    wire [3:0]n21;
    
    wire n6395, n6394, n6396, n6590, n6587;
    wire [4:0]n1028;
    
    wire n6435, n6398, n6400, n6391, n6388, n6393, n2614, n6390, 
        n6389, n6588, n6589, n3024;
    wire [4:0]n1_adj_675;
    
    wire n6586, n6580, n2610;
    wire [3:0]next_state_3__N_474;
    
    wire n934, n938, n6585, n6397;
    
    FD1S3IX ICounter_971__i2 (.D(n6577), .CK(clk_N_440), .CD(n2996), .Q(ICounter[2])) /* synthesis syn_preserve="TRUE" */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(82[52:67])
    defparam ICounter_971__i2.GSR = "DISABLED";
    FD1S3IX ICounter_971__i1 (.D(n1[1]), .CK(clk_N_440), .CD(n2996), .Q(ICounter[1])) /* synthesis syn_preserve="TRUE" */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(82[52:67])
    defparam ICounter_971__i1.GSR = "DISABLED";
    FD1S3IX ICounter_971__i3 (.D(n21[3]), .CK(clk_N_440), .CD(n2996), 
            .Q(ICounter[3])) /* synthesis syn_preserve="TRUE" */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(82[52:67])
    defparam ICounter_971__i3.GSR = "DISABLED";
    PFUMX i5066 (.BLUT(n6395), .ALUT(n6394), .C0(\QCounter[1] ), .Z(n6396));
    LUT4 n6434_bdd_3_lut (.A(n6590), .B(n6587), .C(n1028[2]), .Z(n6435)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n6434_bdd_3_lut.init = 16'hcaca;
    LUT4 gnd_bdd_2_lut_5096_4_lut (.A(n6398), .B(n6396), .C(\QCounter[3] ), 
         .D(n1028[0]), .Z(n6400)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam gnd_bdd_2_lut_5096_4_lut.init = 16'hca00;
    LUT4 gnd_bdd_2_lut_5068_4_lut (.A(n6391), .B(n6388), .C(ICounter[2]), 
         .D(n1028[2]), .Z(n6393)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam gnd_bdd_2_lut_5068_4_lut.init = 16'hca00;
    FD1S3IX current_state_FSM_i0 (.D(n2614), .CK(clk_N_440), .CD(n2135), 
            .Q(n1028[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam current_state_FSM_i0.GSR = "DISABLED";
    PFUMX i5064 (.BLUT(n6390), .ALUT(n6389), .C0(ICounter[1]), .Z(n6391));
    PFUMX i5138 (.BLUT(n6588), .ALUT(n6589), .C0(\QCounter[3] ), .Z(n6590));
    FD1S3IX QCounter_964__i1 (.D(n1_adj_675[1]), .CK(clk_N_440), .CD(n3024), 
            .Q(\QCounter[1] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(85[52:67])
    defparam QCounter_964__i1.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_103 (.A(ICounter[2]), .B(ICounter[1]), .Z(n6577)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_rep_103.init = 16'h6666;
    LUT4 i5090_then_4_lut (.A(ICounter[2]), .B(\fskModule_I[11] ), .C(ICounter[3]), 
         .D(\fskModule_I[2] ), .Z(n6586)) /* synthesis lut_function=(!(A (C)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam i5090_then_4_lut.init = 16'h5e0e;
    LUT4 i1414_3_lut (.A(n1028[2]), .B(n1028[3]), .C(n6580), .Z(n2610)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam i1414_3_lut.init = 16'hecec;
    LUT4 i4755_2_lut (.A(n1028[2]), .B(IQSerializer_start), .Z(n2996)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(81[14] 97[8])
    defparam i4755_2_lut.init = 16'h7777;
    LUT4 reduce_or_401_i2_3_lut (.A(next_state_3__N_474[2]), .B(n1028[4]), 
         .C(n1028[0]), .Z(n934)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam reduce_or_401_i2_3_lut.init = 16'hdcdc;
    LUT4 sub_4_inv_0_i2_1_lut (.A(ICounter[1]), .Z(n1[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(54[26:43])
    defparam sub_4_inv_0_i2_1_lut.init = 16'h5555;
    FD1S3IX current_state_FSM_i1 (.D(n938), .CK(clk_N_440), .CD(n2135), 
            .Q(n1028[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam current_state_FSM_i1.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i2 (.D(n2610), .CK(clk_N_440), .CD(n2135), 
            .Q(n1028[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam current_state_FSM_i2.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i3 (.D(n934), .CK(clk_N_440), .CD(n2135), 
            .Q(n1028[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam current_state_FSM_i3.GSR = "DISABLED";
    FD1S3AX current_state_FSM_i4 (.D(n2135), .CK(clk_N_440), .Q(n1028[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam current_state_FSM_i4.GSR = "DISABLED";
    LUT4 i1_3_lut_rep_106 (.A(ICounter[3]), .B(ICounter[2]), .C(ICounter[1]), 
         .Z(n6580)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(123[21:38])
    defparam i1_3_lut_rep_106.init = 16'hf7f7;
    FD1S3IX QCounter_964__i2 (.D(n5317), .CK(clk_N_440), .CD(n3024), .Q(\QCounter[2] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(85[52:67])
    defparam QCounter_964__i2.GSR = "DISABLED";
    FD1S3IX QCounter_964__i3 (.D(n5309), .CK(clk_N_440), .CD(n3024), .Q(\QCounter[3] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(85[52:67])
    defparam QCounter_964__i3.GSR = "DISABLED";
    LUT4 i406_2_lut_4_lut (.A(ICounter[3]), .B(ICounter[2]), .C(ICounter[1]), 
         .D(n1028[2]), .Z(n938)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(123[21:38])
    defparam i406_2_lut_4_lut.init = 16'h0800;
    LUT4 i2046_1_lut (.A(\QCounter[1] ), .Z(n1_adj_675[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(85[52:67])
    defparam i2046_1_lut.init = 16'h5555;
    LUT4 i5090_else_4_lut (.A(ICounter[2]), .B(\fskModule_I[11] ), .C(ICounter[3]), 
         .D(\fskModule_I[2] ), .Z(n6585)) /* synthesis lut_function=(!(A+!(B ((D)+!C)+!B (C (D))))) */ ;
    defparam i5090_else_4_lut.init = 16'h5404;
    LUT4 n5855_bdd_4_lut_then_3_lut (.A(n1028[1]), .B(\fskModule_Q[2] ), 
         .C(\QCounter[2] ), .Z(n6589)) /* synthesis lut_function=(A+!((C)+!B)) */ ;
    defparam n5855_bdd_4_lut_then_3_lut.init = 16'haeae;
    LUT4 i1_3_lut (.A(n1028[0]), .B(n1028[1]), .C(next_state_3__N_474[2]), 
         .Z(n2614)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(112[9] 142[16])
    defparam i1_3_lut.init = 16'hecec;
    LUT4 i1_3_lut_adj_36 (.A(\QCounter[3] ), .B(\QCounter[2] ), .C(\QCounter[1] ), 
         .Z(next_state_3__N_474[2])) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(133[21:38])
    defparam i1_3_lut_adj_36.init = 16'hf7f7;
    PFUMX i5136 (.BLUT(n6585), .ALUT(n6586), .C0(\fskModule_I[7] ), .Z(n6587));
    LUT4 i4770_2_lut (.A(n1028[0]), .B(IQSerializer_start), .Z(n3024)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(81[14] 97[8])
    defparam i4770_2_lut.init = 16'h7777;
    LUT4 fskModule_Q_6__bdd_3_lut (.A(\QCounter[1] ), .B(\fskModule_Q[12] ), 
         .C(\fskModule_Q[7] ), .Z(n6397)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam fskModule_Q_6__bdd_3_lut.init = 16'he4e4;
    LUT4 n6397_bdd_3_lut (.A(n6397), .B(\fskModule_Q[6] ), .C(\QCounter[2] ), 
         .Z(n6398)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n6397_bdd_3_lut.init = 16'hcaca;
    LUT4 n5855_bdd_4_lut_else_3_lut (.A(n1028[1]), .B(\fskModule_Q[6] ), 
         .C(\fskModule_Q[7] ), .D(\QCounter[2] ), .Z(n6588)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam n5855_bdd_4_lut_else_3_lut.init = 16'hfaee;
    LUT4 fskModule_I_4__bdd_4_lut_5082 (.A(ICounter[1]), .B(\fskModule_I[0] ), 
         .C(\fskModule_I[11] ), .D(ICounter[3]), .Z(n6388)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam fskModule_I_4__bdd_4_lut_5082.init = 16'h44f0;
    LUT4 fskModule_I_4__bdd_3_lut_5063 (.A(\fskModule_I[2] ), .B(\fskModule_I[7] ), 
         .C(ICounter[3]), .Z(n6389)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam fskModule_I_4__bdd_3_lut_5063.init = 16'hacac;
    LUT4 fskModule_I_4__bdd_3_lut_5083 (.A(\fskModule_I[4] ), .B(\fskModule_I[12] ), 
         .C(ICounter[3]), .Z(n6390)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam fskModule_I_4__bdd_3_lut_5083.init = 16'hacac;
    LUT4 i3945_3_lut (.A(ICounter[3]), .B(ICounter[2]), .C(ICounter[1]), 
         .Z(n21[3])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(82[52:67])
    defparam i3945_3_lut.init = 16'h6a6a;
    LUT4 QCounter_1__bdd_2_lut_5119 (.A(\fskModule_Q[2] ), .B(\QCounter[2] ), 
         .Z(n6394)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam QCounter_1__bdd_2_lut_5119.init = 16'h2222;
    LUT4 QCounter_1__bdd_3_lut_5120 (.A(\fskModule_Q[0] ), .B(\QCounter[2] ), 
         .C(\fskModule_Q[4] ), .Z(n6395)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam QCounter_1__bdd_3_lut_5120.init = 16'hb8b8;
    DEDFF DEDFF_0 (.serial_clk_c(serial_clk_c), .n2135(n2135), .clk_N_440(clk_N_440), 
          .n6400(n6400), .n6393(n6393), .next_state_3__N_465(n1028[3]), 
          .n6435(n6435), .next_state_3__N_463(n1028[4]), .serial(serial)) /* synthesis syn_module_defined=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(147[7] 155[2])
    
endmodule
//
// Verilog Description of module DEDFF
//

module DEDFF (serial_clk_c, n2135, clk_N_440, n6400, n6393, next_state_3__N_465, 
            n6435, next_state_3__N_463, serial) /* synthesis syn_module_defined=1 */ ;
    input serial_clk_c;
    input n2135;
    input clk_N_440;
    input n6400;
    input n6393;
    input next_state_3__N_465;
    input n6435;
    input next_state_3__N_463;
    output serial;
    
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(19[10:20])
    wire clk_N_440 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(17[11:24])
    
    wire pose_edge, Q1, neg_edge, Q2;
    
    FD1S3IX pose_edge_14 (.D(Q1), .CK(serial_clk_c), .CD(n2135), .Q(pose_edge));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/dedff.v(42[8] 45[4])
    defparam pose_edge_14.GSR = "DISABLED";
    FD1S3IX neg_edge_15 (.D(Q2), .CK(clk_N_440), .CD(n2135), .Q(neg_edge));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/dedff.v(48[8] 51[4])
    defparam neg_edge_15.GSR = "DISABLED";
    LUT4 neg_edge_I_0_4_lut (.A(neg_edge), .B(n6400), .C(n6393), .D(next_state_3__N_465), 
         .Z(Q1)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B+(C+(D))))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/dedff.v(37[15:28])
    defparam neg_edge_I_0_4_lut.init = 16'h5556;
    LUT4 pose_edge_I_0_4_lut (.A(pose_edge), .B(next_state_3__N_465), .C(n6435), 
         .D(next_state_3__N_463), .Z(Q2)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B+((D)+!C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/dedff.v(38[15:29])
    defparam pose_edge_I_0_4_lut.init = 16'haa9a;
    LUT4 neg_edge_I_0_16_2_lut (.A(neg_edge), .B(pose_edge), .Z(serial)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/dedff.v(39[15:35])
    defparam neg_edge_I_0_16_2_lut.init = 16'h9999;
    
endmodule
//
// Verilog Description of module ble_packet_mem
//

module ble_packet_mem (top_test2_c, VCC_net, mem_inf_rst_N_12, mem_inf_we, 
            mem_inf_addr, mem_inf_dataIn, mem_inf_q, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input top_test2_c;
    input VCC_net;
    input mem_inf_rst_N_12;
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
           .CSA1(GND_net), .CSA2(GND_net), .RSTA(mem_inf_rst_N_12), .DIB0(GND_net), 
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
           .DOA7(mem_inf_q[7])) /* synthesis MEM_LPC_FILE="ble_packet_mem.lpc", MEM_INIT_FILE="INIT_ALL_0s", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=504, LSE_RLINE=512 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(504[16] 512[2])
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
// Verilog Description of module pll_64M
//

module pll_64M (clk_N_440, serial_clk_c, top_rst_n_N_143, pll_lock, 
            GND_net, top_clk_c, VCC_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output clk_N_440;
    output serial_clk_c;
    input top_rst_n_N_143;
    output pll_lock;
    input GND_net;
    input top_clk_c;
    input VCC_net;
    
    wire clk_N_440 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/iqserializer.v(17[11:24])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(19[10:20])
    wire CLKIt /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/ble_tx_clarity/pll_64m/pll_64m.v(20[10:15])
    wire top_clk_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(8[8:15])
    
    INV i5329 (.A(serial_clk_c), .Z(clk_N_440));
    EHXPLLL PLLInst_0 (.CLKI(CLKIt), .CLKFB(serial_clk_c), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .PHASELOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(top_rst_n_N_143), .ENCLKOP(GND_net), .ENCLKOS(GND_net), 
            .ENCLKOS2(GND_net), .ENCLKOS3(GND_net), .CLKOP(serial_clk_c), 
            .LOCK(pll_lock)) /* synthesis FREQUENCY_PIN_CLKOP="64.000000", FREQUENCY_PIN_CLKI="32.000000", ICP_CURRENT="5", LPF_RESISTOR="16", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=391, LSE_RLINE=398 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(391[9] 398[2])
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
            .PLLCSOUT(CLKIt)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=391, LSE_RLINE=398 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(391[9] 398[2])
    
endmodule
//
// Verilog Description of module spi
//

module spi (sclk_N_651, top_test0_c, spi_mosi, VCC_net, spi_rst, spi_rx_data, 
            n6700, n5640, \spi_next_state_3__N_528[3] , spi_st_load_en, 
            spi_tx_load_en, spi_st_load_trdy, n694, n702, n2761, n5757, 
            spi_rx_req, spi_tx_data, n5753, n6562);
    input sclk_N_651;
    input top_test0_c;
    input spi_mosi;
    input VCC_net;
    input spi_rst;
    output [7:0]spi_rx_data;
    input n6700;
    output n5640;
    input \spi_next_state_3__N_528[3] ;
    input spi_st_load_en;
    input spi_tx_load_en;
    input spi_st_load_trdy;
    input n694;
    input n702;
    output n2761;
    output n5757;
    input spi_rx_req;
    input [7:0]spi_tx_data;
    output n5753;
    output n6562;
    
    wire sclk_N_651 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(61[10:13])
    wire top_test0_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(22[10:19])
    
    \spi_slave('0','0',8)  spi_slave_0 (.sclk_N_651(sclk_N_651), .top_test0_c(top_test0_c), 
            .spi_mosi(spi_mosi), .VCC_net(VCC_net), .spi_rst(spi_rst), 
            .spi_rx_data({spi_rx_data}), .n6700(n6700), .n5640(n5640), 
            .\spi_next_state_3__N_528[3] (\spi_next_state_3__N_528[3] ), .spi_st_load_en(spi_st_load_en), 
            .spi_tx_load_en(spi_tx_load_en), .spi_st_load_trdy(spi_st_load_trdy), 
            .n694(n694), .n702(n702), .n2761(n2761), .n5757(n5757), 
            .spi_rx_req(spi_rx_req), .spi_tx_data({spi_tx_data}), .n5753(n5753), 
            .n6562(n6562));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi.vhd(72[14:23])
    
endmodule
//
// Verilog Description of module \spi_slave('0','0',8) 
//

module \spi_slave('0','0',8)  (sclk_N_651, top_test0_c, spi_mosi, VCC_net, 
            spi_rst, spi_rx_data, n6700, n5640, \spi_next_state_3__N_528[3] , 
            spi_st_load_en, spi_tx_load_en, spi_st_load_trdy, n694, 
            n702, n2761, n5757, spi_rx_req, spi_tx_data, n5753, 
            n6562);
    input sclk_N_651;
    input top_test0_c;
    input spi_mosi;
    input VCC_net;
    input spi_rst;
    output [7:0]spi_rx_data;
    input n6700;
    output n5640;
    input \spi_next_state_3__N_528[3] ;
    input spi_st_load_en;
    input spi_tx_load_en;
    input spi_st_load_trdy;
    input n694;
    input n702;
    output n2761;
    output n5757;
    input spi_rx_req;
    input [7:0]spi_tx_data;
    output n5753;
    output n6562;
    
    wire sclk_N_651 /* synthesis is_inv_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(61[10:13])
    wire top_test0_c /* synthesis is_clock=1 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/topmodule.v(22[10:19])
    
    wire n2983, n6543;
    wire [7:0]n18;
    
    wire n2980, n6552, n2979, n6550;
    wire [7:0]rx_buf;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(65[10:16])
    
    wire rx_buf_1__N_569, n6568, top_test0_c_enable_1, rx_buf_7__N_554, 
        miso_N_650, sclk_N_651_enable_1, bit_cnt_15__N_552, debug1;
    wire [16:0]bit_cnt;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(62[10:17])
    
    wire rx_buf_6__N_559, roe_N_643, top_test0_c_enable_2, roe_N_665, 
        roe_N_663, rx_buf_5__N_561, n2976, n6535, rd_add, trdy_N_630, 
        top_test0_c_enable_3, trdy_N_656, trdy_N_652, n2975, n6549, 
        rrdy_N_636, rrdy_N_661, rrdy_N_659, n5889, n6564, n2964, 
        n6548, n2992, n6546, miso_N_649, miso_N_668, n2991, n6544, 
        n2988, n6539, n2987, n6540, rx_buf_3__N_565, n6545, n3737;
    wire [7:0]tx_buf;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(66[10:16])
    
    wire n6698, rx_buf_2__N_567, n2984, n6536, debug0, trdy_N_654, 
        rx_buf_4__N_563, n3, miso_N_669, n6850, n6841, n5793, n5789, 
        n2972, n6541, n2971, n6538, n2968, n6537, n2963, n6534, 
        n2967, n6547, n6889, n6886, n6865, n6561, n5660, n6901, 
        n6898, n6121, n6559, trdy_N_632, n6560, n6838, n5769;
    wire [1:0]n1029;
    
    wire n6583, n5681;
    
    FD1S3BX tx_buf_i0_i3_1777_1778_set (.D(n18[3]), .CK(sclk_N_651), .PD(n6543), 
            .Q(n2983)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i3_1777_1778_set.GSR = "DISABLED";
    FD1S3DX tx_buf_i0_i4_1773_1774_reset (.D(n18[4]), .CK(sclk_N_651), .CD(n6552), 
            .Q(n2980)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i4_1773_1774_reset.GSR = "DISABLED";
    FD1S3BX tx_buf_i0_i4_1773_1774_set (.D(n18[4]), .CK(sclk_N_651), .PD(n6550), 
            .Q(n2979)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i4_1773_1774_set.GSR = "DISABLED";
    FD1P3DX rx_buf_1__240 (.D(spi_mosi), .SP(rx_buf_1__N_569), .CK(top_test0_c), 
            .CD(n6568), .Q(rx_buf[1]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[9] 155[16])
    defparam rx_buf_1__240.GSR = "DISABLED";
    FD1P3DX rx_buf_0__241 (.D(spi_mosi), .SP(top_test0_c_enable_1), .CK(top_test0_c), 
            .CD(n6568), .Q(rx_buf[0]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[9] 155[16])
    defparam rx_buf_0__241.GSR = "DISABLED";
    FD1P3DX rx_buf_7__234 (.D(spi_mosi), .SP(rx_buf_7__N_554), .CK(top_test0_c), 
            .CD(n6568), .Q(rx_buf[7]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[9] 155[16])
    defparam rx_buf_7__234.GSR = "DISABLED";
    FD1P3DX i223_277 (.D(VCC_net), .SP(sclk_N_651_enable_1), .CK(sclk_N_651), 
            .CD(bit_cnt_15__N_552), .Q(miso_N_650));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(175[5] 188[12])
    defparam i223_277.GSR = "DISABLED";
    FD1P3AX wr_add_229 (.D(spi_mosi), .SP(bit_cnt[1]), .CK(top_test0_c), 
            .Q(debug1));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(97[5] 99[12])
    defparam wr_add_229.GSR = "DISABLED";
    FD1P3DX rx_buf_6__235 (.D(spi_mosi), .SP(rx_buf_6__N_559), .CK(top_test0_c), 
            .CD(n6568), .Q(rx_buf[6]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[9] 155[16])
    defparam rx_buf_6__235.GSR = "DISABLED";
    FD1P3JX roe_233 (.D(roe_N_663), .SP(top_test0_c_enable_2), .PD(roe_N_665), 
            .CK(top_test0_c), .Q(roe_N_643)) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(135[5] 145[12])
    defparam roe_233.GSR = "DISABLED";
    FD1P3DX rx_buf_5__236 (.D(spi_mosi), .SP(rx_buf_5__N_561), .CK(top_test0_c), 
            .CD(n6568), .Q(rx_buf[5]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[9] 155[16])
    defparam rx_buf_5__236.GSR = "DISABLED";
    FD1S3DX tx_buf_i0_i5_1769_1770_reset (.D(n18[5]), .CK(sclk_N_651), .CD(n6535), 
            .Q(n2976)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i5_1769_1770_reset.GSR = "DISABLED";
    FD1P3AX rd_add_230 (.D(spi_mosi), .SP(bit_cnt[2]), .CK(top_test0_c), 
            .Q(rd_add));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(102[5] 104[12])
    defparam rd_add_230.GSR = "DISABLED";
    FD1P3BX trdy_231 (.D(trdy_N_652), .SP(top_test0_c_enable_3), .CK(top_test0_c), 
            .PD(trdy_N_656), .Q(trdy_N_630)) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(107[5] 117[12])
    defparam trdy_231.GSR = "DISABLED";
    FD1S3BX tx_buf_i0_i5_1769_1770_set (.D(n18[5]), .CK(sclk_N_651), .PD(n6549), 
            .Q(n2975)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i5_1769_1770_set.GSR = "DISABLED";
    FD1S3BX rrdy_232 (.D(rrdy_N_659), .CK(top_test0_c), .PD(rrdy_N_661), 
            .Q(rrdy_N_636)) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(120[5] 132[12])
    defparam rrdy_232.GSR = "DISABLED";
    LUT4 i4767_3_lut_3_lut_4_lut (.A(bit_cnt[8]), .B(bit_cnt[9]), .C(bit_cnt[10]), 
         .D(rd_add), .Z(n5889)) /* synthesis lut_function=(A (B+(C+!(D)))+!A ((C+!(D))+!B)) */ ;
    defparam i4767_3_lut_3_lut_4_lut.init = 16'hf9ff;
    LUT4 i4892_4_lut_4_lut_4_lut (.A(rx_buf[2]), .B(spi_rst), .C(spi_rx_data[2]), 
         .D(n6564), .Z(spi_rx_data[2])) /* synthesis lut_function=(A (B (C+(D)))+!A !(((D)+!C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i4892_4_lut_4_lut_4_lut.init = 16'h88c0;
    FD1S3DX tx_buf_i0_i7_1757_1758_reset (.D(n18[7]), .CK(sclk_N_651), .CD(n6548), 
            .Q(n2964)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i7_1757_1758_reset.GSR = "DISABLED";
    LUT4 i4900_4_lut_4_lut_4_lut (.A(rx_buf[4]), .B(spi_rst), .C(spi_rx_data[4]), 
         .D(n6564), .Z(spi_rx_data[4])) /* synthesis lut_function=(A (B (C+(D)))+!A !(((D)+!C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i4900_4_lut_4_lut_4_lut.init = 16'h88c0;
    LUT4 i4888_4_lut_4_lut_4_lut (.A(rx_buf[1]), .B(spi_rst), .C(spi_rx_data[1]), 
         .D(n6564), .Z(spi_rx_data[1])) /* synthesis lut_function=(A (B (C+(D)))+!A !(((D)+!C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i4888_4_lut_4_lut_4_lut.init = 16'h88c0;
    FD1S3BX bit_cnt_i1 (.D(n6700), .CK(sclk_N_651), .PD(bit_cnt_15__N_552), 
            .Q(bit_cnt[1])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i1.GSR = "DISABLED";
    FD1S3DX tx_buf_i0_i1_1785_1786_reset (.D(n18[1]), .CK(sclk_N_651), .CD(n6546), 
            .Q(n2992)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i1_1785_1786_reset.GSR = "DISABLED";
    FD1S3DX miso_268 (.D(miso_N_668), .CK(sclk_N_651), .CD(bit_cnt_15__N_552), 
            .Q(miso_N_649)) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(175[5] 188[12])
    defparam miso_268.GSR = "DISABLED";
    LUT4 i4856_4_lut_4_lut_4_lut (.A(rx_buf[0]), .B(spi_rst), .C(spi_rx_data[0]), 
         .D(n6564), .Z(spi_rx_data[0])) /* synthesis lut_function=(A (B (C+(D)))+!A !(((D)+!C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i4856_4_lut_4_lut_4_lut.init = 16'h88c0;
    FD1S3BX tx_buf_i0_i1_1785_1786_set (.D(n18[1]), .CK(sclk_N_651), .PD(n6544), 
            .Q(n2991)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i1_1785_1786_set.GSR = "DISABLED";
    LUT4 i4908_4_lut_4_lut_4_lut (.A(rx_buf[6]), .B(spi_rst), .C(spi_rx_data[6]), 
         .D(n6564), .Z(spi_rx_data[6])) /* synthesis lut_function=(A (B (C+(D)))+!A !(((D)+!C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i4908_4_lut_4_lut_4_lut.init = 16'h88c0;
    FD1S3DX tx_buf_i0_i2_1781_1782_reset (.D(n18[2]), .CK(sclk_N_651), .CD(n6539), 
            .Q(n2988)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i2_1781_1782_reset.GSR = "DISABLED";
    FD1S3BX tx_buf_i0_i2_1781_1782_set (.D(n18[2]), .CK(sclk_N_651), .PD(n6540), 
            .Q(n2987)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i2_1781_1782_set.GSR = "DISABLED";
    FD1P3DX rx_buf_3__238 (.D(spi_mosi), .SP(rx_buf_3__N_565), .CK(top_test0_c), 
            .CD(n6568), .Q(rx_buf[3]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[9] 155[16])
    defparam rx_buf_3__238.GSR = "DISABLED";
    LUT4 i4896_4_lut_4_lut_4_lut (.A(rx_buf[3]), .B(spi_rst), .C(spi_rx_data[3]), 
         .D(n6564), .Z(spi_rx_data[3])) /* synthesis lut_function=(A (B (C+(D)))+!A !(((D)+!C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i4896_4_lut_4_lut_4_lut.init = 16'h88c0;
    LUT4 i1_2_lut_rep_71 (.A(n5640), .B(spi_rst), .Z(n6545)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_71.init = 16'h4444;
    LUT4 tx_buf_i1_i4_3_lut_4_lut (.A(rd_add), .B(n3737), .C(tx_buf[2]), 
         .D(tx_buf[3]), .Z(n18[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam tx_buf_i1_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_428_Mux_0_i7_4_lut_3_lut_rep_111 (.A(bit_cnt[8]), .B(bit_cnt[9]), 
         .C(bit_cnt[10]), .Z(n6698)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C)))) */ ;
    defparam mux_428_Mux_0_i7_4_lut_3_lut_rep_111.init = 16'h1616;
    FD1P3DX rx_buf_2__239 (.D(spi_mosi), .SP(rx_buf_2__N_567), .CK(top_test0_c), 
            .CD(n6568), .Q(rx_buf[2]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[9] 155[16])
    defparam rx_buf_2__239.GSR = "DISABLED";
    FD1S3DX tx_buf_i0_i3_1777_1778_reset (.D(n18[3]), .CK(sclk_N_651), .CD(n6536), 
            .Q(n2984)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i3_1777_1778_reset.GSR = "DISABLED";
    LUT4 rd_add_N_625_I_0_2_lut (.A(rd_add), .B(debug0), .Z(trdy_N_654)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(114[13:54])
    defparam rd_add_N_625_I_0_2_lut.init = 16'h4444;
    LUT4 ss_n_I_0_4_lut (.A(\spi_next_state_3__N_528[3] ), .B(spi_st_load_en), 
         .C(spi_tx_load_en), .D(spi_st_load_trdy), .Z(trdy_N_656)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(109[11:89])
    defparam ss_n_I_0_4_lut.init = 16'ha8a0;
    FD1P3DX rx_buf_4__237 (.D(spi_mosi), .SP(rx_buf_4__N_563), .CK(top_test0_c), 
            .CD(n6568), .Q(rx_buf[4]));   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[9] 155[16])
    defparam rx_buf_4__237.GSR = "DISABLED";
    PFUMX miso_I_0 (.BLUT(n3), .ALUT(miso_N_669), .C0(n5889), .Z(miso_N_668)) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;
    LUT4 i1775_3_lut (.A(n2980), .B(n2979), .C(n6850), .Z(tx_buf[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i1775_3_lut.init = 16'hcaca;
    LUT4 i1779_3_lut (.A(n2984), .B(n2983), .C(n6841), .Z(tx_buf[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i1779_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut (.A(debug0), .B(n5793), .C(n5789), .D(bit_cnt[2]), 
         .Z(n3737)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_30 (.A(bit_cnt[7]), .B(bit_cnt[5]), .C(bit_cnt[4]), 
         .D(bit_cnt[3]), .Z(n5793)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_30.init = 16'hfffe;
    LUT4 tx_buf_7__N_622_I_0_3_lut_rep_59 (.A(n3737), .B(n6698), .C(rd_add), 
         .Z(sclk_N_651_enable_1)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(178[7] 187[14])
    defparam tx_buf_7__N_622_I_0_3_lut_rep_59.init = 16'hc5c5;
    FD1S3DX tx_buf_i0_i6_1765_1766_reset (.D(n18[6]), .CK(sclk_N_651), .CD(n6541), 
            .Q(n2972)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i6_1765_1766_reset.GSR = "DISABLED";
    FD1S3BX tx_buf_i0_i6_1765_1766_set (.D(n18[6]), .CK(sclk_N_651), .PD(n6538), 
            .Q(n2971)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i6_1765_1766_set.GSR = "DISABLED";
    FD1S3DX tx_buf_i0_i0_1761_1762_reset (.D(n18[0]), .CK(sclk_N_651), .CD(n6537), 
            .Q(n2968)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i0_1761_1762_reset.GSR = "DISABLED";
    FD1S3BX tx_buf_i0_i7_1757_1758_set (.D(n18[7]), .CK(sclk_N_651), .PD(n6534), 
            .Q(n2963)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i7_1757_1758_set.GSR = "DISABLED";
    LUT4 tx_buf_i1_i5_3_lut_4_lut (.A(rd_add), .B(n3737), .C(tx_buf[3]), 
         .D(tx_buf[4]), .Z(n18[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam tx_buf_i1_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut (.A(bit_cnt[1]), .B(bit_cnt[6]), .Z(n5789)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 tx_buf_i1_i6_3_lut_4_lut (.A(rd_add), .B(n3737), .C(tx_buf[4]), 
         .D(tx_buf[5]), .Z(n18[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam tx_buf_i1_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 tx_buf_i1_i8_3_lut_4_lut (.A(rd_add), .B(n3737), .C(tx_buf[6]), 
         .D(tx_buf[7]), .Z(n18[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam tx_buf_i1_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 tx_buf_i1_i2_3_lut_4_lut (.A(rd_add), .B(n3737), .C(tx_buf[0]), 
         .D(tx_buf[1]), .Z(n18[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam tx_buf_i1_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_3_lut_4_lut (.A(rrdy_N_636), .B(n6545), .C(n694), .D(n702), 
         .Z(n2761)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(C+(D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(120[5] 132[12])
    defparam i1_3_lut_4_lut.init = 16'h7770;
    LUT4 i1_3_lut_4_lut_adj_31 (.A(rrdy_N_636), .B(n6545), .C(debug0), 
         .D(debug1), .Z(roe_N_665)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(120[5] 132[12])
    defparam i1_3_lut_4_lut_adj_31.init = 16'h0080;
    FD1S3DX bit_cnt_i2 (.D(bit_cnt[1]), .CK(sclk_N_651), .CD(bit_cnt_15__N_552), 
            .Q(bit_cnt[2])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i2.GSR = "DISABLED";
    FD1S3DX bit_cnt_i3 (.D(bit_cnt[2]), .CK(sclk_N_651), .CD(bit_cnt_15__N_552), 
            .Q(bit_cnt[3])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i3.GSR = "DISABLED";
    FD1S3DX bit_cnt_i4 (.D(bit_cnt[3]), .CK(sclk_N_651), .CD(bit_cnt_15__N_552), 
            .Q(bit_cnt[4])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i4.GSR = "DISABLED";
    FD1S3DX bit_cnt_i5 (.D(bit_cnt[4]), .CK(sclk_N_651), .CD(bit_cnt_15__N_552), 
            .Q(bit_cnt[5])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i5.GSR = "DISABLED";
    FD1S3DX bit_cnt_i6 (.D(bit_cnt[5]), .CK(sclk_N_651), .CD(bit_cnt_15__N_552), 
            .Q(bit_cnt[6])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i6.GSR = "DISABLED";
    FD1S3DX bit_cnt_i7 (.D(bit_cnt[6]), .CK(sclk_N_651), .CD(bit_cnt_15__N_552), 
            .Q(bit_cnt[7])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i7.GSR = "DISABLED";
    FD1S3DX bit_cnt_i8 (.D(bit_cnt[7]), .CK(sclk_N_651), .CD(bit_cnt_15__N_552), 
            .Q(bit_cnt[8])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i8.GSR = "DISABLED";
    FD1S3DX bit_cnt_i9 (.D(bit_cnt[8]), .CK(sclk_N_651), .CD(bit_cnt_15__N_552), 
            .Q(bit_cnt[9])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i9.GSR = "DISABLED";
    FD1S3DX bit_cnt_i10 (.D(bit_cnt[9]), .CK(sclk_N_651), .CD(bit_cnt_15__N_552), 
            .Q(bit_cnt[10])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i10.GSR = "DISABLED";
    FD1S3DX bit_cnt_i11 (.D(bit_cnt[10]), .CK(sclk_N_651), .CD(bit_cnt_15__N_552), 
            .Q(bit_cnt[11])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i11.GSR = "DISABLED";
    FD1S3DX bit_cnt_i12 (.D(bit_cnt[11]), .CK(sclk_N_651), .CD(bit_cnt_15__N_552), 
            .Q(bit_cnt[12])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i12.GSR = "DISABLED";
    FD1S3DX bit_cnt_i13 (.D(bit_cnt[12]), .CK(sclk_N_651), .CD(bit_cnt_15__N_552), 
            .Q(bit_cnt[13])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i13.GSR = "DISABLED";
    FD1S3DX bit_cnt_i14 (.D(bit_cnt[13]), .CK(sclk_N_651), .CD(bit_cnt_15__N_552), 
            .Q(bit_cnt[14])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i14.GSR = "DISABLED";
    FD1S3DX bit_cnt_i15 (.D(bit_cnt[14]), .CK(sclk_N_651), .CD(bit_cnt_15__N_552), 
            .Q(bit_cnt[15])) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i15.GSR = "DISABLED";
    FD1S3DX bit_cnt_i16 (.D(bit_cnt[15]), .CK(sclk_N_651), .CD(bit_cnt_15__N_552), 
            .Q(debug0)) /* synthesis LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(87[7] 89[14])
    defparam bit_cnt_i16.GSR = "DISABLED";
    LUT4 tx_buf_i1_i3_3_lut_4_lut (.A(rd_add), .B(n3737), .C(tx_buf[1]), 
         .D(tx_buf[2]), .Z(n18[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam tx_buf_i1_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_3_lut (.A(n694), .B(spi_rst), .C(rrdy_N_636), .Z(n5757)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    LUT4 ss_n_I_0_307_rep_6_4_lut (.A(\spi_next_state_3__N_528[3] ), .B(spi_st_load_en), 
         .C(spi_rx_req), .D(spi_st_load_trdy), .Z(n5640)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(120[9:83])
    defparam ss_n_I_0_307_rep_6_4_lut.init = 16'ha0a8;
    FD1S3BX tx_buf_i0_i0_1761_1762_set (.D(n18[0]), .CK(sclk_N_651), .PD(n6547), 
            .Q(n2967)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=58, LSE_LCOL=14, LSE_RCOL=23, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_i0_i0_1761_1762_set.GSR = "DISABLED";
    LUT4 i1759_3_lut (.A(n2964), .B(n2963), .C(n6889), .Z(tx_buf[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i1759_3_lut.init = 16'hcaca;
    LUT4 i1767_3_lut (.A(n2972), .B(n2971), .C(n6886), .Z(tx_buf[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i1767_3_lut.init = 16'hcaca;
    LUT4 tx_buf_i1_i7_3_lut_4_lut (.A(rd_add), .B(n3737), .C(tx_buf[5]), 
         .D(tx_buf[6]), .Z(n18[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam tx_buf_i1_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 debug1_N_556_I_0_287_2_lut (.A(debug1), .B(bit_cnt[15]), .Z(rx_buf_1__N_569)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[12:69])
    defparam debug1_N_556_I_0_287_2_lut.init = 16'h4444;
    LUT4 i4803_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[5]), .B(spi_rst), 
         .C(n6865), .D(n6561), .Z(n6865)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i4803_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 tx_buf_i1_i1_3_lut_4_lut (.A(rd_add), .B(n3737), .C(tx_buf[7]), 
         .D(tx_buf[0]), .Z(n18[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam tx_buf_i1_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_3_lut_4_lut_4_lut (.A(bit_cnt[8]), .B(rrdy_N_636), .C(spi_rst), 
         .D(n5640), .Z(n5660)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(179[9] 184[18])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i1787_3_lut (.A(n2992), .B(n2991), .C(n6901), .Z(tx_buf[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i1787_3_lut.init = 16'hcaca;
    LUT4 i1763_3_lut (.A(n2968), .B(n2967), .C(n6898), .Z(tx_buf[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i1763_3_lut.init = 16'hcaca;
    LUT4 tx_buf_7__N_581_I_0_291_2_lut_rep_76_4_lut_4_lut (.A(spi_tx_data[4]), 
         .B(spi_rst), .C(spi_tx_load_en), .D(\spi_next_state_3__N_528[3] ), 
         .Z(n6550)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_581_I_0_291_2_lut_rep_76_4_lut_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_adj_32 (.A(n702), .B(spi_rst), .C(rrdy_N_636), .Z(n5753)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_32.init = 16'h8080;
    LUT4 rx_buf_7__I_17_2_lut (.A(debug1), .B(bit_cnt[9]), .Z(rx_buf_7__N_554)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[12:69])
    defparam rx_buf_7__I_17_2_lut.init = 16'h4444;
    LUT4 i4912_4_lut (.A(spi_rx_data[7]), .B(rx_buf[7]), .C(n6121), .D(spi_rst), 
         .Z(spi_rx_data[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i4912_4_lut.init = 16'hca0a;
    LUT4 tx_buf_7__N_581_I_0_299_2_lut_rep_78_4_lut_4_lut (.A(spi_tx_data[4]), 
         .B(spi_rst), .C(spi_tx_load_en), .D(\spi_next_state_3__N_528[3] ), 
         .Z(n6552)) /* synthesis lut_function=(!(A (B)+!A !((C (D))+!B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_581_I_0_299_2_lut_rep_78_4_lut_4_lut.init = 16'h7333;
    LUT4 ss_n_I_0_306_2_lut_rep_85 (.A(\spi_next_state_3__N_528[3] ), .B(spi_st_load_en), 
         .Z(n6559)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(107[9:63])
    defparam ss_n_I_0_306_2_lut_rep_85.init = 16'h8888;
    LUT4 trdy_N_633_I_0_317_2_lut_3_lut (.A(\spi_next_state_3__N_528[3] ), 
         .B(spi_st_load_en), .C(spi_st_load_trdy), .Z(rrdy_N_661)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(107[9:63])
    defparam trdy_N_633_I_0_317_2_lut_3_lut.init = 16'h8080;
    LUT4 trdy_I_22_2_lut_3_lut (.A(\spi_next_state_3__N_528[3] ), .B(spi_st_load_en), 
         .C(spi_st_load_trdy), .Z(trdy_N_632)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(107[9:63])
    defparam trdy_I_22_2_lut_3_lut.init = 16'h0808;
    LUT4 i4904_4_lut (.A(spi_rx_data[5]), .B(rx_buf[5]), .C(n6121), .D(spi_rst), 
         .Z(spi_rx_data[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i4904_4_lut.init = 16'hca0a;
    LUT4 debug1_I_0_2_lut_rep_86 (.A(debug1), .B(bit_cnt[11]), .Z(n6560)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(142[13:47])
    defparam debug1_I_0_2_lut_rep_86.init = 16'h8888;
    LUT4 i2389_2_lut_3_lut (.A(debug1), .B(bit_cnt[11]), .C(spi_mosi), 
         .Z(roe_N_663)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(142[13:47])
    defparam i2389_2_lut_3_lut.init = 16'h8080;
    LUT4 i4808_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[4]), .B(spi_rst), 
         .C(n6850), .D(n6561), .Z(n6850)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i4808_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 i4813_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[3]), .B(spi_rst), 
         .C(n6841), .D(n6561), .Z(n6841)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i4813_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 tx_buf_7__I_18_3_lut_rep_87 (.A(\spi_next_state_3__N_528[3] ), .B(spi_rst), 
         .C(spi_tx_load_en), .Z(n6561)) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__I_18_3_lut_rep_87.init = 16'hb3b3;
    LUT4 tx_buf_7__N_581_I_0_300_2_lut_rep_62_3_lut_4_lut (.A(\spi_next_state_3__N_528[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[3]), .Z(n6536)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_581_I_0_300_2_lut_rep_62_3_lut_4_lut.init = 16'h33b3;
    LUT4 tx_buf_7__N_581_I_0_301_2_lut_rep_65_3_lut_4_lut (.A(\spi_next_state_3__N_528[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[2]), .Z(n6539)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_581_I_0_301_2_lut_rep_65_3_lut_4_lut.init = 16'h33b3;
    LUT4 i1783_3_lut (.A(n2988), .B(n2987), .C(n6838), .Z(tx_buf[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i1783_3_lut.init = 16'hcaca;
    LUT4 debug1_N_556_I_0_285_2_lut (.A(debug1), .B(bit_cnt[13]), .Z(rx_buf_3__N_565)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[12:69])
    defparam debug1_N_556_I_0_285_2_lut.init = 16'h4444;
    LUT4 tx_buf_7__N_581_I_0_293_2_lut_rep_66_3_lut_4_lut (.A(\spi_next_state_3__N_528[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[2]), .Z(n6540)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_581_I_0_293_2_lut_rep_66_3_lut_4_lut.init = 16'h8000;
    LUT4 tx_buf_7__N_581_I_0_292_2_lut_rep_69_3_lut_4_lut (.A(\spi_next_state_3__N_528[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[3]), .Z(n6543)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_581_I_0_292_2_lut_rep_69_3_lut_4_lut.init = 16'h8000;
    LUT4 tx_buf_7__N_581_I_0_290_2_lut_rep_75_3_lut_4_lut (.A(\spi_next_state_3__N_528[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[5]), .Z(n6549)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_581_I_0_290_2_lut_rep_75_3_lut_4_lut.init = 16'h8000;
    LUT4 i4793_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[0]), .B(spi_rst), 
         .C(n6898), .D(n6561), .Z(n6898)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i4793_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 debug1_N_556_I_0_286_2_lut (.A(debug1), .B(bit_cnt[14]), .Z(rx_buf_2__N_567)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[12:69])
    defparam debug1_N_556_I_0_286_2_lut.init = 16'h4444;
    LUT4 debug1_N_556_I_0_284_2_lut (.A(debug1), .B(bit_cnt[12]), .Z(rx_buf_4__N_563)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[12:69])
    defparam debug1_N_556_I_0_284_2_lut.init = 16'h4444;
    LUT4 tx_buf_7__N_581_I_0_297_2_lut_rep_67_3_lut_4_lut (.A(\spi_next_state_3__N_528[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[6]), .Z(n6541)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_581_I_0_297_2_lut_rep_67_3_lut_4_lut.init = 16'h33b3;
    LUT4 tx_buf_7__N_581_I_0_295_2_lut_rep_73_3_lut_4_lut (.A(\spi_next_state_3__N_528[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[0]), .Z(n6547)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_581_I_0_295_2_lut_rep_73_3_lut_4_lut.init = 16'h8000;
    LUT4 mux_428_Mux_1_i7_4_lut (.A(n5769), .B(tx_buf[7]), .C(rd_add), 
         .D(roe_N_643), .Z(n1029[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(179[9] 184[18])
    defparam mux_428_Mux_1_i7_4_lut.init = 16'hac0c;
    LUT4 tx_buf_7__N_581_I_0_289_2_lut_rep_64_3_lut_4_lut (.A(\spi_next_state_3__N_528[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[6]), .Z(n6538)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_581_I_0_289_2_lut_rep_64_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_33 (.A(bit_cnt[9]), .B(bit_cnt[8]), .C(n6559), .D(spi_rst), 
         .Z(n5769)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_33.init = 16'h0100;
    LUT4 tx_buf_7__N_581_I_0_2_lut_rep_63_3_lut_4_lut (.A(\spi_next_state_3__N_528[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[0]), .Z(n6537)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_581_I_0_2_lut_rep_63_3_lut_4_lut.init = 16'h33b3;
    LUT4 tx_buf_7__N_581_I_0_298_2_lut_rep_61_3_lut_4_lut (.A(\spi_next_state_3__N_528[3] ), 
         .B(spi_rst), .C(spi_tx_load_en), .D(spi_tx_data[5]), .Z(n6535)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A (B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_581_I_0_298_2_lut_rep_61_3_lut_4_lut.init = 16'h33b3;
    LUT4 i1282_2_lut_rep_88 (.A(miso_N_649), .B(miso_N_650), .Z(n6562)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam i1282_2_lut_rep_88.init = 16'h8888;
    LUT4 tx_buf_7__I_0_3_lut_4_lut (.A(miso_N_649), .B(miso_N_650), .C(sclk_N_651_enable_1), 
         .D(n1029[1]), .Z(miso_N_669)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(93[3] 190[15])
    defparam tx_buf_7__I_0_3_lut_4_lut.init = 16'hf808;
    LUT4 ss_n_I_0_279_2_lut_rep_90 (.A(\spi_next_state_3__N_528[3] ), .B(spi_rx_req), 
         .Z(n6564)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(161[11:38])
    defparam ss_n_I_0_279_2_lut_rep_90.init = 16'h8888;
    LUT4 i4798_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[6]), .B(spi_rst), 
         .C(n6886), .D(n6561), .Z(n6886)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i4798_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 debug1_N_556_I_0_282_2_lut (.A(debug1), .B(bit_cnt[10]), .Z(rx_buf_6__N_559)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[12:69])
    defparam debug1_N_556_I_0_282_2_lut.init = 16'h4444;
    LUT4 tx_buf_7__N_581_I_0_294_2_lut_rep_70_4_lut_4_lut (.A(spi_tx_data[1]), 
         .B(spi_rst), .C(spi_tx_load_en), .D(\spi_next_state_3__N_528[3] ), 
         .Z(n6544)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_581_I_0_294_2_lut_rep_70_4_lut_4_lut.init = 16'h8000;
    LUT4 debug1_I_0_312_2_lut_rep_109 (.A(debug1), .B(bit_cnt[9]), .Z(n6583)) /* synthesis lut_function=(A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(112[10:43])
    defparam debug1_I_0_312_2_lut_rep_109.init = 16'h8888;
    LUT4 tx_buf_7__N_581_I_0_302_2_lut_rep_72_4_lut_4_lut (.A(spi_tx_data[1]), 
         .B(spi_rst), .C(spi_tx_load_en), .D(\spi_next_state_3__N_528[3] ), 
         .Z(n6546)) /* synthesis lut_function=(!(A (B)+!A !((C (D))+!B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_581_I_0_302_2_lut_rep_72_4_lut_4_lut.init = 16'h7333;
    LUT4 i4831_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[1]), .B(spi_rst), 
         .C(n6901), .D(n6561), .Z(n6901)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i4831_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 debug1_N_556_I_0_2_lut_rep_93 (.A(debug1), .B(debug0), .Z(top_test0_c_enable_1)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(127[13:54])
    defparam debug1_N_556_I_0_2_lut_rep_93.init = 16'h4444;
    LUT4 debug1_N_556_I_0_283_2_lut (.A(debug1), .B(bit_cnt[11]), .Z(rx_buf_5__N_561)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(153[12:69])
    defparam debug1_N_556_I_0_283_2_lut.init = 16'h4444;
    LUT4 rx_buf_0__N_571_I_0_4_lut_4_lut (.A(debug1), .B(debug0), .C(bit_cnt[10]), 
         .D(spi_mosi), .Z(rrdy_N_659)) /* synthesis lut_function=(A (C (D))+!A (B)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(127[13:54])
    defparam rx_buf_0__N_571_I_0_4_lut_4_lut.init = 16'he444;
    LUT4 reset_n_I_0_1_lut_rep_94 (.A(spi_rst), .Z(n6568)) /* synthesis lut_function=(!(A)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(107[68:81])
    defparam reset_n_I_0_1_lut_rep_94.init = 16'h5555;
    LUT4 i1_4_lut_4_lut (.A(spi_rst), .B(trdy_N_632), .C(n6583), .D(trdy_N_654), 
         .Z(top_test0_c_enable_3)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(107[68:81])
    defparam i1_4_lut_4_lut.init = 16'hfffd;
    LUT4 i1_4_lut_adj_34 (.A(bit_cnt[8]), .B(trdy_N_630), .C(trdy_N_632), 
         .D(spi_rst), .Z(n5681)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_34.init = 16'h0800;
    LUT4 ss_n_I_0_288_2_lut_2_lut (.A(spi_rst), .B(\spi_next_state_3__N_528[3] ), 
         .Z(bit_cnt_15__N_552)) /* synthesis lut_function=((B)+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(107[68:81])
    defparam ss_n_I_0_288_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_4_lut_4_lut_adj_35 (.A(spi_rst), .B(n6559), .C(roe_N_665), 
         .D(n6560), .Z(top_test0_c_enable_2)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(107[68:81])
    defparam i1_4_lut_4_lut_adj_35.init = 16'hfffd;
    LUT4 i4734_3_lut (.A(n5681), .B(n5660), .C(bit_cnt[9]), .Z(n3)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(175[5] 188[12])
    defparam i4734_3_lut.init = 16'hcaca;
    LUT4 i4914_2_lut_3_lut_3_lut (.A(spi_rst), .B(spi_rx_req), .C(\spi_next_state_3__N_528[3] ), 
         .Z(n6121)) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(107[68:81])
    defparam i4914_2_lut_3_lut_3_lut.init = 16'hd5d5;
    LUT4 i4826_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[2]), .B(spi_rst), 
         .C(n6838), .D(n6561), .Z(n6838)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i4826_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 tx_buf_7__N_581_I_0_296_2_lut_rep_74_4_lut_4_lut (.A(spi_tx_data[7]), 
         .B(spi_rst), .C(spi_tx_load_en), .D(\spi_next_state_3__N_528[3] ), 
         .Z(n6548)) /* synthesis lut_function=(!(A (B)+!A !((C (D))+!B))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__N_581_I_0_296_2_lut_rep_74_4_lut_4_lut.init = 16'h7333;
    LUT4 tx_buf_7__I_0_303_2_lut_rep_60_4_lut_4_lut (.A(spi_tx_data[7]), .B(spi_rst), 
         .C(spi_tx_load_en), .D(\spi_next_state_3__N_528[3] ), .Z(n6534)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam tx_buf_7__I_0_303_2_lut_rep_60_4_lut_4_lut.init = 16'h8000;
    LUT4 i4788_4_lut_4_lut_3_lut_4_lut (.A(spi_tx_data[7]), .B(spi_rst), 
         .C(n6889), .D(n6561), .Z(n6889)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i4788_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 i2386_2_lut_3_lut (.A(debug1), .B(bit_cnt[9]), .C(spi_mosi), 
         .Z(trdy_N_652)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(112[10:43])
    defparam i2386_2_lut_3_lut.init = 16'h8080;
    LUT4 i1771_3_lut (.A(n2976), .B(n2975), .C(n6865), .Z(tx_buf[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/work/tinysdr_fpga_ble_tx/impl1/source/spi_slave.vhd(166[5] 172[12])
    defparam i1771_3_lut.init = 16'hcaca;
    
endmodule
