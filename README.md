# 🔢 8-bit Pipelined ALU – RTL Design (Verilog)

## 📌 Project Overview
This project implements an **8-bit Arithmetic Logic Unit (ALU)** using **Verilog HDL**.  
The design is **pipelined** to improve timing performance and is verified using a self-written testbench.

This project was built to strengthen my understanding of:
- RTL design
- Sequential logic
- Pipelining
- Simulation & waveform analysis

---

## 🧠 Features
- 8-bit input operands
- Supported operations:
  - Addition
  - Subtraction
  - AND
  - OR
  - XOR
- **Pipelined architecture** for higher clock frequency
- Fully synthesizable RTL
- Verified using testbench and GTKWave

---

## 🏗️ Architecture
The ALU is implemented using a **2-stage pipeline**:
1. **Input Register Stage**
2. **ALU Operation Stage + Output Register**

This reduces the critical path and improves timing.

---

## 🧪 Verification
- A dedicated **testbench** applies multiple input combinations
- Output is validated through waveform inspection
- GTKWave is used for signal analysis

---

## 🛠️ Tools Used
- Verilog HDL
- Icarus Verilog
- GTKWave

---

## 📂 Project Structure

rtl/ → ALU RTL code

tb/ → Testbench

waveforms/ → Simulation waveforms

docs/ → Block diagrams

---

## 🚀 Future Enhancements
- Flag generation (zero, carry, overflow)
- Integration with FIFO
- RTL → GDS using OpenLane

---

## 👤 Author
**Lakshmi Narasimhulu (ECE Undergraduate)**  



