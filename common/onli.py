from commands import *
import utils

def add_onli_labels():

    label(0x0066, "time")
    expr_label(0x0067, "time+1")
    expr_label(0x0068, "time+2")
    expr_label(0x0069, "time+3")
    label(0x006a, "clk_count")
    expr_label(0x006b, "clk_count+1")
    expr_label(0x006c, "clk_count+2")
    expr_label(0x006d, "clk_count+3")
    label(0x008a, "clk_result")
    label(0x008b, "port_value")
    label(0x008e, "port_last")
    label(0x0090, "clk_enable")
    label(0x0091, "port_enable")
    label(0x0093, "clk_fired")
    label(0x0094, "port_fired")
    label(0x0096, "port_polarity")
    label(0x0098, "clk_mask")
    label(0x0099, "port_direction")

    label(0x0900, "ins8154_0_bit_operations")
    label(0x0920, "ins8154_0_port_a")
    label(0x0921, "ins8154_0_port_b")
    label(0x1000, "ins8154_1_bit_operations")
    label(0x1020, "ins8154_1_port_a")
    label(0x1021, "ins8154_1_port_b")

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
