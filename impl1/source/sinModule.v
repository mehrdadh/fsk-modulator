`include "bleDefines.v"

module sinModule(
	phase,
	sinOut
);

input		[`phaseRes-1: 0] 	phase;
output reg	[`SinSize-1: 0]		sinOut;

always @(phase) begin
	if (phase == `phaseRes'd0)
		sinOut	= `SinSize'd0;
	else if (phase == `phaseRes'd1)
		sinOut	= `SinSize'd2896;
	else if (phase == `phaseRes'd2)
		sinOut	= `SinSize'd4095;
	else if (phase == `phaseRes'd3)
		sinOut	= `SinSize'd2896;
	else if (phase == `phaseRes'd4)
		sinOut	= `SinSize'd0;
	else if (phase == `phaseRes'd5)
		sinOut	= `SinSize'b1010010110000;
	else if (phase == `phaseRes'd6)
		sinOut	= `SinSize'b1000000000001;
	else if (phase == `phaseRes'd7)
		sinOut	= `SinSize'b1010010110000;
	else
		sinOut	= `SinSize'd0;
end

endmodule