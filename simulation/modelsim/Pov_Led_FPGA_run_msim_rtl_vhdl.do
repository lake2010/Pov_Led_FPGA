transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib Qsys_system
vmap Qsys_system Qsys_system
vlog -vlog01compat -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis {E:/Pov_Led_FPGA/Qsys_system/synthesis/Qsys_system.v}
vlog -vlog01compat -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/altera_reset_controller.v}
vlog -vlog01compat -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/Qsys_system_mm_interconnect_0.v}
vlog -vlog01compat -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/Qsys_system_epcs_flash.v}
vlog -vlog01compat -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/Qsys_system_Hal249.v}
vlog -vlog01compat -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/Qsys_system_Led.v}
vlog -vlog01compat -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/Qsys_system_sysid_qsys.v}
vlog -vlog01compat -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/Qsys_system_jtag_uart.v}
vlog -vlog01compat -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/Qsys_system_onchip_ram.v}
vlog -vlog01compat -work work +incdir+E:/Pov_Led_FPGA {E:/Pov_Led_FPGA/Pov_Led_FPGA.v}
vlog -vlog01compat -work work +incdir+E:/Pov_Led_FPGA {E:/Pov_Led_FPGA/PLL.v}
vlog -vlog01compat -work work +incdir+E:/Pov_Led_FPGA/db {E:/Pov_Led_FPGA/db/pll_altpll.v}
vlog -sv -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/Qsys_system_irq_mapper.sv}
vlog -sv -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/altera_merlin_arbitrator.sv}
vlog -sv -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/Qsys_system_mm_interconnect_0_rsp_xbar_mux_001.sv}
vlog -sv -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/Qsys_system_mm_interconnect_0_rsp_xbar_mux.sv}
vlog -sv -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/Qsys_system_mm_interconnect_0_rsp_xbar_demux_003.sv}
vlog -sv -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/Qsys_system_mm_interconnect_0_rsp_xbar_demux.sv}
vlog -sv -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/Qsys_system_mm_interconnect_0_cmd_xbar_mux_003.sv}
vlog -sv -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/Qsys_system_mm_interconnect_0_cmd_xbar_mux.sv}
vlog -sv -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/Qsys_system_mm_interconnect_0_cmd_xbar_demux_001.sv}
vlog -sv -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/Qsys_system_mm_interconnect_0_cmd_xbar_demux.sv}
vlog -sv -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/altera_merlin_traffic_limiter.sv}
vlog -vlog01compat -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/altera_avalon_sc_fifo.v}
vlog -sv -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/Qsys_system_mm_interconnect_0_id_router_003.sv}
vlog -sv -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/Qsys_system_mm_interconnect_0_id_router.sv}
vlog -sv -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/Qsys_system_mm_interconnect_0_addr_router_001.sv}
vlog -sv -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/Qsys_system_mm_interconnect_0_addr_router.sv}
vlog -sv -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/altera_merlin_slave_agent.sv}
vlog -sv -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/altera_merlin_burst_uncompressor.sv}
vlog -sv -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/altera_merlin_master_agent.sv}
vlog -sv -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/altera_merlin_slave_translator.sv}
vlog -sv -work Qsys_system +incdir+E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules {E:/Pov_Led_FPGA/Qsys_system/synthesis/submodules/altera_merlin_master_translator.sv}

