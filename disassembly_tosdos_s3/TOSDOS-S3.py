from commands import *
from trace6502 import *

config.set_label_references(False)

# Load the program to be disassembled into the debugger's memory.
# The md5sum is optional but helps avoid confusion if there are multiple versions
# of the same program.
load(0xf000, "TOSDOS-S3.orig", "3673c1ed38bc32d9d2602b3dfab64c78")

#TODO: It would be nice to be able to add labels to wordentry, mayve one at a time
label(0xf897, "nmi_handler")
label(0xff0d, "rst_handler")
label(0xffb6, "irq_handler")

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

# MOS Vectors
label(0x0200, "NMIVEC")
label(0x0202, "BRKVEC")
label(0x0204, "IRQVEC")
label(0x0206, "COMVEC")
expr_label(0x0207, "COMVEC+1")
label(0x0208, "WRCVEC")
label(0x020A, "RDCVEC")
label(0x020C, "LODVEC")
label(0x020E, "SAVVEC")
label(0x0210, "RDRVEC")
label(0x0212, "STRVEC")
label(0x0214, "BGTVEC")
label(0x0216, "BPTVEC")
label(0x0218, "FNDVEC")
label(0x021A, "SHTVEC")

# Default values for eacj of the vectors
label(0xff7a, "default_BRKVEC")
label(0xf531, "default_IRQVEC")
label(0xf42e, "default_COMVEC")
label(0xfd7b, "default_WRCVEC")
label(0xfd53, "default_RDCVEC")
label(0xf4c0, "default_LODVEC")
label(0xf676, "default_SAVVEC")
label(0xfa88, "default_RDRVEC")
label(0xfcc7, "default_STRVEC")
label(0xfb17, "default_BGTVEC")
label(0xfbe3, "default_BPTVEC")
label(0xf97a, "default_FNDVEC")
label(0xf8c5, "default_SHTVEC")

# MOS Entrypoints
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

# 6502 Vectors
label(0xfffa, "NMIVECTOR")
wordentry(0xfffa)
label(0xfffc, "RSTVECTOR")
wordentry(0xfffc)
label(0xfffe, "IRQVECTOR")
wordentry(0xfffe)

# Subroutines followed by embedded data
hook_subroutine(0xf000, "print_disk_space_string", stringhiz_hook)
hook_subroutine(0xf009, "print_string", stringhiz_hook)

# Data Tables
label(0xf7aa, "i8271_select")
comment(0xf7aa,"""8271 drive select table
Maps the logical drive number 0..3 to drive (b7) and side (b5)""")
byte(0xf7aa, 4)

label(0xf87e,"i8271_commands")
comment(0xf87e,"""8271 command table
Contains several 8271 commands, each terminate by EA bytes""")
a=0xf87e
byte(a,6)
a=a+6
byte(a,6)
a=a+6
byte(a,6)
a=a+6
byte(a,4)
a=a+4
byte(a,3)

label(0xff8e, "ctrc_table")
comment(0xff8e,"""6845 CRTC register table
The default register values for the VDU40 teletext board""")
byte(0xff8e, 14)

label(0xff9c, "vector_table")
comment(0xff9c,"""Vector table
The default values for the vectors starting at 0202""")
wordentry(0xff9c, 13)

# Code wjete the only reference is reloading a vector
entry(0xf57c, "rdch_exec");
expr(0xf571, "<rdch_exec");
expr(0xf573, ">rdch_exec");

entry(0xf5a2, "wrch_spool");
expr(0xf59d, "<wrch_spool");
expr(0xf59f, ">wrch_spool");

# Various buts of NMI code that are copied/executed from 00F3
label(0xf86b, "nmi_load")
entry(0xf86b)
comment(0xf86b,"""NMI load data transfer code
This is copied/executed from 00f3
The address at 00f6/7 is incremented each byte transferred""")

label(0xf873, "nmi_save")
entry(0xf873)
comment(0xf873,"""NMI save data transfer code
This is copied/executed from 00f3
The address at 00f6/7 is incremented each byte transferred""")

entry(0xf745, "nmi_other");
expr(0xf728, "<nmi_other");
expr(0xf72c, ">nmi_other");

# Overlapping code (whete BRK is the operand of another instruction)
# by specifying these manually shows the longer instruction
entry(0xfb5a)
entry(0xfb7b)
entry(0xfbb0)
entry(0xfc45)
entry(0xfc9c)
entry(0xfd3c)

# Main command table
pc = 0xf3b2
label(pc, "command_table")
expr_label(pc+1, "command_table+1")
for i in range(21):
    pc = stringhi(pc)
    pc = code_ptr(pc + 1, pc)

# Unreachable code
comment(0xfd49, "The following 1-byte is unreachable")

# Use all the information provided to actually disassemble the program.
go()
