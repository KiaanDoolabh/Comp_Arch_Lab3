# Synthesis Results — riscv_pipelined (Lab 3)
**Tool:** Synopsys Design Compiler W-2024.09-SP5
**Technology:** Sky90 (scc9gena_tt_1.2v_25C)
**Date:** 2026-04-22
**Top-level module:** `riscv`

---

## Area

| Metric                  | Value          |
|-------------------------|----------------|
| Total cell area         | 56,051.10 µm²  |
| Combinational area      | 22,910.44 µm²  |
| Non-combinational area  | 33,140.66 µm²  |
| Buf/Inv area            | 587.02 µm²     |
| Number of ports         | 2,965          |
| Number of nets          | 8,899          |
| Number of cells         | 6,061          |
| Combinational cells     | 4,508          |
| Sequential cells        | 1,527          |

### Hierarchical Area Breakdown

| Module               | Area (µm²) | % of Total | Description                   |
|----------------------|------------|------------|-------------------------------|
| `riscv` (total)      | 56,051.10  | 100.0%     | Full processor                |
| `dp` (datapath)      | 55,286.70  | 98.6%      | Datapath                      |
| `dp/rf` (regfile)    | 39,043.20  | 69.7%      | Register file                 |
| `dp/alu`             | 3,696.56   | 6.6%       | ALU                           |
| `dp/regE`            | 3,324.16   | 5.9%       | EX stage pipeline register    |
| `dp/regD`            | 1,982.54   | 3.5%       | ID stage pipeline register    |
| `dp/regM`            | 1,532.72   | 2.7%       | MEM stage pipeline register   |
| `dp/regW`            | 1,532.72   | 2.7%       | WB stage pipeline register    |
| `dp/pcreg`           | 691.88     | 1.2%       | PC register (stallable)       |
| `dp/branchadd`       | 456.68     | 0.8%       | Branch target adder           |
| `dp/sm`              | 365.54     | 0.7%       | Store merge (sb/sh support)   |
| `dp/faemux`          | 351.82     | 0.6%       | Forward mux A                 |
| `dp/fbemux`          | 351.82     | 0.6%       | Forward mux B                 |
| `dp/resultmux`       | 351.82     | 0.6%       | Result select mux             |
| `dp/le`              | 320.46     | 0.6%       | Load extension (lb/lh/lbu/lhu)|
| `c` (controller)     | 528.22     | 0.9%       | Controller                    |
| `c/controlregE`      | 258.72     | 0.5%       | EX control pipeline register  |
| `hu` (hazard unit)   | 236.18     | 0.4%       | Hazard detection unit         |

---

## Timing

### Frequency Sweep

| Frequency | Period   | Critical Path | Slack      | Status  |
|-----------|----------|---------------|------------|---------|
| 10 MHz    | 100.0 ns | 1.468 ns      | +48.485 ns | MET     |
| 300 MHz   | 3.333 ns | 3.267 ns      | +0.005 ns  | MET     |

**MET range: 10 MHz – 300 MHz**

### Critical Path (at 300 MHz)

| Metric              | Value                                      |
|---------------------|--------------------------------------------|
| Startpoint          | `dp/regW` — WB stage flip-flop (rising edge) |
| Endpoint            | `dp/rf` — register file write (falling edge) |
| Data arrival time   | 3.267 ns                                   |
| Data required time  | 3.273 ns                                   |
| Slack               | +0.005 ns (MET)                            |
| Path type           | Half-cycle (negedge register file write)   |
