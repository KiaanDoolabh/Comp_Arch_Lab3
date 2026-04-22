# Synthesis Results — riscvsingle (Lab 2)
**Tool:** Synopsys Design Compiler W-2024.09-SP5
**Technology:** Sky90 (scc9gena_tt_1.2v_25C)
**Date:** 2026-04-22
**Top-level module:** `riscvsingle`

---

## Area

| Metric                  | Value          |
|-------------------------|----------------|
| Total cell area         | 33,964.84 µm²  |
| Combinational area      | 20,856.36 µm²  |
| Non-combinational area  | 13,108.48 µm²  |
| Buf/Inv area            | 515.48 µm²     |
| Number of ports         | 1,430          |
| Number of nets          | 6,400          |
| Number of cells         | 5,096          |
| Combinational cells     | 4,057          |
| Sequential cells        | 1,024          |

### Hierarchical Area Breakdown

| Module                  | Area (µm²) | % of Total | Description                   |
|-------------------------|------------|------------|-------------------------------|
| `riscvsingle` (total)   | 33,964.84  | 100.0%     | Full single-cycle processor   |
| `dp` (datapath)         | 33,780.60  | 99.5%      | Datapath                      |
| `dp/rf` (regfile)       | 26,402.18  | 77.7%      | Register file                 |
| `dp/alu`                | 3,790.64   | 11.2%      | ALU                           |
| `dp/bc`                 | 697.76     | 2.1%       | Branch comparator             |
| `dp/pcreg`              | 472.36     | 1.4%       | PC register                   |
| `dp/resultmux`          | 351.82     | 1.0%       | Result select mux             |
| `dp/le`                 | 320.46     | 0.9%       | Load extension (lb/lh/lbu/lhu)|
| `dp/srcbmux`            | 222.46     | 0.7%       | ALU source B mux              |
| `dp/pcmux`              | 219.52     | 0.6%       | PC select mux                 |
| `dp/pcadd4`             | 217.56     | 0.6%       | PC + 4 adder                  |
| `dp/ext`                | 205.80     | 0.6%       | Immediate extension unit      |
| `dp/srcamux`            | 195.02     | 0.6%       | ALU source A mux              |
| `c` (controller)        | 139.16     | 0.4%       | Controller                    |
| `c/md`                  | 68.60      | 0.2%       | Main decoder                  |
| `c/ad`                  | 64.68      | 0.2%       | ALU decoder                   |

---

## Timing

### Frequency Sweep

| Frequency | Period   | Critical Path | Slack      | Status |
|-----------|----------|---------------|------------|--------|
| 10 MHz    | 100.0 ns | 5.536 ns      | +94.306 ns | MET    |
| 150 MHz   | 6.667 ns | 5.377 ns      | +1.234 ns  | MET    |
| 180 MHz   | 5.556 ns | 5.413 ns      | +0.086 ns  | MET    |
| 190 MHz   | 5.263 ns | 4.972 ns      | +0.246 ns  | MET    |
| 200 MHz   | 5.000 ns | 4.851 ns      | +0.103 ns  | MET    |

**MET range: 10 MHz – 200 MHz**

### Critical Path (at 200 MHz)

| Metric              | Value                                         |
|---------------------|-----------------------------------------------|
| Startpoint          | `Instr[21]` — input port clocked by `clk`     |
| Endpoint            | `dp/rf/rf_reg[1][31]` — register file flip-flop |
| Data arrival time   | 4.851 ns                                      |
| Data required time  | 4.955 ns                                      |
| Slack               | +0.103 ns (MET)                               |
| Path type           | Max delay path                                |
