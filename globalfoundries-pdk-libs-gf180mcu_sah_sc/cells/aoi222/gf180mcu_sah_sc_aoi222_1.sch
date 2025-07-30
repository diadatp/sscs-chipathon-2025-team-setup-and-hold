v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 60 40 60 70 {lab=#net1}
N 60 -280 60 -250 {lab=#net2}
N 20 -220 20 10 {lab=C1}
N -40 100 20 100 {lab=C2}
N -40 -310 -40 100 {lab=C2}
N -40 -310 20 -310 {lab=C2}
N 60 -220 80 -220 {lab=VDD}
N 60 -310 80 -310 {lab=VDD}
N 60 130 80 130 {lab=GND}
N 60 100 80 100 {lab=GND}
N 60 10 80 10 {lab=GND}
N 80 10 80 130 {lab=GND}
N 80 130 80 150 {lab=GND}
N 310 40 310 70 {lab=#net3}
N 310 -280 310 -250 {lab=#net2}
N 270 -220 270 10 {lab=B1}
N 210 100 270 100 {lab=B2}
N 210 -310 210 100 {lab=B2}
N 210 -310 270 -310 {lab=B2}
N 310 -220 330 -220 {lab=VDD}
N 310 -310 330 -310 {lab=VDD}
N 310 130 330 130 {lab=GND}
N 310 100 330 100 {lab=GND}
N 310 10 330 10 {lab=GND}
N 330 10 330 130 {lab=GND}
N 330 130 330 150 {lab=GND}
N 560 40 560 70 {lab=#net4}
N 560 -280 560 -250 {lab=#net5}
N 520 -220 520 10 {lab=A1}
N 460 100 520 100 {lab=A2}
N 460 -310 460 100 {lab=A2}
N 460 -310 520 -310 {lab=A2}
N 560 -220 580 -220 {lab=VDD}
N 560 -310 580 -310 {lab=VDD}
N 560 130 580 130 {lab=GND}
N 560 100 580 100 {lab=GND}
N 560 10 580 10 {lab=GND}
N 580 10 580 130 {lab=GND}
N 580 130 580 150 {lab=GND}
N 330 -360 330 -220 {lab=VDD}
N 310 -190 410 -190 {lab=#net6}
N 430 -340 430 -190 {lab=#net6}
N 310 -340 410 -340 {lab=#net6}
N 580 -340 580 -220 {lab=VDD}
N 410 -190 560 -190 {lab=#net6}
N 410 -340 560 -340 {lab=#net6}
N 580 -270 720 -270 {lab=VDD}
N 60 -20 740 -20 {lab=VDD}
N 740 -270 740 -20 {lab=VDD}
N 720 -270 740 -270 {lab=VDD}
N 80 -360 80 -220 {lab=VDD}
N 580 -360 580 -340 {lab=VDD}
N 60 -270 310 -270 {lab=#net2}
N 60 -340 80 -340 {lab=VDD}
N 60 -190 80 -190 {lab=VDD}
N 80 -220 80 -190 {lab=VDD}
C {symbols/nfet_03v3.sym} 40 10 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 40 100 0 0 {name=M2
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
C {gnd.sym} 80 150 0 0 {name=l1 lab=GND}
C {symbols/pfet_03v3.sym} 40 -220 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} 40 -310 0 0 {name=M4
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
C {ipin.sym} 20 -120 0 0 {name=p1 lab=C1}
C {ipin.sym} -40 -120 0 0 {name=p2 lab=C2
}
C {vdd.sym} 80 -360 0 0 {name=l2 lab=VDD}
C {symbols/nfet_03v3.sym} 290 10 0 0 {name=M5
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
C {symbols/nfet_03v3.sym} 290 100 0 0 {name=M6
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
C {gnd.sym} 330 150 0 0 {name=l3 lab=GND}
C {symbols/pfet_03v3.sym} 290 -220 0 0 {name=M7
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
C {symbols/pfet_03v3.sym} 290 -310 0 0 {name=M8
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
C {ipin.sym} 270 -120 0 0 {name=p3 lab=B1}
C {ipin.sym} 210 -120 0 0 {name=p4 lab=B2
}
C {vdd.sym} 330 -360 0 0 {name=l4 lab=VDD}
C {symbols/nfet_03v3.sym} 540 10 0 0 {name=M9
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
C {symbols/nfet_03v3.sym} 540 100 0 0 {name=M10
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
C {gnd.sym} 580 150 0 0 {name=l5 lab=GND}
C {symbols/pfet_03v3.sym} 540 -220 0 0 {name=M11
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
C {symbols/pfet_03v3.sym} 540 -310 0 0 {name=M12
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
C {ipin.sym} 520 -120 0 0 {name=p5 lab=A1}
C {ipin.sym} 460 -120 0 0 {name=p6 lab=A2
}
C {vdd.sym} 580 -360 0 0 {name=l6 lab=VDD}
C {opin.sym} 740 -140 0 0 {name=p7 lab=Z}
