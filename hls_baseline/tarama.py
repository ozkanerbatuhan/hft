#!/usr/bin/env python3
"""
hls4ml sweep for the paper: every topology x ReuseFactor, HLS C-synthesis plus
Vivado synthesis (real timing/utilisation, not the HLS estimate).

  C:/Users/ozkan/hls4ml-env/Scripts/python.exe tarama.py

Resumable: a job whose summary.json already holds a Vivado report is skipped.
Results: tarama_sonuc.json + tarama_sonuc.csv next to this file, progress in
tarama.log. On the first failure and at the end a task is pushed to the phone
(Bugun app) through BatuOS bugun.py.
"""
import csv
import json
import os
import subprocess
import sys
import time

HERE = os.path.dirname(os.path.abspath(__file__))
PY = r"C:/Users/ozkan/hls4ml-env/Scripts/python.exe"
PRJ = r"D:/hls_prj"
TOOLS = r"D:\AMDDesignTools\2025.2"
BUGUN = r"C:\Users\ozkan\OneDrive\Belgeler\BatuOS\.claude\scripts\bugun.py"

TOPOS = ["40-10-16-8-3", "40-32-16-8-3", "40-64-32-16-3", "40-64-64-32-3"]
RFS = [8, 16, 32, 64, 128]
STRATEGY = "Resource"
JOB_TIMEOUT = 3 * 3600

LOG = os.path.join(HERE, "tarama.log")


def log(msg):
    line = time.strftime("%Y-%m-%d %H:%M:%S ") + msg
    print(line, flush=True)
    with open(LOG, "a", encoding="utf-8") as f:
        f.write(line + "\n")


def notify(title, notes):
    try:
        remind = time.strftime("%Y-%m-%d %H:%M", time.localtime(time.time() + 120))
        # System python (firebase deps live there), not the hls4ml venv.
        r = subprocess.run([r"C:\Python314\python.exe", BUGUN, "add", "--title", title, "--notes", notes,
                            "--remind", remind, "--ref", "fpga-hls4ml-tarama"],
                           capture_output=True, text=True, timeout=120)
        log(f"bildirim: rc={r.returncode} {r.stdout.strip()[:200]} {r.stderr.strip()[:200]}")
    except Exception as e:  # never let a notification kill the sweep
        log(f"bildirim HATA: {e}")


def summary_path(topo, rf):
    return os.path.join(PRJ, f"{topo}_rf{rf}_{STRATEGY.lower()}", "summary.json")


def done(topo, rf):
    p = summary_path(topo, rf)
    if not os.path.exists(p):
        return None
    with open(p) as f:
        rec = json.load(f)
    rep = rec.get("report") or {}
    return rec if "VivadoSynthReport" in rep else None


def env():
    e = dict(os.environ)
    extra = [os.path.join(TOOLS, "Vitis", "bin"), os.path.join(TOOLS, "Vivado", "bin")]
    e["PATH"] = os.pathsep.join(extra + [e.get("PATH", "")])
    e["PYTHONIOENCODING"] = "utf-8"
    return e


def flat(rec):
    rep = rec.get("report") or {}
    cs = rep.get("CSynthesisReport") or {}
    vs = rep.get("VivadoSynthReport") or {}
    tr = rep.get("TimingReport") or {}
    row = {"topo": rec["topo"], "rf": rec["rf"], "strategy": rec["strategy"],
           "build_s": rec.get("build_seconds")}
    for k in ("EstimatedClockPeriod", "BestLatency", "WorstLatency", "IntervalMin",
              "BRAM_18K", "DSP", "FF", "LUT"):
        row["hls_" + k] = cs.get(k)
    for k, v in vs.items():
        row["viv_" + k] = v
    for k, v in tr.items():
        row["tim_" + k] = v
    return row


def write_results():
    recs = []
    for topo in TOPOS:
        for rf in RFS:
            p = summary_path(topo, rf)
            if os.path.exists(p):
                with open(p) as f:
                    recs.append(json.load(f))
    with open(os.path.join(HERE, "tarama_sonuc.json"), "w") as f:
        json.dump(recs, f, indent=2, default=str)
    rows = [flat(r) for r in recs]
    if rows:
        keys = []
        for r in rows:
            keys += [k for k in r if k not in keys]
        with open(os.path.join(HERE, "tarama_sonuc.csv"), "w", newline="") as f:
            w = csv.DictWriter(f, fieldnames=keys)
            w.writeheader()
            w.writerows(rows)
    return rows


def main():
    jobs = [(t, r) for t in TOPOS for r in RFS]
    log(f"=== tarama basladi: {len(jobs)} is, strateji {STRATEGY}")
    fails = []
    t_all = time.time()
    for i, (topo, rf) in enumerate(jobs, 1):
        if done(topo, rf):
            log(f"[{i}/{len(jobs)}] {topo} rf{rf}: zaten var, atlandi")
            continue
        log(f"[{i}/{len(jobs)}] {topo} rf{rf}: basliyor")
        t0 = time.time()
        joblog = os.path.join(HERE, "tarama_loglar", f"{topo}_rf{rf}.log")
        os.makedirs(os.path.dirname(joblog), exist_ok=True)
        try:
            with open(joblog, "w", encoding="utf-8") as jl:
                r = subprocess.run([PY, os.path.join(HERE, "hls_baseline.py"), "synth",
                                    "--topo", topo, "--rf", str(rf), "--strategy", STRATEGY,
                                    "--vsynth"], cwd=HERE, env=env(), stdout=jl,
                                   stderr=subprocess.STDOUT, timeout=JOB_TIMEOUT)
            rc = r.returncode
        except subprocess.TimeoutExpired:
            rc = "timeout"
        dt = (time.time() - t0) / 60
        rec = done(topo, rf)
        if rc == 0 and rec:
            vs = rec["report"].get("VivadoSynthReport", {})
            log(f"[{i}/{len(jobs)}] {topo} rf{rf}: TAMAM {dt:.1f} dk  {json.dumps(vs)[:300]}")
        else:
            why = f"rc={rc}, vivado raporu {'var' if rec else 'yok'}"
            log(f"[{i}/{len(jobs)}] {topo} rf{rf}: HATA {dt:.1f} dk ({why}), log {joblog}")
            fails.append(f"{topo} rf{rf} ({why})")
            if len(fails) == 1:
                notify("FPGA tarama: ilk hata",
                       f"{topo} rf{rf} basarisiz ({why}). Tarama devam ediyor. Log: {joblog}")
        write_results()
    rows = write_results()
    hrs = (time.time() - t_all) / 3600
    log(f"=== tarama bitti: {hrs:.1f} saat, {len(rows)} sonuc, {len(fails)} hata")
    notify("FPGA tarama bitti" + (f" ({len(fails)} hata)" if fails else ""),
           f"{hrs:.1f} saat, {len(rows)}/{len(jobs)} sonuc. "
           + ("Hatalar: " + "; ".join(fails[:6]) if fails else "Hepsi tamam.")
           + f" Sonuc: {os.path.join(HERE, 'tarama_sonuc.csv')}")


if __name__ == "__main__":
    main()
