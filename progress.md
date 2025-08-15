# Progress Tracker

## Done
- July 10: standard cell template generator for klayout mostly ready
- July 30: decision to build an AOI222
- August 1: final schematic+symbol for our AOI222 ready
- August 2: functional simulation for AOI222 is working
- August 11: layout is LVS and DRC clean
- August 11: extraction of spice and lef files automated
- August 15: Initial version of liberty file using charlib. We got a first version, but we'll have to investigate what are good parameters.
- August 15: Integration PR submitted: https://github.com/sscs-ose/sscs-chipathon-2025/pull/120

## Next steps
- As soon as possible: Figure out reasonable parameters for liberty.
- August 22: Analyze charlib results for possible improvements, try to implement them. (diadatp, yuri)
- September 5: Research what it takes to integrate the cell into the OSU library (yuri, others also welcome)
- September 5: Test synthesis using our new cell (yuri, others also welcome)
- TBD: characterization with different tools (diadatp)
- TBD: compare characterization results between tools (diadatp)
- TBD: try to contribute our cell to the OSU library (all)
- TBD: document our workflow (all)