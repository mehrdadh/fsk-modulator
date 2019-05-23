`include "bleDefines.v"

module packetReader(
input			ready,
input			clk,
/*	Memory interface	*/
input		[`BLE_Mem_Data-1:0]	mem_q,
input		[`BLE_Mem_Addr-1:0]	mem_size,
output reg	[`BLE_Mem_Addr-1:0]	mem_addr,
/*	Modulator interface	*/
input			symDone,
output reg		start,
output reg		symVal,
output reg		packetDone,
output reg		debug0,
output reg		debug1
);

//--------------------------------------------------------------------
// Net
//--------------------------------------------------------------------
parameter [0:0] VSS = 1'b0;
parameter [0:0] VCC = 1'b1;

reg		[`BLE_Mem_Data-1:0] ble_oct;
reg							ble_oct_rdy;
reg							ble_oct_req;
reg							ble_mod_done;
//--------------------------------------------------------------------
// Assignments
//--------------------------------------------------------------------
//parameter [7:0] maxSize = 8'd25;
//reg 		next_symVal;

/*
####################################################################################################
Memory reading state machine
####################################################################################################
*/
reg [3:0]	mem_current_state;
reg [3:0]	mem_next_state;
parameter [3:0] mem_state_init=4'd0, mem_state_addr=4'd1, mem_state_r=4'd2, mem_state_wait=4'd3,
mem_state_done=4'd4;

always @(posedge clk, negedge ready) begin
	if (ready == VSS) begin
		mem_current_state	<= mem_state_init;
	end else begin
		mem_current_state	<= mem_next_state;
	end
end

always @(*) begin
	if (ready == VSS) begin
		mem_next_state	= mem_state_init;
	end else begin
		case (mem_current_state)
			mem_state_init: begin
				mem_next_state	= mem_state_r;
			end
			mem_state_addr: begin
				mem_next_state	= mem_state_r;
			end
			mem_state_r: begin
				mem_next_state	= mem_state_wait;
			end
			mem_state_wait: begin
				if (ble_oct_req == VCC) begin
					if (mem_addr < mem_size) begin
						mem_next_state	= mem_state_addr;
					end else begin
						mem_next_state	= mem_state_done;
					end
				end else begin
					mem_next_state	= mem_state_wait;
				end
			end
			mem_state_done: begin
				mem_next_state = mem_state_done;
			end
			default: begin
				mem_next_state	= mem_state_init;
			end
		endcase
	end
end

always @(negedge clk, negedge ready) begin
	if (ready == VSS) begin
		mem_addr		<= `BLE_Mem_Addr'd0;
		ble_oct_rdy		<= VSS;
		ble_mod_done	<= VSS;
		packetDone		<= VSS;
	end else begin
		case (mem_current_state)
			mem_state_init: begin
				mem_addr		<= `BLE_Mem_Addr'd0;
				ble_oct_rdy		<= VSS;
				ble_mod_done	<= VSS;
				
				packetDone		<= VSS;
				
				debug0		<= VSS;
			end
			mem_state_addr: begin
				mem_addr	<= mem_addr + `BLE_Mem_Addr'd1;
				ble_oct_rdy	<= VSS;
				debug0		<= VSS;
			end
			mem_state_r: begin
				mem_addr	<= mem_addr;
				ble_oct_rdy	<= VSS;
				debug0		<= VCC;
			end
			mem_state_wait: begin
				mem_addr	<= mem_addr;
				ble_oct_rdy	<= VCC;
				debug0		<= VSS;
			end
			mem_state_done: begin
				mem_addr	<= mem_addr;
				ble_oct_rdy	<= VSS;
				ble_mod_done	<= VCC;
				
				packetDone		<= VCC;
				
				debug0		<= VSS;
			end
			default: begin
				mem_addr	<= `BLE_Mem_Addr'd0;
				ble_oct_rdy	<= VSS;
			end
		endcase
	end
end

/*
####################################################################################################
Modulator state machine
####################################################################################################
*/
reg	[3:0]	mod_current_state;
reg	[3:0]	mod_next_state;
reg [2:0]	symCounter;
reg			countRst;
parameter [3:0] mod_state_init=4'd0, mod_state_wait=4'd1, mod_state_fetch=4'd2,
mod_state_tx=4'd3, mod_state_done=4'd4, mod_state_req=4'd5;

always @(posedge clk, negedge ready) begin
	if (ready == VSS) begin
		mod_current_state	<= mod_state_init;
	end else begin
		mod_current_state	<= mod_next_state;
	end
end

always @(*) begin
	if (ready == VSS) begin
		mod_next_state	= mod_state_init;
	end else if (ble_mod_done == VCC) begin
		mod_next_state	= mod_state_done;
	end else begin
		case (mod_current_state)
			mod_state_init: begin
				mod_next_state	= mod_state_wait;
			end
			mod_state_wait: begin
				if (ble_oct_rdy == VCC) begin
					mod_next_state	= mod_state_req;
				end else begin
					mod_next_state	= mod_state_wait;
				end
			end
			mod_state_fetch: begin
				if (symDone == VCC) begin
					mod_next_state	= mod_state_req;
				end else begin
					mod_next_state	= mod_state_fetch;
				end
				
			end
			mod_state_req: begin
				mod_next_state	= mod_state_tx;
			end
			mod_state_tx: begin
				if (symCounter == 3'd0) begin
					mod_next_state	= mod_state_fetch;
				end else begin
					mod_next_state	= mod_state_tx;
				end
			end
			default: begin
				mod_next_state	= mod_state_init;
			end
		endcase
	end
end

always @(negedge clk, negedge ready) begin
	if (ready == VSS) begin
		symVal		<= VSS;
		ble_oct		<= 8'd0;
		ble_oct_req	<= VCC;
		start		<= VSS;
		countRst	<= VCC;
		
		
		debug1		<= VSS;
	end else begin
		/* this inversion is required */	
		case (mod_current_state)
			mod_state_init: begin
				ble_oct		<= ble_oct;
				ble_oct_req	<= VSS;
				symVal		<= symVal;
				start		<= VSS;
				
				
				debug1		<= VSS;
			end
			mod_state_wait: begin
				ble_oct		<= mem_q;
				ble_oct_req	<= VSS;
				symVal		<= symVal;
				start		<= VSS;
				
				
				debug1		<= VSS;
			end
			mod_state_fetch: begin
				ble_oct		<= ble_oct;
				ble_oct_req	<= VSS;
				symVal		<= ble_oct[3'd7 - symCounter];
				start		<= VCC;
				
				if (symDone == VCC) begin
					countRst	<= VSS;
				end else begin
					countRst	<= VCC;
				end
				
				debug1		<= VCC;
			end
			mod_state_req: begin
				ble_oct		<= mem_q;
				ble_oct_req	<= VCC;
				symVal		<= mem_q[3'd7 - symCounter];
				start		<= VCC;
				
				debug1		<= VSS;
			end
			mod_state_tx: begin
				ble_oct		<= ble_oct;
				ble_oct_req	<= VSS;
				countRst	<= VCC;
				start		<= VCC;
				
				debug1		<= VSS;
				
				//change to negative
				symVal		<= ble_oct[3'd7 - symCounter];
				
			end
			mod_state_done: begin
				start		<= VSS;
			end
			default: begin
				ble_oct		<= 8'd0;
			end
		endcase
	end
end


always @(negedge ready, posedge symDone) begin
	if (ready == VSS) begin
		symCounter	<= 3'd7;
	end else if (countRst == VSS) begin
		symCounter	<= 3'd7;
	end else begin
		//if (symDone == VCC) begin
			if ((mod_current_state == mod_state_tx) || (mod_current_state == mod_state_fetch)
				|| (mod_current_state == mod_state_req)) begin
				symCounter	<= symCounter - 3'd1;
			//end else if (mod_current_state == mod_state_wait) begin
				//symCounter	<= 3'd7;
			end
		//end
	end
end

/*
always @(negedge ready, posedge symDone) begin
	if (ready == VSS) begin
		symCounter	<= 3'd7;
	end else begin
		//if (symDone == VCC) begin
			if (mod_current_state == mod_state_tx) begin
				symCounter	<= symCounter - 3'd1;
			//end else if (mod_current_state == mod_state_wait) begin
				//symCounter	<= 3'd7;
			end
		//end
	end
end
*/

endmodule