set cell_name [lindex $argv end]
puts "processing cell: $cell_name"

gds read "globalfoundries-pdk-libs-gf180mcu_sah_sc/cells/${cell_name}/gf180mcu_sah_sc_${cell_name}_1.gds"
load gf180mcu_sah_sc_${cell_name}_1
select top cell

extract do local
extract all
ext2spice format ngspice
ext2spice cthresh infinite
ext2spice -o "globalfoundries-pdk-libs-gf180mcu_sah_sc/cells/${cell_name}/gf180mcu_sah_sc_${cell_name}_1.spice"
ext2sim labels on
ext2sim
extresist tolerance 10
extresist
ext2spice lvs
ext2spice cthresh 0
ext2spice extresist on
ext2spice -o "globalfoundries-pdk-libs-gf180mcu_sah_sc/cells/${cell_name}/gf180mcu_sah_sc_${cell_name}_1.rc.spice"