set cell_name [lindex $argv end]
puts "processing cell: $cell_name"

gds read "globalfoundries-pdk-libs-gf180mcu_sah_sc/cells/${cell_name}/gf180mcu_sah_sc_${cell_name}_1.gds"
load gf180mcu_sah_sc_${cell_name}_1
lef write "globalfoundries-pdk-libs-gf180mcu_sah_sc/cells/${cell_name}/gf180mcu_sah_sc_${cell_name}_1.lef"

quit