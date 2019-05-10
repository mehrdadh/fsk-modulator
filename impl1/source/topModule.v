`include "bleDefines.v"
`include "radioDefines.v"
`include "spi_h.v"

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
parameter [0:0] VCC = 1'b1;

//wire			top_clk_buff;
wire			pll_clki;
wire			pll_clko;
wire			pll_lock;

wire			clockDivider_clkLock;
wire			clockDivider_clk_4M;

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
reg						spi_sclk;
reg						spi_cs;
reg						spi_mosi;
wire					spi_miso;

reg						spi_rst;
reg						spi_rx_req;
reg						spi_st_load_en;
reg	 					spi_st_load_trdy;
reg						spi_st_load_rrdy;
reg						spi_st_load_roe;
reg						spi_tx_load_en;
reg [`SPI_W-1:0]		spi_tx_data;
wire 					spi_trdy;
wire 					spi_rrdy;
wire [`SPI_W-1:0]		spi_rx_data;
wire					spi_busy;

wire					spi_ctrl_clk;
wire					spi_ctrl_rst;


reg						test_state;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
//assign	top_rst_n = clockDivider_clkLock;
assign	osc_en = 1'b1;
assign 	pll_clki = top_clk;

assign IQSerializer_I = {fskModule_I, 1'b0};
assign IQSerializer_Q = {fskModule_Q, 1'b0};

//assign	spi_clk			= clockDivider_clk_4M;
//assign	spi_rst			= ~clockDivider_clkLock;
assign		spi_ctrl_clk	= clockDivider_clk_4M;
assign		spi_ctrl_rst	= clockDivider_clkLock;


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
assign top_test3	= spi_cs;

assign top_test4	= spi_rx_req;
assign top_test5	= spi_rrdy;
assign top_test6	= spi_ctrl_rst;

//--------------------------------------------------------------------
// State
//--------------------------------------------------------------------
//LED
always @(*) begin
	if (pll_lock == VSS) begin
		LED = 1'b0;
	end else begin
		LED = 1'b1;
	end
end

//BLE Registers
reg	ble_reg_pkt_rx;
//SPI state machine
reg [3:0]	spi_current_state;
reg [3:0]	spi_next_state;
parameter [3:0] spi_state_rst0=4'd0, spi_state_rst1=4'd1, spi_state_rx_wait=4'd2, spi_state_rx_load=4'd3, spi_state_cmd=4'd4,
spi_state_tx_load=4'd5, spi_state_rst2=4'd5, spi_state_init_wait=4'd6;

always @(posedge spi_ctrl_clk) begin
	if (spi_ctrl_rst == VSS)
		spi_current_state	<= spi_state_rst0;
	else
		spi_current_state	<= spi_next_state;
end

always @(*) begin
	if (spi_ctrl_rst == VSS) begin
		spi_next_state		= spi_state_rst0;
		spi_tx_load_en		= VSS;
		spi_tx_data	= `SPI_W'd0;
		spi_rx_req			= VSS;
		spi_rst				= VSS;
		
		ble_reg_pkt_rx		= VSS;
		test_state			= VSS;
		
		spi_st_load_en		= VSS;
		spi_st_load_trdy	= VCC;
		spi_st_load_rrdy	= VSS;
		spi_st_load_roe		= VSS;
	end else begin
		case (spi_current_state)
			spi_state_rst0: begin
				spi_st_load_en	= VSS;
				test_state		= VSS;
				spi_rst			= VSS;
				spi_next_state	= spi_state_rst1;
			end
			spi_state_rst1: begin
				test_state			= VSS;
				spi_rst				= VCC;
				spi_st_load_en		= VCC;
				spi_next_state	= spi_state_rst2;
			end
			spi_state_rst2: begin
				test_state		= VSS;
				spi_st_load_en	= VSS;
				spi_tx_load_en 	= VCC;
				spi_next_state	= spi_state_init_wait;
			end
			spi_state_init_wait: begin
				test_state			= VSS;
				spi_tx_load_en 		= VSS;
				if (spi_busy == VCC) begin
					spi_next_state	= spi_state_rx_wait;
				end else begin
					spi_next_state	= spi_state_init_wait;
				end
			end
			spi_state_rx_wait: begin
				test_state			= VSS;
				if (spi_rrdy == VCC) begin
					spi_next_state	= spi_state_rx_load;
				end else begin
					spi_next_state	= spi_state_rx_wait;
				end
			end
			spi_state_rx_load: begin
				test_state			= VSS;
				if (spi_busy == VCC) begin
					spi_next_state		= spi_state_rx_load;
					spi_rx_req			= VSS;
				end else begin
					spi_next_state		= spi_state_cmd;
					spi_rx_req			= VCC;
				end
			end
			spi_state_cmd: begin
				test_state			= VCC;
				spi_rx_req			= VSS;
				
				spi_tx_data 		= spi_rx_data;
				spi_next_state		= spi_state_tx_load;
			end
			spi_state_tx_load: begin
				test_state			= VSS;
				spi_next_state		= spi_state_rst2;
			end
			default: begin
				test_state			= VSS;
				spi_next_state		= spi_state_rst2;
			end
		endcase
	end
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
//assign	pll_clko = sim_clk;
//assign	pll_lock = sim_lock;

clockDivider clockDivider_0(
	.clk      (pll_clko),
	.pll_lock (pll_lock),
	.clkOut   (clockDivider_clk_4M),
	.clkLock  (clockDivider_clkLock) 
);

packetCounter counter_0(
	.clk       (clockDivider_clk_4M),
	.clkLock   (clockDivider_clkLock),
	.countDone (counter_0_countDone) 
);

packetGenerator packetGen_0(
	.rst_n(counter_0_countDone),
	.clk(clockDivider_clk_4M),
	.symDone(fskModule_symDone),
	.start(fskModule_start),
	.symVal(fskModule_symVal)
);

FSKModulator fskModule_0(
	.clk(clockDivider_clk_4M),
	.rst_n(counter_0_countDone),
	.enable(fskModule_start),
	.symVal(fskModule_symVal),
	.FSK_I(fskModule_I),
	.FSK_Q(fskModule_Q),
	.symDone(fskModule_symDone),
	.start(IQSerializer_start)
);

IQSerializer IQSerializer_0(
	.clk(pll_clko),
	.start(IQSerializer_start),
	.I(IQSerializer_I),
	.Q(IQSerializer_Q),
	.serial_N(serial_iq),
	.serial(),
	.serial_clk(serial_clk)
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
	.busy(spi_busy)
);

endmodule

