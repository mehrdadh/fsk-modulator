setactivelib -work
#Compiling UUT module design files

comp -include "$dsn\src\TestBench\topModule_tb.v"
asim +access +r topModule_tb

wave
wave -noreg top_clk
wave -noreg top_rst
wave -noreg spi_mosi
wave -noreg spi_miso
wave -noreg spi_sclk
wave -noreg spi_cs
wave -noreg osc_en
wave -noreg serial_iq
wave -noreg serial_clk
wave -noreg LED
wave -noreg clk_test
wave -noreg sim_clk

run

#End simulation macro
