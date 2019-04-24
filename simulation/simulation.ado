setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/work/tinysdr_fpga_ble_tx/simulation/simulation.adf"]} { 
	design create simulation "C:/work/tinysdr_fpga_ble_tx"
  set newDesign 1
}
design open "C:/work/tinysdr_fpga_ble_tx/simulation"
cd "C:/work/tinysdr_fpga_ble_tx"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_ecp5u
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/work/tinysdr_fpga_ble_tx/impl1/source/radioDefines.v"
addfile "C:/work/tinysdr_fpga_ble_tx/impl1/source/bleDefines.v"
addfile "C:/work/tinysdr_fpga_ble_tx/impl1/source/topModule.v"
addfile "C:/work/tinysdr_fpga_ble_tx/ble_tx_clarity/cos_table/cos_table.v"
addfile "C:/work/tinysdr_fpga_ble_tx/ble_tx_clarity/sin_table/sin_table.v"
addfile "C:/work/tinysdr_fpga_ble_tx/ble_tx_clarity/ble_tx_clarity.v"
addfile "C:/work/tinysdr_fpga_ble_tx/impl1/source/FSKModulator.v"
addfile "C:/work/tinysdr_fpga_ble_tx/impl1/source/packetGenerator.v"
vlib "C:/work/tinysdr_fpga_ble_tx/simulation/work"
set worklib work
adel -all
vlog -dbg -work work "C:/work/tinysdr_fpga_ble_tx/impl1/source/radioDefines.v"
vlog -dbg -work work "C:/work/tinysdr_fpga_ble_tx/impl1/source/bleDefines.v"
vlog -dbg -work work "C:/work/tinysdr_fpga_ble_tx/impl1/source/topModule.v"
vlog -dbg -work work "C:/work/tinysdr_fpga_ble_tx/ble_tx_clarity/cos_table/cos_table.v"
vlog -dbg -work work "C:/work/tinysdr_fpga_ble_tx/ble_tx_clarity/sin_table/sin_table.v"
vlog -dbg -work work "C:/work/tinysdr_fpga_ble_tx/ble_tx_clarity/ble_tx_clarity.v"
vlog -dbg -work work "C:/work/tinysdr_fpga_ble_tx/impl1/source/FSKModulator.v"
vlog -dbg -work work "C:/work/tinysdr_fpga_ble_tx/impl1/source/packetGenerator.v"
module topModule
vsim  +access +r topModule   -PL pmi_work -L ovi_ecp5u
