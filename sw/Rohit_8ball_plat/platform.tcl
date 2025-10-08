# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct U:\ENSC452\FinalStage\Rohit_8ball_plat\platform.tcl
# 
# OR launch xsct and run below command.
# source U:\ENSC452\FinalStage\Rohit_8ball_plat\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Rohit_8ball_plat}\
-hw {U:\ENSC452\FinalStage\adventures_with_ip\ip_newdesign_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {U:/ENSC452/FinalStage}

platform write
platform generate -domains 
platform active {Rohit_8ball_plat}
domain create -name {ps7_cortexa9_1} -os {standalone} -proc {ps7_cortexa9_1} -arch {32-bit} -display-name {ps7_cortexa9_1} -desc {} -runtime {cpp}
platform generate -domains 
platform write
domain -report -json
platform generate
domain active {zynq_fsbl}
bsp reload
domain active {ps7_cortexa9_1}
bsp reload
bsp write
platform generate
platform active {Rohit_8ball_plat}
bsp reload
bsp setlib -name xilffs -ver 4.4
bsp removelib -name xilffs
bsp setlib -name xilffs -ver 4.4
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform clean
platform generate
platform config -updatehw {U:/ENSC452/FinalStage/adventures_with_ip/ip_new_pp_design_wrapper.xsa}
platform generate -domains 
platform config -updatehw {U:/ENSC452/FinalStage/adventures_with_ip/ip_design_wrapper_bonus.xsa}
platform generate -domains 
platform config -updatehw {U:/ENSC452/FinalStage/adventures_with_ip/ip_new_plz_design_wrapper.xsa}
platform generate -domains 
platform active {Rohit_8ball_plat}
platform config -updatehw {U:/ENSC452/FinalStage/adventures_with_ip/ip_design_wrapper_bonusincr.xsa}
platform generate
platform active {Rohit_8ball_plat}
bsp reload
bsp reload
platform generate -domains 
platform generate
