# ARM 32-bit Benchmarks for PROLEPSIS Control-Flow Integrity Protection

This folder contains a set of benchmarks useful for experimental evaluation of the PROLEPSIS framework ( https://github.com/RHESGroup/prolepsis ), designed for control-flow integrity of embedded systems. The benchmarks are taken from the Embench IoT project ( https://github.com/embench/embench-iot ). The folder contains the sources of the original benchmarks, the sources of the benchmarks instrumented according to the algorithm, and all the toolchain needed for compilation and execution. The execution environment that was chosen is that of the Nucleo F429ZI board from ST Microelectronics™, which features an ARM Cortex-M4 processor.

## Documentation 

All the experimental data are reported under the folder /doc.

## Running benchmarks

The software is built using CMake. A version of CMake >= 2.8.0 is
required, but a version greater than 3.1.0 is recommended due to support for
ninja.

First of all, be sure that Nucleo F429ZI is connected to your system, and all the packages supporting ST Microelectronics™ products are installed.

Create a build folder somewhere, e.g. in the `/sw` folder:

    mkdir build

Copy the `cmake-configure.nucleo.gcc.sh` bash script to the build folder.
This script can be found in the `/sw` subfolder of the repository.

Modify the `cmake-configure.nucleo.gcc.sh` script to your needs and execute it inside the build folder.
This will setup everything to perform simulations.

# CMake Targets and Simulation

Each benchmark supports the following targets (available through `make` after running `cmake-configure.aftab.gcc.sh`):

* ${NAME}.elf: Compile the application and generate the elf file
* ${NAME}.read: Perform an objdump of the executable sections of the binary and save it as {NAME}.read
* ${NAME}.list: Perform an objdump of the binary with -D option (i.e., with all data) and save it as {NAME}.lst
* ${NAME}.bin: Create the .bin file ready to be flashed to Nucleo F429ZI board
* ${NAME}.flash: Flash the board with the selected benchmark

Use the command `st-util` to start debugging your benchmark. From another terminal, go to the folder where the elf file was generated and run `gdb-multiarch`. Commands to see execution times and .text sizes are inside the folder `/debug`.

## Disclaimer and Copyright

All code and material is released under LGPL v3.0 ( https://www.gnu.org/licenses/lgpl-3.0.txt ). Copyright (C) 2022 RHES Group Torino.
