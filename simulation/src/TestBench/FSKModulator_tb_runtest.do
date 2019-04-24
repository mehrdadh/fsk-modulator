setactivelib -work
#Compiling UUT module design files

comp -include "$dsn\src\TestBench\FSKModulator_tb.v"
asim +access +r FSKModulator_tb

wave
wave -noreg clk
wave -noreg rst
wave -noreg symVal
wave -noreg FSK_I
wave -noreg FSK_Q
wave -noreg symDone

run

#End simulation macro
