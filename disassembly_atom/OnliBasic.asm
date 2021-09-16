l0003 = &0003
l0004 = &0004
l0005 = &0005
l0006 = &0006
l000f = &000f
l0014 = &0014
l0015 = &0015
l0016 = &0016
l0024 = &0024
l0025 = &0025
l0033 = &0033
l0034 = &0034
l0042 = &0042
l0043 = &0043
l0052 = &0052
l0053 = &0053
l0054 = &0054
l0055 = &0055
l0056 = &0056
l0057 = &0057
l0058 = &0058
l0059 = &0059
l005a = &005a
l005b = &005b
l005c = &005c
l005d = &005d
l005e = &005e
l005f = &005f
l0060 = &0060
l0061 = &0061
l0062 = &0062
l0063 = &0063
l0064 = &0064
l0065 = &0065
l0066 = &0066
l0067 = &0067
l0068 = &0068
l0069 = &0069
l006a = &006a
l006b = &006b
l006c = &006c
l006d = &006d
l008a = &008a
l008b = &008b
l008e = &008e
l0090 = &0090
l0091 = &0091
l0093 = &0093
l0094 = &0094
l0096 = &0096
l0098 = &0098
l0099 = &0099
l03c5 = &03c5
l03cd = &03cd
l03dd = &03dd
l03e5 = &03e5
l03fd = &03fd
l03fe = &03fe
l03ff = &03ff
user_8154_bit_operations = &0900
user_8154_port_a = &0920
user_8154_port_b = &0921
vdu80_screen = &1000
analog_8255_port_a = &1a00
analog_8255_port_b = &1a01
analog_8255_port_c = &1a02
analog_8255_control = &1a03
analog_6522_orbirb = &1a30
analog_6522_oraira = &1a31
analog_6522_ddrb = &1a32
analog_6522_t1cl = &1a34
analog_6522_t1ch = &1a35
analog_6522_acr = &1a3b
analog_6522_pcr = &1a3c
analog_6522_ifr = &1a3d
screen_8600 = &8600
screen_8700 = &8700
pia_port_a = &b000
pia_port_b = &b001
basic_search_for_comma = &c231
basic_warm_start = &c2cf
basic_copy_function_to_arithmetic_workspace = &c3c8
basic_pop_workspace_to_arithmetic_workspace = &c3cb
basic_pop_workspace_to_zeropage = &c3cd
basic_process_equals_and_expression = &c4de
basic_post_cmd_checks = &c4e4
basic_post_cmd_checks_and_next_cmd = &c558
basic_next_command = &c55b
basic_search_for_line_number = &c62e
basic_push_function_to_workspace = &c8bc
basic_push_count_to_workspace = &c97c
basic_push_zeropage_to_workspace = &c99f
basic_error_29_unknown_or_missing_function = &ca1b
basic_return_next = &cbff
basic_process_goto_gosub_target = &cc1f
oswrch = &fff4

    org &d000
    guard &d800
.pydis_start

    equb &aa, &55                                           ; d000: .U
    equw ld082, ld07e                                       ; d002: 82 d0 7e ...
.command_table
    equs "START"                                            ; d006: 53 54 41 ...
    equb >(cmd_START)                                       ; d00b: .
    equb <(cmd_START)                                       ; d00c: .
    equs "CLI"                                              ; d00d: 43 4c 49
    equb >(cmd_CLI)                                         ; d010: .
    equb <(cmd_CLI)                                         ; d011: .
    equs "SEI"                                              ; d012: 53 45 49
    equb >(cmd_SEI)                                         ; d015: .
    equb <(cmd_SEI)                                         ; d016: .
    equs "REL"                                              ; d017: 52 45 4c
    equb >(cmd_REL)                                         ; d01a: .
    equb <(cmd_REL)                                         ; d01b: .
    equs "KILL"                                             ; d01c: 4b 49 4c ...
    equb >(cmd_KILL)                                        ; d020: .
    equb <(cmd_KILL)                                        ; d021: .
    equs "RQIN"                                             ; d022: 52 51 49 ...
    equb >(cmd_RQIN)                                        ; d026: .
    equb <(cmd_RQIN)                                        ; d027: .
    equs "RCLK"                                             ; d028: 52 43 4c ...
    equb >(cmd_RCLK)                                        ; d02c: .
    equb <(cmd_RCLK)                                        ; d02d: .
    equs "HANGUP"                                           ; d02e: 48 41 4e ...
    equb >(cmd_HANGUP)                                      ; d034: .
    equb <(cmd_HANGUP)                                      ; d035: .
    equs "SET"                                              ; d036: 53 45 54
    equb >(cmd_SET)                                         ; d039: .
    equb <(cmd_SET)                                         ; d03a: .
    equs "CLR"                                              ; d03b: 43 4c 52
    equb >(cmd_CLR)                                         ; d03e: .
    equb <(cmd_CLR)                                         ; d03f: .
    equs "DEFPORT"                                          ; d040: 44 45 46 ...
    equb >(cmd_DEFPORT)                                     ; d047: .
    equb <(cmd_DEFPORT)                                     ; d048: .
    equs "PORT"                                             ; d049: 50 4f 52 ...
    equb >(cmd_PORT)                                        ; d04d: .
    equb <(cmd_PORT)                                        ; d04e: .
    equs "TIME"                                             ; d04f: 54 49 4d ...
    equb >(cmd_TIME)                                        ; d053: .
    equb <(cmd_TIME)                                        ; d054: .
    equs "DAC"                                              ; d055: 44 41 43
    equb >(cmd_DAC)                                         ; d058: .
    equb <(cmd_DAC)                                         ; d059: .
    equs "COLOUR"                                           ; d05a: 43 4f 4c ...
    equb >(cmd_COLOUR)                                      ; d060: .
    equb <(cmd_COLOUR)                                      ; d061: .
    equb >(basic_post_cmd_checks_and_next_cmd)              ; d062: .
    equb <(basic_post_cmd_checks_and_next_cmd)              ; d063: .
    equs "ADC"                                              ; d064: 41 44 43
    equb >(fn_ADC)                                          ; d067: .
    equb <(fn_ADC)                                          ; d068: .
    equs "TIME"                                             ; d069: 54 49 4d ...
    equb >(fn_TIME)                                         ; d06d: .
    equb <(fn_TIME)                                         ; d06e: .
    equs "PORT"                                             ; d06f: 50 4f 52 ...
    equb >(fn_PORT)                                         ; d073: .
    equb <(fn_PORT)                                         ; d074: .
    equs "REACT"                                            ; d075: 52 45 41 ...
    equb >(fn_REACT)                                        ; d07a: .
    equb <(fn_REACT)                                        ; d07b: .
    equb >(basic_error_29_unknown_or_missing_function)      ; d07c: .
    equb <(basic_error_29_unknown_or_missing_function)      ; d07d: .
.ld07e
    ldx #&5d ; ']'                                          ; d07e: a2 5d
    bne ld084                                               ; d080: d0 02
.ld082
    ldx #&ff                                                ; d082: a2 ff
.ld084
    dey                                                     ; d084: 88
    sty l0052                                               ; d085: 84 52
.ld087
    ldy l0052                                               ; d087: a4 52
.ld089
    iny                                                     ; d089: c8
    inx                                                     ; d08a: e8
.ld08b
    lda command_table,x                                     ; d08b: bd 06 d0
    bmi ld0a6                                               ; d08e: 30 16
    cmp (l0005),y                                           ; d090: d1 05
    beq ld089                                               ; d092: f0 f5
    dex                                                     ; d094: ca
.ld095
    inx                                                     ; d095: e8
    lda command_table,x                                     ; d096: bd 06 d0
    bpl ld095                                               ; d099: 10 fa
    inx                                                     ; d09b: e8
    lda (l0005),y                                           ; d09c: b1 05
    cmp #&2e ; '.'                                          ; d09e: c9 2e
    bne ld087                                               ; d0a0: d0 e5
    iny                                                     ; d0a2: c8
    dex                                                     ; d0a3: ca
    bcs ld08b                                               ; d0a4: b0 e5
.ld0a6
    sta l0053                                               ; d0a6: 85 53
    lda command_table+1,x                                   ; d0a8: bd 07 d0
    sta l0052                                               ; d0ab: 85 52
    sty l0003                                               ; d0ad: 84 03
    ldx l0004                                               ; d0af: a6 04
    jmp (l0052)                                             ; d0b1: 6c 52 00
.cmd_START
    lda #&28 ; '('                                          ; d0b4: a9 28
    nop                                                     ; d0b6: ea
    nop                                                     ; d0b7: ea
    nop                                                     ; d0b8: ea
    lda #&d1                                                ; d0b9: a9 d1
    nop                                                     ; d0bb: ea
    nop                                                     ; d0bc: ea
    nop                                                     ; d0bd: ea
    lda #&00                                                ; d0be: a9 00
    ldx #&2f ; '/'                                          ; d0c0: a2 2f
.ld0c2
    sta l0066,x                                             ; d0c2: 95 66
    dex                                                     ; d0c4: ca
    bpl ld0c2                                               ; d0c5: 10 fb
    lda #&c0                                                ; d0c7: a9 c0
    sta analog_6522_acr                                     ; d0c9: 8d 3b 1a
    lda #&70 ; 'p'                                          ; d0cc: a9 70
    sta analog_6522_ddrb                                    ; d0ce: 8d 32 1a
    lda #&80                                                ; d0d1: a9 80
    sta analog_8255_control                                 ; d0d3: 8d 03 1a
    lda #&02                                                ; d0d6: a9 02
    sta analog_6522_t1cl                                    ; d0d8: 8d 34 1a
    lda #&00                                                ; d0db: a9 00
    sta analog_6522_t1ch                                    ; d0dd: 8d 35 1a
.cmd_CLI
    cli                                                     ; d0e0: 58
    jmp basic_post_cmd_checks_and_next_cmd                  ; d0e1: 4c 58 c5
.cmd_SEI
    sei                                                     ; d0e4: 78
    jmp basic_post_cmd_checks_and_next_cmd                  ; d0e5: 4c 58 c5
.cmd_SET
    lda #&10                                                ; d0e8: a9 10
    bne ld0ee                                               ; d0ea: d0 02
.cmd_CLR
    lda #&00                                                ; d0ec: a9 00
.ld0ee
    sta l000f                                               ; d0ee: 85 0f
    jsr basic_copy_function_to_arithmetic_workspace         ; d0f0: 20 c8 c3
    jsr basic_post_cmd_checks                               ; d0f3: 20 e4 c4
    lda l0052                                               ; d0f6: a5 52
    and #&0f                                                ; d0f8: 29 0f
    ora l000f                                               ; d0fa: 05 0f
    tax                                                     ; d0fc: aa
    lda l0052                                               ; d0fd: a5 52
    cmp #&10                                                ; d0ff: c9 10
    bcs ld108                                               ; d101: b0 05
    sta user_8154_bit_operations,x                          ; d103: 9d 00 09
    bcc ld10b                                               ; d106: 90 03
.ld108
    sta vdu80_screen,x                                      ; d108: 9d 00 10
.ld10b
    jmp basic_next_command                                  ; d10b: 4c 5b c5
.cmd_DEFPORT
    jsr basic_push_function_to_workspace                    ; d10e: 20 bc c8
    jsr basic_process_equals_and_expression                 ; d111: 20 de c4
    jsr basic_pop_workspace_to_arithmetic_workspace         ; d114: 20 cb c3
    jsr ld1e8                                               ; d117: 20 e8 d1
    ldy #&02                                                ; d11a: a0 02
    lda l0052                                               ; d11c: a5 52
    sta (l0056),y                                           ; d11e: 91 56
    ldy l0016,x                                             ; d120: b4 16
    sta l0099,y                                             ; d122: 99 99 00
    jmp basic_next_command                                  ; d125: 4c 5b c5
.irq_handler
    inc l0066                                               ; d128: e6 66
    bne ld136                                               ; d12a: d0 0a
    inc l0067                                               ; d12c: e6 67
    bne ld136                                               ; d12e: d0 06
    inc l0068                                               ; d130: e6 68
    bne ld136                                               ; d132: d0 02
    inc l0069                                               ; d134: e6 69
.ld136
    txa                                                     ; d136: 8a
    pha                                                     ; d137: 48
    lda #&00                                                ; d138: a9 00
    sta l008a                                               ; d13a: 85 8a
    lda #&80                                                ; d13c: a9 80
    sta l0098                                               ; d13e: 85 98
    ldx #&1c                                                ; d140: a2 1c
.ld142
    lda l006a,x                                             ; d142: b5 6a
    ora l006b,x                                             ; d144: 15 6b
    ora l006c,x                                             ; d146: 15 6c
    ora l006d,x                                             ; d148: 15 6d
    beq ld170                                               ; d14a: f0 24
    lda l006a,x                                             ; d14c: b5 6a
    bne ld15e                                               ; d14e: d0 0e
    lda l006b,x                                             ; d150: b5 6b
    bne ld15c                                               ; d152: d0 08
    lda l006c,x                                             ; d154: b5 6c
    bne ld15a                                               ; d156: d0 02
    dec l006d,x                                             ; d158: d6 6d
.ld15a
    dec l006c,x                                             ; d15a: d6 6c
.ld15c
    dec l006b,x                                             ; d15c: d6 6b
.ld15e
    dec l006a,x                                             ; d15e: d6 6a
    lda l006a,x                                             ; d160: b5 6a
    ora l006b,x                                             ; d162: 15 6b
    ora l006c,x                                             ; d164: 15 6c
    ora l006d,x                                             ; d166: 15 6d
    bne ld170                                               ; d168: d0 06
    lda l008a                                               ; d16a: a5 8a
    ora l0098                                               ; d16c: 05 98
    sta l008a                                               ; d16e: 85 8a
.ld170
    lsr l0098                                               ; d170: 46 98
    dex                                                     ; d172: ca
    dex                                                     ; d173: ca
    dex                                                     ; d174: ca
    dex                                                     ; d175: ca
    bpl ld142                                               ; d176: 10 ca
    lda l008a                                               ; d178: a5 8a
    and l0090                                               ; d17a: 25 90
    ora l0093                                               ; d17c: 05 93
    sta l0093                                               ; d17e: 85 93
    ldx #&01                                                ; d180: a2 01
.ld182
    lda l0099,x                                             ; d182: b5 99
    eor #&ff                                                ; d184: 49 ff
    and user_8154_port_a,x                                  ; d186: 3d 20 09
    pha                                                     ; d189: 48
    sta l008b,x                                             ; d18a: 95 8b
    eor l008e,x                                             ; d18c: 55 8e
    sta l008e,x                                             ; d18e: 95 8e
    lda l0096,x                                             ; d190: b5 96
    eor l008b,x                                             ; d192: 55 8b
    and l008e,x                                             ; d194: 35 8e
    and l0091,x                                             ; d196: 35 91
    ora l0094,x                                             ; d198: 15 94
    sta l0094,x                                             ; d19a: 95 94
    pla                                                     ; d19c: 68
    sta l008e,x                                             ; d19d: 95 8e
    dex                                                     ; d19f: ca
    bpl ld182                                               ; d1a0: 10 e0
    pla                                                     ; d1a2: 68
    tax                                                     ; d1a3: aa
    pla                                                     ; d1a4: 68
    rti                                                     ; d1a5: 40
.cmd_REL
    jsr basic_push_function_to_workspace                    ; d1a6: 20 bc c8
    jsr basic_post_cmd_checks                               ; d1a9: 20 e4 c4
    jsr ld2fb                                               ; d1ac: 20 fb d2
    eor #&ff                                                ; d1af: 49 ff
    tay                                                     ; d1b1: a8
    php                                                     ; d1b2: 08
    sei                                                     ; d1b3: 78
    lda ld2f8,x                                             ; d1b4: bd f8 d2
    tax                                                     ; d1b7: aa
    tya                                                     ; d1b8: 98
    and l0090,x                                             ; d1b9: 35 90
    sta l0090,x                                             ; d1bb: 95 90
    tya                                                     ; d1bd: 98
    and l0093,x                                             ; d1be: 35 93
    sta l0093,x                                             ; d1c0: 95 93
    plp                                                     ; d1c2: 28
    jmp basic_next_command                                  ; d1c3: 4c 5b c5
.cmd_KILL
    php                                                     ; d1c6: 08
    sei                                                     ; d1c7: 78
    ldx #&05                                                ; d1c8: a2 05
    lda #&00                                                ; d1ca: a9 00
.ld1cc
    sta l0090,x                                             ; d1cc: 95 90
    dex                                                     ; d1ce: ca
    bpl ld1cc                                               ; d1cf: 10 fb
    plp                                                     ; d1d1: 28
    jmp basic_post_cmd_checks_and_next_cmd                  ; d1d2: 4c 58 c5
.cmd_PORT
    jsr basic_push_function_to_workspace                    ; d1d5: 20 bc c8
    jsr basic_process_equals_and_expression                 ; d1d8: 20 de c4
    jsr basic_pop_workspace_to_arithmetic_workspace         ; d1db: 20 cb c3
    jsr ld1e8                                               ; d1de: 20 e8 d1
    lda l0052                                               ; d1e1: a5 52
    sta (l0056),y                                           ; d1e3: 91 56
    jmp basic_next_command                                  ; d1e5: 4c 5b c5
.ld1e8
    dex                                                     ; d1e8: ca
    stx l0004                                               ; d1e9: 86 04
    ldy l0016,x                                             ; d1eb: b4 16
    lda ld420,y                                             ; d1ed: b9 20 d4
    sta l0056                                               ; d1f0: 85 56
    lda ld424,y                                             ; d1f2: b9 24 d4
    sta l0057                                               ; d1f5: 85 57
    ldy #&00                                                ; d1f7: a0 00
    rts                                                     ; d1f9: 60
.fn_PORT
    jsr basic_push_function_to_workspace                    ; d1fa: 20 bc c8
    jsr ld1e8                                               ; d1fd: 20 e8 d1
    lda (l0056),y                                           ; d200: b1 56
    jmp basic_push_count_to_workspace                       ; d202: 4c 7c c9
.fn_TIME
    ldy #&66 ; 'f'                                          ; d205: a0 66
    php                                                     ; d207: 08
    sei                                                     ; d208: 78
    jsr basic_push_zeropage_to_workspace                    ; d209: 20 9f c9
    plp                                                     ; d20c: 28
    rts                                                     ; d20d: 60
.cmd_TIME
    jsr basic_process_equals_and_expression                 ; d20e: 20 de c4
    ldy #&66 ; 'f'                                          ; d211: a0 66
    php                                                     ; d213: 08
    sei                                                     ; d214: 78
    jsr basic_pop_workspace_to_zeropage                     ; d215: 20 cd c3
    plp                                                     ; d218: 28
    jmp basic_next_command                                  ; d219: 4c 5b c5
.fn_REACT
    jsr basic_push_function_to_workspace                    ; d21c: 20 bc c8
    jsr basic_search_for_comma                              ; d21f: 20 31 c2
    jsr basic_push_function_to_workspace                    ; d222: 20 bc c8
    jsr basic_search_for_comma                              ; d225: 20 31 c2
    jsr basic_push_function_to_workspace                    ; d228: 20 bc c8
    jsr basic_search_for_comma                              ; d22b: 20 31 c2
    jsr basic_push_function_to_workspace                    ; d22e: 20 bc c8
    ldy #&5a ; 'Z'                                          ; d231: a0 5a
    jsr basic_pop_workspace_to_zeropage                     ; d233: 20 cd c3
    ldy #&5e ; '^'                                          ; d236: a0 5e
    jsr basic_pop_workspace_to_zeropage                     ; d238: 20 cd c3
    ldy #&56 ; 'V'                                          ; d23b: a0 56
    jsr basic_pop_workspace_to_zeropage                     ; d23d: 20 cd c3
    lda #&00                                                ; d240: a9 00
    sta l0062                                               ; d242: 85 62
    sta l0063                                               ; d244: 85 63
    sta l0064                                               ; d246: 85 64
    sta l0065                                               ; d248: 85 65
    ldx #&01                                                ; d24a: a2 01
.ld24c
    lda l0099,x                                             ; d24c: b5 99
    eor #&ff                                                ; d24e: 49 ff
    and l0056,x                                             ; d250: 35 56
    sta l0054,x                                             ; d252: 95 54
    dex                                                     ; d254: ca
    bpl ld24c                                               ; d255: 10 f5
    jsr ld2e2                                               ; d257: 20 e2 d2
    ldx l0004                                               ; d25a: a6 04
    ldy #&56 ; 'V'                                          ; d25c: a0 56
    jsr basic_pop_workspace_to_zeropage                     ; d25e: 20 cd c3
    php                                                     ; d261: 08
    sei                                                     ; d262: 78
.ld263
    ldx #&09                                                ; d263: a2 09
.ld265
    dex                                                     ; d265: ca
    bne ld265                                               ; d266: d0 fd
    nop                                                     ; d268: ea
    nop                                                     ; d269: ea
    lda pia_port_b                                          ; d26a: ad 01 b0
    and #&20 ; ' '                                          ; d26d: 29 20
    beq ld2dc                                               ; d26f: f0 6b
    clc                                                     ; d271: 18
    lda l005a                                               ; d272: a5 5a
    sbc #&00                                                ; d274: e9 00
    sta l005a                                               ; d276: 85 5a
    lda l005b                                               ; d278: a5 5b
    sbc #&00                                                ; d27a: e9 00
    sta l005b                                               ; d27c: 85 5b
    lda l005c                                               ; d27e: a5 5c
    sbc #&00                                                ; d280: e9 00
    sta l005c                                               ; d282: 85 5c
    lda l005d                                               ; d284: a5 5d
    sbc #&00                                                ; d286: e9 00
    sta l005d                                               ; d288: 85 5d
    ora l005a                                               ; d28a: 05 5a
    ora l005b                                               ; d28c: 05 5b
    ora l005c                                               ; d28e: 05 5c
    bne ld295                                               ; d290: d0 03
    jsr ld2e2                                               ; d292: 20 e2 d2
.ld295
    lda l0054                                               ; d295: a5 54
    and user_8154_port_a                                    ; d297: 2d 20 09
    bne ld2dc                                               ; d29a: d0 40
    lda l0055                                               ; d29c: a5 55
    and user_8154_port_b                                    ; d29e: 2d 21 09
    bne ld2dc                                               ; d2a1: d0 39
    sec                                                     ; d2a3: 38
    lda l0062                                               ; d2a4: a5 62
    adc #&00                                                ; d2a6: 69 00
    sta l0062                                               ; d2a8: 85 62
    lda l0063                                               ; d2aa: a5 63
    adc #&00                                                ; d2ac: 69 00
    sta l0063                                               ; d2ae: 85 63
    lda l0064                                               ; d2b0: a5 64
    adc #&00                                                ; d2b2: 69 00
    sta l0064                                               ; d2b4: 85 64
    lda l0065                                               ; d2b6: a5 65
    adc #&00                                                ; d2b8: 69 00
    sta l0065                                               ; d2ba: 85 65
    lda l005e                                               ; d2bc: a5 5e
    sbc #&00                                                ; d2be: e9 00
    sta l005e                                               ; d2c0: 85 5e
    lda l005f                                               ; d2c2: a5 5f
    sbc #&00                                                ; d2c4: e9 00
    sta l005f                                               ; d2c6: 85 5f
    lda l0060                                               ; d2c8: a5 60
    sbc #&00                                                ; d2ca: e9 00
    sta l0060                                               ; d2cc: 85 60
    lda l0061                                               ; d2ce: a5 61
    sbc #&00                                                ; d2d0: e9 00
    sta l0061                                               ; d2d2: 85 61
    ora l0060                                               ; d2d4: 05 60
    ora l005f                                               ; d2d6: 05 5f
    ora l005e                                               ; d2d8: 05 5e
    bne ld263                                               ; d2da: d0 87
.ld2dc
    plp                                                     ; d2dc: 28
    ldy #&62 ; 'b'                                          ; d2dd: a0 62
    jmp basic_push_zeropage_to_workspace                    ; d2df: 4c 9f c9
.ld2e2
    ldx #&03                                                ; d2e2: a2 03
    ldy #&00                                                ; d2e4: a0 00
.ld2e6
    lda ld420,x                                             ; d2e6: bd 20 d4
    sta l0052                                               ; d2e9: 85 52
    lda ld424,x                                             ; d2eb: bd 24 d4
    sta l0053                                               ; d2ee: 85 53
    lda l0056,x                                             ; d2f0: b5 56
    sta (l0052),y                                           ; d2f2: 91 52
    dex                                                     ; d2f4: ca
    bpl ld2e6                                               ; d2f5: 10 ef
    rts                                                     ; d2f7: 60
.ld2f8
    equb &01, &02                                           ; d2f8: ..
.ld2fa
    brk                                                     ; d2fa: 00
.ld2fb
    jsr basic_pop_workspace_to_arithmetic_workspace         ; d2fb: 20 cb c3
    lda l0055                                               ; d2fe: a5 55
    ora l0054                                               ; d300: 05 54
    ora l0053                                               ; d302: 05 53
    bne ld2fa                                               ; d304: d0 f4
    lda l0052                                               ; d306: a5 52
    cmp #&18                                                ; d308: c9 18
    bcs ld2fa                                               ; d30a: b0 ee
    lsr a                                                   ; d30c: 4a
    lsr a                                                   ; d30d: 4a
    lsr a                                                   ; d30e: 4a
    tax                                                     ; d30f: aa
    lda l0052                                               ; d310: a5 52
    and #&07                                                ; d312: 29 07
    tay                                                     ; d314: a8
    lda ld319,y                                             ; d315: b9 19 d3
    rts                                                     ; d318: 60
.ld319
    equb &01, &02, &04, &08, &10, &20, &40, &80             ; d319: ..... @.
.cmd_RQIN
    jsr basic_push_function_to_workspace                    ; d321: 20 bc c8
    jsr basic_search_for_comma                              ; d324: 20 31 c2
    jsr basic_push_function_to_workspace                    ; d327: 20 bc c8
    jsr basic_search_for_comma                              ; d32a: 20 31 c2
    jsr basic_process_goto_gosub_target                     ; d32d: 20 1f cc
    jsr basic_post_cmd_checks                               ; d330: 20 e4 c4
    lda l0057                                               ; d333: a5 57
    bne ld33c                                               ; d335: d0 05
    jsr basic_search_for_line_number                        ; d337: 20 2e c6
    bcs ld3ab                                               ; d33a: b0 6f
.ld33c
    ldx l0004                                               ; d33c: a6 04
    jsr ld2fb                                               ; d33e: 20 fb d2
    sta l0057                                               ; d341: 85 57
    lda l0052                                               ; d343: a5 52
    cmp #&10                                                ; d345: c9 10
    bcs ld2fa                                               ; d347: b0 b1
    lda l0057                                               ; d349: a5 57
    php                                                     ; d34b: 08
    sei                                                     ; d34c: 78
    ora l0091,x                                             ; d34d: 15 91
    sta l0091,x                                             ; d34f: 95 91
    lda l0057                                               ; d351: a5 57
    eor #&ff                                                ; d353: 49 ff
    and l0094,x                                             ; d355: 35 94
    sta l0094,x                                             ; d357: 95 94
    stx l0056                                               ; d359: 86 56
    ldx l0052                                               ; d35b: a6 52
    lda l0058                                               ; d35d: a5 58
    sta l03cd,x                                             ; d35f: 9d cd 03
    lda l0059                                               ; d362: a5 59
    sta l03e5,x                                             ; d364: 9d e5 03
    ldx l0004                                               ; d367: a6 04
    jsr basic_pop_workspace_to_arithmetic_workspace         ; d369: 20 cb c3
    ldx l0056                                               ; d36c: a6 56
    lda l0057                                               ; d36e: a5 57
    lsr l0052                                               ; d370: 46 52
    bcs ld378                                               ; d372: b0 04
    ora l0096,x                                             ; d374: 15 96
    bcc ld37c                                               ; d376: 90 04
.ld378
    eor #&ff                                                ; d378: 49 ff
    and l0096,x                                             ; d37a: 35 96
.ld37c
    sta l0096,x                                             ; d37c: 95 96
    plp                                                     ; d37e: 28
    jmp basic_next_command                                  ; d37f: 4c 5b c5
.ld382
    brk                                                     ; d382: 00
.cmd_RCLK
    jsr basic_push_function_to_workspace                    ; d383: 20 bc c8
    jsr basic_search_for_comma                              ; d386: 20 31 c2
    jsr basic_push_function_to_workspace                    ; d389: 20 bc c8
    lda l0043                                               ; d38c: a5 43
    ora l0025                                               ; d38e: 05 25
    ora l0034                                               ; d390: 05 34
    bne ld382                                               ; d392: d0 ee
    lda l0016                                               ; d394: a5 16
    cmp #&08                                                ; d396: c9 08
    bcs ld382                                               ; d398: b0 e8
    pha                                                     ; d39a: 48
    jsr basic_search_for_comma                              ; d39b: 20 31 c2
    jsr basic_process_goto_gosub_target                     ; d39e: 20 1f cc
    jsr basic_post_cmd_checks                               ; d3a1: 20 e4 c4
    lda l0057                                               ; d3a4: a5 57
    bne ld3ad                                               ; d3a6: d0 05
    jsr basic_search_for_line_number                        ; d3a8: 20 2e c6
.ld3ab
    bcs ld3e0                                               ; d3ab: b0 33
.ld3ad
    pla                                                     ; d3ad: 68
    tax                                                     ; d3ae: aa
    lda ld319,x                                             ; d3af: bd 19 d3
    php                                                     ; d3b2: 08
    pha                                                     ; d3b3: 48
    sei                                                     ; d3b4: 78
    ora l0090                                               ; d3b5: 05 90
    sta l0090                                               ; d3b7: 85 90
    pla                                                     ; d3b9: 68
    eor #&ff                                                ; d3ba: 49 ff
    and l0093                                               ; d3bc: 25 93
    sta l0093                                               ; d3be: 85 93
    lda l0058                                               ; d3c0: a5 58
    sta l03c5,x                                             ; d3c2: 9d c5 03
    lda l0059                                               ; d3c5: a5 59
    sta l03dd,x                                             ; d3c7: 9d dd 03
    txa                                                     ; d3ca: 8a
    asl a                                                   ; d3cb: 0a
    asl a                                                   ; d3cc: 0a
    adc #&6a ; 'j'                                          ; d3cd: 69 6a
    tay                                                     ; d3cf: a8
    ldx l0004                                               ; d3d0: a6 04
    jsr basic_pop_workspace_to_zeropage                     ; d3d2: 20 cd c3
    plp                                                     ; d3d5: 28
    dex                                                     ; d3d6: ca
    stx l0004                                               ; d3d7: 86 04
    jmp basic_next_command                                  ; d3d9: 4c 5b c5
.cmd_HANGUP
    jsr basic_post_cmd_checks                               ; d3dc: 20 e4 c4
.ld3df
ld3e0 = ld3df+1
    ldx #&00                                                ; d3df: a2 00
    lda pia_port_b                                          ; d3e1: ad 01 b0
    and #&20 ; ' '                                          ; d3e4: 29 20
    bne ld3eb                                               ; d3e6: d0 03
    jmp basic_warm_start                                    ; d3e8: 4c cf c2
.ld3eb
    ldy #&00                                                ; d3eb: a0 00
    lda l0093,x                                             ; d3ed: b5 93
.ld3ef
    lsr a                                                   ; d3ef: 4a
    bcs ld3fe                                               ; d3f0: b0 0c
    iny                                                     ; d3f2: c8
    cpy #&08                                                ; d3f3: c0 08
    bcc ld3ef                                               ; d3f5: 90 f8
    inx                                                     ; d3f7: e8
    cpx #&03                                                ; d3f8: e0 03
    bcc ld3eb                                               ; d3fa: 90 ef
    bcs ld3df                                               ; d3fc: b0 e1
.ld3fe
    lda ld319,y                                             ; d3fe: b9 19 d3
    eor #&ff                                                ; d401: 49 ff
    sei                                                     ; d403: 78
    and l0093,x                                             ; d404: 35 93
    sta l0093,x                                             ; d406: 95 93
    cli                                                     ; d408: 58
    clc                                                     ; d409: 18
    tya                                                     ; d40a: 98
.ld40b
    dex                                                     ; d40b: ca
    bmi ld412                                               ; d40c: 30 04
    adc #&08                                                ; d40e: 69 08
    bcc ld40b                                               ; d410: 90 f9
.ld412
    tay                                                     ; d412: a8
    lda l03c5,y                                             ; d413: b9 c5 03
    sta l0005                                               ; d416: 85 05
    lda l03dd,y                                             ; d418: b9 dd 03
    sta l0006                                               ; d41b: 85 06
    jmp basic_return_next                                   ; d41d: 4c ff cb
.ld420
    equb &20, &21, &20, &21                                 ; d420:  ! !
.ld424
    equb &09, &09, &10, &10                                 ; d424: ....
.fn_ADC
    jsr basic_push_function_to_workspace                    ; d428: 20 bc c8
    lda l0015,x                                             ; d42b: b5 15
    asl a                                                   ; d42d: 0a
    asl a                                                   ; d42e: 0a
    asl a                                                   ; d42f: 0a
    asl a                                                   ; d430: 0a
    sta analog_6522_orbirb                                  ; d431: 8d 30 1a
    lda #&0c                                                ; d434: a9 0c
    sta analog_6522_pcr                                     ; d436: 8d 3c 1a
    lda #&0e                                                ; d439: a9 0e
    sta analog_6522_pcr                                     ; d43b: 8d 3c 1a
    lda #&02                                                ; d43e: a9 02
.ld440
    bit analog_6522_ifr                                     ; d440: 2c 3d 1a
    beq ld440                                               ; d443: f0 fb
    lda #&00                                                ; d445: a9 00
    sta l0024,x                                             ; d447: 95 24
    sta l0033,x                                             ; d449: 95 33
    sta l0042,x                                             ; d44b: 95 42
    lda analog_6522_oraira                                  ; d44d: ad 31 1a
    asl a                                                   ; d450: 0a
    rol l0024,x                                             ; d451: 36 24
    asl a                                                   ; d453: 0a
    rol l0024,x                                             ; d454: 36 24
    asl a                                                   ; d456: 0a
    rol l0024,x                                             ; d457: 36 24
    asl a                                                   ; d459: 0a
    rol l0024,x                                             ; d45a: 36 24
    sta l0052                                               ; d45c: 85 52
    lda analog_6522_orbirb                                  ; d45e: ad 30 1a
    and #&0f                                                ; d461: 29 0f
    ora l0052                                               ; d463: 05 52
    sta l0015,x                                             ; d465: 95 15
    rts                                                     ; d467: 60
.cmd_DAC
    jsr basic_push_function_to_workspace                    ; d468: 20 bc c8
    jsr basic_process_equals_and_expression                 ; d46b: 20 de c4
    lda l0014,x                                             ; d46e: b5 14
    and #&01                                                ; d470: 29 01
    tay                                                     ; d472: a8
    lda l0015,x                                             ; d473: b5 15
    sta l0052                                               ; d475: 85 52
    sta l0053                                               ; d477: 85 53
    lda l0024,x                                             ; d479: b5 24
    asl l0052                                               ; d47b: 06 52
    rol a                                                   ; d47d: 2a
    asl l0052                                               ; d47e: 06 52
    rol a                                                   ; d480: 2a
    asl l0052                                               ; d481: 06 52
    rol a                                                   ; d483: 2a
    asl l0052                                               ; d484: 06 52
    rol a                                                   ; d486: 2a
    sta analog_8255_port_a,y                                ; d487: 99 00 1a
    lda l0052                                               ; d48a: a5 52
    ldx #&f0                                                ; d48c: a2 f0
    cpy #&01                                                ; d48e: c0 01
    beq ld496                                               ; d490: f0 04
    ldx #&0f                                                ; d492: a2 0f
    lda l0053                                               ; d494: a5 53
.ld496
    stx l0052                                               ; d496: 86 52
    and l0052                                               ; d498: 25 52
    sta l0053                                               ; d49a: 85 53
    lda l0052                                               ; d49c: a5 52
    eor #&ff                                                ; d49e: 49 ff
    and analog_8255_port_c                                  ; d4a0: 2d 02 1a
    ora l0053                                               ; d4a3: 05 53
    sta analog_8255_port_c                                  ; d4a5: 8d 02 1a
    dec l0004                                               ; d4a8: c6 04
    dec l0004                                               ; d4aa: c6 04
    jmp basic_next_command                                  ; d4ac: 4c 5b c5
.cmd_COLOUR
    jsr basic_copy_function_to_arithmetic_workspace         ; d4af: 20 c8 c3
    lda l0052                                               ; d4b2: a5 52
    and #&03                                                ; d4b4: 29 03
    tay                                                     ; d4b6: a8
    lda ld4fb,y                                             ; d4b7: b9 fb d4
    sta l03fd                                               ; d4ba: 8d fd 03
    lda pia_port_a                                          ; d4bd: ad 00 b0
    and #&f0                                                ; d4c0: 29 f0
    cmp #&70 ; 'p'                                          ; d4c2: c9 70
    bne ld4d2                                               ; d4c4: d0 0c
    lda #&00                                                ; d4c6: a9 00
    tay                                                     ; d4c8: a8
.ld4c9
    sta screen_8600,y                                       ; d4c9: 99 00 86
    sta screen_8700,y                                       ; d4cc: 99 00 87
    dey                                                     ; d4cf: 88
    bne ld4c9                                               ; d4d0: d0 f7
.ld4d2
    lda pia_port_a                                          ; d4d2: ad 00 b0
    and #&df                                                ; d4d5: 29 df
    sta pia_port_a                                          ; d4d7: 8d 00 b0
    rol a                                                   ; d4da: 2a
    rol a                                                   ; d4db: 2a
    rol a                                                   ; d4dc: 2a
    and #&03                                                ; d4dd: 29 03
    tay                                                     ; d4df: a8
    lda ld4ef,y                                             ; d4e0: b9 ef d4
    sta l03fe                                               ; d4e3: 8d fe 03
    lda ld4f3,y                                             ; d4e6: b9 f3 d4
    sta l03ff                                               ; d4e9: 8d ff 03
    jmp basic_post_cmd_checks_and_next_cmd                  ; d4ec: 4c 58 c5
.ld4ef
    equb &ff, &1d, &35, &4d                                 ; d4ef: ..5M
.ld4f3
    equb &d4, &d5, &d5, &d5                                 ; d4f3: ....
.ld4f7
    equb &3f, &cf, &f3, &fc                                 ; d4f7: ?...
.ld4fb
    equb &00, &55, &aa, &ff                                 ; d4fb: .U..
.plot_handler_0
    lda l005b                                               ; d4ff: a5 5b
    ora l005d                                               ; d501: 05 5d
    bne ld54c                                               ; d503: d0 47
    lda l005a                                               ; d505: a5 5a
    cmp #&40 ; '@'                                          ; d507: c9 40
    bcs ld54c                                               ; d509: b0 41
    lsr a                                                   ; d50b: 4a
    lsr a                                                   ; d50c: 4a
    sta l005f                                               ; d50d: 85 5f
    ldy #&00                                                ; d50f: a0 00
    sty l0060                                               ; d511: 84 60
    lda #&3f ; '?'                                          ; d513: a9 3f
    sec                                                     ; d515: 38
    sbc l005c                                               ; d516: e5 5c
    cmp #&40 ; '@'                                          ; d518: c9 40
    bcc ld56b                                               ; d51a: 90 4f
    rts                                                     ; d51c: 60
.plot_handler_1
    lda l005b                                               ; d51d: a5 5b
    ora l005d                                               ; d51f: 05 5d
    bne ld54c                                               ; d521: d0 29
    lda l005a                                               ; d523: a5 5a
    bmi ld54c                                               ; d525: 30 25
    lsr a                                                   ; d527: 4a
    lsr a                                                   ; d528: 4a
    sta l005f                                               ; d529: 85 5f
    lda #&3f ; '?'                                          ; d52b: a9 3f
    sec                                                     ; d52d: 38
    sbc l005c                                               ; d52e: e5 5c
    cmp #&40 ; '@'                                          ; d530: c9 40
    bcc ld564                                               ; d532: 90 30
    rts                                                     ; d534: 60
.plot_handler_2
    lda l005b                                               ; d535: a5 5b
    ora l005d                                               ; d537: 05 5d
    bne ld54c                                               ; d539: d0 11
    lda l005a                                               ; d53b: a5 5a
    bmi ld54c                                               ; d53d: 30 0d
    lsr a                                                   ; d53f: 4a
    lsr a                                                   ; d540: 4a
    sta l005f                                               ; d541: 85 5f
    lda #&5f ; '_'                                          ; d543: a9 5f
    sec                                                     ; d545: 38
    sbc l005c                                               ; d546: e5 5c
    cmp #&60 ; '`'                                          ; d548: c9 60
    bcc ld564                                               ; d54a: 90 18
.ld54c
    rts                                                     ; d54c: 60
.plot_handler_3
    lda l005b                                               ; d54d: a5 5b
    ora l005d                                               ; d54f: 05 5d
    bne ld54c                                               ; d551: d0 f9
    lda l005a                                               ; d553: a5 5a
    bmi ld54c                                               ; d555: 30 f5
    lsr a                                                   ; d557: 4a
    lsr a                                                   ; d558: 4a
    sta l005f                                               ; d559: 85 5f
    lda #&bf                                                ; d55b: a9 bf
    sec                                                     ; d55d: 38
    sbc l005c                                               ; d55e: e5 5c
    cmp #&c0                                                ; d560: c9 c0
    bcs ld54c                                               ; d562: b0 e8
.ld564
    ldy #&00                                                ; d564: a0 00
    sty l0060                                               ; d566: 84 60
    asl a                                                   ; d568: 0a
    rol l0060                                               ; d569: 26 60
.ld56b
    asl a                                                   ; d56b: 0a
    rol l0060                                               ; d56c: 26 60
    asl a                                                   ; d56e: 0a
    rol l0060                                               ; d56f: 26 60
    asl a                                                   ; d571: 0a
    rol l0060                                               ; d572: 26 60
    asl a                                                   ; d574: 0a
    rol l0060                                               ; d575: 26 60
    adc l005f                                               ; d577: 65 5f
    sta l005f                                               ; d579: 85 5f
    lda l0060                                               ; d57b: a5 60
    adc #&80                                                ; d57d: 69 80
    sta l0060                                               ; d57f: 85 60
    lda l005a                                               ; d581: a5 5a
    and #&03                                                ; d583: 29 03
    tax                                                     ; d585: aa
    lda ld4f7,x                                             ; d586: bd f7 d4
    ldx l005e                                               ; d589: a6 5e
    dex                                                     ; d58b: ca
    beq ld59d                                               ; d58c: f0 0f
    dex                                                     ; d58e: ca
    beq ld596                                               ; d58f: f0 05
    and (l005f),y                                           ; d591: 31 5f
    sta (l005f),y                                           ; d593: 91 5f
    rts                                                     ; d595: 60
.ld596
    eor #&ff                                                ; d596: 49 ff
    eor (l005f),y                                           ; d598: 51 5f
    sta (l005f),y                                           ; d59a: 91 5f
    rts                                                     ; d59c: 60
.ld59d
    tax                                                     ; d59d: aa
    and (l005f),y                                           ; d59e: 31 5f
    sta (l005f),y                                           ; d5a0: 91 5f
    txa                                                     ; d5a2: 8a
    eor #&ff                                                ; d5a3: 49 ff
    and l03fd                                               ; d5a5: 2d fd 03
    ora (l005f),y                                           ; d5a8: 11 5f
    sta (l005f),y                                           ; d5aa: 91 5f
    rts                                                     ; d5ac: 60
.ignored
    equb &52, &c9, &5a, &cd, &c1, &03, &d0, &07             ; d5ad: R.Z.....
    equb &a5, &5b, &cd, &c2, &03, &f0, &d5, &20             ; d5b5: .[..... 
    equb &c9, &d5, &a5, &59, &10, &e8, &20, &da             ; d5bd: ...Y.. .
    equb &d5, &4c, &ab, &d5, &38, &a5, &57, &e5             ; d5c5: .L..8.W.
    equb &54, &85, &57, &a5, &59, &e5, &55, &85             ; d5cd: T.W.Y.U.
    equb &59, &a2, &00, &f0, &0f, &18, &a5, &57             ; d5d5: Y......W
    equb &65, &52, &85, &57, &a5, &59, &65, &53             ; d5dd: eR.W.YeS
    equb &85, &59, &a2, &02, &18, &b5, &56, &10             ; d5e5: .Y....V.
    equb &0b, &b5, &5a, &e9, &00, &95, &5a, &b0             ; d5ed: ..Z...Z.
    equb &02, &d6, &5b, &60, &b5, &5a, &69, &01             ; d5f5: ..[`.Zi.
    equb &95, &5a, &90, &f7, &f6, &5b, &60, &20             ; d5fd: .Z...[` 
    equb &c8, &c3, &a9, &0c, &20, &f4, &ff, &a0             ; d605: .... ...
    equb &00, &a2, &18, &bd, &81, &d6, &85, &53             ; d60d: .......S
    equb &bd, &9a, &d6, &85, &54, &a5, &52, &49             ; d615: ....T.RI
    equb &17, &91, &53, &ca, &10, &ed, &4c, &58             ; d61d: ..S...LX
    equb &c5, &a5, &5b, &05, &5d, &d0, &4e, &a5             ; d625: ..[.].N.
    equb &5a, &c9, &4e, &b0, &48, &4a, &85, &5f             ; d62d: Z.N.HJ._
    equb &a5, &5c, &c9, &4b, &b0, &3f, &a2, &ff             ; d635: .\.K.?..
    equb &38, &e8, &e9, &03, &b0, &fb, &69, &03             ; d63d: 8.....i.
    equb &85, &61, &bd, &81, &d6, &38, &65, &5f             ; d645: .a...8e_
    equb &85, &5f, &bd, &9a, &d6, &69, &00, &85             ; d64d: ._...i..
    equb &60, &a5, &5a, &4a, &a5, &61, &2a, &a8             ; d655: `.ZJ.a*.
    equb &b9, &7b, &d6, &a0, &00, &a6, &5e, &ca             ; d65d: .{....^.
    equb &f0, &0f, &ca, &f0, &07, &49, &ff, &31             ; d665: .....I.1
    equb &5f, &91, &5f, &60, &51, &5f, &91, &5f             ; d66d: _._`Q_._
    equb &60, &11, &5f, &91, &5f, &60, &10, &40             ; d675: `._._`.@
    equb &04, &08, &01, &02, &c0, &98, &70, &48             ; d67d: ......pH
    equb &20, &f8, &d0, &a8, &80, &58, &30, &08             ; d685:  ....X0.
    equb &e0, &b8, &90, &68, &40, &18, &f0, &c8             ; d68d: ...h@...
    equb &a0, &78, &50, &28, &00, &07, &07, &07             ; d695: .xP(....
    equb &07, &07, &06, &06, &06, &06, &06, &06             ; d69d: ........
    equb &06, &05, &05, &05, &05, &05, &05, &04             ; d6a5: ........
    equb &04, &04, &04, &04, &04, &04, &52, &91             ; d6ad: ......R.
    equb &56, &4c, &5b, &c5, &ca, &86, &04, &b4             ; d6b5: VL[.....
    equb &16, &b9, &31, &d5, &d5, &d5, &d1, &d1             ; d6bd: ..1.....
    equb &d7, &d8, &d8, &d8, &d3, &d8, &d1, &23             ; d6c5: .......#
    equb &c6, &96, &d7, &74, &88, &81, &96, &9f             ; d6cd: ...t....
    equb &7a, &5b, &57, &62, &77, &cb, &bd, &f9             ; d6d5: z[Wbw...
    equb &e8, &1a, &24, &33, &7b, &65, &17, &2b             ; d6dd: ..$3{e.+
    equb &ff, &00, &00, &00, &ff, &ff, &ff, &ff             ; d6e5: ........
    equb &ff, &ff, &ff, &00, &00, &00, &00, &00             ; d6ed: ........
    equb &00, &00, &00, &ff, &00, &00, &00, &00             ; d6f5: ........
    equb &ff, &52, &41, &42, &43, &7f, &54, &51             ; d6fd: .RABC.TQ
    equb &b2, &c8, &c0, &bd, &04, &0a, &3b, &d3             ; d705: ......;.
    equb &d3, &d3, &d3, &d3, &d3, &d0, &00, &00             ; d70d: ........
    equb &00, &00, &00, &ff, &ff, &a9, &4c, &20             ; d715: ......L 
    equb &38, &d6, &a5, &00, &85, &0d, &a5, &01             ; d71d: 8.......
    equb &85, &0e, &20, &06, &d6, &a0, &00, &f0             ; d725: .. .....
    equb &08, &a0, &00, &e6, &0d, &d0, &02, &e6             ; d72d: ........
    equb &0e, &a5, &0d, &c5, &02, &a5, &0e, &e5             ; d735: ........
    equb &03, &b0, &24, &b9, &01, &01, &cd, &00             ; d73d: ..$.....
    equb &01, &f0, &07, &d1, &0d, &d0, &e2, &c8             ; d745: ........
    equb &d0, &f1, &a5, &0d, &85, &00, &a5, &0e             ; d74d: ........
    equb &85, &01, &a9, &00, &85, &06, &85, &07             ; d755: ........
    equb &b9, &02, &01, &c9, &0d, &d0, &03, &4c             ; d75d: .......L
    equb &6c, &d1, &84, &02, &c8, &b9, &01, &01             ; d765: l.......
    equb &85, &03, &c9, &0d, &f0, &11, &cd, &00             ; d76d: ........
    equb &01, &d0, &f1, &b9, &02, &01, &20, &fb             ; d775: ...... .
    equb &d5, &85, &03, &c9, &52, &f0, &0d, &20             ; d77d: ....R.. 
    equb &42, &d0, &a9, &6c, &20, &70, &d6, &a9             ; d785: B..l p..
    equb &3a, &20, &f4, &ff, &a5, &00, &85, &0a             ; d78d: : ......
    equb &18, &a4, &02, &88, &98, &65, &00, &85             ; d795: .....e..
    equb &0b, &a5, &01, &85, &08, &69, &00, &85             ; d79d: .....i..
    equb &09, &a2, &00, &86, &0f, &86, &10, &b9             ; d7a5: ........
    equb &03, &01, &cd, &00, &01, &f0, &13, &9d             ; d7ad: ........
    equb &00, &28, &e8, &c8, &e6, &0f, &b9, &03             ; d7b5: .(......
    equb &01, &c9, &0d, &f0, &05, &cd, &00, &01             ; d7bd: ........
    equb &d0, &ed, &a9, &04, &9d, &00, &28, &a5             ; d7c5: ......(.
    equb &03, &c9, &52, &f0, &12, &20, &bc, &d8             ; d7cd: ..R.. ..
    equb &20, &fb, &d5, &c9, &51, &f0, &88, &c9             ; d7d5:  ...Q...
    equb &50, &f0, &2e, &c9, &52, &d0, &e8, &a5             ; d7dd: P...R...
    equb &02, &48, &20, &90, &d4, &68, &a8, &b9             ; d7e5: .H ..h..
    equb &02, &01, &cd, &00, &01, &f0, &20, &a5             ; d7ed: ...... .
    equb &0b, &d0, &02, &c6, &09, &c6, &0b, &20             ; d7f5: ....... 
    equb &d1, &d3, &18                                      ; d7fd: ...

.pydis_end

save pydis_start, pydis_end
