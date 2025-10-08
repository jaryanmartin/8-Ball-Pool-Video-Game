# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: U:\ENSC452\FinalStage\452Proj_app_system\_ide\scripts\debugger_452proj_audio-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source U:\ENSC452\FinalStage\452Proj_app_system\_ide\scripts\debugger_452proj_audio-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248469107" && level==0 && jtag_device_ctx=="jsn-Zed-210248469107-03727093-0"}
fpga -file U:/ENSC452/FinalStage/452Proj_audio/_ide/bitstream/ip_design_wrapper_bonusincr.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw U:/ENSC452/FinalStage/Rohit_8ball_plat/export/Rohit_8ball_plat/hw/ip_design_wrapper_bonusincr.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source U:/ENSC452/FinalStage/452Proj_audio/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#1"}
dow U:/ENSC452/FinalStage/452Proj_audio/Debug/452Proj_audio.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#1"}
con
