//-----------------------------------------------------------------------------
//
// Title       : topModule_tb
// Design      : simulation
// Author      : Aldec, Inc
// Company     : Aldec, Inc
//
//-----------------------------------------------------------------------------
//
// File        : topModule_tb.v
// Generated   : Wed Apr 17 17:23:22 2019
// From        : c:\work\tinysdr_fpga_ble_tx\simulation\src\TestBench\topModule_tb_settings.txt
// By          : tb_verilog.pl ver. ver 1.2s
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps
module topModule_tb;

GSR GSR_INST (.GSR(top_rst));
PUR PUR_INST (.PUR(1'b1));

parameter SYSCLK_PERIOD = 250000;

//Internal signals declarations:
reg clk;
reg rst;
reg spi_mosi;
wire spi_miso;
reg spi_sclk;
reg spi_cs;
wire osc_en;
wire serial_iq;
wire serial_clk;
wire LED;
wire clk_test;
reg sim_clk;

integer fsk_file_I;
integer fsk_file_Q;

always @(clk)
    #(SYSCLK_PERIOD / 2.0) clk <= !clk;
	
// Unit Under Test port map
	topModule UUT (
		.top_clk(clk),
		.top_rst(rst),
		.spi_mosi(spi_mosi),
		.spi_miso(spi_miso),
		.spi_sclk(spi_sclk),
		.spi_cs(spi_cs),
		.osc_en(osc_en),
		.serial_iq(serial_iq),
		.serial_clk(serial_clk),
		.LED(LED),
		.clk_test(clk_test),
		.sim_clk(clk));

initial begin
	$monitor($realtime,,"ps %h %h %h %h %h %h %h %h %h %h %h %h ",clk,rst,spi_mosi,spi_miso,spi_sclk,spi_cs,osc_en,serial_iq,serial_clk,LED,clk_test,sim_clk);
	
	fsk_file_I = $fopen("fsk_file_I.txt", "w");
	fsk_file_Q = $fopen("fsk_file_Q.txt", "w");
	
	clk = 1'b0;
	rst = 1'b0;
	#(10 * SYSCLK_PERIOD)
	rst = 1'b1;
end


integer ii;
integer loop;
initial begin
	wait(rst);
	loop = 1;
	ii = 0;
		
	while(loop) begin
		@(posedge clk) begin
			$fwrite(fsk_file_I, "%d\n", $signed(UUT.fskModule_1.FSK_I));
        	$fwrite(fsk_file_Q, "%d\n", $signed(UUT.fskModule_1.FSK_Q));
			ii = ii + 1;
			if (ii==(240*4 + 10))
				loop = 0;
		end	
	end
	$finish;
end
endmodule
