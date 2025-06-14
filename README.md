# Lipsi - A Processor Design
Lipsi is a custom-designed processor project implemented using Verilog HDL. The design was developed and tested using AMD's Vivado 2024.2 and deployed on a Basys 3 FPGA development board. This project demonstrates core concepts of processor architecture, digital design, and FPGA-based implementation.

## Table of Contents
- [Overview](#overview)   
- [Features](#features)   
- [Specifications](#specifications)   
- [Technologies Used](#technologies-used)   
- [Hardware Requirements](#hardware-requirements)   
- [Installation](#installation)   
- [Team Members](#team-members)   
- [Supervision](#supervision)   
- [License](#license)   
- [Contact](#contact)


## Overview
Lipsi is a simplified yet functioning processor architecture created for educational and experimental purposes. It includes a basic instruction set and supports fundamental ALU operations, branching, and memory access. The processor has been successfully verified through simulation and real-time testing on FPGA hardware.

## Features 
 * 8-bit data path processor   
 * Custom instruction set architecture (ISA)   
 * Program Counter (PC), Instruction Register (IR), ALU, and Memory units   
 * Support for branching and arithmetic instructions   
 * Clock cycle-accurate operation   
 * Real-time verification on Basys 3 FPGA board   
 * Modular Verilog code structure for easy debugging and extension 

## Specifications
 * Instruction Set: Custom-designed, 1-byte instructions  
 * Word Size: 8-bit  
 * Registers: 16 general-purpose registers   
 * Clock Frequency: Configurable  
 * Memory: Integrated instuction and Data Memory (Von Neumann architecture) 

## Technologies Used
* Language: Verilog HDL
* Software: Vivado 2023.2 
* Target Board: Basys 3 (Artix-7 FPGA)
* Simulation: Vivado's built-in XSIM, Modelsim, gtkwave

## Hardware Requirements
*  Basys 3 FPGA Development Board
*  Micro USB cable for programming
*  PC with AMD Vivado 2023.2 or newer installed

## Installation
Follow these steps to simulate or deploy Lipsi on your FPGA board:
1. Clone this repository:
   ```  bash
   git clone https://github.com/Air-36/Lipsi_Project.git
   cd Lipsi_Project  
   ```
2. Open Vivado and create a new project.
3. Add the Verilog source files from the src/ directory.
4. Set the target FPGA to xc7a35tcpg236-1 (for Basys 3).
5. Create or use an existing constraints file (.xdc) for pin mapping.
6. Run synthesis, implementation, and generate bitstream.
7. Use the Hardware Manager to program the Basys 3 board.

## Team Members
* [Shrinivas Basanagouda Malipatil](https://github.com/Air-36)    
* [Shishir Ravi Jois](https://github.com/ShishirRJ)              

## Supervision
This project was completed under the guidance of:

[Dr. Srinivas Boppu](https://secs.iitbbs.ac.in/index.php/sboppu/)  
School of Electrical and computer sciences,  
Indian Institute of technology,    
Bhubaneshwar

## Contact 
Shrinivas Basanagouda Malipatil   
Email    : shrinivasmalipatil@gmail.com   
LinkedIn : [Shrinivas Malipatil](https://in.linkedin.com/in/shrinivas-malipatil-2745492b8)

Shishir Ravi Jois   
E-mail   : shishirjois04@gmail.com  
LinkedIn : [Shishir Ravi Jois](https://www.linkedin.com/in/shishir-ravi-jois-a8a595280)
