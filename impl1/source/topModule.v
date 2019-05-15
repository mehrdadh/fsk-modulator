`include "bleDefines.v"
`include "radioDefines.v"
`include "spi_h.v"

`define	VCC	1'b1

module topModule (
input		top_clk,
input		top_rst_n,
	
//spi
input			top_spi_mosi,
output reg		top_spi_miso,
input			top_spi_sclk,
input			top_spi_cs,
	
output			osc_en,
output			serial_iq, /* synthesis IO_TYPES="LVDS*/
output			serial_clk, /* synthesis IO_TYPES="LVDS*/
output reg		LED,
	
output			top_test0,
output			top_test1,
output			top_test2,
output			top_test3,
output			top_test4,
output 			top_test5,
output 			top_test6

//input			sim_clk,
//input			sim_lock
);

//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
parameter [0:0] VSS = 1'b0;
//parameter [0:0] VCC = 1'b1;

//wire			top_clk_buff;
wire			pll_clki;
wire			pll_clko;
wire			pll_lock;

wire			clkDivider_lock;
wire			clkDivider_clko;

wire			counter_0_countDone;

reg				sin_clkEN;
reg				sin_rst;
reg				sin_theta;
wire			sin_sine;
wire			sin_cosine;

wire				fskModule_symVal;
wire [`SinSize-1:0]	fskModule_I;
wire [`SinSize-1:0]	fskModule_Q;
wire				fskModule_symDone;
wire				fskModule_start;

wire [`ILength-1:0] IQSerializer_I;
wire [`QLength-1:0]	IQSerializer_Q;
wire 				IQSerializer_start;

/*	SPI	and SPI CTRL	*/reg						spi_sclk;
reg						spi_cs;
reg						spi_mosi;
wire					spi_miso;

wire					spi_rst;
wire					spi_rx_req;
wire					spi_st_load_en;
wire 					spi_st_load_trdy;
wire					spi_st_load_rrdy;
wire					spi_st_load_roe;
wire					spi_tx_load_en;
wire	[`SPI_W-1:0]	spi_tx_data;
wire 					spi_trdy;
wire 					spi_rrdy;
wire 	[`SPI_W-1:0]	spi_rx_data;
wire					spi_busy;
wire					spi_debug0;
wire					spi_debug1;


wire					spi_ctrl_clk;
wire					spi_ctrl_rst;
wire					spi_rx_ready;

/*	BLE Memory	*/
wire 							mem_clk;
wire							mem_clkE;
wire							mem_rst;
reg								mem_we;
reg		[`BLE_Mem_Addr-1: 0]	mem_addr;
reg		[`BLE_Mem_Data-1: 0]	mem_dataIn;
wire	[`BLE_Mem_Data-1: 0]	mem_dataOut;

reg		[`BLE_Mem_Data-1: 0]	mem_w_data;
reg 	[`BLE_Mem_Addr-1: 0]	mem_w_addr;
reg								mem_w_req;

wire							ble_clk;
reg						test_state;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
//assign	top_rst_n = clockDivider_clkLock;
assign	osc_en = 1'b1;
assign 	pll_clki = top_clk;

assign IQSerializer_I = {fskModule_I, 1'b0};
assign IQSerializer_Q = {fskModule_Q, 1'b0};

assign	spi_ctrl_clk	= clkDivider_clko;
assign	spi_ctrl_rst	= clkDivider_lock;

assign	ble_clk	= clkDivider_clko;
assign	ble_rst	= clkDivider_lock;

always @(posedge pll_clko) begin
	spi_sclk		<= top_spi_sclk;
	spi_cs			<= top_spi_cs;
	spi_mosi 		<= top_spi_mosi;
	top_spi_miso 	<= spi_miso;
end


//debugg
assign top_test0	= spi_sclk;
assign top_test1	= spi_mosi;
assign top_test2	= spi_miso;
assign top_test3	= spi_rx_req;

assign top_test4	= spi_debug0;
assign top_test5	= spi_rrdy;
assign top_test6	= spi_debug1;

//--------------------------------------------------------------------
// State
//--------------------------------------------------------------------
//LED
always @(*) begin
	if (clkDivider_lock == VSS) begin
		LED = 1'b0;
	end else begin
		LED = 1'b1;
	end
end

/*	BLE State Machine	*/
reg			ble_flag_spi_pkt;
reg			ble_flag_spi_data;
reg [7:0]	ble_reg_pkt_size;
reg [7:0]	ble_reg_data_count;

reg [7:0] ble_current_state;
reg [7:0] ble_next_state;
parameter [7:0] ble_state_rst=8'd0, ble_state_wait=8'd1, ble_state_data=8'd2, ble_state_done=8'd3, ble_state_cmd=8'd4,
ble_state_pktSize=8'd5;

always @(posedge ble_clk, negedge ble_rst) begin
	if (ble_rst == VSS) begin
		ble_current_state	<= ble_state_rst;
	end else begin
		ble_current_state	<= ble_next_state;
	end
end

always @(*) begin
	if (ble_rst == VSS) begin
		ble_next_state	= ble_state_rst;
		test_state = VSS;
	end else begin
		case(ble_current_state)
			ble_state_rst: begin
				ble_next_state		= ble_state_wait;
				test_state = VSS;
			end
			ble_state_wait: begin
				if (spi_rx_ready == `VCC) begin
					if (ble_flag_spi_pkt == `VCC) begin
						ble_next_state	= ble_state_pktSize;
					end else if (ble_flag_spi_data == `VCC) begin
						ble_next_state	= ble_state_data;
					end else begin
						ble_next_state	= ble_state_cmd;
					end
				end else begin
					ble_next_state	= ble_state_wait;
				end
			end
			ble_state_cmd: begin
				if (spi_rx_data == 8'hAA) begin
					ble_next_state		= ble_state_wait;
				end else begin
					ble_next_state	= ble_state_wait;
				end
			end
			ble_state_pktSize: begin
				ble_next_state		= ble_state_wait;
			end
			ble_state_data: begin			
				if (ble_reg_data_count < 8'd10) begin
					ble_next_state	= ble_state_wait;
				end else begin
					ble_next_state	= ble_state_done;
				end
				test_state = `VCC;
			end
			ble_state_done: begin
				ble_next_state	= ble_state_done;				
			end
			default: begin
				ble_next_state	= ble_state_rst;
			end
		endcase
	end
end


always @(negedge ble_clk, negedge ble_rst) begin
	if (ble_rst == VSS) begin
		ble_flag_spi_pkt	<= VSS;
		ble_flag_spi_data	<= VSS;
		ble_reg_data_count	<= 8'd0;
	end else begin
		case(ble_current_state)
			ble_state_rst: begin
				ble_flag_spi_pkt	<= VSS;
				ble_flag_spi_data	<= VSS;
				ble_reg_data_count	<= 8'd0;
				mem_w_req			<= VSS;
			end
			ble_state_wait: begin
				mem_w_req			<= VSS;
			end
			ble_state_cmd: begin
				mem_w_req			<= VSS;
				if (spi_rx_data == 8'hAA) begin
					ble_flag_spi_pkt	<= `VCC;
				end else begin
					ble_flag_spi_pkt	<= ble_flag_spi_pkt;
				end
			end
			ble_state_pktSize: begin
				ble_reg_pkt_size 	<= spi_rx_data;
				ble_flag_spi_data	<= `VCC;
				ble_flag_spi_pkt	<= VSS;
			end
			ble_state_data: begin
				mem_w_data			<= spi_rx_data;
				mem_w_addr			<= ble_reg_data_count;
				mem_w_req			<= `VCC;
				
				if (ble_reg_data_count < 8'd10) begin
					ble_reg_data_count	<= ble_reg_data_count + 8'd1;
				end else begin
					ble_reg_data_count	<= ble_reg_data_count;
				end
			end
			ble_state_done: begin
				mem_w_req	<= VSS;
			end
			default: begin
				mem_w_req	<= VSS;
			end
		endcase
	end
end


/*	Memory State Machine	*/
assign mem_clkE	= `VCC;
assign mem_rst = pll_lock;
reg [3:0] mem_current_state;
reg [3:0] mem_next_state;
parameter [3:0] mem_state_rst=4'd0, mem_state_wait=4'd1, mem_state_req=4'd2, mem_state_wr=4'd3;

always @(posedge mem_clk) begin
	if (mem_rst == VSS) begin
		mem_current_state	<= mem_state_rst;
	end else begin
		mem_current_state	<= mem_next_state;
	end
end

always @(*) begin
	if (mem_rst == VSS) begin
		mem_next_state	= mem_state_rst;
	end else begin
		case (mem_current_state)
			mem_state_rst: begin
				mem_next_state	= mem_state_wait;
			end
			mem_state_wait: begin
				if (mem_w_req == `VCC) begin
					mem_next_state = mem_state_req;
				end else begin
					mem_next_state = mem_state_wait;
				end
			end
			mem_state_req: begin
				mem_next_state	= mem_state_wr;
			end
			mem_state_wr: begin
				mem_next_state	= mem_state_wait;
			end
			//mem_state_addr: begin
				//mem_next_state	= mem_state_wait;
			//end
			default: begin
				mem_next_state	= mem_state_rst;
			end
		endcase
	end
end

always @(negedge mem_clk) begin
	case(mem_current_state)
		mem_state_rst: begin
			mem_dataIn	<= `BLE_Mem_Data'd0;
			mem_addr	<= `BLE_Mem_Addr'd0;
			mem_we		<= VSS;
		end
		mem_state_wait: begin
			mem_dataIn	<= mem_dataIn;
			mem_addr	<= mem_addr;
			mem_we		<= VSS;
		end
		mem_state_req: begin
			mem_dataIn	<= mem_w_data;
			mem_addr	<= mem_w_addr;
			mem_we		<= `VCC;
		end
		mem_state_wr: begin
			mem_dataIn	<= mem_dataIn;
			mem_addr	<= mem_addr;
			mem_we		<= `VCC;
		end
		default: begin
			mem_dataIn	<= `BLE_Mem_Data'd0;
			mem_addr	<= `BLE_Mem_Addr'd0;
			mem_we		<= VSS;
		end
	endcase
end


//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
pll_64M my_pll_instance(
	.SEL	(1'b1),
	.CLKI	(1'b0), 
	.CLKI2	(pll_clki),
	.RST	(~top_rst_n),
	.CLKOP	(pll_clko),
	.LOCK	(pll_lock)
);

clockDivider clockDivider_0(
	.clk      (pll_clko),
	.pll_lock (pll_lock),
	.clkOut   (clkDivider_clko),
	.clkLock  (clkDivider_lock) 
);

packetCounter counter_0(
	.clk       (clkDivider_clko),
	.clkLock   (clkDivider_lock),
	.countDone (counter_0_countDone) 
);

//packetGenerator packetGen_0(
	//.rst_n(counter_0_countDone),
	//.clk(clockDivider_clk_4M),
	//.symDone(fskModule_symDone),
	//.start(fskModule_start),
	//.symVal(fskModule_symVal)
//);

//FSKModulator fskModule_0(
	//.clk(clockDivider_clk_4M),
	//.rst_n(counter_0_countDone),
	//.enable(fskModule_start),
	//.symVal(fskModule_symVal),
	//.FSK_I(fskModule_I),
	//.FSK_Q(fskModule_Q),
	//.symDone(fskModule_symDone),
	//.start(IQSerializer_start)
//);

//IQSerializer IQSerializer_0(
	//.clk(pll_clko),
	//.start(IQSerializer_start),
	//.I(IQSerializer_I),
	//.Q(IQSerializer_Q),
	//.serial_N(serial_iq),
	//.serial(),
	//.serial_clk(serial_clk)
//);

spi_ctrl spi_ctrl_0(
/*	User Interface	*/
	.clk(spi_ctrl_clk),
	.rst(spi_ctrl_rst),
	.rx_ready(spi_rx_ready),
/*	SPI CTRL interface	*/
	.spi_rst(spi_rst),
	.spi_rx_req(spi_rx_req),
	.spi_st_load_en(spi_st_load_en),
	.spi_st_load_trdy(spi_st_load_trdy),
	.spi_st_load_rrdy(spi_st_load_rrdy),
	.spi_st_load_roe(),
	.spi_tx_load_en(spi_tx_load_en),
	.spi_tx_data(spi_tx_data),
	.spi_trdy(spi_trdy),
	.spi_rrdy(spi_rrdy),
	.spi_rx_data(spi_rx_data),
	.spi_busy(spi_busy)
);

spi spi_0(
	/*SPI slave interface*/
	.sclk(spi_sclk),
	.cs_n(spi_cs),
	.mosi(spi_mosi),
	.miso(spi_miso),
	/*User interface*/
	.rst_n(spi_rst),
	.rx_req(spi_rx_req),
	.st_load_en(spi_st_load_en),
	.st_load_trdy(spi_st_load_trdy),
	.st_load_rrdy(spi_st_load_rrdy),
	.tx_load_en(spi_tx_load_en),
	.tx_load_data(spi_tx_data),
	.trdy(spi_trdy),
	.rrdy(spi_rrdy),
	.rx_data(spi_rx_data),
	.busy(spi_busy),
	.debug0(spi_debug0),
	.debug1(spi_debug1)
);

//spi_out spi_0(
	///*SPI slave interface*/
	//.sclk(spi_sclk),
	//.cs_n(spi_cs),
	//.mosi(spi_mosi),
	//.miso(spi_miso),
	///*User interface*/
	//.rst_n(spi_rst),
	//.rx_req(spi_rx_req),
	//.st_load_en(spi_st_load_en),
	//.st_load_trdy(spi_st_load_trdy),
	//.st_load_rrdy(spi_st_load_rrdy),
	//.tx_load_en(spi_tx_load_en),
	//.tx_load_data(spi_tx_data),
	//.trdy(spi_trdy),
	//.rrdy(spi_rrdy),
	//.rx_data(spi_rx_data),
	//.busy(spi_busy)
//);

ble_packet_mem mem_0(
	.Clock(mem_clk),
	.ClockEn(mem_clkE),
	.Reset(~mem_rst),
	.WE(mem_we),
	.Address(mem_addr),
	.Data(mem_dataIn),
	.Q(mem_dataOut)
);
    
	
endmodule

