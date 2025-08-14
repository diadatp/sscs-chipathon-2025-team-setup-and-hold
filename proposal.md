# SSCS Chipathon 2025 Digital Track Proposal

**Team Name:** Setup & Hold

**Track:** Digital Building Blocks with an LLM-driven Workflow

**Target Library:** OSU GF180MCU 3.3V 12-track Standard Cell Library

## Project Overview

Team *Setup & Hold* proposes to design and characterize an AOI222 standard cell (possibly at multiple drive strengths) for the OSU GF180MCU 3.3V 12-track standard cell library. We also hope to contribute our cell to the upstream library hoping it will improve synthesis quality for digital designs.

## Project Objectives

### Primary Goals
- Design and implement AOI222 standard cells, if possible at multiple drive strengths.
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
The AOI222 cell will be implemented using a similar design as the cell in the foundry-provided library.

### Characterization Methodology
Liberty file generation will be performed using three open source tools:
- **CharLib**: Primary characterization engine for timing and power analysis
- **Libretto**: Cross-validation
- **lctime**: Cross-validation including visualization of NLDM tables

## Team Composition
### Team Members
- **Yuri Honegger**: focus on schematic/layout - team 
  point of contact
- **Bittu**: focus on characterization
- **Kaviprashanna Krishnamoorthy**: 
- **shiriams**: 

## Milestones and Timeline
Note: We haven't updated the dates in here as it gets more clear what is expected when. 
Please check our [progress tracker](progress.md) for a more up-to-date version.

### Milestone 1: Detailed planning (July 15)
- **Deliverables**: Decide on architecture for standard cell, work distribution in team
- **Success Criteria**: Architecture clear, work distributed

### Milestone 2: Design Foundation (August 1)
- **Deliverables**: Completed schematics, initial simulation results, finish standard cell 
  template PCell (Yuri)
- **Success Criteria**: Functional verification passed, timing looks reasonable

### Milestone 3: Physical Implementation (August 29)
- **Deliverables**: Completed layouts for both cells, clean DRC/LVS results
- **Success Criteria**: Zero DRC violations, LVS clean, layout design rules satisfied

### Milestone 4: Characterization Complete (September 12)
- **Deliverables**: Liberty files from all three characterization tools, comparative analysis
- **Success Criteria**: Consistent characterization results across tools, liberty files syntax verified

### Milestone 5: Integration and Validation (after chip submission/end of september)
- **Deliverables**: Integrated cells in OSU library, synthesis test results, final documentation
- **Success Criteria**: Successful synthesis with new cells, measurable improvements demonstrated
