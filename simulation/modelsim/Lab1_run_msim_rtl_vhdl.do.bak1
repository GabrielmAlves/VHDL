transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/raffa/OneDrive/Documentos/Arquitetura/lab1/Lab1.vhd}

vcom -93 -work work {C:/Users/raffa/OneDrive/Documentos/Arquitetura/lab1/tb_Lab1.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  tb_Lab1

add wave *
view structure
view signals
run -all
