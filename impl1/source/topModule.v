`include "bleDefines.v"
`include "radioDefines.v"

module topModule (
	top_clk,
	top_rst,
	
	//spi
	spi_mosi,
	spi_miso,
	spi_sclk,
	spi_cs,
	
	osc_en,
	serial_iq,
	serial_clk,
	LED,
	
	clk_test,
	top_test1,
	top_test2,
	
	sim_clk,
	sim_lock
	
);
//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input	top_clk;
input	top_rst;

input	spi_mosi;
input	spi_sclk;
input	spi_cs;

input	sim_clk;
input	sim_lock;

//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output			spi_miso;
output			osc_en;
output			serial_iq /* synthesis IO_TYPES="LVDS*/;
output			serial_clk /* synthesis IO_TYPES="LVDS*/;
output wire  	LED;

output wire 	clk_test;
output wire		top_test1;
output wire		top_test2;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
parameter [0:0] VSS = 1'b0;
parameter [0:0] VCC = 1'b1;

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
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign	osc_en = 1'b1;
assign 	pll_clki = top_clk;

assign IQSerializer_I = {fskModule_I, 1'b0};
assign IQSerializer_Q = {fskModule_Q, 1'b0};

//assign IQSerializer_I = {13'd4095, 1'b0};
//assign IQSerializer_Q = {13'd4095, 1'b0};

assign LED = 1'b1;

//debugg
assign clk_test		= pll_clko;
assign top_test1	= serial_iq;
assign top_test2	= serial_clk;
//--------------------------------------------------------------------
// State
//--------------------------------------------------------------------


//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
pll_64M my_pll_instance(
	.SEL	(1'b1),
	.CLKI	(1'b0), 
	.CLKI2	(pll_clki),
	.RST	(),
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
	// Outputs
	.countDone (counter_0_countDone) 
);

packetGenerator packetGen_1(
	.rst(counter_0_countDone),
	.clk(clockDivider_clk_4M),
	.symDone(fskModule_symDone),
	.start(fskModule_start),
	.symVal(fskModule_symVal)
);

FSKModulator fskModule_1(
	.clk(clockDivider_clk_4M),
	.rst(counter_0_countDone),
	.enable(fskModule_start),
	.symVal(fskModule_symVal),
	.FSK_I(fskModule_I),
	.FSK_Q(fskModule_Q),
	.symDone(fskModule_symDone),
	.start(IQSerializer_start)
);


IQSerializer IQSerializer_1(
	.clk(pll_clko),
	.start(IQSerializer_start),
	.I(IQSerializer_I),
	.Q(IQSerializer_Q),
	.serial_N(serial_iq),
	.serial(),
	.serial_clk(serial_clk)
);

endmodule

