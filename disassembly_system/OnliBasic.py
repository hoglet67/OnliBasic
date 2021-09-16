from commands import *
from trace6502 import *

from atom import *
from onli import *

# Load the program to be disassembled into the debugger's memory.
# The md5sum is optional but helps avoid confusion if there are multiple versions
# of the same program.
load(0xD000, "OnliBasic.orig", "d3ccea320e7f1acb77af7456ec52a6ca")

add_atom_labels()
add_onli_labels()

# Hardware Registers
label(0x0E21, "system_8154_port_b_keyboard")

# IRQ
entry(0xd139, "irq_handler")
label(0x0204, "IRQVECL")
label(0x0205, "IRQVECH")
expr(0xd0c6, "<irq_handler")
expr(0xd0cb, ">irq_handler")

# Commands
label(0xd0c5, "cmd_START")
label(0xd4cc, "cmd_PLOT")
label(0xd4c0, "cmd_DRAW")
label(0xd4c4, "cmd_MOVE")
label(0xd604, "cmd_CLEAR")
label(0xd0f1, "cmd_CLI")
label(0xd0f5, "cmd_SEI")
label(0xd1b7, "cmd_REL")
label(0xd1d7, "cmd_KILL")
label(0xd332, "cmd_RQIN")
label(0xd394, "cmd_RCLK")
label(0xd3ed, "cmd_HANGUP")
label(0xd0f9, "cmd_SET")
label(0xd0fd, "cmd_CLR")
label(0xd11f, "cmd_DEFPORT")
label(0xd1e6, "cmd_PORT")
label(0xd21f, "cmd_TIME")
label(0xd479, "cmd_DAC")

# Functions
label(0xd439, "fn_ADC")
label(0xd216, "fn_TIME")
label(0xd20b, "fn_PORT")
label(0xd22d, "fn_REACT")

# Start tracing instructions at the address given in 0xD002/3 and 0xd004/5
wordentry(0xD002, 2)

# Data
byte(0xd431, 4)
byte(0xd435, 4)
byte(0xd681, 0x19)
byte(0xd69a, 0x19)

# Junk at the end
label(0xd6b3, "ignored")
byte(0xd6b3, 0x14D)

# Workspace
label(0x03c1, "last_point_0")
label(0x03c2, "last_point_1")
label(0x03c3, "last_point_2")
label(0x03c4, "last_point_3")

# Command and Function Table
pc = 0xD006
label(pc, "command_table")
expr_label(pc+1, "command_table+1")
for i in range(24):
    pc = stringhi(pc)
    pc = code_ptr(pc + 1, pc)

# Use all the information provided to actually disassemble the program.
go()
