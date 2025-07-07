I've already done some experiments with MUX4 cells. 
- `mux4.sch` contains a (somewhat messy) drawing of the architecture I'd suggest.
- `mux4_tb.sch` contains a simple spice simulation to test if it functions correctly (just functional verification)

`stdcell-pcell` contains a klayout pcell to generate the transistors for a standard cell so you don't have to draw everything from scratch.
- still missing some stuff like substrate taps, but it works to check if layout ideas work