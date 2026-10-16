#!/usr/bin/env python3
"""
Real timing for the hls4ml sweep: the sweep's Vivado step (hls4ml vsynth) runs
synthesis without a clock constraint, so it gives utilisation only and the clock
column is the HLS estimate. This script takes every sweep point that fits the
device, runs out-of-context synth + place + route with an 8 ns (125 MHz) clock on
ap_clk, and records WNS / achievable Fmax / post-route utilisation.

  C:/Users/ozkan/hls4ml-env/Scripts/python.exe zamanlama.py

Resumable (skips points whose timing_ooc.json exists). Results:
zamanlama_sonuc.csv next to this file, per-point reports in the project dir.
"""
import csv
import json
import os
import re
import subprocess
import time

HERE = os.path.dirname(os.path.abspath(__file__))
PRJ = r"D:/hls_prj"
VIVADO = r"D:\AMDDesignTools\2025.2\Vivado\bin\vivado.bat"
PART = "xc7z020clg484-1"
CLOCK_NS = 8.0
LUT_CAP = 53200  # XC7Z020; points above this cannot be placed
TOPOS = ["40-10-16-8-3", "40-32-16-8-3", "40-64-32-16-3", "40-64-64-32-3"]
RFS = [8, 16, 32, 64, 128]
JOB_TIMEOUT = 3 * 3600
LOG = os.path.join(HERE, "zamanlama.log")

TCL = r"""
create_project -in_memory -part {part}
add_files [glob {{{prj}/mlp_hls_prj/solution1/syn/verilog/*}}]
synth_design -top mlp_hls -part {part} -mode out_of_context
create_clock -period {clk} -name ap_clk [get_ports ap_clk]
opt_design
place_design
route_design
report_timing_summary -max_paths 3 -file {{{prj}/timing_ooc.rpt}}
report_utilization -file {{{prj}/util_ooc.rpt}}
"""


def log(msg):
    line = time.strftime("%Y-%m-%d %H:%M:%S ") + msg
    print(line, flush=True)
    with open(LOG, "a", encoding="utf-8") as f:
        f.write(line + "\n")


def parse(prj):
    with open(os.path.join(prj, "timing_ooc.rpt")) as f:
        t = f.read()
    m = re.search(r"WNS\(ns\).*?\n\s*-+.*?\n\s*(-?[\d.]+)\s+(-?[\d.]+)\s+(\d+)", t, re.S)
    wns, tns, fail = float(m.group(1)), float(m.group(2)), int(m.group(3))
    with open(os.path.join(prj, "util_ooc.rpt")) as f:
        u = f.read()

    def cell(name):
        m = re.search(r"\|\s*" + re.escape(name) + r"\s*\|\s*([\d.]+)", u)
        return float(m.group(1)) if m else None
    return {"wns_ns": wns, "tns_ns": tns, "failing_endpoints": fail,
            "met": wns >= 0, "fmax_mhz": round(1000.0 / (CLOCK_NS - wns), 1),
            "LUT": cell("Slice LUTs"), "FF": cell("Slice Registers"),
            "BRAM_tile": cell("Block RAM Tile"), "DSP": cell("DSPs")}


def main():
    rows = []
    for topo in TOPOS:
        for rf in RFS:
            prj = f"{PRJ}/{topo}_rf{rf}_resource"
            out = os.path.join(prj, "timing_ooc.json")
            with open(os.path.join(prj, "summary.json")) as f:
                rec = json.load(f)
            cs = rec["report"]["CSynthesisReport"]
            vs = rec["report"].get("VivadoSynthReport", {})
            row = {"topo": topo, "rf": rf, "hls_clock_ns": cs.get("EstimatedClockPeriod"),
                   "latency_best": cs.get("BestLatency"), "latency_worst": cs.get("WorstLatency"),
                   "synth_LUT": vs.get("LUT"), "synth_DSP": vs.get("DSP48E")}
            if float(vs.get("LUT", 0)) > LUT_CAP:
                row["status"] = "does_not_fit"
                log(f"{topo} rf{rf}: LUT {vs.get('LUT')} > {LUT_CAP}, atlandi")
                rows.append(row)
                continue
            if not os.path.exists(out):
                tcl = os.path.join(prj, "timing_ooc.tcl")
                with open(tcl, "w") as f:
                    f.write(TCL.format(part=PART, prj=prj, clk=CLOCK_NS))
                log(f"{topo} rf{rf}: basliyor")
                t0 = time.time()
                try:
                    r = subprocess.run([VIVADO, "-mode", "batch", "-nojournal", "-log",
                                        os.path.join(prj, "timing_ooc.log"), "-source", tcl],
                                       cwd=prj, capture_output=True, text=True,
                                       timeout=JOB_TIMEOUT)
                    rc = r.returncode
                except subprocess.TimeoutExpired:
                    rc = "timeout"
                dt = (time.time() - t0) / 60
                if rc != 0 or not os.path.exists(os.path.join(prj, "timing_ooc.rpt")):
                    row["status"] = f"fail rc={rc}"
                    log(f"{topo} rf{rf}: HATA {dt:.1f} dk rc={rc}")
                    rows.append(row)
                    continue
                res = parse(prj)
                res["minutes"] = round(dt, 1)
                with open(out, "w") as f:
                    json.dump(res, f, indent=2)
                log(f"{topo} rf{rf}: TAMAM {dt:.1f} dk {json.dumps(res)}")
            with open(out) as f:
                row.update(json.load(f))
            row["status"] = "ok"
            rows.append(row)
            write(rows)
    write(rows)
    log(f"=== bitti: {len(rows)} nokta")


def write(rows):
    keys = []
    for r in rows:
        keys += [k for k in r if k not in keys]
    with open(os.path.join(HERE, "zamanlama_sonuc.csv"), "w", newline="") as f:
        w = csv.DictWriter(f, fieldnames=keys)
        w.writeheader()
        w.writerows(rows)


if __name__ == "__main__":
    main()
