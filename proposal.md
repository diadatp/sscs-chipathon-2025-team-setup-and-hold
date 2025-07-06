# SSCS Chipathon 2025 Digital Track Proposal

**Team Name:** Setup & Hold

**Track:** Digital Building Blocks with an LLM-driven Workflow

**Target Library:** OSU GF180MCU 3.3V 12-track Standard Cell Library

**Submission Date:** [July ??, 2025]

## Project Overview

Team *Setup & Hold* proposes to design and characterize a 4-to-1 multiplexer (MUX4) standard cell at two different drive strengths for the OSU GF180MCU 3.3V 12-track standard cell library. This project will enhance the existing OSU library by adding optimized MUX4 cells that will improve synthesis quality for complex digital designs.

## Project Objectives

### Primary Goals
- Design and implement MUX4 standard cells at two drive strengths (1X and 2X).
- Generate complete liberty files for both variants using open source and commercial characterization tools.
- Contribute finalized, verified cells to the OSU library repository.
- Demonstrate improved synthesis results using augmented library.

### Secondary Goals
- Compare characterization results across different open-source tools.
- Compare characterization results for CCS and NLDM delay models.
- Document our multi-tool cell characterization workflow.
- Document our design methodology for future library extensions.

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

### Team Members (Alphabetical?)
- **Member 1**: [Name] - Role: [Placeholder for mix of schematic, layout and characterization] - team point of contact
- **Member 2**: [Name] - Role: [Placeholder for mix of schematic, layout and characterization]
- **Member 3**: [Name] - Role: [Placeholder for mix of schematic, layout and characterization]
- **Member 4**: [Name] - Role: [Placeholder for mix of schematic, layout and characterization]

### Work Distribution
- **Schematic Design & Simulation**: [Member assignment placeholder]
- **Layout Design & Physical Verification**: [Member assignment placeholder]
- **Characterization & Liberty Generation**: [Member assignment placeholder]
- **Documentation & Repository Integration**: [Member assignment placeholder]
- **I'm sure there's more**: [Member assignment placeholder]

## Project Timeline
| Phase                                 | Task                                                   | Duration | Start Date   | End Date     | Responsible Member | Buffer Days |
|---------------------------------------|--------------------------------------------------------|----------|--------------|--------------|--------------------|-------------|
| **Phase 1: Foundation**               |                                                        |          |              |              |                    |             |
| 1.1                                   | Complete tutorial exercises and tool familiarization   | ? days   | June ??      | June ??      | All Members        | ?           |
| 1.2                                   | Finalize team organization and role assignments        | ? days   | June ??      | June 10      | All Members        | ?           |
| 1.3                                   | Establish development environment and repository setup | ? days   | June ??      | June 10      | [TBD]              | ?           |
| **Phase 2: Design Development**       |                                                        |          |              |              |                    |             |
| 2.1                                   | Complete schematic design for both drive strengths     | ? days   | July ??      | July ??      | [TBD]              | ?           |
| 2.2                                   | Perform initial schematic simulation and verification  | ? days   | July ??      | July ??      | [TBD]              | ?           |
| 2.3                                   | Layout design for MUX4_X1 variant                      | ? days   | July ??      | July ??      | [TBD]              | ?           |
| 2.4                                   | Layout design for MUX4_X2 variant                      | ? days   | July ??      | August ??    | [TBD]              | ?           |
| 2.5                                   | DRC and LVS verification for both cells                | ? days   | August ??    | August ??    | [TBD]              | ?           |
| **Phase 3: Characterization**         |                                                        |          |              |              |                    |             |
| 3.1                                   | CharLib setup and initial characterization runs        | ? days   | August ??    | August ??    | [TBD]              | ?           |
| 3.2                                   | Libretto characterization and cross-validation         | ? days   | August ??    | August ??    | [TBD]              | ?           |
| 3.3                                   | lctime characterization for combinational analysis     | ? days   | August ??    | August ??    | [TBD]              | ?           |
| 3.4                                   | Liberty file generation and optimization               | ? days   | August ??    | September ?? | [TBD]              | ?           |
| **Phase 4: Validation & Integration** |                                                        |          |              |              |                    |             |
| 4.1                                   | Synthesis testing with augmented library               | ? days   | September ?? | September ?? | [TBD]              | ?           |
| 4.2                                   | Performance comparison analysis                        | ? days   | September ?? | September ?? | [TBD]              | ?           |
| 4.3                                   | Final documentation and repository preparation         | ? days   | September ?? | September ?? | All Members        | ?           |
| 4.4                                   | Design review preparation and presentation             | ? days   | September ?? | September ?? | All Members        | ?           |

## Milestones and Deliverables

### Milestone 1: Design Foundation (July ?)
- **Deliverables**: Completed schematics for both drive strengths, initial simulation results
- **Success Criteria**: Functional verification passed, timing targets met

### Milestone 2: Physical Implementation (July or August ?)
- **Deliverables**: Completed layouts for both cells, clean DRC/LVS results
- **Success Criteria**: Zero DRC violations, LVS clean, layout design rules satisfied

### Milestone 3: Characterization Complete (September ?)
- **Deliverables**: Liberty files from all three characterization tools, comparative analysis
- **Success Criteria**: Consistent characterization results across tools, liberty files syntax verified

### Milestone 4: Integration and Validation (September ?)
- **Deliverables**: Integrated cells in OSU library, synthesis test results, final documentation
- **Success Criteria**: Successful synthesis with new cells, measurable improvements demonstrated

## Risk Assessment and Mitigation
