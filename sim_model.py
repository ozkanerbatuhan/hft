#!/usr/bin/env python3
"""
Cycle-accurate Python model of mlp_engine.vhd.

Purpose: find the correct values of BIAS_STAGE, WB_STAGE and MUX_STAGE
without a Vivado run. VHDL signal semantics are reproduced with a
two-phase update (all "next" values are computed first, then committed
together), which is the real delta-cycle behaviour.

Modelled: the Issue FSM, the 13-stage token pipeline, one-cycle BRAM
read latency, the multiplier MREG/PREG, the 64-to-1 adder tree, bias
addition, the arithmetic right shift by 8, saturation, ReLU, and the
ping-pong write-back.
"""

PAR = 3          # PARALLEL_NEURONS
NIN = 64         # MAX_INPUTS
NEU = 64         # MAX_NEURONS
DEPTH = 13       # valid_pipe(0..12)


def sat16(x):
    return 32767 if x > 32767 else (-32768 if x < -32768 else x)


def arshift(x, n):
    return x >> n          # Python >> zaten aritmetik (floor)


class Engine:
    def __init__(self, w_bram, b_bram, cfg, bias_stage, wb_stage, mux_stage=1):
        self.MUX_STAGE = mux_stage
        # w_bram[bram_idx][addr] , bram_idx = n*64 + i
        self.W = w_bram
        self.B = b_bram
        self.cfg = cfg                      # [l1,l2,l3,l4] cikis sayilari
        self.BIAS_STAGE = bias_stage
        self.WB_STAGE = wb_stage

        self.bufA = [0]*NEU
        self.bufB = [0]*NEU

        self.state = 'IDLE'
        self.layer_idx = 1
        self.iter_k = 0
        self.base_addr = 0
        self.w_rd_addr = 0

        self.valid = [0]*DEPTH
        self.layer = [1]*DEPTH
        self.iter = [0]*DEPTH
        self.bias = [[0]*PAR for _ in range(DEPTH)]

        self.w_rd_data = [0]*(PAR*NIN)      # BRAM cikis registeri
        self.b_rd_data = [0]*PAR

        self.in_reg = [0]*NIN
        self.w_reg = [[0]*NIN for _ in range(PAR)]
        self.mult_m = [[0]*NIN for _ in range(PAR)]
        self.mult_p = [[0]*NIN for _ in range(PAR)]
        self.sums = [None]*7                # sums[k] = 2^(6-k) elemanli
        self.sums[0] = [[0]*32 for _ in range(PAR)]
        self.sums[1] = [[0]*16 for _ in range(PAR)]
        self.sums[2] = [[0]*8 for _ in range(PAR)]
        self.sums[3] = [[0]*4 for _ in range(PAR)]
        self.sums[4] = [[0]*2 for _ in range(PAR)]
        self.sums[5] = [0]*PAR
        self.final = [0]*PAR

        self.wr_en = 0
        self.wr_target_B = 0
        self.wb_base = 0
        self.wb_data = [0]*PAR

        self.done = 0
        self.busy = 0

    def iters_for(self, layer):
        return (self.cfg[layer-1] + 2)//3

    def step(self, start):
        """Advance one clock edge."""
        cur_inputs = (self.bufA if self.layer[self.MUX_STAGE] in (1, 3) else self.bufB)[:]
        pipe_empty = 1 if not any(self.valid) else 0
        n = {}                                   # staged next values

        # ---------------- Issue FSM process ----------------
        n['valid'] = [0] + self.valid[:-1]
        n['layer'] = [self.layer[0]] + self.layer[:-1]
        n['iter'] = [self.iter[0]] + self.iter[:-1]
        n['valid'][0] = 0
        n['state'], n['layer_idx'] = self.state, self.layer_idx
        n['iter_k'], n['base_addr'] = self.iter_k, self.base_addr
        n['w_rd_addr'] = self.w_rd_addr
        n['done'], n['busy'] = self.done, self.busy
        it = self.iters_for(self.layer_idx)

        if self.state == 'IDLE':
            n['done'] = 0
            if start:
                n['busy'] = 1
                n['layer_idx'] = 1
                n['iter_k'] = 0
                n['base_addr'] = 0
                n['state'] = 'ISSUE'
        elif self.state == 'ISSUE':
            n['w_rd_addr'] = self.base_addr + self.iter_k
            n['valid'][0] = 1
            n['layer'][0] = self.layer_idx
            n['iter'][0] = self.iter_k
            if self.iter_k == it - 1:
                n['state'] = 'DRAIN'
            else:
                n['iter_k'] = self.iter_k + 1
        elif self.state == 'DRAIN':
            if pipe_empty:
                if self.layer_idx == 4:
                    n['done'] = 1
                    n['busy'] = 0
                    n['state'] = 'IDLE'
                else:
                    n['base_addr'] = self.base_addr + it
                    n['layer_idx'] = self.layer_idx + 1
                    n['iter_k'] = 0
                    n['state'] = 'ISSUE'

        # ---------------- BRAM (one-cycle latency) ----------------
        a = self.w_rd_addr
        n['w_rd_data'] = [self.W[i][a] for i in range(PAR*NIN)]
        n['b_rd_data'] = [self.B[i][a] for i in range(PAR)]

        # ---------------- Datapath process ----------------
        n['bias'] = [self.bias[0]] + self.bias[:-1]
        n['bias'][1] = self.b_rd_data[:]          # Stage 1

        n['in_reg'] = cur_inputs[:]               # Stage 2
        n['w_reg'] = [[self.w_rd_data[k*64+i] for i in range(NIN)] for k in range(PAR)]

        n['mult_m'] = [[self.in_reg[i]*self.w_reg[k][i] for i in range(NIN)] for k in range(PAR)]
        n['mult_p'] = [self.mult_m[k][:] for k in range(PAR)]

        s = [None]*6
        s[0] = [[self.mult_p[k][2*j] + self.mult_p[k][2*j+1] for j in range(32)] for k in range(PAR)]
        for lvl in range(1, 5):
            m = 16 >> (lvl-1)
            s[lvl] = [[self.sums[lvl-1][k][2*j] + self.sums[lvl-1][k][2*j+1] for j in range(m)] for k in range(PAR)]
        s[5] = [self.sums[4][k][0] + self.sums[4][k][1] for k in range(PAR)]
        n['sums'] = s

        n['final'] = [self.sums[5][k] + (self.bias[self.BIAS_STAGE][k] << 8) for k in range(PAR)]

        # ---------------- Write-back ----------------
        W = self.WB_STAGE
        n['wr_en'] = self.valid[W]
        n['wb_base'] = self.iter[W]*3
        n['wr_target_B'] = 1 if self.layer[W] in (1, 3) else 0
        wb = []
        for k in range(PAR):
            v = sat16(arshift(self.final[k], 8))
            if self.layer[W] < 4 and v < 0:
                v = 0
            wb.append(v)
        n['wb_data'] = wb

        # ---------------- Buffer write process ----------------
        newA, newB = self.bufA[:], self.bufB[:]
        if self.wr_en:
            for k in range(PAR):
                idx = self.wb_base + k
                if idx < NEU:
                    if self.wr_target_B:
                        newB[idx] = self.wb_data[k]
                    else:
                        newA[idx] = self.wb_data[k]

        # ---------------- Commit ----------------
        self.valid, self.layer, self.iter = n['valid'], n['layer'], n['iter']
        self.bias = n['bias']
        self.state, self.layer_idx = n['state'], n['layer_idx']
        self.iter_k, self.base_addr = n['iter_k'], n['base_addr']
        self.w_rd_addr = n['w_rd_addr']
        self.done, self.busy = n['done'], n['busy']
        self.w_rd_data, self.b_rd_data = n['w_rd_data'], n['b_rd_data']
        self.in_reg, self.w_reg = n['in_reg'], n['w_reg']
        self.mult_m, self.mult_p = n['mult_m'], n['mult_p']
        self.sums = n['sums']
        self.final = n['final']
        self.wr_en, self.wb_base = n['wr_en'], n['wb_base']
        self.wr_target_B, self.wb_data = n['wr_target_B'], n['wb_data']
        self.bufA, self.bufB = newA, newB


# ---------------------------------------------------------------- helpers
BASE = {1: 0, 2: 22, 3: 33, 4: 39}


def blank():
    return ([[0]*128 for _ in range(PAR*NIN)], [[0]*128 for _ in range(PAR)])


def set_w(W, layer, neuron, inp, val):
    k, nn = neuron//3, neuron % 3
    W[nn*64 + inp][BASE[layer] + k] = val


def set_b(B, layer, neuron, val):
    k, nn = neuron//3, neuron % 3
    B[nn][BASE[layer] + k] = val


def run(W, B, x, bias_stage, wb_stage, cfg=(64, 32, 16, 3), max_cyc=4000):
    e = Engine(W, B, list(cfg), bias_stage, wb_stage)
    e.bufA = list(x) + [0]*(NEU-len(x))
    e.step(start=1)
    for _ in range(max_cyc):
        e.step(start=0)
        if e.done:
            break
    return e.bufA[:3], e.bufA


# ---------------------------------------------------------------- tests
ONE = 256


def build_T1():
    W, B = blank()
    set_w(W, 1, 0, 0, 2*ONE)
    for L in (2, 3, 4):
        set_w(W, L, 0, 0, ONE)
    x = [0]*64
    x[0], x[1], x[2] = 5*ONE, -1000, -2000
    return W, B, x, [10*ONE, 0, 0]


def build_T2():
    W, B = blank()
    for j in range(64):
        set_b(B, 1, j, j+1)
    for i in range(32):
        set_w(W, 2, i, i, ONE)
    for i in range(16):
        set_w(W, 3, i, i, ONE)
    for i in range(3):
        set_w(W, 4, i, i, ONE)
    x = [0]*64
    x[0], x[1], x[2] = 4444, -1000, -2000
    return W, B, x, [1, 2, 3]


def build_T3():
    W, B = blank()
    for j in range(64):
        set_w(W, 1, j, 0, j+1)
    for i in range(32):
        set_w(W, 2, i, i, ONE)
    for i in range(16):
        set_w(W, 3, i, i, ONE)
    for i in range(3):
        set_w(W, 4, i, i, ONE)
    x = [0]*64
    x[0], x[1], x[2] = ONE, -1000, -2000
    return W, B, x, [1, 2, 3]


TESTS = [('T1', build_T1), ('T2', build_T2), ('T3', build_T3)]


def main():
    print('BIAS_STAGE x WB_STAGE taramasi\n')
    hits = []
    for bs in range(0, 13):
        for ws in range(0, 13):
            ok = 0
            outs = []
            for name, bld in TESTS:
                W, B, x, exp = bld()
                got, _ = run(W, B, x, bs, ws)
                outs.append(got)
                if got == exp:
                    ok += 1
            if ok == 3:
                hits.append((bs, ws))
                print('*** TAM ESLESME  BIAS_STAGE=%d  WB_STAGE=%d' % (bs, ws))
            elif ok == 2:
                print('  2/3           BIAS=%d WB=%d  %s' % (bs, ws, outs))
    print()
    if hits:
        print('SONUC -> BIAS_STAGE=%d, WB_STAGE=%d' % hits[0])
    else:
        print('No exact match. Output with the current RTL constants:')
        for name, bld in TESTS:
            W, B, x, exp = bld()
            got, _ = run(W, B, x, 9, 11)
            print('  %s beklenen %s  alinan %s' % (name, exp, got))


if __name__ == '__main__':
    main()
