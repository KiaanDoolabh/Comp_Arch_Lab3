# Lab 2

## Running the Simluation in ModelSim

Simulation is based in the **/hdl/** folder.

> cd hdl/

The loaded instructions can be changed by modifying the file reference *memfilename* in line 51 of **riscv_single.sv**.

> memfilename = {"*path/to/instructions.memfile*"};

To run the simulation, use:

> vsim -do riscv_single.do

To run only in the command line, use:

> vsim -do riscv_single.do **-c**

Note that this will only output possible errors and warnings, and is only useful for debugging syntax.

## Running the Logic on Hardware

The Vivado project is located in the **/lab2/** subfolder. The sequence of commands, initiated from the left sidebar, are:

> Generate Block Diagram &rarr; Run Synthesis &rarr; Run Implementation &rarr; Generate Bitstream

Open the Hardware Manager, select the device, and open the Program Device window. Before you program the device, press and hold Button0 on the board. After the device is programmed, enter the signal analyzer view and press the play button to arm the debug trigger. The button may now be released, starting the program counter and running instructions. The dataflow may be viewed in the waveform window.
