from commands import *
from trace6502 import *

config.set_label_references(False)

# Load the program to be disassembled into the debugger's memory.
# The md5sum is optional but helps avoid confusion if there are multiple versions
# of the same program.
load(0xf000, "TOSDOS-S3.orig", "3673c1ed38bc32d9d2602b3dfab64c78")

wordentry(0xfffa, 3)

wordentry(0xff9c, 13)

hook_subroutine(0xf000, "print_disk_space_string", stringhiz_hook)
hook_subroutine(0xf009, "print_string", stringhiz_hook)

label(0xf26c, "cmd_CAT")
label(0xf266, "cmd_DIR")
label(0xf1e7, "cmd_INFO")
label(0xf4ae, "cmd_LOAD")
label(0xf649, "cmd_SAVE")
label(0xf463, "cmd_DELETE")
label(0xf5ae, "cmd_GO")
label(0xf553, "cmd_RUN")
label(0xf5e2, "cmd_LOCK")
label(0xf5e3, "cmd_UNLOCK")
label(0xf4a4, "cmd_MON")
label(0xf4a2, "cmd_NOMON")
label(0xf5bb, "cmd_SET")
label(0xf473, "cmd_DRIVE")
label(0xf5c1, "cmd_TITLE")
label(0xf5f8, "cmd_USE")
label(0xf606, "cmd_OPTION")
label(0xf562, "cmd_EXEC")
label(0xf8c3, "cmd_SHUT")
label(0xf590, "cmd_SPOOL")
label(0xf50e, "cmd_UNKNOWN")


entry(0xffcb, "OSSHUT")
entry(0xffce, "OSFIND")
entry(0xffd1, "OSBPUT")
entry(0xffd4, "OSBGET")
entry(0xffd7, "OSSTAR")
entry(0xffda, "OSRDAR")
entry(0xffdd, "OSSAVE")
entry(0xffe0, "OSLOAD")
entry(0xffe3, "OSRDCH")
entry(0xffe6, "OSECHO")
entry(0xffe9, "OSASCI")
entry(0xffed, "OSCRLF")
entry(0xfff2, "OSWRCR")
entry(0xfff4, "OSWRCH")
entry(0xfff7, "OSCLI")

byte(0xff8e, 14)

pc = 0xf3b2
label(pc, "command_table")
expr_label(pc+1, "command_table+1")
for i in range(21):
    pc = stringhi(pc)
    pc = code_ptr(pc + 1, pc)

# Use all the information provided to actually disassemble the program.
go()
