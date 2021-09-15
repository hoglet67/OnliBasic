from commands import *
from trace6502 import *

# Load the program to be disassembled into the debugger's memory.
# The md5sum is optional but helps avoid confusion if there are multiple versions
# of the same program.
load(0xD000, "OnliBasic.orig", "d3ccea320e7f1acb77af7456ec52a6ca")

# Hardware Registers

label(0x0900, "user_8154_bit_operations")
label(0x0920, "user_8154_port_a")
label(0x0921, "user_8154_port_b")
label(0x0E21, "system_8154_port_b_keboard")
label(0x1000, "vdu80_screen")

label(0x1a00, "analog_8255_port_a");
label(0x1a01, "analog_8255_port_b");
label(0x1a02, "analog_8255_port_c");
label(0x1a03, "analog_8255_control");

label(0x1a30, "analog_6522_orbirb");
label(0x1a31, "analog_6522_oraira");
label(0x1a32, "analog_6522_ddrb");
label(0x1a34, "analog_6522_t1cl");
label(0x1a35, "analog_6522_t1ch");
label(0x1a3b, "analog_6522_acr");
label(0x1a3c, "analog_6522_pcr");
label(0x1a3d, "analog_6522_ifr");

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

label(0xd6b3, "ignored")
byte(0xd6b3, 0x14D)

# Workspace
label(0x03c1, "last_point_0")
label(0x03c2, "last_point_1")
label(0x03c3, "last_point_2")
label(0x03c4, "last_point_3")

# Interface to Atom Basic at #C000
label(0xc231, "basic_search_for_comma")
label(0xc2cf, "basic_warm_start")
label(0xc3c8, "basic_copy_function_to_arithmetic_workspace")
label(0xc3cb, "basic_pop_workspace_to_arithmetic_workspace")
label(0xc3cd, "basic_pop_workspace_to_zeropage")
label(0xc4de, "basic_process_equals_and_expression")
label(0xc4e4, "basic_post_cmd_checks")
label(0xc558, "basic_post_cmd_checks_and_next_cmd")
label(0xc55b, "basic_next_command")
label(0xc62e, "basic_search_for_line_number")
label(0xc8bc, "basic_push_function_to_workspace")
label(0xc97c, "basic_push_count_to_workspace")
label(0xc99f, "basic_push_zeropage_to_workspace")
label(0xca1b, "basic_error_29_unknown_or_missing_function")
label(0xcbff, "basic_return_next")
label(0xcc1f, "basic_process_goto_gosub_target")

# Interfae to Atom MOS at #F000
label(0xfff4, "oswrch")

# Command and Function Table
pc = 0xD006
label(pc, "command_table")
expr_label(pc+1, "command_table+1")
for i in range(24):
    pc = stringhi(pc)
    pc = code_ptr(pc + 1, pc)



# Add extra stuff here as the disassembly progresses...

# Use all the information provided to actually disassemble the program.
go()
