v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 870 -550 900 -550 {lab=a1
}
N 870 -530 900 -530 {lab=a2}
N 870 -480 900 -480 {lab=b1}
N 870 -460 900 -460 {lab=b2}
N 870 -410 900 -410 {lab=c1}
N 870 -390 900 -390 {lab=c2}
N 1010 -340 1010 -310 {lab=GND}
N 1170 -410 1170 -380 {lab=GND}
N 1110 -470 1170 -470 {lab=y}
N 1010 -650 1010 -630 {lab=VDD}
C {devices/code_shown.sym} 0 -750 0 0 {name=NGSPICE only_toplevel=true
value="
.param vdd=3.3
.param trise=10n
.param tfall=10n
.param period1=1u
.param period2=2u
.param period3=4u
.param period4=8u
.param period5=16u
.param period6=32u

** Power supplies
Vdd vdd 0 dc \{vdd\}
Vss vss 0 dc 0

** Pulse sources for inputs (A1, A2, B1, B2, C1, C2)
Va1 a1 0 pulse(\{vdd\} 0 0.5u \{trise\} \{tfall\} \{period1/2-trise\} \{period1\})
Va2 a2 0 pulse(\{vdd\} 0 0.5u \{trise\} \{tfall\} \{period2/2-trise\} \{period2\})
Vb1 b1 0 pulse(\{vdd\} 0 0.5u \{trise\} \{tfall\} \{period3/2-trise\} \{period3\})
Vb2 b2 0 pulse(\{vdd\} 0 0.5u \{trise\} \{tfall\} \{period4/2-trise\} \{period4\})
Vc1 c1 0 pulse(\{vdd\} 0 0.5u \{trise\} \{tfall\} \{period5/2-trise\} \{period5\})
Vc2 c2 0 pulse(\{vdd\} 0 0.5u \{trise\} \{tfall\} \{period6/2-trise\} \{period6\})

.ic v(a1)=0 v(a2)=0 v(b1)=0 v(b2)=0 v(c1)=0 v(c2)=0 v(y)=\{vdd\}

** Simulation control
.control

* Set initial conditions
ic

* Run transient simulation for full cycle
tran 10n 34u
* Plot all signals on same graph
plot v(a1)+24 v(a2)+20 v(b1)+16 v(b2)+12 v(c1)+8 v(c2)+4 v(y)+0 ylimit -1 28 xlimit 0 32.5u
* The +offset separates traces vertically for clarity
* Measure some timing parameters
meas tran tpd_lh trig v(a1) val=1.65 rise=1 targ v(y) val=1.65 fall=1
meas tran tpd_hl trig v(a1) val=1.65 fall=1 targ v(y) val=1.65 rise=1
print all
wrdata aoi222_results.txt v(a1) v(a2) v(b1) v(b2) v(c1) v(c2) v(y)
.endc
"}
C {devices/code_shown.sym} 0 -860 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {/headless/sscs/globalfoundries-pdk-libs-gf180mcu_sah_sc/cells/aoi222/gf180mcu_sah_sc_aoi222_1.sym} 1010 -550 0 0 {name=x1}
C {gnd.sym} 1010 -310 0 0 {name=l1 lab=GND}
C {capa.sym} 1170 -440 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1170 -380 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 870 -550 0 0 {name=p1 sig_type=std_logic lab=a1
}
C {lab_pin.sym} 870 -530 0 0 {name=p2 sig_type=std_logic lab=a2}
C {lab_pin.sym} 870 -480 0 0 {name=p3 sig_type=std_logic lab=b1}
C {lab_pin.sym} 870 -460 0 0 {name=p4 sig_type=std_logic lab=b2}
C {lab_pin.sym} 870 -410 0 0 {name=p5 sig_type=std_logic lab=c1}
C {lab_pin.sym} 870 -390 0 0 {name=p6 sig_type=std_logic lab=c2}
C {lab_pin.sym} 1010 -650 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1140 -470 1 0 {name=p8 sig_type=std_logic lab=y}
