ECEN-4243 Lab 3 Submission
Landon Schultz
Kiaan Doolabh

This folder contains our submission materials for Computer Architecture Lab 3.

Contents:

1. CompArch_Lab3_Report.pdf
   This is the written lab report. It covers the pipelined RISC-V design,
   ModelSim testing and waveform discussion, and the ASIC synthesis and area
   comparison results. The FPGA implementation section became bonus, so it was
   not completed and is only briefly addressed in the report.

2. riscv_pipelined.sv
   This is our main Lab 3 RTL design file. It contains the final pipelined
   RISC-V processor implementation that we used for simulation and analysis.

3. riscv_pipelinedviv.sv
   This is the Vivado/FPGA-oriented version of the pipelined processor. NOTE THAT THIS NEVER GOT IMPLIMENTED, AS WE RAN OUT OF TIME, BUT THIS WOULD BE OUR VIVADO CODE IF WE WERE TO HAVE COMPLETED IT

4. hdl/
   This folder contains the original HDL working directory used during
   development, including the ModelSim do file and related simulation support
   files. The most important files in this folder are:
   - hdl/riscv_pipelined.sv
   - hdl/riscv_pipelined.do
   - hdl/riscv_pipelinedviv.sv

5. report_material/
   This folder contains the waveform screenshots referenced in the report:
   - riscvtest_simWave.png
   - pipe-test_simWave.png
   - test_hw2_simWave.png

6. Single Synthesis Reports/
   This folder contains the single-cycle synthesis report set used for the
   Lab 2 versus Lab 3 comparison in the report.

7. Pipelined Synthesis Reports/
   This folder contains the pipelined synthesis report set used for the
   Lab 3 synthesis discussion and comparison table in the report.

Notes:

- The main RTL design for Lab 3 is riscv_pipelined.sv.
- The synthesis report folders contain the Synopsys Design Compiler outputs
  that were used to generate the timing and area discussion in the report.
- The waveform images in report_material/ are the screenshots referenced in
  the report when discussing processor behavior in simulation.
