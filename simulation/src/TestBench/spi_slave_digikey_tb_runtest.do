SetActiveLib -work
comp -include "c:\work\tinysdr_fpga_ble_tx\impl1\source\spi_slave_digikey.vhd" 
comp -include "$dsn\src\TestBench\spi_slave_digikey_tb.v" 
asim +access +r TESTBENCH_FOR_spi_slave_digikey 
wave 
wave -noreg sclk
wave -noreg ss_n
wave -noreg mosi
wave -noreg rx_req
wave -noreg st_load_en
wave -noreg st_load_trdy
wave -noreg st_load_rrdy
wave -noreg st_load_roe
wave -noreg tx_load_en
wave -noreg tx_load_data
wave -noreg trdy
wave -noreg rrdy
wave -noreg roe
wave -noreg rx_data
wave -noreg busy
wave -noreg miso
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\spi_slave_digikey_tb_tim_cfg.v" 
# asim +access +r TIMING_FOR_spi_slave_digikey 
