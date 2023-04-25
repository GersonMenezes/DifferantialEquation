onerror {quit -f}
vlib work
vlog -work work DifferentialEquation.vo
vlog -work work DifferentialEquation.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.DifferentialEquation_vlg_vec_tst
vcd file -direction DifferentialEquation.msim.vcd
vcd add -internal DifferentialEquation_vlg_vec_tst/*
vcd add -internal DifferentialEquation_vlg_vec_tst/i1/*
add wave /*
run -all
