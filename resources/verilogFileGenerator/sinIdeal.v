`include	"LoRaTXDefines.v"
`include	"RadioDefines.v"

module sinIdeal(angle, sinOut);

input		[`PRECISION-1:0]	angle;
output reg	[`SinSize-1:0]		sinOut;

reg [`PRECISION-1:0]	index;
always @(*) begin
	index = angle >> (25-`Sine_SR_Bits);
end

always @(index) begin
	if (index < 2)
		sinOut	=	`SinSize'b1000000000001;
	else if (index < 6)
		sinOut	=	`SinSize'b0111111111111;
	else
		sinOut	=	`SinSize'b1000000000001;
end
endmodule
