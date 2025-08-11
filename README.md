# sscs-chipathon-2025-team-setup-and-hold
SSCS Chipathon 2025 repository for the Setup &amp; Hold team

## Repository Structure
- [standard cell template PCell for klayout](klayout/README.md)

## Schematic Review
We plan to do an AOI222 standard cell in X1 drive strength for the OSU library. We plan to do at least a 12t version 
and perhaps a 9t version if we get the time.

The schematic can be found under [globalfoundries-pdk-libs-gf180mcu_sah_sc/cells/aoi222](globalfoundries-pdk-libs-gf180mcu_sah_sc/cells/aoi222).

## Functional Simulation
The testbed and verification script for functional simulation can be found in the [testbench](testbench) directory.

## Progress
### Current Sate
- We have decided on the schematic of the AOI222 we will implement.
- We have done a functional simulation of the cell. The circuit works, but we haven't really investigated timing.
- We have an initial LVS and DRC-clean layout.

### Immediate next steps
- The next step is to characterize it with CharLib, analyze the results and see if and how we can improve our design.
- We also need to figure out how to integrate our cell in a P&R flow and test the routability of pins.