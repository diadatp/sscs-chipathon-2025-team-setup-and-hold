# SSCS Chipathon 2025 Digital Track Proposal

**Team Name:** Setup & Hold

**Track:** Digital Building Blocks with an LLM-driven Workflow

**Target Library:** OSU GF180MCU 3.3V 12-track Standard Cell Library

## Project Overview

Team *Setup & Hold* proposes to design and characterize a 4-to-1 multiplexer (MUX4) standard cell at two different drive strengths for the OSU GF180MCU 3.3V 12-track standard cell library. This project will enhance the existing OSU library by adding optimized MUX4 cells that will improve synthesis quality for complex digital designs.

## Project Objectives

### Primary Goals
- Design and implement MUX4 standard cells at two drive strengths (1X and 2X).
- Generate complete liberty files for both variants using open source and commercial characterization tools.
- Contribute finalized, verified cells to the OSU library repository.
- Demonstrate improved synthesis results using augmented library (synthesis only, not manufactured).

### Secondary Goals
- Compare characterization results across different open-source tools.
- Compare characterization results for CCS and NLDM delay models.
- Document our multi-tool cell characterization workflow.
- Document our design methodology for future library extensions.
- Develop a standard cell template PCell for klayout to generate transistors+power rails

## Technical Approach

### Cell Design Strategy
The MUX4 cell will be implemented using (a transmission gate architecture??) optimized for the GF180MCU 3.3V process. Two drive strength variants will be developed:
- **MUX4_X1**: Standard drive strength for typical loading conditions
- **MUX4_X2**: High drive strength for heavy loading and critical timing paths

### Characterization Methodology
Liberty file generation will be performed using three open source tools:
- **CharLib**: Primary characterization engine for timing and power analysis
- **Libretto**: Cross-validation
- **lctime**: Cross-validation including visualization of NLDM tables

### Preliminary Research
Initial investigation has been conducted comparing equivalent MUX4 implementations in the foundry-provided SKY130 PDK and the foundry-provided GF180MCU 5V 7.5T and 9.5T libraries to establish design benchmarks and inspire layout.

## Team Composition
### Team Members
- **Yuri Honegger**: focus on schematic/layout - team 
  point of contact
- **Bittu**: focus on characterization
- **Kaviprashanna Krishnamoorthy**: 
- **shiriams**: 

## Milestones and Timeline

### Milestone 1: Detailed planning (July 15)
- **Deliverables**: Decide on architecture for standard cell, work distribution in team
- **Success Criteria**: Architecture clear, work distributed

### Milestone 2: Design Foundation (July 25)
- **Deliverables**: Completed schematics for both drive strengths, initial simulation results, finish standard cell 
  template PCell (Yuri)
- **Success Criteria**: Functional verification passed, timing targets met

### Milestone 3: Physical Implementation (August 29)
- **Deliverables**: Completed layouts for both cells, clean DRC/LVS results
- **Success Criteria**: Zero DRC violations, LVS clean, layout design rules satisfied

### Milestone 4: Characterization Complete (September 12)
- **Deliverables**: Liberty files from all three characterization tools, comparative analysis
- **Success Criteria**: Consistent characterization results across tools, liberty files syntax verified

### Milestone 5: Integration and Validation (after chip submission/end of september)
- **Deliverables**: Integrated cells in OSU library, synthesis test results, final documentation
- **Success Criteria**: Successful synthesis with new cells, measurable improvements demonstrated
