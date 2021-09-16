from commands import *
from trace6502 import *

# Load the program to be disassembled into the debugger's memory.
# The md5sum is optional but helps avoid confusion if there are multiple versions
# of the same program.
load(0xf000, "TOSDOS-S3.orig", "3673c1ed38bc32d9d2602b3dfab64c78")

wordentry(0xfffa, 3)

wordentry(0xff9c, 13)

hook_subroutine(0xf009, "print_string", stringhi_hook)

# Use all the information provided to actually disassemble the program.
go()
