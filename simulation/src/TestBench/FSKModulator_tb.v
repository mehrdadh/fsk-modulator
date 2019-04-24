//-----------------------------------------------------------------------------
//
// Title       : FSKModulator_tb
// Design      : ble_tx_sim
// Author      : Aldec, Inc
// Company     : Aldec, Inc
//
//-----------------------------------------------------------------------------
//
// File        : FSKModulator_tb.v
// Generated   : Mon Apr 15 18:14:18 2019
// From        : c:\work\tinysdr_fpga_ble_tx\ble_tx_sim\src\TestBench\FSKModulator_tb_settings.txt
// By          : tb_verilog.pl ver. ver 1.2s
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps
module FSKModulator_tb;
	
GSR GSR_INST (.GSR(top_rst));
PUR PUR_INST (.PUR(1'b1));

parameter SYSCLK_PERIOD = 250000;

//Parameters declaration: 
defparam UUT.VSS = 1'b0;
parameter VSS = 1'b0;
defparam UUT.VCC = 1'b1;
parameter VCC = 1'b1;

//Internal signals declarations:
reg clk;
reg rst;
reg symVal;
wire signed [12:0]FSK_I;
wire signed [12:0]FSK_Q;
wire symDone;

integer fsk_file_I;
integer fsk_file_Q;



always @(clk)
    #(SYSCLK_PERIOD / 2.0) clk <= !clk;

// Unit Under Test port map
	FSKModulator UUT (
		.clk(clk),
		.rst(rst),
		.symVal(symVal),
		.FSK_I(FSK_I),
		.FSK_Q(FSK_Q),
		.symDone(symDone)
	);

initial	begin
	$monitor($realtime,,"ps %h %h %h %h %h ",clk,rst,symVal,FSK_I,FSK_Q);
	
	fsk_file_I = $fopen("fsk_file_I.txt", "w");
	fsk_file_Q = $fopen("fsk_file_Q.txt", "w");
	
	clk = 1'b0;
	rst = 1'b0;
	symVal = 1'd0;
	#(10 * SYSCLK_PERIOD)
	rst = 1'b1;			 
	symVal = 1'd0;
	#(4 * SYSCLK_PERIOD)
	symVal = 1'd0;
	#(4 * SYSCLK_PERIOD)
	symVal = 1'd1;
	#(4 * SYSCLK_PERIOD)
	symVal = 1'd1;
	#(4 * SYSCLK_PERIOD)
	
	symVal = 1'd0;
	#(4 * SYSCLK_PERIOD)
	symVal = 1'd0;
	#(4 * SYSCLK_PERIOD)
	symVal = 1'd1;
	#(4 * SYSCLK_PERIOD)
	symVal = 1'd1;
	#(4 * SYSCLK_PERIOD)
	
	symVal = 1'd0;
	#(4 * SYSCLK_PERIOD)
	symVal = 1'd0;
	#(4 * SYSCLK_PERIOD)
	symVal = 1'd1;
	#(4 * SYSCLK_PERIOD)
	symVal = 1'd1;
	#(4 * SYSCLK_PERIOD)
	
	symVal = 1'd0;
	#(4 * SYSCLK_PERIOD)
	symVal = 1'd0;
	#(4 * SYSCLK_PERIOD)
	symVal = 1'd1;
	#(4 * SYSCLK_PERIOD)
	symVal = 1'd1;
	#(4 * SYSCLK_PERIOD)
	
	symVal = 1'd0;
	#(4 * SYSCLK_PERIOD)
	symVal = 1'd0;
	#(4 * SYSCLK_PERIOD)
	symVal = 1'd1;
	#(4 * SYSCLK_PERIOD)
	symVal = 1'd1;
	#(4 * SYSCLK_PERIOD)
	
	symVal = 1'd0;
	#(4 * SYSCLK_PERIOD)
	symVal = 1'd0;
	#(4 * SYSCLK_PERIOD)
	symVal = 1'd1;
	#(4 * SYSCLK_PERIOD)
	symVal = 1'd1;
	#(4 * SYSCLK_PERIOD)
	
	symVal = 1'd0;
	#(4 * SYSCLK_PERIOD)
	symVal = 1'd0;
	#(4 * SYSCLK_PERIOD)
	symVal = 1'd1;
	#(4 * SYSCLK_PERIOD)
	symVal = 1'd1;
	//#(4 * SYSCLK_PERIOD)
end

integer ii;
integer loop;
initial begin
	wait(rst);
	loop = 1;
	ii = 0;
	while(loop) begin
		@(posedge clk) begin
			$fwrite(fsk_file_I, "%d\n", $signed(FSK_I));
        	$fwrite(fsk_file_Q, "%d\n", $signed(FSK_Q));
			ii = ii + 1;
			if (ii==4*40)
				loop = 0;
		end	
	end
	$finish;
end

endmodule
