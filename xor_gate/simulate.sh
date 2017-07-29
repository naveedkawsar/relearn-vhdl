#!/bin/sh
set -e

rm -rf *.cf *.vcd

# Check syntax
ghdl.exe -s *.vhd

# Analyze design
ghdl.exe -a *.vhd

# Elaborate testbench code
ghdl.exe -e testbench

# Run testbench/simulate design 
# generate VHDL simulation waveform file
ghdl.exe -r testbench --vcd=testbench.vcd

# Examine waveform with GTKWave viewer
gtkwave testbench.vcd --end=1ms

# Print return value
echo $?
