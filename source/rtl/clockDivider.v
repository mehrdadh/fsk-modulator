module clockDivider(
input       clk,
input	    pll_lock,
output reg  clkOut,
output reg  clkLock
);

parameter [7:0] Freq = 4;
reg [7:0] maxWait;

always @(pll_lock) begin
    maxWait = (64/Freq)/2;
end

reg [7:0] lockCounter;
reg [7:0] counter;

always @(posedge clk) begin
    if (pll_lock == 1'b0) begin
        counter     <= 8'd0;
        clkOut      <= 1'b0;
        lockCounter <= 8'd0;
    end else begin
        counter     <= counter + 8'd1;
        if (counter == (maxWait-1)) begin
            clkOut  <= ~clkOut;
            counter <= 8'd0;
        end else begin
            clkOut  <= clkOut;
        end

        lockCounter <= lockCounter + 8'd1;
    end
end

always @(*) begin
	if (pll_lock == 1'b0) begin
		clkLock     <= 1'b0;
	end else begin
		if (lockCounter > 4*2*2*maxWait) begin
			clkLock <= 1'b1;
		end else begin
			clkLock <= clkLock;
		end
	end
end

endmodule