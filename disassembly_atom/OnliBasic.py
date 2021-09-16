from commands import *
from trace6502 import *

from atom import *
from onli import *

# Load the program to be disassembled into the debugger's memory.
# The md5sum is optional but helps avoid confusion if there are multiple versions
# of the same program.
load(0xD000, "OnliBasic.orig", "ddc131f7bd25dd6ce0bf22afec55503d")

# Common/shared labels
add_atom_labels()
add_onli_labels()

# Hardware Registers
label(0x8600, "screen_8600")
label(0x8700, "screen_8700")
label(0xb000, "pia_port_a")
label(0xb001, "pia_port_b")


# IRQ
entry(0xd128, "irq_handler")

# Commands
label(0xd0b4, "cmd_START")
label(0xd0e0, "cmd_CLI")
label(0xd0e4, "cmd_SEI")
label(0xd1a6, "cmd_REL")
label(0xd1c6, "cmd_KILL")
label(0xd321, "cmd_RQIN")
label(0xd383, "cmd_RCLK")
label(0xd3dc, "cmd_HANGUP")
label(0xd0e8, "cmd_SET")
label(0xd0ec, "cmd_CLR")
label(0xd10e, "cmd_DEFPORT")
label(0xd1d5, "cmd_PORT")
label(0xd20e, "cmd_TIME")
label(0xd468, "cmd_DAC")
label(0xd4af, "cmd_COLOUR")

# Functions
label(0xd428, "fn_ADC")
label(0xd205, "fn_TIME")
label(0xd1fa, "fn_PORT")
label(0xd21c, "fn_REACT")

# Start tracing instructions at the address given in 0xD002/3 and 0xd004/5
wordentry(0xD002, 2)

# Colour N plot handlers
entry(0xd4ff, "plot_handler_0");
entry(0xd51d, "plot_handler_1");
entry(0xd535, "plot_handler_2");
entry(0xd54d, "plot_handler_3");

# Data
byte(0xd420, 4)
byte(0xd424, 4)

# Table of pointers to plot handler
for i in range(4):
    code_ptr(0xd4ef + i, 0xd4f3 + i)

# Junk at the end
label(0xd5ad, "ignored")
byte(0xd5ad, 0x253)

# Command and Function Table
pc = 0xD006
label(pc, "command_table")
expr_label(pc+1, "command_table+1")
for i in range(21):
    pc = stringhi(pc)
    pc = code_ptr(pc + 1, pc)

# Use all the information provided to actually disassemble the program.
go()
