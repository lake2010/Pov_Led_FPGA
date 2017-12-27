#!/bin/sh
#
# This file was automatically generated.
#
# It can be overwritten by nios2-flash-programmer-generate or nios2-flash-programmer-gui.
#

#
# Converting SOF File: F:\Pov_Led_FPGA\output_files\Pov_Led_FPGA.sof to: "..\flash/Pov_Led_FPGA_epcs_flash.flash"
#
sof2flash --input="F:/Pov_Led_FPGA/output_files/Pov_Led_FPGA.sof" --output="../flash/Pov_Led_FPGA_epcs_flash.flash" --epcs 

#
# Programming File: "..\flash/Pov_Led_FPGA_epcs_flash.flash" To Device: epcs_flash
#
nios2-flash-programmer "../flash/Pov_Led_FPGA_epcs_flash.flash" --base=0x0 --epcs --sidp=0x1830 --id=0x0 --timestamp=1514304766 --device=1 --instance=0 '--cable=USB-Blaster on localhost [USB-0]' --program 

#
# Converting ELF File: F:\Pov_Led_FPGA\software\Pov_Led_FPGA\Pov_Led_FPGA.elf to: "..\flash/Pov_Led_FPGA_epcs_flash_1_.flash"
#
elf2flash --input="F:/Pov_Led_FPGA/software/Pov_Led_FPGA/Pov_Led_FPGA.elf" --output="../flash/Pov_Led_FPGA_epcs_flash_1_.flash" --epcs --after="../flash/Pov_Led_FPGA_epcs_flash.flash" 

#
# Programming File: "..\flash/Pov_Led_FPGA_epcs_flash_1_.flash" To Device: epcs_flash
#
nios2-flash-programmer "../flash/Pov_Led_FPGA_epcs_flash_1_.flash" --base=0x0 --epcs --sidp=0x1830 --id=0x0 --timestamp=1514304766 --device=1 --instance=0 '--cable=USB-Blaster on localhost [USB-0]' --program 

