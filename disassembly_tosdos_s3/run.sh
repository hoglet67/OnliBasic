#!/bin/bash

export PYTHONPATH=../../py8dis/py8dis:../common:$PATH

python TOSDOS-S3.py > TOSDOS-S3.asm
beebasm -i TOSDOS-S3.asm -o TOSDOS-S3.bin
md5sum TOSDOS-S3.orig TOSDOS-S3.bin
