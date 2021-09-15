#!/bin/bash

export PYTHONPATH=../../py8dis/py8dis:$PATH

python OnliBasic.py > OnliBasic.asm

beebasm -i OnliBasic.asm -o OnliBasic.bin

md5sum OnliBasic.orig OnliBasic.bin
