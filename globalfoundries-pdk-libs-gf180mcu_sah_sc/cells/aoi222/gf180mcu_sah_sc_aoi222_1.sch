v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {AOI222 = NOR(A1 and A2, B1 and B2, C1 and C2)
If any input pair is (HIGH, HIGH), the output is LOW. Otherwise, the output is HIGH.

Implementation:
Pulldown network that pulls if two inputs in a pair are both HIGH.
Pullup network from chaining half transmission gates that form a path from VDD to the output if all input pairs contain at least one LOW.
} 0 -590 0 0 0.4 0.4 {}
T {Transistor Sizing: Same sizes as all other cells in the OSU library} 0 110 0 0 0.4 0.4 {}
N 140 -50 140 -20 {lab=#net1}
N 60 -310 80 -310 {lab=VDD}
N 140 40 160 40 {lab=GND}
N 140 10 160 10 {lab=GND}
N 140 -80 160 -80 {lab=GND}
N 160 -80 160 40 {lab=GND}
N 160 40 160 60 {lab=GND}
N 540 -50 540 -20 {lab=#net2}
N 540 40 560 40 {lab=GND}
N 540 10 560 10 {lab=GND}
N 540 -80 560 -80 {lab=GND}
N 560 -80 560 40 {lab=GND}
N 560 40 560 60 {lab=GND}
N 60 -340 80 -340 {lab=VDD}
N 80 -310 270 -310 {lab=VDD}
N 80 -340 270 -340 {lab=VDD}
N 160 -340 160 -310 {lab=VDD}
N 60 -280 270 -280 {lab=#net3}
N 310 -310 310 -220 {lab=C1}
N 310 -220 310 -180 {lab=C1}
N 100 -180 100 -80 {lab=C1}
N 20 -310 20 10 {lab=C2}
N 20 10 100 10 {lab=C2}
N 100 -180 310 -180 {lab=C1}
N 270 -280 670 -280 {lab=#net3}
N 460 -340 670 -340 {lab=#net4}
N 460 -310 670 -310 {lab=VDD}
N 560 -360 560 -310 {lab=VDD}
N 160 -360 160 -340 {lab=VDD}
N 710 -310 710 -220 {lab=B1}
N 710 -220 710 -180 {lab=B1}
N 500 -180 500 -80 {lab=B1}
N 500 -180 710 -180 {lab=B1}
N 420 -310 420 10 {lab=B2}
N 420 10 500 10 {lab=B2}
N 940 -50 940 -20 {lab=#net5}
N 940 40 960 40 {lab=GND}
N 940 10 960 10 {lab=GND}
N 940 -80 960 -80 {lab=GND}
N 960 -80 960 40 {lab=GND}
N 960 40 960 60 {lab=GND}
N 860 -310 1070 -310 {lab=VDD}
N 960 -360 960 -310 {lab=VDD}
N 1110 -310 1110 -220 {lab=A1}
N 1110 -220 1110 -180 {lab=A1}
N 900 -180 900 -80 {lab=A1}
N 900 -180 1110 -180 {lab=A1}
N 820 -310 820 10 {lab=A2}
N 820 10 900 10 {lab=A2}
N 140 -110 540 -110 {lab=Z}
N 540 -110 940 -110 {lab=Z}
N 670 -340 1070 -340 {lab=#net4}
N 860 -280 1070 -280 {lab=Z}
N 940 -110 1110 -110 {lab=Z}
N 1070 -280 1070 -110 {lab=Z}
C {symbols/nfet_03v3.sym} 120 -80 0 0 {name=C1N
L=0.3u
W=0.85u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 120 10 0 0 {name=C2N
L=0.3u
W=0.85u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {gnd.sym} 160 60 0 0 {name=l1 lab=GND}
C {symbols/pfet_03v3.sym} 290 -310 0 1 {name=C1P
L=0.3u
W=1.7u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 40 -310 0 0 {name=C2P
L=0.3u
W=1.7u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {ipin.sym} 100 -150 0 0 {name=p1 lab=C1}
C {ipin.sym} 20 -150 0 0 {name=p2 lab=C2
}
C {vdd.sym} 160 -360 0 0 {name=l2 lab=VDD}
C {symbols/nfet_03v3.sym} 520 -80 0 0 {name=B1N
L=0.3u
W=0.85u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 520 10 0 0 {name=B2N
L=0.3u
W=0.85u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {gnd.sym} 560 60 0 0 {name=l3 lab=GND}
C {ipin.sym} 500 -150 0 0 {name=p3 lab=B1}
C {ipin.sym} 420 -150 0 0 {name=p4 lab=B2
}
C {opin.sym} 1110 -110 0 0 {name=p7 lab=Z}
C {symbols/pfet_03v3.sym} 690 -310 0 1 {name=B1P
L=0.3u
W=1.7u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 440 -310 0 0 {name=B2P
L=0.3u
W=1.7u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {vdd.sym} 560 -360 0 0 {name=l7 lab=VDD}
C {symbols/nfet_03v3.sym} 920 -80 0 0 {name=A1N
L=0.3u
W=0.85u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 920 10 0 0 {name=A2N
L=0.3u
W=0.85u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {gnd.sym} 960 60 0 0 {name=l8 lab=GND}
C {ipin.sym} 900 -150 0 0 {name=p8 lab=A1}
C {ipin.sym} 820 -150 0 0 {name=p9 lab=A2
}
C {symbols/pfet_03v3.sym} 1090 -310 0 1 {name=A1P
L=0.3u
W=1.7u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 840 -310 0 0 {name=A2P
L=0.3u
W=1.7u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {vdd.sym} 960 -360 0 0 {name=l9 lab=VDD}
