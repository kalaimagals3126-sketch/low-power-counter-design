# Low Power Counter Design using Clock Gating Technique in Verilog HDL

## Overview
This project demonstrates the implementation of clock gating on a synchronous counter to reduce dynamic power dissipation in digital VLSI circuits. The design was implemented and analyzed using a low-power synthesis flow.

## Problem Statement
In digital systems, the clock signal continuously toggles even during idle conditions, causing unnecessary switching activity and increased dynamic power consumption. Since the clock network contributes a major portion of total power dissipation, reducing unnecessary clock transitions is essential for low-power VLSI design.

## Objective
- Implement clock gating on a synchronous counter
- Reduce switching activity and dynamic power
- Analyze power reduction using synthesis reports
- Understand low-power VLSI design methodology

## Concept Used: Clock Gating
Clock gating is a low-power technique used to disable the clock signal when the circuit is inactive. This minimizes unnecessary switching activity in flip-flops and sequential logic.

### Operation
- Enable = 0 → Clock OFF → No switching
- Enable = 1 → Clock ON → Counter active

## Features
- Low power architecture
- Integrated Clock Gating (ICG)
- Verilog HDL implementation
- Functional verification using testbench
- Power analysis and comparison

## Tools Used
- Cadence Genus
- Xilinx ISE
  

## Folder Structure
src/        -> Verilog source files  
tb/         -> Testbench files  
waveforms/  -> Simulation outputs  
rtl/        -> RTL schematics  
reports/    -> Power and timing reports  
docs/       -> Project documentation  

## Verilog Modules
- clock_gate
- counter
- tff
- testbench

## Results
Clock gating significantly reduced dynamic power consumption.

| Metric | Without Clock Gating | With Clock Gating |
|---|---|---|
| Total Power | 9.79231 × 10⁻⁶ W | 1.44807 × 10⁻⁶ W |
| Switching Power | 6.08861 × 10⁻⁷ W | 7.62412 × 10⁻⁸ W |

## Applications
- Low power embedded systems
- Battery operated devices
- FPGA based systems
- Modern VLSI circuits

## Future Scope
- Power gating implementation
- ASIC implementation
- Advanced low-power optimization

## Author
Kalaimagal S  
ECE Department
