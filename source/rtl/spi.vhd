LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity spi is
	port(
	/*SPI slave interface*/
sclk:	IN	STD_LOGIC;
cs_n:	IN	STD_LOGIC;
mosi:	IN	STD_LOGIC;
miso:	OUT	STD_LOGIC;
	/*User interface*/
rst_n:			IN	STD_LOGIC;
rx_req:			IN	STD_LOGIC;
st_load_en:		IN	STD_LOGIC;
st_load_trdy:	IN	STD_LOGIC;
st_load_rrdy:	IN	STD_LOGIC;
tx_load_en:		IN	STD_LOGIC;
tx_load_data:	IN	STD_LOGIC_VECTOR(7 DOWNTO 0); 
trdy:			OUT	STD_LOGIC;
rrdy:			OUT STD_LOGIC;
rx_data:		OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
busy:			OUT	STD_LOGIC;
debug0:			OUT	STD_LOGIC;
debug1:			OUT	STD_LOGIC
);
end spi;

architecture BEHAVIOUR of spi is

component spi_slave IS
  GENERIC(
    cpol    : STD_LOGIC := '0';  --spi clock polarity mode
    cpha    : STD_LOGIC := '0';  --spi clock phase mode
    d_width : INTEGER := 8);     --data width in bits
  PORT(
    sclk         : IN     STD_LOGIC;  --spi clk from master
    reset_n      : IN     STD_LOGIC;  --active low reset
    ss_n         : IN     STD_LOGIC;  --active low slave select
    mosi         : IN     STD_LOGIC;  --master out, slave in
    rx_req       : IN     STD_LOGIC;  --'1' while busy = '0' moves data to the rx_data output
    st_load_en   : IN     STD_LOGIC;  --asynchronous load enable
    st_load_trdy : IN     STD_LOGIC;  --asynchronous trdy load input
    st_load_rrdy : IN     STD_LOGIC;  --asynchronous rrdy load input
    st_load_roe  : IN     STD_LOGIC;  --asynchronous roe load input
    tx_load_en   : IN     STD_LOGIC;  --asynchronous transmit buffer load enable
    tx_load_data : IN     STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --asynchronous tx data to load
    trdy         : BUFFER STD_LOGIC;  --transmit ready bit
    rrdy         : BUFFER STD_LOGIC;  --receive ready bit
    roe          : BUFFER STD_LOGIC;  --receive overrun error bit
    rx_data      : OUT    STD_LOGIC_VECTOR(d_width-1 DOWNTO 0) := (OTHERS => '0');  --receive register output to logic
    busy         : OUT    STD_LOGIC;  --busy signal to logic ('1' during transaction)
    miso         : OUT    STD_LOGIC;  --master in, slave out
	debug0		 : OUT	  STD_LOGIC;
	debug1		 : OUT	  STD_LOGIC
	);
END component;

signal st_load_roe	:std_logic;
signal roe			:std_logic;

begin

PROCESS (rst_n) begin
	if (rst_n = '0') then
		st_load_roe	<= '0';
		roe			<= '0';
	end if;
END PROCESS;


spi_slave_0: spi_slave
generic map(
	cpol	=>	'0',
	cpha	=>	'0',
	d_width	=>	8
)
port map(
	sclk			=> sclk,
    reset_n			=> rst_n,
    ss_n			=> cs_n,
    mosi			=> mosi,
    rx_req			=> rx_req,
    st_load_en		=> st_load_en,
    st_load_trdy 	=> st_load_trdy,
    st_load_rrdy	=> st_load_rrdy,
    st_load_roe		=> st_load_roe,
    tx_load_en		=> tx_load_en,
    tx_load_data	=> tx_load_data,
    trdy			=> trdy,
    rrdy			=> rrdy,
    roe				=> roe,
    rx_data			=> rx_data,
    busy			=> busy,
    miso			=> miso,
	debug0			=> debug0,
	debug1			=> debug1
	
);
end BEHAVIOUR;