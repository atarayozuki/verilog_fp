
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name fp -dir "D:/9721108/fp/planAhead_run_1" -part xc6slx16csg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property top fp $srcset
set_param project.paUcfFile  "fp.ucf"
set hdlfile [add_files [list {fp.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
add_files "fp.ucf" -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16csg324-3
