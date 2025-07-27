# README

## 1. Differences Between SystemVerilog (SV) and VHDL

| Feature          | SystemVerilog (SV)                          | VHDL                                   |
|------------------|--------------------------------------------|----------------------------------------|
| **Origin**       | Based on Verilog, extended for modern use | Developed from Ada (strongly typed)    |
| **Syntax**       | C-like, concise, case-sensitive, procedural| Ada-like, verbose, case-insensitive    |
| **Strengths**    | Popular in industry, great for simulation and verification (object-oriented features, assertions) | Preferred in academia, highly reliable, good for complex, large designs |
| **Type System**  | Loosely typed; implicit conversions allowed| Strongly typed; explicit conversions required |
| **Design Units** | Modules, interfaces, packages, classes     | Entities, architectures, packages      |
| **Usage**        | Widely used in ASIC, FPGA (US industry)   | Strong in FPGA (Europe/Asia), industry and education |
| **Comments**     | `//` single-line and `/* */` multi-line   | `--` single-line only                   |
| **Simulation**   | Advanced verification features (Assertions, Covergroups, Classes) | VHDL-2008 includes some verification features; testbenches structured differently |

## 2. What Are Combinational and Sequential Circuits?

- **Combinational Circuits:**  
  Output depends only on the current inputs.  
  Examples: Logic gates, adders, multiplexers, decoders, encoders, comparators.  
  Properties: No memory; output is computed instantly from inputs.

- **Sequential Circuits:**  
  Output depends on current inputs and past inputs (history) through storage elements.  
  Examples: Latches, flip-flops, counters, shift registers, sequence generators.  
  Properties: Have memory; rely on clocks and store state.

## 3. My Learnings & Outcomes

By developing and organizing this repository with SystemVerilog and VHDL code for both combinational and sequential digital circuits—including flip-flops, latches, adders, and more—I have gained valuable hands-on experience with hardware description languages and digital design concepts.

### What I Learned:
- How to write synthesizable and testable RTL code in both SystemVerilog and VHDL for a variety of fundamental digital building blocks.
- The key differences in syntax, coding style, and design methodology between SV and VHDL.
- The distinction between combinational and sequential logic and how to properly model each using HDL constructs.
- To organize and maintain multiple related HDL modules/entities efficiently within consolidated source files.
- How to prepare my designs for simulation, synthesis, and eventual hardware implementation workflows.

### Outcomes from this Work:
- I have successfully created a comprehensive set of reusable HDL modules for essential digital circuits.
- I am confident in translating digital logic diagrams into both SV and VHDL code.
- I can effectively instantiate and integrate these modules into larger designs or testbenches.
- This repository reflects my growing capability to design, test, and manage digital hardware structures using industry-standard HDLs.
- It equips me with foundational skills necessary for further study or professional work in digital systems design and FPGA/ASIC development.

This collection demonstrates my practical competence in digital hardware description languages as well as my understanding of core digital systems concepts.


