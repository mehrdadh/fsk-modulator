`include "bleDefines.v"

module packetGenerator(
	rst_n,
	clk,
	symDone,
	start,
	symVal
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input 	clk;
input	rst_n;
input 	symDone;

//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output reg	symVal;
output reg	start;

//--------------------------------------------------------------------
// Net
//--------------------------------------------------------------------
parameter [0:0] VSS = 1'b0;
parameter [0:0] VCC = 1'b1;
//--------------------------------------------------------------------
// Assignments
//--------------------------------------------------------------------
reg [3:0]				current_state;
reg [3:0]				next_state;
reg [7:0]	symCounter;
parameter [`percision-1:0] maxSize = `percision'd255;
reg 		next_symVal;

//data
wire	data;

//state
parameter [3:0] state_init=4'd0, state_tx=4'd1, state_done=4'd2, state_wait=4'd3;

always @(posedge clk) begin
	if (rst_n == VSS) begin
		current_state	<= state_init;
	end else begin
		current_state	<= next_state;
	end
end

always @(negedge clk) begin
	if (rst_n == VSS) begin
		symVal			<= VSS;
	end else begin
		//this inversion is required
		symVal			<= ~next_symVal;
	end
end

always @(*) begin
	if (rst_n == VSS) begin
		next_state	= state_init;
		start		= VSS;
		next_symVal	= VSS;
	end else begin
		case (current_state)
			state_init: begin
				next_state	= state_tx;
				start		= VCC;
				next_symVal	= data;
			end
			state_tx: begin
				start		= VCC;
				next_symVal	= data;
				
				if (symDone) begin
					if (symCounter < maxSize) begin
						next_state	= state_tx;
					end else begin
						next_state	= state_wait;
					end
				end else begin
					next_state	= state_tx;
				end
			end
			state_wait: begin
				start		= VCC;
				next_state	= state_done;
				next_symVal	= next_symVal;
			end
			state_done: begin
				start		= VSS;
				next_state	= state_done;
				next_symVal	= next_symVal;
			end
			default: begin
				start		= VSS;
				next_state	= state_init;
				next_symVal	= next_symVal;
			end
		endcase
	end
end

//counter
always @(posedge clk) begin
	if (rst_n == VSS) begin
		symCounter	<= 8'd0;
	end else begin
		if (symDone) begin
			if (current_state == state_tx) begin
				symCounter	<= symCounter + 8'd1;
			end else begin
				symCounter	<= 8'd0;
			end
		end else begin
			symCounter	<= symCounter;
		end
	end
end

ble_packet ble_packet_0(
	.addr(symCounter),
	.data(data)
);


//always @(*) begin
//case(addr

//data[0] = 1'b0;
//data[1] = 1'b1;
//data[2] = 1'b0;
//data[3] = 1'b1;
//data[4] = 1'b0;
//data[5] = 1'b1;
//data[6] = 1'b0;
//data[7] = 1'b1;
//data[8] = 1'b0;
//data[9] = 1'b1;
//data[10] = 1'b1;
//data[11] = 1'b0;
//data[12] = 1'b1;
//data[13] = 1'b0;
//data[14] = 1'b1;
//data[15] = 1'b1;
//data[16] = 1'b0;
//data[17] = 1'b1;
//data[18] = 1'b1;
//data[19] = 1'b1;
//data[20] = 1'b1;
//data[21] = 1'b1;
//data[22] = 1'b0;
//data[23] = 1'b1;
//data[24] = 1'b1;
//data[25] = 1'b0;
//data[26] = 1'b0;
//data[27] = 1'b1;
//data[28] = 1'b0;
//data[29] = 1'b0;
//data[30] = 1'b0;
//data[31] = 1'b1;
//data[32] = 1'b0;
//data[33] = 1'b1;
//data[34] = 1'b1;
//data[35] = 1'b1;
//data[36] = 1'b0;
//data[37] = 1'b0;
//data[38] = 1'b0;
//data[39] = 1'b1;
//data[40] = 1'b0;
//data[41] = 1'b1;
//data[42] = 1'b1;
//data[43] = 1'b0;
//data[44] = 1'b0;
//data[45] = 1'b0;
//data[46] = 1'b1;
//data[47] = 1'b0;
//data[48] = 1'b0;
//data[49] = 1'b1;
//data[50] = 1'b1;
//data[51] = 1'b0;
//data[52] = 1'b1;
//data[53] = 1'b1;
//data[54] = 1'b0;
//data[55] = 1'b0;
//data[56] = 1'b0;
//data[57] = 1'b0;
//data[58] = 1'b0;
//data[59] = 1'b1;
//data[60] = 1'b1;
//data[61] = 1'b0;
//data[62] = 1'b1;
//data[63] = 1'b0;
//data[64] = 1'b0;
//data[65] = 1'b0;
//data[66] = 1'b1;
//data[67] = 1'b1;
//data[68] = 1'b1;
//data[69] = 1'b0;
//data[70] = 1'b1;
//data[71] = 1'b1;
//data[72] = 1'b0;
//data[73] = 1'b1;
//data[74] = 1'b0;
//data[75] = 1'b0;
//data[76] = 1'b0;
//data[77] = 1'b1;
//data[78] = 1'b1;
//data[79] = 1'b1;
//data[80] = 1'b1;
//data[81] = 1'b1;
//data[82] = 1'b0;
//data[83] = 1'b1;
//data[84] = 1'b0;
//data[85] = 1'b0;
//data[86] = 1'b0;
//data[87] = 1'b1;
//data[88] = 1'b0;
//data[89] = 1'b1;
//data[90] = 1'b1;
//data[91] = 1'b1;
//data[92] = 1'b1;
//data[93] = 1'b0;
//data[94] = 1'b0;
//data[95] = 1'b0;
//data[96] = 1'b1;
//data[97] = 1'b1;
//data[98] = 1'b0;
//data[99] = 1'b0;
//data[100] = 1'b0;
//data[101] = 1'b1;
//data[102] = 1'b0;
//data[103] = 1'b1;
//data[104] = 1'b1;
//data[105] = 1'b0;
//data[106] = 1'b1;
//data[107] = 1'b1;
//data[108] = 1'b0;
//data[109] = 1'b1;
//data[110] = 1'b0;
//data[111] = 1'b1;
//data[112] = 1'b1;
//data[113] = 1'b1;
//data[114] = 1'b0;
//data[115] = 1'b0;
//data[116] = 1'b0;
//data[117] = 1'b0;
//data[118] = 1'b1;
//data[119] = 1'b0;
//data[120] = 1'b1;
//data[121] = 1'b0;
//data[122] = 1'b0;
//data[123] = 1'b0;
//data[124] = 1'b0;
//data[125] = 1'b1;
//data[126] = 1'b1;
//data[127] = 1'b0;
//data[128] = 1'b1;
//data[129] = 1'b0;
//data[130] = 1'b1;
//data[131] = 1'b1;
//data[132] = 1'b0;
//data[133] = 1'b0;
//data[134] = 1'b1;
//data[135] = 1'b0;
//data[136] = 1'b0;
//data[137] = 1'b1;
//data[138] = 1'b1;
//data[139] = 1'b1;
//data[140] = 1'b0;
//data[141] = 1'b0;
//data[142] = 1'b1;
//data[143] = 1'b1;
//data[144] = 1'b1;
//data[145] = 1'b1;
//data[146] = 1'b0;
//data[147] = 1'b0;
//data[148] = 1'b0;
//data[149] = 1'b1;
//data[150] = 1'b1;
//data[151] = 1'b0;
//data[152] = 1'b1;
//data[153] = 1'b1;
//data[154] = 1'b0;
//data[155] = 1'b0;
//data[156] = 1'b1;
//data[157] = 1'b1;
//data[158] = 1'b1;
//data[159] = 1'b1;
//data[160] = 1'b0;
//data[161] = 1'b0;
//data[162] = 1'b1;
//data[163] = 1'b0;
//data[164] = 1'b0;
//data[165] = 1'b1;
//data[166] = 1'b1;
//data[167] = 1'b0;
//data[168] = 1'b1;
//data[169] = 1'b1;
//data[170] = 1'b0;
//data[171] = 1'b1;
//data[172] = 1'b0;
//data[173] = 1'b1;
//data[174] = 1'b0;
//data[175] = 1'b0;
//data[176] = 1'b0;
//data[177] = 1'b0;
//data[178] = 1'b0;
//data[179] = 1'b1;
//data[180] = 1'b1;
//data[181] = 1'b1;
//data[182] = 1'b1;
//data[183] = 1'b1;
//data[184] = 1'b1;
//data[185] = 1'b0;
//data[186] = 1'b0;
//data[187] = 1'b1;
//data[188] = 1'b0;
//data[189] = 1'b0;
//data[190] = 1'b1;
//data[191] = 1'b0;
//data[192] = 1'b1;
//data[193] = 1'b1;
//data[194] = 1'b0;
//data[195] = 1'b0;
//data[196] = 1'b0;
//data[197] = 1'b0;
//data[198] = 1'b0;
//data[199] = 1'b1;
//data[200] = 1'b0;
//data[201] = 1'b0;
//data[202] = 1'b1;
//data[203] = 1'b1;
//data[204] = 1'b1;
//data[205] = 1'b0;
//data[206] = 1'b0;
//data[207] = 1'b1;
//data[208] = 1'b0;
//data[209] = 1'b0;
//data[210] = 1'b0;
//data[211] = 1'b1;
//data[212] = 1'b0;
//data[213] = 1'b1;
//data[214] = 1'b0;
//data[215] = 1'b1;
//data[216] = 1'b0;
//data[217] = 1'b1;
//data[218] = 1'b0;
//data[219] = 1'b0;
//data[220] = 1'b0;
//data[221] = 1'b1;
//data[222] = 1'b1;
//data[223] = 1'b1;
//data[224] = 1'b1;
//data[225] = 1'b0;
//data[226] = 1'b1;
//data[227] = 1'b1;
//data[228] = 1'b1;
//data[229] = 1'b1;
//data[230] = 1'b0;
//data[231] = 1'b1;
//data[232] = 1'b0;
//data[233] = 1'b1;
//data[234] = 1'b0;
//data[235] = 1'b1;
//data[236] = 1'b1;
//data[237] = 1'b1;
//data[238] = 1'b0;
//data[239] = 1'b0;
//data[240] = 1'b0;
//data[241] = 1'b1;
//data[242] = 1'b1;
//data[243] = 1'b0;
//data[244] = 1'b0;
//data[245] = 1'b0;
//data[246] = 1'b1;
//data[247] = 1'b0;
//data[248] = 1'b1;
//data[249] = 1'b0;
//data[250] = 1'b1;
//data[251] = 1'b0;
//data[252] = 1'b1;
//data[253] = 1'b1;
//data[254] = 1'b0;
//data[255] = 1'b1;

//end
endmodule