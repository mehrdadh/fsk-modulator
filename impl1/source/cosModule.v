`include "bleDefines.v"

module cosModule(
	phase,
	cosOut
);

input		[`phaseRes-1: 0]	phase;
output reg	[`SinSize-1: 0]		cosOut;

always @(phase) begin
	if (phase == `phaseRes'd0)
		cosOut	= `SinSize'd4095;
	else if (phase == `phaseRes'd1)
		cosOut	= `SinSize'd2896;
	else if (phase == `phaseRes'd2)
		cosOut	= `SinSize'd0;
	else if (phase == `phaseRes'd3)
		cosOut	= `SinSize'b1010010110000;
	else if (phase == `phaseRes'd4)
		cosOut	= `SinSize'b1000000000001;
	else if (phase == `phaseRes'd5)
		cosOut	= `SinSize'b1010010110000;
	else if (phase == `phaseRes'd6)
		cosOut	= `SinSize'd0;
	else if (phase == `phaseRes'd7)
		cosOut	= `SinSize'd2896;
	else
		cosOut	= `SinSize'd0;
end

endmodule