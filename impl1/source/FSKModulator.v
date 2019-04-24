
`include "radioDefines.v"
`include "bleDefines.v"

module FSKModulator(
	clk,
	rst,
	enable,
	symVal,
	FSK_I,
	FSK_Q,
	symDone,
	start
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input	clk;
input	rst;
input	enable;
input	symVal;

//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output reg [`SinSize-1:0]	FSK_I;
output reg [`SinSize-1:0]	FSK_Q;
output reg 					symDone;
output reg					start;
//--------------------------------------------------------------------
// Net
//--------------------------------------------------------------------
reg		[`phaseRes-1:0]		cos_phase;
reg		[`phaseRes-1:0]		sin_phase;

//reg		[`phaseRes-1:0]		phase;
reg							lastSym;
reg							firstFlag;

reg		[`percision-1:0]	sampleCount;

wire 	[`SinSize-1:0]		sine;
wire 	[`SinSize-1:0]		cosine;

//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
parameter [0:0]	VSS = 1'b0;
parameter [0:0]	VCC = 1'b1;

parameter [9:0] symbol_size = 10'd4;

//assign FSK_Q = cosine;
//assign FSK_I = sine;
//--------------------------------------------------------------------
// States
//--------------------------------------------------------------------
always @(negedge clk) begin
	if (enable == VSS) begin
		FSK_I	<= `SinSize'd0;
		FSK_Q	<= `SinSize'd0;
	end else begin
		FSK_I	<= sine;
		FSK_Q	<= cosine;
	end
end


always @(posedge clk) begin
	if (rst == VSS) begin
		sin_phase	<= `phaseRes'd0;
		cos_phase	<= `phaseRes'd0;
		lastSym		<= VSS;
		firstFlag	<= VCC;
		start		<= VSS;
	end else begin
		
		if (firstFlag == VCC) begin
			cos_phase	<= `phaseRes'd0;
			if (symVal == VSS) begin
				sin_phase	<= `phaseRes'd4;
			end else begin
				sin_phase	<= `phaseRes'd0;
			end
			firstFlag	<= VSS;
			
			start		<= VCC;
		end else begin
			start		<= VCC;
			
			cos_phase	<= cos_phase + `phaseRes'd1;
			
			if (sampleCount == `percision'd0) begin
				if (lastSym == symVal) begin
					sin_phase	<= sin_phase + `phaseRes'd1;
				end else begin
					sin_phase	<= sin_phase + `phaseRes'd5;
					//if (symVal == VSS) begin
						//sin_phase	<= `phaseRes'd4;
					//end else begin
						//sin_phase	<= `phaseRes'd0;
					//end
				end
			end else begin
				sin_phase	<= sin_phase + `phaseRes'd1;
			end
		end
					
		if (sampleCount == `percision'd2)
			lastSym	<= symVal;
		else
			lastSym	<= lastSym;
			
	end
end

always @(negedge clk) begin
	if (rst == VSS) begin
		sampleCount	<= `percision'd4095;
		symDone		<= VSS;
	end else begin
		if ((sampleCount +`percision'd1) == symbol_size) begin
			sampleCount	<= `percision'd0;
		end else begin
			sampleCount	<= sampleCount + `percision'd1;
		end
		
		if ((sampleCount +`percision'd2) == symbol_size) begin
			symDone		<= VCC;
		end else begin
			symDone		<= VSS;
		end
		
	end
end


//--------------------------------------------------------------------
// Components
//--------------------------------------------------------------------
//sin_table sin_instance(
	//.Clock(clk), 
	//.ClkEn(VCC), 
	//.Reset(~rst), 
	//.Theta(phase), 
	//.Sine(sine),
	//.Cosine(cosine)
//);

//cos_table cos_instance(
	//.Clock(clk),
	//.ClkEn(VCC),
	//.Reset(~rst),
	//.Theta(cos_phase),
	//.Cosine(cosine)
//);

sinModule sin_instance(
	.phase(sin_phase),
	.sinOut(sine)
);
cosModule cos_instance(
	.phase(cos_phase),
	.cosOut(cosine)
);



endmodule


