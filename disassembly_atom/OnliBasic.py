from commands import *
from trace6502 import *

# Load the program to be disassembled into the debugger's memory.
# The md5sum is optional but helps avoid confusion if there are multiple versions
# of the same program.
load(0xD000, "OnliBasic.orig", "ddc131f7bd25dd6ce0bf22afec55503d")

# Hardware Registers

label(0x0900, "user_8154_bit_operations")
label(0x0920, "user_8154_port_a")
label(0x0921, "user_8154_port_b")

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

label(0xd428, "fn_ADC")
label(0xd205, "fn_TIME")
label(0xd1fa, "fn_PORT")
label(0xd21c, "fn_REACT")

# Start tracing instructions at the address given in 0xD002/3 and 0xd004/5
wordentry(0xD002, 2)


entry(0xd4ff, "plot_handler_0");
entry(0xd51d, "plot_handler_1");
entry(0xd535, "plot_handler_2");
entry(0xd54d, "plot_handler_3");

# Data
byte(0xd420, 4)
byte(0xd424, 4)
byte(0xd4ef, 4)
byte(0xd4f3, 4)

label(0xd5ad, "ignored")
byte(0xd5ad, 0x253)

# Data


# Workspace

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
for i in range(21):
    pc = stringhi(pc)
    pc = code_ptr(pc + 1, pc)



# Add extra stuff here as the disassembly progresses...

# Use all the information provided to actually disassemble the program.
go()
