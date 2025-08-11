default: lef spice

lef: globalfoundries-pdk-libs-gf180mcu_sah_sc/cells/aoi222/gf180mcu_sah_sc_aoi222_1.lef
spice: globalfoundries-pdk-libs-gf180mcu_sah_sc/cells/aoi222/gf180mcu_sah_sc_aoi222_1.spice

globalfoundries-pdk-libs-gf180mcu_sah_sc/cells/aoi222/gf180mcu_sah_sc_aoi222_1.lef: globalfoundries-pdk-libs-gf180mcu_sah_sc/cells/aoi222/gf180mcu_sah_sc_aoi222_1.gds scripts/gds_to_lef.tcl
	magic -dnull -noconsole scripts/gds_to_lef.tcl aoi222

globalfoundries-pdk-libs-gf180mcu_sah_sc/cells/aoi222/gf180mcu_sah_sc_aoi222_1.spice: globalfoundries-pdk-libs-gf180mcu_sah_sc/cells/aoi222/gf180mcu_sah_sc_aoi222_1.gds scripts/gds_to_spice.tcl
	magic -dnull -noconsole scripts/gds_to_spice.tcl aoi222
