# FPGA MLP Inference Core (Zynq-7000)

Hardware for *An Ethernet-Enabled Customizable Neural Inference Framework on
Low-Cost FPGA SoC for High-Frequency Trading*.

This repository holds the RTL, the block design, the self-checking testbench,
the cycle-accurate reference model and the post-implementation reports. The
firmware, host tooling and verification scripts are in a separate repository
(see [Companion repository](#companion-repository)).

## What the core does

A fully hardware multi-layer perceptron runs inside the programmable logic of a
Xilinx XC7Z020 (ZedBoard). Feature vectors arrive over AXI-DMA / AXI-Stream and
a decision comes back over AXI-Lite.

| Property | Value |
|---|---|
| Device | XC7Z020-1CLG484, ZedBoard |
| Clock | 125 MHz, WNS 0.038 ns |
| Arithmetic | Q8.8 fixed point, 40-bit accumulator |
| Multipliers | 192 DSP48E1 slices, 87.3% of the device |
| LUTs | 27.2% |
| Pipeline | 13 stages, 3 neurons issued per cycle |
| Latency | 96 cycles, 768 ns, invariant |
| Network shape | Run-time configurable up to 4 layers, 64 neurons, 64 inputs |

The network shape is a run-time parameter rather than an elaboration-time one:
layer widths live in configuration registers, so a different topology is
deployed into the same unchanged bitstream over AXI-Lite with no synthesis step.

Latency follows an analytic model of `ceil(n/3) + 14` cycles per layer. A cycle
counter, readable at AXI-Lite offset `0x10`, reports the measured value after
every inference; over 100,000 consecutive inferences it returns the same number
every time, with zero standard deviation.

## Layout

```
hft.srcs/sources_1/new/
    mlp_engine.vhd          the inference core: FSM, 13-stage pipeline,
                            192 multipliers, adder tree, ping-pong buffers
    mlp_axi_wrapper.vhd     AXI-Lite control and AXI-Stream ingress
    weight_bram.vhd         per-input weight memory
    framework_pkg.vhd       shared types and constants
    mlp_verify_tb.vhd       self-checking testbench, tests T1 to T3
    mlp_tb.vhd              earlier ad-hoc testbench
hft.srcs/sources_1/bd/      block design (Zynq PS, AXI DMA, interconnect)
sim_model.py                cycle-accurate Python model of mlp_engine
rebuild_all.tcl             synthesis, implementation, bitstream, reports, .xsa
reports/                    post-implementation utilisation, timing, power
docs/                       supporting notes
REPRODUCIBILITY.md          how each number in the paper was produced
mlp_system_wrapper.xsa      hardware handoff for the firmware repository
```

Everything Vivado regenerates is excluded from version control; see
`.gitignore`.

## Rebuilding

Vivado 2025.2. From the Vivado TCL console:

```tcl
cd {path/to/hft}
source rebuild_all.tcl
```

This runs synthesis and implementation, writes the bitstream, produces the
utilisation, timing, power, clock and critical-path reports under `reports/`,
and exports `mlp_system_wrapper.xsa` with the bitstream embedded. It prints WNS,
WHS and TNS at the end, followed by the steps needed on the firmware side.

Batch equivalent:

```
vivado -mode batch -source {path/to/hft/rebuild_all.tcl}
```

## Verification

Three levels, described in full in `REPRODUCIBILITY.md`.

**Cycle-accurate model.** `sim_model.py` reproduces `mlp_engine.vhd` exactly,
including VHDL two-phase signal semantics. It was used to find the correct
values of the pipeline alignment constants without a Vivado run:

```
python3 sim_model.py
```

**Directed RTL simulation.** Set `mlp_verify_tb.vhd` as the simulation-only top
and run a behavioural simulation. Three tests isolate three mechanisms:

| Test | Stresses | Expected |
|---|---|---|
| T1 | the datapath alone: multiply, adder tree, `>>8` | pass-through of a scaled input |
| T2 | bias pipeline alignment (`bias_pipe`) | `[1, 2, 3]` |
| T3 | write-back indexing (`fsm_wb_base_idx`) | `[1, 2, 3]` |

The stimulus uses distinctive poison values, so a missing write-back returns the
input rather than the expected result and cannot be mistaken for a pass.

**On-hardware comparison.** Performed from the companion repository against an
independent golden model. Across four topologies the hardware reproduced the
model on 400,000 inferences and all 1,200,000 raw output values without a single
discrepancy.

## Pipeline alignment constants

Three constants in `mlp_engine.vhd` set the alignment of the token pipeline
against the data pipeline. Directed simulation showed all three were wrong, and
each defect is documented at the point of the fix in the source:

| Constant | Was | Is | Symptom |
|---|---|---|---|
| `BIAS_STAGE` | 11 | 9 | bias arrived two iterations, six neurons, behind its own neuron |
| `WB_STAGE` | 12 | 11 | each result written nine indices back, neurons 0 to 8 lost |
| `MUX_STAGE` | 2 | 1 | every layer read from the wrong ping-pong buffer |

These had never been caught because the design had never been simulated: a
multiple-driver error on `layer_pipe` and `iter_pipe`, both unresolved integer
types, made XSIM refuse to elaborate. The token shift was moved into the Issue
FSM process to leave a single driver, on the same clock edge and in the same
order, so functional behaviour is unchanged.

## Debug and measurement outputs

The core exposes five one-cycle pulses on PMOD JA for oscilloscope measurement:
`dbg_data_in_pulse` and `dbg_layer1..4_done`. The interval between the first and
last pulse is the whole inference. The cycle counter at AXI-Lite `0x10` is the
preferred instrument and is what the reported figures use.

## Companion repository

Firmware, host engine, GUI and verification scripts:
<https://github.com/ozkanerbatuhan/HFT_vitis>

That repository generates its Vitis platform from `mlp_system_wrapper.xsa` in
this one, so the firmware can be rebuilt without running Vivado.

## Citing

Citation details will be added once the paper is published. Until then, please
reference this repository directly.
