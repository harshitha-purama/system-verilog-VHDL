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

## 3. Learning Objectives & Outcomes

**By working with this repository, you will:**

- Gain practical experience coding basic digital circuits in both major HDLs (SystemVerilog and VHDL).
- Understand the differences in syntax, structure, and design philosophy between SV and VHDL.
- Learn how to implement, simulate, and test both combinational and sequential logic.
- Build confidence in modeling and modifying digital hardware structures for ASIC/FPGA workflows.
- Develop skills that are valuable in university courses, labs, and real-world engineering projects.

**Outcomes:**

- Ability to translate digital logic schematics into both SV and VHDL code.
- Understanding of how to use and instantiate modules/entities from organized HDL files.
- Prepare for advanced hardware projects, industry job skills, or academic work in digital systems and computer architecture.

