from commands import *
import utils

def add_atom_labels():

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
