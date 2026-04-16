# HFT MLP Latency Optimization on ZedBoard

## Overview
This repository contains the hardware and software design for a High-Frequency Trading (HFT) Multi-Layer Perceptron (MLP) implemented on a ZedBoard (Zynq-7000 SoC). The project focuses on extreme latency optimization, aiming to achieve **sub-150 microsecond** end-to-end inference latency. Performance is realized by moving from a software-based / AXI-Lite serial processing bottleneck approach to a deeply pipelined, fully parallel MAC architecture implemented directly in the FPGA fabric using an AXI-Stream/AXI-DMA pipeline.

## System Architecture

The architecture partitions the workload between the Zynq Processing System (PS) and the Programmable Logic (PL):

1. **Software/PS**: Handles high-level control, network data packet ingestion (e.g., Ethernet MAC testing), and initiating DMA transfers.
2. **Hardware/PL (FPGA)**: A fully parallel, DSP-slice optimized Dense Layer MAC operation. By transitioning from a sequential FSM-based controller to parallel DSP slices, inference computation time is reduced from ~56 µs to approximately **1 µs**.
3. **Interconnect**: An AXI-DMA core transfers the required input vector directly into the FPGA via the high-speed AXI-Stream interfaces.

## Repository Contents

* `hft.srcs/` - Contains the primary VHDL source files, testbenches (`mlp_tb.vhd`), AXI wrappers (`mlp_axi_wrapper.vhd`), and constraints.
* `add_dma_block_design.tcl` - TCL script to generate the Vivado Block Design for the AXI-DMA data transfer pipeline.
* `run_synth.tcl` - Execution script for Vivado synthesis and implementation.
* `convert.py` - Python utility script used for data preparation, model parameter conversion, and latency analysis.

## Hardware Setup

* **Board**: Digilent ZedBoard (Zynq-7000 ARM/FPGA SoC)
* **IP Cores**: AXI-DMA, AXI Interconnect, Custom VHDL MLP core.
* **Tools**: Xilinx Vivado (Synthesis, Implementation, Bitstream Generation) & Vitis (Software Application).

## Getting Started

### 1. Build the Hardware Design

Run the provided TCL scripts in Vivado to rebuild the project block design and generate the bitstream:

```bash
vivado -mode batch -source run_synth.tcl
```
*(Alternatively, you can open the project in Vivado GUI and source `add_dma_block_design.tcl` to recreate the IP Integrator block design)*

### 2. Software Application

The generated hardware handoff (`.xsa`) can be imported into Vitis to create the software application. Run the software baremetal to test AXI-DMA data transfers to the MLP core and measure cycle-accurate turnaround times.

### 3. Testing and Verification

* **Simulation**: Use Vivado simulator to run `mlp_tb.vhd` to verify the mathematical accuracy and clock-cycle latency of the parallel dense layers.
* **Python Scripts**: `convert.py` can be utilized to format typical trading data into the fixed-point or required representation format expected by the VHDL core.

## Performance Metrics

* **Original Sequential FSM Latency**: ~56 µs over AXI-Lite
* **Target Parallel Implementation Latency**: ~1 µs compute latency
* **Target E2E Roundtrip Latency**: < 150 µs (including DMA overhead)

## Future Work

* Integrating 10G Ethernet MAC directly to the PL for further reduction in software/OS overhead.
* Expanding the MLP architecture to support larger node configurations while dealing with DSP slice constraints.
