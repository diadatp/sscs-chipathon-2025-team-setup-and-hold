# MUX4 Architectures

Also see the attached PDF for some drawings.

## MUX2
Before looking at MUX4, I think it is useful to look at MUX2 cells. This is because both in GF180(`gf180mcu_fd_sc_mcu7t5v0__mux4_1`) and SKY130(`sky130_fd_sc_hd__mux4_1`) MUX4 cells are built using 3 MUX2 circuits. It can also provides more inspiration for MUX4 topologies.

### Dual-Gate MUX2
This architecture is used in `gf180mcu_fd_sc_mcu7t5v0__mux2_1` and `sky130_fd_sc_hd__mux4_1`. 

The idea is to use two-gate transistors. One gate is connected to the input and the other to a control signal. This way, it combines a inverter and transmission gate into one. The output is also passed through an inverter.

### Transmission MUX2
This is used by `gf180mcu_osu_sc_gp12t3v3__mux2_1`

This architecture connects the inputs to the output directly using transmission gates. 

I'm a bit worried how well that works if multiple MUX2s are chained behind each other: It doesn't have any drive strength.

### Inverter-Transmission-Inverter MUX2
I have not found this implementation in the wild since the other architectures are smaller.

First, the input is inverted, then there are transmission gates to merge the two input into one wire, and then there is an output inverter.

### Transmission-Inverter-Inverter MUX2
I haven't seen this anywhere. The idea is to take the OSU transmission gate MUX2 and add a buffer to the output. By combining these two into one cell, you are probably a bit more compact than having these two cell separately.
## MUX4
Now to the actual stuff :)
### Inverter-Transmission-Inverter MUX4
This architecture is used in `gf180mcu_fd_sc_mcu7t5v0__mux2_1` and `sky130_fd_sc_hd__mux4_1`. 

It work similar to the MUX2 with the same architecture. The input is inverted, flows through a first transmission-gate MUX2, then through a second transmission-gate MUX2, is inverted and fed to the output.

One advantage of this design is that to add more drive strength the output inverter can be beefed up quite easily.

This is not the most compact option, but it seems popular, so we can be sure it works well.

### Dual-Gate MUX4
I haven't seen this architecture used anywhere. It uses two levels of dual-gate MUX2s. It could be interesting since the dual-gate MUX2 seems to be the most popular option for MUX2 design. It also provides some options to control drive strength, but the output transistors are these dual-gate transistors, which might prove to be more difficult to tune for higher drive strength. Also, a higher drive strength version will require more changes than in most other versions since there isn't just a simple, single output tranistor.

### Transmission MUX4
I haven't seen this architecture used anywhere. It takes the idea of the OSU MUX2 and applies it to a MUX4 by using two levels of transmission gate MUX2s

It shares the same issue: The output has not drive strength since the signal is not amplified. In our proposal, one goal is to implement multiple drive strengths, so I suggest this architecture is not an option.

This is probably the most compact option.
### Transmission-Inverter-Inverter MUX4
I haven't seen this anywhere. The idea is to take the transmission gate MUX4 architecture and add a buffer to the output. By combining these two into one cell, you are probably a bit more compact than having these two cell separately.

This architecture is intriguing because it is more compact than the inverter-transmission-inverter MUX4 (4 inverters->1 inverter) yet it still provides the option to add more drive strengths. I'm not sure of the performance implications of having the inputs pass through transmission gates first though.

### Single-Level MUX4
Until now, all MUX4 designs have used two levels of MUX2. One idea would be to use 4 transmission gates connecting the inputs (inverted or not) to a common output. 
I haven't seen this architecture implemented anywhere. I think this is so because generating the control signals that drive the transmission gates is significantly more complicated here: You need to fully decode a 2-bit signal into active high and active low signals, so in total 8 control signals. In contrast, when using two levels of MUX2s, you can get by with just 4 control signals that are also easier to generate since they are just S0/S1 and S0_i/S1_i.


## Favorites (Yuri)
- I'd suggest looking at the Transmission-Inverter-Inverter and Inverter-Transmission-Inverter versions