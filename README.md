# 🧠 VDF — VLSI Design Flow Assignments

This repository contains all assignments and project files completed as part of the **VLSI Design Flow (VDF)** course.  
It documents the end-to-end process of digital IC design — from RTL design to layout — using both **open-source** and **industry-grade EDA tools**.

---

## 📘 Overview

The **VLSI Design Flow** involves a sequence of automated steps that transform a high-level hardware description (HDL) into a manufacturable layout.  
Each assignment in this repository focuses on a specific stage of this flow, aiming to build a practical understanding of the chip design process.

### Topics Covered:
- RTL Design and Simulation  
- Logic Synthesis and Netlist Generation  
- Static Timing Analysis (STA)  
- Design Constraint Creation (SDC)  
- Floorplanning, Placement & Routing  
- Post-Layout Timing Verification  

---

## 🛠️ Tools Used

| Tool | Purpose |
|------|----------|
| **Cadence Genus** | Logic Synthesis and Netlist Generation |
| **Cadence Innovus** | Physical Design (Floorplanning, Placement, CTS, Routing) |
| **Cadence Tempus** | Static Timing and Signoff Analysis |
| **OpenSTA** | Open-source Static Timing Analysis |
| **Synopsys Design Compiler** *(reference use)* | Comparative synthesis experiments |
| **Verilog / SystemVerilog** | RTL Design |
| **SDC (Synopsys Design Constraints)** | Defining timing and I/O constraints |

---

## 📑 Key Concepts Demonstrated

- **RTL to GDSII Flow**: Complete front-end to back-end design cycle.  
- **Static Timing Analysis (STA)**: Setup and hold analysis using both Cadence Tempus and OpenSTA.  
- **Constraint Optimization**: Creating and refining `.sdc` files for accurate timing closure.  
- **Clock Tree Synthesis (CTS)**: Minimizing skew and balancing insertion delays.  
- **Post-Route Optimization**: Addressing violations in post-layout timing.  

---

## 📊 Example Results

- Timing reports showing **setup/hold slack** improvements.  
- Power and area reports comparing **pre- and post-synthesis** metrics.  
- Floorplan and routing screenshots showcasing **cell placement** and **clock network distribution**.

*(Actual data and screenshots are included within each assignment folder.)*

---

## 💡 How to Use

1. Clone the repository:
   ```bash
   git clone [https://github.com/<your-username>/VDF.git](https://github.com/NK278/VDF#)
   cd VDF

