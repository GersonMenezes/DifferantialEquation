onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix decimal /differentialequation_tb/x
add wave -noupdate -radix decimal /differentialequation_tb/u
add wave -noupdate -radix decimal /differentialequation_tb/y
add wave -noupdate -radix decimal /differentialequation_tb/dx
add wave -noupdate -radix decimal /differentialequation_tb/a
add wave -noupdate /differentialequation_tb/clock
add wave -noupdate -radix decimal /differentialequation_tb/testx
add wave -noupdate -radix decimal /differentialequation_tb/testu
add wave -noupdate -radix decimal /differentialequation_tb/testy
add wave -noupdate -radix decimal /differentialequation_tb/saida
add wave -noupdate -divider DUT
add wave -noupdate /differentialequation_tb/DUT/x_signal
add wave -noupdate /differentialequation_tb/DUT/u_signal
add wave -noupdate /differentialequation_tb/DUT/y_signal
add wave -noupdate /differentialequation_tb/DUT/saida_somador1
add wave -noupdate /differentialequation_tb/DUT/saida_multiplicador1
add wave -noupdate /differentialequation_tb/DUT/saida_multiplicador2
add wave -noupdate /differentialequation_tb/DUT/saida_multiplicador3
add wave -noupdate /differentialequation_tb/DUT/saida_multiplicador4
add wave -noupdate /differentialequation_tb/DUT/saida_multiplicador5
add wave -noupdate /differentialequation_tb/DUT/saida_multiplicador6
add wave -noupdate /differentialequation_tb/DUT/part1
add wave -noupdate /differentialequation_tb/DUT/part2
add wave -noupdate /differentialequation_tb/DUT/part3
add wave -noupdate /differentialequation_tb/DUT/registrador1
add wave -noupdate /differentialequation_tb/DUT/registrador2
add wave -noupdate /differentialequation_tb/DUT/registrador3
add wave -noupdate /differentialequation_tb/DUT/cout_somador1
add wave -noupdate -divider somador1
add wave -noupdate /differentialequation_tb/DUT/somador1/A
add wave -noupdate /differentialequation_tb/DUT/somador1/B
add wave -noupdate /differentialequation_tb/DUT/somador1/S
add wave -noupdate /differentialequation_tb/DUT/somador1/Co
add wave -noupdate /differentialequation_tb/DUT/somador1/Cout
add wave -noupdate /differentialequation_tb/DUT/somador1/C
add wave -noupdate -divider m1
add wave -noupdate /differentialequation_tb/DUT/multiplicador1/MD
add wave -noupdate /differentialequation_tb/DUT/multiplicador1/MR
add wave -noupdate /differentialequation_tb/DUT/multiplicador1/s
add wave -noupdate /differentialequation_tb/DUT/multiplicador1/s_gpp1
add wave -noupdate /differentialequation_tb/DUT/multiplicador1/s_gpp2
add wave -noupdate /differentialequation_tb/DUT/multiplicador1/s_gpp3
add wave -noupdate /differentialequation_tb/DUT/multiplicador1/s_gpp4
add wave -noupdate /differentialequation_tb/DUT/multiplicador1/s_somador1
add wave -noupdate /differentialequation_tb/DUT/multiplicador1/s_somador2
add wave -noupdate /differentialequation_tb/DUT/multiplicador1/s_somador3
add wave -noupdate /differentialequation_tb/DUT/multiplicador1/cout_somador1
add wave -noupdate /differentialequation_tb/DUT/multiplicador1/cout_somador2
add wave -noupdate /differentialequation_tb/DUT/multiplicador1/cout_somador3
add wave -noupdate /differentialequation_tb/DUT/multiplicador1/cin_somador2
add wave -noupdate /differentialequation_tb/DUT/multiplicador1/cin_somador3
add wave -noupdate /differentialequation_tb/DUT/multiplicador1/MR_concatene_0
add wave -noupdate -divider m2
add wave -noupdate /differentialequation_tb/DUT/multiplicador2/MD
add wave -noupdate /differentialequation_tb/DUT/multiplicador2/MR
add wave -noupdate /differentialequation_tb/DUT/multiplicador2/s
add wave -noupdate /differentialequation_tb/DUT/multiplicador2/s_gpp1
add wave -noupdate /differentialequation_tb/DUT/multiplicador2/s_gpp2
add wave -noupdate /differentialequation_tb/DUT/multiplicador2/s_gpp3
add wave -noupdate /differentialequation_tb/DUT/multiplicador2/s_gpp4
add wave -noupdate /differentialequation_tb/DUT/multiplicador2/s_somador1
add wave -noupdate /differentialequation_tb/DUT/multiplicador2/s_somador2
add wave -noupdate /differentialequation_tb/DUT/multiplicador2/s_somador3
add wave -noupdate /differentialequation_tb/DUT/multiplicador2/cout_somador1
add wave -noupdate /differentialequation_tb/DUT/multiplicador2/cout_somador2
add wave -noupdate /differentialequation_tb/DUT/multiplicador2/cout_somador3
add wave -noupdate /differentialequation_tb/DUT/multiplicador2/cin_somador2
add wave -noupdate /differentialequation_tb/DUT/multiplicador2/cin_somador3
add wave -noupdate /differentialequation_tb/DUT/multiplicador2/MR_concatene_0
add wave -noupdate -divider m3
add wave -noupdate /differentialequation_tb/DUT/multiplicador3/MD
add wave -noupdate /differentialequation_tb/DUT/multiplicador3/MR
add wave -noupdate /differentialequation_tb/DUT/multiplicador3/s
add wave -noupdate /differentialequation_tb/DUT/multiplicador3/s_gpp1
add wave -noupdate /differentialequation_tb/DUT/multiplicador3/s_gpp2
add wave -noupdate /differentialequation_tb/DUT/multiplicador3/s_gpp3
add wave -noupdate /differentialequation_tb/DUT/multiplicador3/s_gpp4
add wave -noupdate /differentialequation_tb/DUT/multiplicador3/s_somador1
add wave -noupdate /differentialequation_tb/DUT/multiplicador3/s_somador2
add wave -noupdate /differentialequation_tb/DUT/multiplicador3/s_somador3
add wave -noupdate /differentialequation_tb/DUT/multiplicador3/cout_somador1
add wave -noupdate /differentialequation_tb/DUT/multiplicador3/cout_somador2
add wave -noupdate /differentialequation_tb/DUT/multiplicador3/cout_somador3
add wave -noupdate /differentialequation_tb/DUT/multiplicador3/cin_somador2
add wave -noupdate /differentialequation_tb/DUT/multiplicador3/cin_somador3
add wave -noupdate /differentialequation_tb/DUT/multiplicador3/MR_concatene_0
add wave -noupdate -divider m4
add wave -noupdate /differentialequation_tb/DUT/multiplicador4/MD
add wave -noupdate /differentialequation_tb/DUT/multiplicador4/MR
add wave -noupdate /differentialequation_tb/DUT/multiplicador4/s
add wave -noupdate /differentialequation_tb/DUT/multiplicador4/s_gpp1
add wave -noupdate /differentialequation_tb/DUT/multiplicador4/s_gpp2
add wave -noupdate /differentialequation_tb/DUT/multiplicador4/s_gpp3
add wave -noupdate /differentialequation_tb/DUT/multiplicador4/s_gpp4
add wave -noupdate /differentialequation_tb/DUT/multiplicador4/s_somador1
add wave -noupdate /differentialequation_tb/DUT/multiplicador4/s_somador2
add wave -noupdate /differentialequation_tb/DUT/multiplicador4/s_somador3
add wave -noupdate /differentialequation_tb/DUT/multiplicador4/cout_somador1
add wave -noupdate /differentialequation_tb/DUT/multiplicador4/cout_somador2
add wave -noupdate /differentialequation_tb/DUT/multiplicador4/cout_somador3
add wave -noupdate /differentialequation_tb/DUT/multiplicador4/cin_somador2
add wave -noupdate /differentialequation_tb/DUT/multiplicador4/cin_somador3
add wave -noupdate /differentialequation_tb/DUT/multiplicador4/MR_concatene_0
add wave -noupdate -divider m5
add wave -noupdate /differentialequation_tb/DUT/multiplicador5/MD
add wave -noupdate /differentialequation_tb/DUT/multiplicador5/MR
add wave -noupdate /differentialequation_tb/DUT/multiplicador5/s
add wave -noupdate /differentialequation_tb/DUT/multiplicador5/s_gpp1
add wave -noupdate /differentialequation_tb/DUT/multiplicador5/s_gpp2
add wave -noupdate /differentialequation_tb/DUT/multiplicador5/s_gpp3
add wave -noupdate /differentialequation_tb/DUT/multiplicador5/s_gpp4
add wave -noupdate /differentialequation_tb/DUT/multiplicador5/s_somador1
add wave -noupdate /differentialequation_tb/DUT/multiplicador5/s_somador2
add wave -noupdate /differentialequation_tb/DUT/multiplicador5/s_somador3
add wave -noupdate /differentialequation_tb/DUT/multiplicador5/cout_somador1
add wave -noupdate /differentialequation_tb/DUT/multiplicador5/cout_somador2
add wave -noupdate /differentialequation_tb/DUT/multiplicador5/cout_somador3
add wave -noupdate /differentialequation_tb/DUT/multiplicador5/cin_somador2
add wave -noupdate /differentialequation_tb/DUT/multiplicador5/cin_somador3
add wave -noupdate /differentialequation_tb/DUT/multiplicador5/MR_concatene_0
add wave -noupdate -divider m6
add wave -noupdate /differentialequation_tb/DUT/multiplicador6/MD
add wave -noupdate /differentialequation_tb/DUT/multiplicador6/MR
add wave -noupdate /differentialequation_tb/DUT/multiplicador6/s
add wave -noupdate /differentialequation_tb/DUT/multiplicador6/s_gpp1
add wave -noupdate /differentialequation_tb/DUT/multiplicador6/s_gpp2
add wave -noupdate /differentialequation_tb/DUT/multiplicador6/s_gpp3
add wave -noupdate /differentialequation_tb/DUT/multiplicador6/s_gpp4
add wave -noupdate /differentialequation_tb/DUT/multiplicador6/s_somador1
add wave -noupdate /differentialequation_tb/DUT/multiplicador6/s_somador2
add wave -noupdate /differentialequation_tb/DUT/multiplicador6/s_somador3
add wave -noupdate /differentialequation_tb/DUT/multiplicador6/cout_somador1
add wave -noupdate /differentialequation_tb/DUT/multiplicador6/cout_somador2
add wave -noupdate /differentialequation_tb/DUT/multiplicador6/cout_somador3
add wave -noupdate /differentialequation_tb/DUT/multiplicador6/cin_somador2
add wave -noupdate /differentialequation_tb/DUT/multiplicador6/cin_somador3
add wave -noupdate /differentialequation_tb/DUT/multiplicador6/MR_concatene_0
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 231
configure wave -valuecolwidth 277
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {381873 ps}
