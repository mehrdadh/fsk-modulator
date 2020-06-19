`include "spi_h.v"

module spi_ctrl(
/*	User Interface	*/
input						clk,
input						rst,
output reg					rx_ready,
/*	SPI CTRL interface	*/
output reg					spi_rst,
output reg					spi_rx_req,
output reg					spi_st_load_en,
output reg					spi_st_load_trdy,
output reg					spi_st_load_rrdy,
output reg					spi_st_load_roe,
output reg					spi_tx_load_en,
output reg	[`SPI_W-1:0]	spi_tx_data,
input 						spi_trdy,
input 						spi_rrdy,
input 		[`SPI_W-1:0]	spi_rx_data,
input						spi_busy
);

//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
parameter [0:0] VSS = 1'b0;
parameter [0:0] VCC = 1'b1;


/*	SPI state machine	*/
reg [3:0]	spi_current_state;
reg [3:0]	spi_next_state;
parameter [3:0] spi_state_rst0=4'd0, spi_state_rst1=4'd1, spi_state_rx_wait=4'd2, spi_state_rx_load0=4'd3, spi_state_cmd=4'd4,
spi_state_tx_load=4'd5, spi_state_rst2=4'd6, spi_state_init_wait=4'd7, spi_state_rst3=4'd8, spi_state_rx_load1=4'd9,
spi_state_rrdy_low_wait=4'd10;

always @(posedge clk, negedge rst) begin
	if (rst == VSS)
		spi_current_state	<= spi_state_rst0;
	else
		spi_current_state	<= spi_next_state;
end

always @(*) begin
	if (rst == VSS) begin
		spi_next_state		= spi_state_rst0;
	end else begin
		case (spi_current_state)
			spi_state_rst0: begin
				spi_next_state	= spi_state_rst1;
			end
			spi_state_rst1: begin
				spi_next_state	= spi_state_rst2;
			end
			spi_state_rst2: begin
				spi_next_state	= spi_state_rst3;
			end
			spi_state_rst3: begin
				spi_next_state	= spi_state_init_wait;
			end
			spi_state_init_wait: begin
				if (spi_busy == VCC) begin
					spi_next_state	= spi_state_rrdy_low_wait;
				end else begin
					spi_next_state	= spi_state_init_wait;
				end
			end
			spi_state_rrdy_low_wait: begin
				if (spi_rrdy == VSS) begin
					spi_next_state	= spi_state_rx_wait;
				end else begin
					spi_next_state	= spi_state_rrdy_low_wait;
				end
			end
			spi_state_rx_wait: begin
				if (spi_rrdy == VCC) begin
					spi_next_state	= spi_state_rx_load0;
				end else begin
					spi_next_state	= spi_state_rx_wait;
				end
			end
			spi_state_rx_load0: begin
				if (spi_busy == VCC) begin
					spi_next_state	= spi_state_rx_load0;
				end else begin
					spi_next_state	= spi_state_rx_load1;
				end
			end
			spi_state_rx_load1: begin
				spi_next_state	= spi_state_cmd;
			end
			spi_state_cmd: begin
				spi_next_state		= spi_state_tx_load;
			end
			spi_state_tx_load: begin
				spi_next_state		= spi_state_rst3;
			end
			default: begin
				spi_next_state		= spi_state_rst3;
			end
		endcase
	end
end

always @(negedge clk, negedge rst, negedge spi_busy) begin
	if (rst == VSS) begin
		spi_tx_load_en		<= VSS;
		spi_tx_data			<= `SPI_W'd0;
		spi_rx_req			<= VSS;
		spi_rst				<= VSS;
		
		
		spi_st_load_en		<= VSS;
		spi_st_load_trdy	<= VSS;
		spi_st_load_rrdy	<= VSS;
		spi_st_load_roe		<= VSS;
		rx_ready			<= VSS;
	end else begin
		case (spi_current_state)
			spi_state_rst0: begin		
				spi_st_load_trdy	<= VSS;
				spi_st_load_rrdy	<= VSS;
				spi_st_load_roe		<= VSS;				
				spi_st_load_en	<= VSS;

				spi_rst			<= VSS;
				rx_ready		<= VSS;
			end
			spi_state_rst1: begin			
				spi_st_load_en	<= VSS;
				spi_rst			<= VCC;
				rx_ready		<= VSS;
			end
			spi_state_rst2: begin
				spi_st_load_en	<= VCC;
				spi_rst			<= VCC;
				rx_ready		<= VSS;
			end
			spi_state_rst3: begin
				spi_st_load_en	<= VSS;
				spi_rst			<= VCC;
				spi_tx_load_en 	<= VCC;
				rx_ready		<= VSS;
			end
			spi_state_init_wait: begin
				spi_st_load_en	<= VSS;
				spi_rst			<= VCC;
				spi_tx_load_en 	<= VSS;
				rx_ready		<= VSS;
			end
			spi_state_rrdy_low_wait: begin
				rx_ready		<= VSS;
			end
			spi_state_rx_wait: begin
				rx_ready		<= VSS;
			end
			spi_state_rx_load0: begin
				if (spi_busy == VCC) begin
					spi_rx_req	<= VSS;
				end else begin
					spi_rx_req	<= VCC;
				end
			end
			spi_state_rx_load1: begin
				spi_rx_req	<= VSS;
			end
			spi_state_cmd: begin
				spi_rx_req		<= VSS;
				spi_tx_data 	<= spi_rx_data;
				rx_ready		<= VCC;
			end
			spi_state_tx_load: begin
				rx_ready		<= VSS;
			end
			default: begin
				rx_ready		<= VSS;
			end
		endcase
	end
end



endmodule
