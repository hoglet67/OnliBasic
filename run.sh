#!/bin/bash

export PYTHONPATH=../../py8dis/py8dis:$PATH

for i in disassembly_atom disassembly_system
do
    echo "Building $i"
    cd $i
    python OnliBasic.py > OnliBasic.asm
    beebasm -i OnliBasic.asm -o OnliBasic.bin
    md5sum OnliBasic.orig OnliBasic.bin
    cd ..
done
