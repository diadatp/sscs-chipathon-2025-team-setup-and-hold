v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 4 -260 880 900 1470 {fill=no
}
B 4 -170 290 900 860 {fill=no}
B 4 -160 -340 900 250 {fill=no}
B 4 -250 1530 910 2120 {fill=no
}
B 4 -250 2160 910 2750 {fill=no
}
B 4 -500 -340 -290 -100 {fill=no}
T {I0/I1 MUX} -100 -310 0 0 0.4 0.4 {}
T {I2/I3 MUX} -100 310 0 0 0.4 0.4 {}
T {2-Level MUX} -100 920 0 0 0.4 0.4 {}
T {Select Inverters} -90 1570 0 0 0.4 0.4 {}
T {Output Inverter} -80 2210 0 0 0.4 0.4 {}
N 0 -40 0 40 {lab=#net1}
N 20 70 20 100 {lab=vss}
N 0 70 20 70 {lab=vss}
N 0 -70 20 -70 {lab=vdd}
N 20 -100 20 -70 {lab=vdd}
N -40 -70 -40 70 {lab=i0}
N -100 180 310 180 {lab=vss}
N -100 -200 310 -200 {lab=vdd}
N 0 -200 0 -180 {lab=vdd}
N 20 -200 20 -180 {lab=vdd}
N 0 100 -0 120 {lab=vss}
N 20 100 20 120 {lab=vss}
N 20 -180 20 -100 {lab=vdd}
N 0 -180 0 -100 {lab=vdd}
N -0 120 0 180 {lab=vss}
N 20 120 20 180 {lab=vss}
N -0 -0 120 -0 {lab=#net1}
N 120 -120 120 -0 {lab=#net1}
N 130 -120 230 -120 {lab=#net1}
N 230 -120 230 -100 {lab=#net1}
N 120 -120 130 -120 {lab=#net1}
N 120 -0 120 60 {lab=#net1}
N 230 100 230 120 {lab=#net1}
N 120 120 230 120 {lab=#net1}
N 120 60 120 120 {lab=#net1}
N 230 -40 230 40 {lab=#net2}
N 230 -70 250 -70 {lab=vdd}
N 250 -200 250 -70 {lab=vdd}
N 230 70 250 70 {lab=vss}
N 250 70 250 180 {lab=vss}
N 670 -40 670 40 {lab=#net3}
N 650 70 650 100 {lab=vss}
N 650 70 670 70 {lab=vss}
N 650 -70 670 -70 {lab=vdd}
N 650 -100 650 -70 {lab=vdd}
N 710 -70 710 70 {lab=i1}
N 670 -200 670 -180 {lab=vdd}
N 650 -200 650 -180 {lab=vdd}
N 670 100 670 120 {lab=vss}
N 650 100 650 120 {lab=vss}
N 650 -180 650 -100 {lab=vdd}
N 670 -180 670 -100 {lab=vdd}
N 670 120 670 180 {lab=vss}
N 650 120 650 180 {lab=vss}
N 550 0 670 0 {lab=#net3}
N 550 -120 550 0 {lab=#net3}
N 440 -120 540 -120 {lab=#net3}
N 440 -120 440 -100 {lab=#net3}
N 540 -120 550 -120 {lab=#net3}
N 550 0 550 60 {lab=#net3}
N 440 100 440 120 {lab=#net3}
N 440 120 550 120 {lab=#net3}
N 550 60 550 120 {lab=#net3}
N 440 -40 440 40 {lab=#net2}
N 420 -70 440 -70 {lab=vdd}
N 420 -200 420 -70 {lab=vdd}
N 420 70 440 70 {lab=vss}
N 420 70 420 180 {lab=vss}
N 240 0 440 0 {lab=#net2}
N 310 -200 360 -200 {lab=vdd}
N 310 180 360 180 {lab=vss}
N 190 70 190 220 {lab=s0_i}
N 480 -70 520 -70 {lab=s0_i}
N 520 -70 520 220 {lab=s0_i}
N 480 70 500 70 {lab=s0}
N 500 -240 500 70 {lab=s0}
N 190 220 520 220 {lab=s0_i}
N 190 -240 190 -70 {lab=s0}
N 190 -240 500 -240 {lab=s0}
N 230 -0 240 -0 {lab=#net2}
N 0 580 0 660 {lab=#net4}
N 20 690 20 720 {lab=vss}
N 0 690 20 690 {lab=vss}
N 0 550 20 550 {lab=vdd}
N 20 520 20 550 {lab=vdd}
N -40 550 -40 690 {lab=i2}
N -100 800 310 800 {lab=vss}
N -100 420 310 420 {lab=vdd}
N 0 420 0 440 {lab=vdd}
N 20 420 20 440 {lab=vdd}
N 0 720 0 740 {lab=vss}
N 20 720 20 740 {lab=vss}
N 20 440 20 520 {lab=vdd}
N 0 440 0 520 {lab=vdd}
N 0 740 0 800 {lab=vss}
N 20 740 20 800 {lab=vss}
N 0 620 120 620 {lab=#net4}
N 120 500 120 620 {lab=#net4}
N 130 500 230 500 {lab=#net4}
N 230 500 230 520 {lab=#net4}
N 120 500 130 500 {lab=#net4}
N 120 620 120 680 {lab=#net4}
N 230 720 230 740 {lab=#net4}
N 120 740 230 740 {lab=#net4}
N 120 680 120 740 {lab=#net4}
N 230 580 230 660 {lab=#net5}
N 230 550 250 550 {lab=vdd}
N 250 420 250 550 {lab=vdd}
N 230 690 250 690 {lab=vss}
N 250 690 250 800 {lab=vss}
N 670 580 670 660 {lab=#net6}
N 650 690 650 720 {lab=vss}
N 650 690 670 690 {lab=vss}
N 650 550 670 550 {lab=vdd}
N 650 520 650 550 {lab=vdd}
N 710 550 710 690 {lab=i3}
N 360 800 770 800 {lab=vss}
N 360 420 770 420 {lab=vdd}
N 670 420 670 440 {lab=vdd}
N 650 420 650 440 {lab=vdd}
N 670 720 670 740 {lab=vss}
N 650 720 650 740 {lab=vss}
N 650 440 650 520 {lab=vdd}
N 670 440 670 520 {lab=vdd}
N 670 740 670 800 {lab=vss}
N 650 740 650 800 {lab=vss}
N 550 620 670 620 {lab=#net6}
N 550 500 550 620 {lab=#net6}
N 440 500 540 500 {lab=#net6}
N 440 500 440 520 {lab=#net6}
N 540 500 550 500 {lab=#net6}
N 550 620 550 680 {lab=#net6}
N 440 720 440 740 {lab=#net6}
N 440 740 550 740 {lab=#net6}
N 550 680 550 740 {lab=#net6}
N 440 580 440 660 {lab=#net5}
N 420 550 440 550 {lab=vdd}
N 420 420 420 550 {lab=vdd}
N 420 690 440 690 {lab=vss}
N 420 690 420 800 {lab=vss}
N 240 620 440 620 {lab=#net5}
N 310 420 360 420 {lab=vdd}
N 310 800 360 800 {lab=vss}
N 190 690 190 840 {lab=s0_i}
N 480 550 520 550 {lab=s0_i}
N 520 550 520 840 {lab=s0_i}
N 480 690 500 690 {lab=s0}
N 500 380 500 690 {lab=s0}
N 190 840 520 840 {lab=s0_i}
N 190 380 190 550 {lab=s0}
N 190 380 500 380 {lab=s0}
N 230 620 240 620 {lab=#net5}
N -100 1400 310 1400 {lab=vss}
N -100 1020 310 1020 {lab=vdd}
N 0 1220 120 1220 {lab=#net2}
N 120 1100 120 1220 {lab=#net2}
N 130 1100 230 1100 {lab=#net2}
N 230 1100 230 1120 {lab=#net2}
N 120 1100 130 1100 {lab=#net2}
N 120 1220 120 1280 {lab=#net2}
N 230 1320 230 1340 {lab=#net2}
N 120 1340 230 1340 {lab=#net2}
N 120 1280 120 1340 {lab=#net2}
N 230 1180 230 1260 {lab=Y_i}
N 230 1150 250 1150 {lab=vdd}
N 250 1020 250 1150 {lab=vdd}
N 230 1290 250 1290 {lab=vss}
N 250 1290 250 1400 {lab=vss}
N 550 1220 670 1220 {lab=#net5}
N 550 1100 550 1220 {lab=#net5}
N 440 1100 540 1100 {lab=#net5}
N 440 1100 440 1120 {lab=#net5}
N 540 1100 550 1100 {lab=#net5}
N 550 1220 550 1280 {lab=#net5}
N 440 1320 440 1340 {lab=#net5}
N 440 1340 550 1340 {lab=#net5}
N 550 1280 550 1340 {lab=#net5}
N 440 1180 440 1260 {lab=Y_i}
N 420 1150 440 1150 {lab=vdd}
N 420 1020 420 1150 {lab=vdd}
N 420 1290 440 1290 {lab=vss}
N 420 1290 420 1400 {lab=vss}
N 240 1220 440 1220 {lab=Y_i}
N 310 1020 360 1020 {lab=vdd}
N 310 1400 360 1400 {lab=vss}
N 190 1290 190 1440 {lab=s1_i}
N 480 1150 520 1150 {lab=s1_i}
N 520 1150 520 1440 {lab=s1_i}
N 480 1290 500 1290 {lab=s1}
N 500 980 500 1290 {lab=s1}
N 190 1440 520 1440 {lab=s1_i}
N 190 980 190 1150 {lab=s1}
N 190 980 500 980 {lab=s1}
N 230 1220 240 1220 {lab=Y_i}
N 330 -0 330 280 {lab=#net2}
N -190 280 330 280 {lab=#net2}
N -190 280 -190 1220 {lab=#net2}
N -190 1220 -0 1220 {lab=#net2}
N 330 620 330 910 {lab=#net5}
N 330 910 860 910 {lab=#net5}
N 860 910 860 1220 {lab=#net5}
N 670 1220 860 1220 {lab=#net5}
N 360 1020 420 1020 {lab=vdd}
N 360 1400 420 1400 {lab=vss}
N -90 2050 320 2050 {lab=vss}
N -90 1670 320 1670 {lab=vdd}
N 240 1750 240 1770 {lab=vdd}
N 240 1970 240 1990 {lab=vss}
N 240 1830 240 1910 {lab=s0_i}
N 240 1800 260 1800 {lab=vdd}
N 260 1670 260 1800 {lab=vdd}
N 240 1940 260 1940 {lab=vss}
N 260 1940 260 2050 {lab=vss}
N 450 1750 450 1770 {lab=vdd}
N 450 1970 450 1990 {lab=vss}
N 450 1830 450 1910 {lab=s1_i}
N 430 1800 450 1800 {lab=vdd}
N 430 1670 430 1800 {lab=vdd}
N 430 1940 450 1940 {lab=vss}
N 430 1940 430 2050 {lab=vss}
N 320 1670 370 1670 {lab=vdd}
N 320 2050 370 2050 {lab=vss}
N 370 1670 430 1670 {lab=vdd}
N 370 2050 430 2050 {lab=vss}
N 450 1670 450 1750 {lab=vdd}
N 430 1670 450 1670 {lab=vdd}
N 450 1990 450 2050 {lab=vss}
N 430 2050 450 2050 {lab=vss}
N 240 1990 240 2050 {lab=vss}
N 240 1670 240 1750 {lab=vdd}
N 200 1800 200 1940 {lab=s0}
N 490 1800 490 1940 {lab=s1}
N 150 1870 200 1870 {lab=s0}
N 490 1870 530 1870 {lab=s1}
N 360 180 670 180 {lab=vss}
N 360 -200 670 -200 {lab=vdd}
N -80 2690 330 2690 {lab=vss}
N -80 2310 330 2310 {lab=vdd}
N 250 2390 250 2410 {lab=vdd}
N 250 2610 250 2630 {lab=vss}
N 250 2470 250 2550 {lab=Y}
N 250 2440 270 2440 {lab=vdd}
N 270 2310 270 2440 {lab=vdd}
N 250 2580 270 2580 {lab=vss}
N 270 2580 270 2690 {lab=vss}
N 250 2630 250 2690 {lab=vss}
N 250 2310 250 2390 {lab=vdd}
N 210 2440 210 2580 {lab=Y_i}
N 160 2510 210 2510 {lab=Y_i}
N -430 -240 -380 -240 {lab=vdd}
N -430 -210 -380 -210 {lab=vss}
C {symbols/nfet_03v3.sym} -20 70 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} -20 -70 0 0 {name=M2
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
C {iopin.sym} -425 -210 1 0 {name=p1 lab=vss}
C {iopin.sym} -425 -240 1 1 {name=p2 lab=vdd}
C {ipin.sym} -40 0 0 0 {name=p3 lab=i0}
C {symbols/pfet_03v3.sym} 210 -70 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 210 70 0 0 {name=M4
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
C {symbols/nfet_03v3.sym} 690 70 0 1 {name=M5
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
C {symbols/pfet_03v3.sym} 690 -70 0 1 {name=M6
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
C {ipin.sym} 710 0 0 1 {name=p4 lab=i1}
C {symbols/pfet_03v3.sym} 460 -70 0 1 {name=M7
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
C {symbols/nfet_03v3.sym} 460 70 0 1 {name=M8
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
C {symbols/nfet_03v3.sym} -20 690 0 0 {name=M11
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
C {symbols/pfet_03v3.sym} -20 550 0 0 {name=M12
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
C {ipin.sym} -40 620 0 0 {name=p6 lab=i2}
C {symbols/pfet_03v3.sym} 210 550 0 0 {name=M13
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
C {symbols/nfet_03v3.sym} 210 690 0 0 {name=M14
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
C {symbols/nfet_03v3.sym} 690 690 0 1 {name=M15
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
C {symbols/pfet_03v3.sym} 690 550 0 1 {name=M16
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
C {ipin.sym} 710 620 0 1 {name=p7 lab=i3}
C {symbols/pfet_03v3.sym} 460 550 0 1 {name=M17
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
C {symbols/nfet_03v3.sym} 460 690 0 1 {name=M18
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
C {symbols/pfet_03v3.sym} 210 1150 0 0 {name=M9
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
C {symbols/nfet_03v3.sym} 210 1290 0 0 {name=M10
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
C {symbols/pfet_03v3.sym} 460 1150 0 1 {name=M19
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
C {symbols/nfet_03v3.sym} 460 1290 0 1 {name=M20
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
C {symbols/pfet_03v3.sym} 220 1800 0 0 {name=M21
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
C {symbols/nfet_03v3.sym} 220 1940 0 0 {name=M22
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
C {symbols/pfet_03v3.sym} 470 1800 0 1 {name=M23
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
C {symbols/nfet_03v3.sym} 470 1940 0 1 {name=M24
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
C {ipin.sym} 150 1870 0 0 {name=p13 lab=s0}
C {ipin.sym} 530 1870 0 1 {name=p14 lab=s1}
C {lab_wire.sym} 240 1870 0 1 {name=p15 sig_type=std_logic lab=s0_i}
C {lab_wire.sym} 450 1870 0 0 {name=p16 sig_type=std_logic lab=s1_i}
C {lab_wire.sym} 200 840 0 1 {name=p17 sig_type=std_logic lab=s0_i}
C {lab_wire.sym} 200 380 0 1 {name=p18 sig_type=std_logic lab=s0}
C {lab_wire.sym} 160 1870 0 1 {name=p19 sig_type=std_logic lab=s0}
C {lab_wire.sym} 500 1870 0 1 {name=p20 sig_type=std_logic lab=s1}
C {lab_wire.sym} 200 220 0 1 {name=p21 sig_type=std_logic lab=s0_i}
C {lab_wire.sym} 200 -240 0 1 {name=p22 sig_type=std_logic lab=s0}
C {lab_wire.sym} 230 1440 0 0 {name=p23 sig_type=std_logic lab=s1_i}
C {lab_wire.sym} 230 980 0 1 {name=p24 sig_type=std_logic lab=s1}
C {symbols/pfet_03v3.sym} 230 2440 0 0 {name=M25
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
C {symbols/nfet_03v3.sym} 230 2580 0 0 {name=M26
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
C {opin.sym} 250 2510 0 0 {name=p27 lab=Y}
C {lab_wire.sym} 300 1220 0 1 {name=p28 sig_type=std_logic lab=Y_i}
C {lab_wire.sym} 160 2510 0 0 {name=p29 sig_type=std_logic lab=Y_i}
C {lab_wire.sym} -390 -240 0 1 {name=p30 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -90 -200 0 1 {name=p31 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -90 420 0 1 {name=p9 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -90 1020 0 1 {name=p32 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -80 1670 0 1 {name=p5 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -70 2310 0 1 {name=p11 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -390 -210 0 1 {name=p8 sig_type=std_logic lab=vss}
C {lab_wire.sym} -90 180 0 1 {name=p10 sig_type=std_logic lab=vss}
C {lab_wire.sym} -70 2690 0 1 {name=p12 sig_type=std_logic lab=vss}
C {lab_wire.sym} -90 800 0 1 {name=p25 sig_type=std_logic lab=vss}
C {lab_wire.sym} -90 1400 0 1 {name=p26 sig_type=std_logic lab=vss}
C {lab_wire.sym} -80 2050 0 1 {name=p33 sig_type=std_logic lab=vss}
