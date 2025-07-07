v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 140 -110 270 -110 {lab=#net1}
N 220 -90 220 -70 {lab=GND}
N 140 -90 220 -90 {lab=GND}
N -540 90 -440 90 {lab=GND}
N -440 90 -350 90 {lab=GND}
N -350 90 270 90 {lab=GND}
N 220 -70 220 -10 {lab=GND}
N 270 -110 270 -70 {lab=#net1}
N -350 -70 -160 -70 {lab=i2}
N -440 -90 -160 -90 {lab=i1}
N -440 -90 -440 -70 {lab=i1}
N -540 -110 -160 -110 {lab=i0}
N -540 -110 -540 -70 {lab=i0}
N 140 -70 170 -70 {lab=y}
N -540 -10 -540 90 {lab=GND}
N -440 -10 -440 90 {lab=GND}
N -350 -10 -350 90 {lab=GND}
N 270 -10 270 90 {lab=GND}
N 220 -10 220 90 {lab=GND}
N -290 -50 -160 -50 {lab=i3}
N -190 -10 -160 -10 {lab=s0}
N -220 -30 -160 -30 {lab=s1}
N -180 50 -180 90 {lab=GND}
N -310 -50 -310 30 {lab=i3}
N -310 -50 -290 -50 {lab=i3}
N -260 30 -260 90 {lab=GND}
N -260 -30 -220 -30 {lab=s1}
C {vsource.sym} 270 -40 0 0 {name=V33 value=3.3 savecurrent=false}
C {vsource.sym} -540 -40 0 0 {name=VI0 value=3.3 savecurrent=false}
C {vsource.sym} -440 -40 0 0 {name=VI1 value=3.3 savecurrent=false}
C {vsource.sym} -350 -40 0 0 {name=VI2 value=3.3 savecurrent=false}
C {noconn.sym} 170 -70 0 1 {name=l1}
C {lab_wire.sym} 160 -70 2 1 {name=p1 sig_type=std_logic lab=y}
C {lab_wire.sym} -190 -10 2 1 {name=p2 sig_type=std_logic lab=s0}
C {lab_wire.sym} -190 -90 2 1 {name=p3 sig_type=std_logic lab=i1}
C {lab_wire.sym} -190 -110 2 1 {name=p4 sig_type=std_logic lab=i0}
C {devices/code_shown.sym} -410 -430 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -1160 -520 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all

let fsig = 10Meg
* one base period
let tper = 1/fsig
let tper0 = tper
let tper1 = 2*tper
let tper2 = 2*tper1
let tper3 = 2*tper2
let tper4 = 2*tper3
let tper5 = 2*tper4
* rise/fall times
let tfr = 0.01*tper
* on time
let ton0 = 0.5*tper-2*tfr
let ton1 = 1*tper-2*tfr
let ton2 = 2*tper-2*tfr
let ton3 = 4*tper-2*tfr
let ton4 = 8*tper-2*tfr
let ton5 = 16*tper-2*tfr
* simulation parameters
let tstop = 64*tper
let tstep = 0.0001*tper

alter @VI0[DC] = 0.0
alter @VI1[DC] = 0.0
alter @VI2[DC] = 0.0
alter @VI3[DC] = 0.0
alter @VS0[DC] = 0.0
alter @VS1[DC] = 0.0

alter @VI0[PULSE] = [ 0 3.3 0 $&tfr $&tfr $&ton0 $&tper0 0 ]
alter @VI1[PULSE] = [ 0 3.3 0 $&tfr $&tfr $&ton1 $&tper1 0 ]
alter @VI2[PULSE] = [ 0 3.3 0 $&tfr $&tfr $&ton2 $&tper2 0 ]
alter @VI3[PULSE] = [ 0 3.3 0 $&tfr $&tfr $&ton3 $&tper3 0 ]
alter @VS0[PULSE] = [ 0 3.3 0 $&tfr $&tfr $&ton4 $&tper4 0 ]
alter @VS1[PULSE] = [ 0 3.3 0 $&tfr $&tfr $&ton5 $&tper5 0 ]

op
tran $&tstep $&tstop
plot y i0+3.4 s0*0.98+6.8 s1+10.2

setplot tran1


write inv_tb.raw
.endc
"}
C {gnd.sym} -270 90 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -190 -70 2 1 {name=p5 sig_type=std_logic lab=i2}
C {vsource.sym} -180 20 0 0 {name=VS0 value=3.3 savecurrent=false}
C {vsource.sym} -260 0 0 0 {name=VS1 value=3.3 savecurrent=false}
C {vsource.sym} -310 60 0 0 {name=VI3 value=3.3 savecurrent=false}
C {lab_wire.sym} -190 -30 2 1 {name=p6 sig_type=std_logic lab=s1}
C {lab_wire.sym} -190 -50 2 1 {name=p7 sig_type=std_logic lab=i3}
C {stdcells/mux4/mux4.sym} -10 -60 0 0 {name=x1}
