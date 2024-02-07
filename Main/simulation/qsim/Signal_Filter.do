onerror {exit -code 1}
vlib work
vcom -work work Signal_Filter.vho
vcom -work work ArithmeticUnit.vwf.vht
vsim  -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.ArithmeticUnit_vhd_vec_tst
vcd file -direction Signal_Filter.msim.vcd
vcd add -internal ArithmeticUnit_vhd_vec_tst/*
vcd add -internal ArithmeticUnit_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f







