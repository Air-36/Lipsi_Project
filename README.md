# Lipsi - A Microprocessor Design
Lipsi is a custom-designed microprocessor project implemented using Verilog HDL. The design was developed and tested using AMD's Vivado 2023.2 and deployed on a Basys 3 FPGA development board. This project demonstrates core concepts of processor architecture, digital design, and FPGA-based implementation.

# Table of Contents
> Overview
> Features
> Specifications
> Technologies Used
> Hardware Requirements
> Installation
> Team Members
> Supervision
> License
> Contact

# Overview
Lipsi is a simplified yet functioning processor architecture created for educational and experimental purposes. It includes a basic instruction set and supports fundamental ALU operations, branching, and memory access. The processor has been successfully verified through simulation and real-time testing on FPGA hardware.

# Features 
> 8-bit data path microprocessor
> Custom instruction set architecture (ISA)
> Program Counter (PC), Instruction Register (IR), ALU, and Memory units
> Support for branching and arithmetic instructions
> Clock cycle-accurate operation
> Real-time verification on Basys 3 FPGA board
> Modular Verilog code structure for easy debugging and extension 

# Specifications
> Instruction Set: Custom-designed, 1-byte instructions
> Word Size: 8-bit
> Registers: 16 general-purpose registers 
> Clock Frequency: Configurable
> Memory: Integrated instuction and Data Memory (Von Neumann architecture)


# Technologies Used
Language: Verilog HDL
Software: Vivado 2023.2 
Target Board: Basys 3 (Artix-7 FPGA)
Simulation: Vivado's built-in XSIM, Modelsim, gtkwave

# Hardware Requirements
> Basys 3 FPGA Development Board
> Micro USB cable for programming
> PC with AMD Vivado 2023.2 or newer installed

# Installation
Follow these steps to simulate or deploy Lipsi on your FPGA board:
1. Clone this repository:
   ``` 
   git clone https://github.com/Air-36/Lipsi_Project.git
   cd Lipsi_Project  
   ```
2. Open Vivado and create a new project.
3. Add the Verilog source files from the src/ directory.
4. Set the target FPGA to xc7a35tcpg236-1 (for Basys 3).
5. Create or use an existing constraints file (.xdc) for pin mapping.
6. Run synthesis, implementation, and generate bitstream.
7. Use the Hardware Manager to program the Basys 3 board.

# Team Members
Shrinivas Basanagouda Malipatil - 23EC01043
Shishir Ravi Jois               - 23EC01042

(B.Tech Second years, 
Electronic and communication, 
Indian Institute of technology, 
Bhubaneshwar)

# Supervision
This project was completed under the guidance of:

Dr. Srinivas Boppu
(School of Electrical and computer sciences,
Indian Institute of technology, 
Bhubaneshwar)

# Contact 
Shrinivas Basanagouda Malipatil 
Email    : shrinivasmalipatil@gmail.com
GitHub   : [https://github.com/Air-36]
LinkedIn : Shrinivas Malipatil

Shishir Ravi Jois 
E-mail   : shishirjois04@gmail.com
GitHub   : [https://github.com/ShishirRJ]
LinkedIn : Shishir Ravi Jois