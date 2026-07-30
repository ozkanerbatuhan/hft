# Reproducibility Artifact

Supporting material for *"An Ethernet-Enabled Customizable Neural Inference
Framework on Low-Cost FPGA SoC for High-Frequency Trading"* (submitted to the
Journal of Systems Architecture).

This document describes what is in the artifact, how to rebuild the design from
source, and how to reproduce each claim in the paper.

---

## 1. What is here

The artifact spans two repositories.

### `hft/` — hardware

| Path | Contents |
|---|---|
| `hft.srcs/sources_1/new/mlp_engine.vhd` | Inference core: issue FSM, 13-stage token pipeline, 192-multiplier SIMD array, fabric adder tree, ping-pong activation buffers |
| `hft.srcs/sources_1/new/mlp_axi_wrapper.vhd` | AXI4-Lite + AXI4-Stream wrapper, weight/bias memory write path, debug pins |
| `hft.srcs/sources_1/new/framework_pkg.vhd` | Fixed-point parameters, array types, `saturate()` |
| `hft.srcs/sources_1/new/weight_bram.vhd` | True dual-port weight memory (1-cycle registered read) |
| `hft.srcs/sources_1/new/mlp_verify_tb.vhd` | Self-checking testbench (Section 3) |
| `sim_model.py` | Cycle-accurate Python model of `mlp_engine` (Section 4) |
| `rebuild_all.tcl` | Synthesis → implementation → bitstream → reports → `.xsa`, one command |
| `reports/` | Post-implementation utilization, timing, power and critical-path reports |

### `vitis_projects/` — firmware and host tooling

| Path | Contents |
|---|---|
| `lwip_echo_server/src/main.c` | Bare-metal PS application: lwIP UDP handler, DMA hand-off, result read-back, per-stage timestamping |
| `lwip_echo_server/src/mlp_weight_loader.h` | Weight/bias upload over AXI-Lite |
| `pc_test/linux/hft_engine_linux.cpp` | Host streaming engine, per-packet logging |
| `pc_test/hft_frontend.py` | GUI: model conversion (`.pth` → `.bin`), streaming control |
| `pc_test/verify/` | Verification tooling (below) |
| `pc_test/_archive_pre_verify/` | Measurement logs behind the latency results |

---

## 2. Rebuilding the hardware

Requires Vivado 2025.2. From the Vivado Tcl console:

```tcl
cd {D:/vivado projects/hft}
source rebuild_all.tcl
```

This runs synthesis and implementation, writes the bitstream, regenerates the
four reports under `reports/`, and exports `mlp_system_wrapper.xsa` with the
bitstream embedded. Expected result: timing met, WNS ≈ 0.04 ns at 125 MHz.

To deploy: update the Vitis platform with the new `.xsa`, rebuild the platform
and the application, then package with `verify_boot.bif`.

> The `.bit` inside the boot image must match the one just produced. Checking its
> MD5 against the synthesis output takes a moment and prevents an entire class of
> confusion.

---

## 3. Reproducing the RTL verification (no board required)

Set `mlp_verify_tb` as the simulation top in Vivado and run:

```tcl
close_sim -force -quiet
reset_simulation -simset sim_1 -mode behavioral
launch_simulation
run all
```

Three directed tests isolate independent mechanisms of the engine:

| Test | Isolates | Expected |
|---|---|---|
| T1 | Multiply–reduce–rescale datapath | `[2560, 0, 0]` |
| T2 | Bias pipeline alignment | `[1, 2, 3]` |
| T3 | Write-back indexing | `[1, 2, 3]` |

Expected console output: `SONUC: 3 PASS / 0 FAIL`.

Input positions not overwritten by the network are pre-loaded with distinctive
values, so a missing write-back cannot be mistaken for a correct result. This
matters: an earlier version of the testbench used a pass-through chain whose
expected output happened to equal the input, and consequently reported a false
pass.

---

## 4. Reproducing the cycle-accurate model

```bash
python3 sim_model.py
```

`sim_model.py` reproduces the RTL cycle by cycle, including the issue FSM, the
one-cycle BRAM read latency, the token pipeline and the ping-pong write-back. It
was validated against Vivado simulation: both produce identical outputs for the
same stimulus.

Its purpose is that pipeline-alignment parameters can be swept in seconds
instead of minutes. The three constants `BIAS_STAGE`, `WB_STAGE` and `MUX_STAGE`
in `mlp_engine.vhd` were determined this way; with the values now in the source,
the model agrees with the golden reference on 240 randomised cases (60 random
parameter sets × 4 random input vectors), and with the original values on none.

---

## 5. Reproducing the on-hardware verification

```bash
# 1. Stimulus (fixed seed, so the file is reproducible)
cd pc_test/verify
python3 make_verify_stream.py --rows 100000 --out verify_stream.csv

# 2. Host engine
cd ../linux
g++ -O2 -o hft_engine_linux hft_engine_linux.cpp -lpthread

# 3. One run per model; HFT_LOG keeps the logs separate
HFT_LOG=log_mlp_40_64_32_16_3.csv ./hft_engine_linux
#    then, in the GUI: load the model, select verify_stream.csv, delay 0, start

# 4. Compare against the golden model
cd ../verify
python3 verify_bitexact.py --stream verify_stream.csv \
    --log ../linux/log_mlp_40_64_32_16_3.csv \
    --model models/mlp_40_64_32_16_3_bfdb6941.pth
```

Expected: `SONUC: BIT-EXACT DOGRULANDI`, with 100.0000 % on both the decision
and the raw-output comparison.

The stimulus is synthetic rather than recorded market data, deliberately. Its
values span the $Q8.8$ interval and include one-hot vectors, sign transitions and
saturation cases, so it exercises the paths that market data — whose dynamic
range sits far outside $Q8.8$ — would leave untested.

Four models are provided in `verify/models/`, named after their topology. The
model under `verify/models/rejected/` produces the same class for every input;
it is kept only to document why it is unsuitable, since a degenerate model makes
the decision-level comparison meaningless.

---

## 6. Mapping from paper claims to artifacts

| Claim | Where to check |
|---|---|
| 768 ns core latency, per-layer breakdown | `reports/`, oscilloscope figures, Eq. (1) in the paper |
| Analytic cycle model | `sim_model.py`, `mlp_engine.vhd` issue FSM |
| Three pipeline-alignment defects | `mlp_verify_tb.vhd`, constants in `mlp_engine.vhd` with commentary |
| Bit-exact hardware agreement | `verify/verify_bitexact.py` plus the run logs |
| Run-time topology reconfiguration | Four models in `verify/models/`, one bitstream |
| Resource, timing, power | `reports/util.rpt`, `timing.rpt`, `power.rpt` |
| Critical path | `reports/critical_paths.rpt` |
| Per-stage end-to-end latency | `pc_test/_archive_pre_verify/`, `parse_stage_timing.py` |

---

## 7. Known limitations

- Network shape is reconfigurable within compile-time bounds: at most four
  layers, at most 64 neurons per layer, at most 64 inputs per layer. These follow
  from the weight-memory instantiation, not from the arithmetic.
- Feature construction and $Q8.8$ conversion happen on the host, not on the PS.
  The board receives an already-quantised vector.
- The argmax over the three output scores is evaluated in PS software after
  read-back, not in the fabric.
- Reported power is a Vivado vectorless estimate, not a measurement.
