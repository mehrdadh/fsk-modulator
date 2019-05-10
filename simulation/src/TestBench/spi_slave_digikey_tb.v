library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

	-- Add your library and packages declaration here ...

entity spi_slave_digikey_tb is
	-- Generic declarations of the tested unit
		generic(
		cpol : STD_LOGIC := '0';
		cpha : STD_LOGIC := '0';
		d_width : INTEGER := 8 );
end spi_slave_digikey_tb;

architecture TB_ARCHITECTURE of spi_slave_digikey_tb is
	-- Component declaration of the tested unit
	component spi_slave_digikey
		generic(
		cpol : STD_LOGIC := '0';
		cpha : STD_LOGIC := '0';
		d_width : INTEGER := 8 );
	port(
		sclk : in STD_LOGIC;
		ss_n : in STD_LOGIC;
		mosi : in STD_LOGIC;
		rx_req : in STD_LOGIC;
		st_load_en : in STD_LOGIC;
		st_load_trdy : in STD_LOGIC;
		st_load_rrdy : in STD_LOGIC;
		st_load_roe : in STD_LOGIC;
		tx_load_en : in STD_LOGIC;
		tx_load_data : in STD_LOGIC_VECTOR(d_width-1 downto 0);
		trdy : buffer STD_LOGIC;
		rrdy : buffer STD_LOGIC;
		roe : buffer STD_LOGIC;
		rx_data : out STD_LOGIC_VECTOR(d_width-1 downto 0);
		busy : out STD_LOGIC;
		miso : out STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal sclk : STD_LOGIC;
	signal ss_n : STD_LOGIC;
	signal mosi : STD_LOGIC;
	signal rx_req : STD_LOGIC;
	signal st_load_en : STD_LOGIC;
	signal st_load_trdy : STD_LOGIC;
	signal st_load_rrdy : STD_LOGIC;
	signal st_load_roe : STD_LOGIC;
	signal tx_load_en : STD_LOGIC;
	signal tx_load_data : STD_LOGIC_VECTOR(d_width-1 downto 0);
	-- Observed signals - signals mapped to the output ports of tested entity
	signal trdy : STD_LOGIC;
	signal rrdy : STD_LOGIC;
	signal roe : STD_LOGIC;
	signal rx_data : STD_LOGIC_VECTOR(d_width-1 downto 0);
	signal busy : STD_LOGIC;
	signal miso : STD_LOGIC;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : spi_slave_digikey
		generic map (
			cpol => cpol,
			cpha => cpha,
			d_width => d_width
		)

		port map (
			sclk => sclk,
			ss_n => ss_n,
			mosi => mosi,
			rx_req => rx_req,
			st_load_en => st_load_en,
			st_load_trdy => st_load_trdy,
			st_load_rrdy => st_load_rrdy,
			st_load_roe => st_load_roe,
			tx_load_en => tx_load_en,
			tx_load_data => tx_load_data,
			trdy => trdy,
			rrdy => rrdy,
			roe => roe,
			rx_data => rx_data,
			busy => busy,
			miso => miso
		);

	-- Add your stimulus here ...

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_spi_slave_digikey of spi_slave_digikey_tb is
	for TB_ARCHITECTURE
		for UUT : spi_slave_digikey
			use entity work.spi_slave_digikey(logic);
		end for;
	end for;
end TESTBENCH_FOR_spi_slave_digikey;

