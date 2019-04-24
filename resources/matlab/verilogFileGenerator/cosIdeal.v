`include	"LoRaTXDefines.v"
`include	"RadioDefines.v"

module cosIdeal(angle, cosOut);

input		[`PRECISION-1:0]	angle;
output reg	[`SinSize-1:0]		cosOut;

reg [`PRECISION-1:0]	index;
always @(*) begin
	index = angle >> (25-`Sine_SR_Bits);
end

always @(index) begin
	if (index < 4)
		cosOut	=	`SinSize'b0111111111111;
	else if (index < 8)
		cosOut	=	`SinSize'b1000000000001;
	else
		cosOut	=	`SinSize'b0111111111111;
end
endmodule
