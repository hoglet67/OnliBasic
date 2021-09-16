l0003 = &0003
l0004 = &0004
l0005 = &0005
l0006 = &0006
l000f = &000f
l0014 = &0014
l0015 = &0015
l0016 = &0016
l0023 = &0023
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
IRQVECL = &0204
IRQVECH = &0205
last_point_0 = &03c1
last_point_1 = &03c2
last_point_2 = &03c3
last_point_3 = &03c4
l03c5 = &03c5
l03cd = &03cd
l03dd = &03dd
l03e5 = &03e5
user_8154_bit_operations = &0900
user_8154_port_a = &0920
user_8154_port_b = &0921
system_8154_port_b_keboard = &0e21
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
    equw ld093, ld08f                                       ; d002: 93 d0 8f ...
.command_table
    equs "START"                                            ; d006: 53 54 41 ...
    equb >(cmd_START)                                       ; d00b: .
    equb <(cmd_START)                                       ; d00c: .
    equs "PLOT"                                             ; d00d: 50 4c 4f ...
    equb >(cmd_PLOT)                                        ; d011: .
    equb <(cmd_PLOT)                                        ; d012: .
    equs "DRAW"                                             ; d013: 44 52 41 ...
    equb >(cmd_DRAW)                                        ; d017: .
    equb <(cmd_DRAW)                                        ; d018: .
    equs "MOVE"                                             ; d019: 4d 4f 56 ...
    equb >(cmd_MOVE)                                        ; d01d: .
    equb <(cmd_MOVE)                                        ; d01e: .
    equs "CLEAR"                                            ; d01f: 43 4c 45 ...
    equb >(cmd_CLEAR)                                       ; d024: .
    equb <(cmd_CLEAR)                                       ; d025: .
    equs "CLI"                                              ; d026: 43 4c 49
    equb >(cmd_CLI)                                         ; d029: .
    equb <(cmd_CLI)                                         ; d02a: .
    equs "SEI"                                              ; d02b: 53 45 49
    equb >(cmd_SEI)                                         ; d02e: .
    equb <(cmd_SEI)                                         ; d02f: .
    equs "REL"                                              ; d030: 52 45 4c
    equb >(cmd_REL)                                         ; d033: .
    equb <(cmd_REL)                                         ; d034: .
    equs "KILL"                                             ; d035: 4b 49 4c ...
    equb >(cmd_KILL)                                        ; d039: .
    equb <(cmd_KILL)                                        ; d03a: .
    equs "RQIN"                                             ; d03b: 52 51 49 ...
    equb >(cmd_RQIN)                                        ; d03f: .
    equb <(cmd_RQIN)                                        ; d040: .
    equs "RCLK"                                             ; d041: 52 43 4c ...
    equb >(cmd_RCLK)                                        ; d045: .
    equb <(cmd_RCLK)                                        ; d046: .
    equs "HANGUP"                                           ; d047: 48 41 4e ...
    equb >(cmd_HANGUP)                                      ; d04d: .
    equb <(cmd_HANGUP)                                      ; d04e: .
    equs "SET"                                              ; d04f: 53 45 54
    equb >(cmd_SET)                                         ; d052: .
    equb <(cmd_SET)                                         ; d053: .
    equs "CLR"                                              ; d054: 43 4c 52
    equb >(cmd_CLR)                                         ; d057: .
    equb <(cmd_CLR)                                         ; d058: .
    equs "DEFPORT"                                          ; d059: 44 45 46 ...
    equb >(cmd_DEFPORT)                                     ; d060: .
    equb <(cmd_DEFPORT)                                     ; d061: .
    equs "PORT"                                             ; d062: 50 4f 52 ...
    equb >(cmd_PORT)                                        ; d066: .
    equb <(cmd_PORT)                                        ; d067: .
    equs "TIME"                                             ; d068: 54 49 4d ...
    equb >(cmd_TIME)                                        ; d06c: .
    equb <(cmd_TIME)                                        ; d06d: .
    equs "DAC"                                              ; d06e: 44 41 43
    equb >(cmd_DAC)                                         ; d071: .
    equb <(cmd_DAC)                                         ; d072: .
    equb >(basic_post_cmd_checks_and_next_cmd)              ; d073: .
    equb <(basic_post_cmd_checks_and_next_cmd)              ; d074: .
    equs "ADC"                                              ; d075: 41 44 43
    equb >(fn_ADC)                                          ; d078: .
    equb <(fn_ADC)                                          ; d079: .
    equs "TIME"                                             ; d07a: 54 49 4d ...
    equb >(fn_TIME)                                         ; d07e: .
    equb <(fn_TIME)                                         ; d07f: .
    equs "PORT"                                             ; d080: 50 4f 52 ...
    equb >(fn_PORT)                                         ; d084: .
    equb <(fn_PORT)                                         ; d085: .
    equs "REACT"                                            ; d086: 52 45 41 ...
    equb >(fn_REACT)                                        ; d08b: .
    equb <(fn_REACT)                                        ; d08c: .
    equb >(basic_error_29_unknown_or_missing_function)      ; d08d: .
    equb <(basic_error_29_unknown_or_missing_function)      ; d08e: .
.ld08f
    ldx #&6e ; 'n'                                          ; d08f: a2 6e
    bne ld095                                               ; d091: d0 02
.ld093
    ldx #&ff                                                ; d093: a2 ff
.ld095
    dey                                                     ; d095: 88
    sty l0052                                               ; d096: 84 52
.ld098
    ldy l0052                                               ; d098: a4 52
.ld09a
    iny                                                     ; d09a: c8
    inx                                                     ; d09b: e8
.ld09c
    lda command_table,x                                     ; d09c: bd 06 d0
    bmi ld0b7                                               ; d09f: 30 16
    cmp (l0005),y                                           ; d0a1: d1 05
    beq ld09a                                               ; d0a3: f0 f5
    dex                                                     ; d0a5: ca
.ld0a6
    inx                                                     ; d0a6: e8
    lda command_table,x                                     ; d0a7: bd 06 d0
    bpl ld0a6                                               ; d0aa: 10 fa
    inx                                                     ; d0ac: e8
    lda (l0005),y                                           ; d0ad: b1 05
    cmp #&2e ; '.'                                          ; d0af: c9 2e
    bne ld098                                               ; d0b1: d0 e5
    iny                                                     ; d0b3: c8
    dex                                                     ; d0b4: ca
    bcs ld09c                                               ; d0b5: b0 e5
.ld0b7
    sta l0053                                               ; d0b7: 85 53
    lda command_table+1,x                                   ; d0b9: bd 07 d0
    sta l0052                                               ; d0bc: 85 52
    sty l0003                                               ; d0be: 84 03
    ldx l0004                                               ; d0c0: a6 04
    jmp (l0052)                                             ; d0c2: 6c 52 00
.cmd_START
    lda #<irq_handler ; '9'                                 ; d0c5: a9 39
    sta IRQVECL                                             ; d0c7: 8d 04 02
    lda #>irq_handler                                       ; d0ca: a9 d1
    sta IRQVECH                                             ; d0cc: 8d 05 02
    lda #&00                                                ; d0cf: a9 00
    ldx #&2f ; '/'                                          ; d0d1: a2 2f
.ld0d3
    sta l0066,x                                             ; d0d3: 95 66
    dex                                                     ; d0d5: ca
    bpl ld0d3                                               ; d0d6: 10 fb
    lda #&c0                                                ; d0d8: a9 c0
    sta analog_6522_acr                                     ; d0da: 8d 3b 1a
    lda #&70 ; 'p'                                          ; d0dd: a9 70
    sta analog_6522_ddrb                                    ; d0df: 8d 32 1a
    lda #&80                                                ; d0e2: a9 80
    sta analog_8255_control                                 ; d0e4: 8d 03 1a
    lda #&02                                                ; d0e7: a9 02
    sta analog_6522_t1cl                                    ; d0e9: 8d 34 1a
    lda #&00                                                ; d0ec: a9 00
    sta analog_6522_t1ch                                    ; d0ee: 8d 35 1a
.cmd_CLI
    cli                                                     ; d0f1: 58
    jmp basic_post_cmd_checks_and_next_cmd                  ; d0f2: 4c 58 c5
.cmd_SEI
    sei                                                     ; d0f5: 78
    jmp basic_post_cmd_checks_and_next_cmd                  ; d0f6: 4c 58 c5
.cmd_SET
    lda #&10                                                ; d0f9: a9 10
    bne ld0ff                                               ; d0fb: d0 02
.cmd_CLR
    lda #&00                                                ; d0fd: a9 00
.ld0ff
    sta l000f                                               ; d0ff: 85 0f
    jsr basic_copy_function_to_arithmetic_workspace         ; d101: 20 c8 c3
    jsr basic_post_cmd_checks                               ; d104: 20 e4 c4
    lda l0052                                               ; d107: a5 52
    and #&0f                                                ; d109: 29 0f
    ora l000f                                               ; d10b: 05 0f
    tax                                                     ; d10d: aa
    lda l0052                                               ; d10e: a5 52
    cmp #&10                                                ; d110: c9 10
    bcs ld119                                               ; d112: b0 05
    sta user_8154_bit_operations,x                          ; d114: 9d 00 09
    bcc ld11c                                               ; d117: 90 03
.ld119
    sta vdu80_screen,x                                      ; d119: 9d 00 10
.ld11c
    jmp basic_next_command                                  ; d11c: 4c 5b c5
.cmd_DEFPORT
    jsr basic_push_function_to_workspace                    ; d11f: 20 bc c8
    jsr basic_process_equals_and_expression                 ; d122: 20 de c4
    jsr basic_pop_workspace_to_arithmetic_workspace         ; d125: 20 cb c3
    jsr ld1f9                                               ; d128: 20 f9 d1
    ldy #&02                                                ; d12b: a0 02
    lda l0052                                               ; d12d: a5 52
    sta (l0056),y                                           ; d12f: 91 56
    ldy l0016,x                                             ; d131: b4 16
    sta l0099,y                                             ; d133: 99 99 00
    jmp basic_next_command                                  ; d136: 4c 5b c5
.irq_handler
    inc l0066                                               ; d139: e6 66
    bne ld147                                               ; d13b: d0 0a
    inc l0067                                               ; d13d: e6 67
    bne ld147                                               ; d13f: d0 06
    inc l0068                                               ; d141: e6 68
    bne ld147                                               ; d143: d0 02
    inc l0069                                               ; d145: e6 69
.ld147
    txa                                                     ; d147: 8a
    pha                                                     ; d148: 48
    lda #&00                                                ; d149: a9 00
    sta l008a                                               ; d14b: 85 8a
    lda #&80                                                ; d14d: a9 80
    sta l0098                                               ; d14f: 85 98
    ldx #&1c                                                ; d151: a2 1c
.ld153
    lda l006a,x                                             ; d153: b5 6a
    ora l006b,x                                             ; d155: 15 6b
    ora l006c,x                                             ; d157: 15 6c
    ora l006d,x                                             ; d159: 15 6d
    beq ld181                                               ; d15b: f0 24
    lda l006a,x                                             ; d15d: b5 6a
    bne ld16f                                               ; d15f: d0 0e
    lda l006b,x                                             ; d161: b5 6b
    bne ld16d                                               ; d163: d0 08
    lda l006c,x                                             ; d165: b5 6c
    bne ld16b                                               ; d167: d0 02
    dec l006d,x                                             ; d169: d6 6d
.ld16b
    dec l006c,x                                             ; d16b: d6 6c
.ld16d
    dec l006b,x                                             ; d16d: d6 6b
.ld16f
    dec l006a,x                                             ; d16f: d6 6a
    lda l006a,x                                             ; d171: b5 6a
    ora l006b,x                                             ; d173: 15 6b
    ora l006c,x                                             ; d175: 15 6c
    ora l006d,x                                             ; d177: 15 6d
    bne ld181                                               ; d179: d0 06
    lda l008a                                               ; d17b: a5 8a
    ora l0098                                               ; d17d: 05 98
    sta l008a                                               ; d17f: 85 8a
.ld181
    lsr l0098                                               ; d181: 46 98
    dex                                                     ; d183: ca
    dex                                                     ; d184: ca
    dex                                                     ; d185: ca
    dex                                                     ; d186: ca
    bpl ld153                                               ; d187: 10 ca
    lda l008a                                               ; d189: a5 8a
    and l0090                                               ; d18b: 25 90
    ora l0093                                               ; d18d: 05 93
    sta l0093                                               ; d18f: 85 93
    ldx #&01                                                ; d191: a2 01
.ld193
    lda l0099,x                                             ; d193: b5 99
    eor #&ff                                                ; d195: 49 ff
    and user_8154_port_a,x                                  ; d197: 3d 20 09
    pha                                                     ; d19a: 48
    sta l008b,x                                             ; d19b: 95 8b
    eor l008e,x                                             ; d19d: 55 8e
    sta l008e,x                                             ; d19f: 95 8e
    lda l0096,x                                             ; d1a1: b5 96
    eor l008b,x                                             ; d1a3: 55 8b
    and l008e,x                                             ; d1a5: 35 8e
    and l0091,x                                             ; d1a7: 35 91
    ora l0094,x                                             ; d1a9: 15 94
    sta l0094,x                                             ; d1ab: 95 94
    pla                                                     ; d1ad: 68
    sta l008e,x                                             ; d1ae: 95 8e
    dex                                                     ; d1b0: ca
    bpl ld193                                               ; d1b1: 10 e0
    pla                                                     ; d1b3: 68
    tax                                                     ; d1b4: aa
    pla                                                     ; d1b5: 68
    rti                                                     ; d1b6: 40
.cmd_REL
    jsr basic_push_function_to_workspace                    ; d1b7: 20 bc c8
    jsr basic_post_cmd_checks                               ; d1ba: 20 e4 c4
    jsr ld30c                                               ; d1bd: 20 0c d3
    eor #&ff                                                ; d1c0: 49 ff
    tay                                                     ; d1c2: a8
    php                                                     ; d1c3: 08
    sei                                                     ; d1c4: 78
    lda ld309,x                                             ; d1c5: bd 09 d3
    tax                                                     ; d1c8: aa
    tya                                                     ; d1c9: 98
    and l0090,x                                             ; d1ca: 35 90
    sta l0090,x                                             ; d1cc: 95 90
    tya                                                     ; d1ce: 98
    and l0093,x                                             ; d1cf: 35 93
    sta l0093,x                                             ; d1d1: 95 93
    plp                                                     ; d1d3: 28
    jmp basic_next_command                                  ; d1d4: 4c 5b c5
.cmd_KILL
    php                                                     ; d1d7: 08
    sei                                                     ; d1d8: 78
    ldx #&05                                                ; d1d9: a2 05
    lda #&00                                                ; d1db: a9 00
.ld1dd
    sta l0090,x                                             ; d1dd: 95 90
    dex                                                     ; d1df: ca
    bpl ld1dd                                               ; d1e0: 10 fb
    plp                                                     ; d1e2: 28
    jmp basic_post_cmd_checks_and_next_cmd                  ; d1e3: 4c 58 c5
.cmd_PORT
    jsr basic_push_function_to_workspace                    ; d1e6: 20 bc c8
    jsr basic_process_equals_and_expression                 ; d1e9: 20 de c4
    jsr basic_pop_workspace_to_arithmetic_workspace         ; d1ec: 20 cb c3
    jsr ld1f9                                               ; d1ef: 20 f9 d1
    lda l0052                                               ; d1f2: a5 52
    sta (l0056),y                                           ; d1f4: 91 56
    jmp basic_next_command                                  ; d1f6: 4c 5b c5
.ld1f9
    dex                                                     ; d1f9: ca
    stx l0004                                               ; d1fa: 86 04
    ldy l0016,x                                             ; d1fc: b4 16
    lda ld431,y                                             ; d1fe: b9 31 d4
    sta l0056                                               ; d201: 85 56
    lda ld435,y                                             ; d203: b9 35 d4
    sta l0057                                               ; d206: 85 57
    ldy #&00                                                ; d208: a0 00
    rts                                                     ; d20a: 60
.fn_PORT
    jsr basic_push_function_to_workspace                    ; d20b: 20 bc c8
    jsr ld1f9                                               ; d20e: 20 f9 d1
    lda (l0056),y                                           ; d211: b1 56
    jmp basic_push_count_to_workspace                       ; d213: 4c 7c c9
.fn_TIME
    ldy #&66 ; 'f'                                          ; d216: a0 66
    php                                                     ; d218: 08
    sei                                                     ; d219: 78
    jsr basic_push_zeropage_to_workspace                    ; d21a: 20 9f c9
    plp                                                     ; d21d: 28
    rts                                                     ; d21e: 60
.cmd_TIME
    jsr basic_process_equals_and_expression                 ; d21f: 20 de c4
    ldy #&66 ; 'f'                                          ; d222: a0 66
    php                                                     ; d224: 08
    sei                                                     ; d225: 78
    jsr basic_pop_workspace_to_zeropage                     ; d226: 20 cd c3
    plp                                                     ; d229: 28
    jmp basic_next_command                                  ; d22a: 4c 5b c5
.fn_REACT
    jsr basic_push_function_to_workspace                    ; d22d: 20 bc c8
    jsr basic_search_for_comma                              ; d230: 20 31 c2
    jsr basic_push_function_to_workspace                    ; d233: 20 bc c8
    jsr basic_search_for_comma                              ; d236: 20 31 c2
    jsr basic_push_function_to_workspace                    ; d239: 20 bc c8
    jsr basic_search_for_comma                              ; d23c: 20 31 c2
    jsr basic_push_function_to_workspace                    ; d23f: 20 bc c8
    ldy #&5a ; 'Z'                                          ; d242: a0 5a
    jsr basic_pop_workspace_to_zeropage                     ; d244: 20 cd c3
    ldy #&5e ; '^'                                          ; d247: a0 5e
    jsr basic_pop_workspace_to_zeropage                     ; d249: 20 cd c3
    ldy #&56 ; 'V'                                          ; d24c: a0 56
    jsr basic_pop_workspace_to_zeropage                     ; d24e: 20 cd c3
    lda #&00                                                ; d251: a9 00
    sta l0062                                               ; d253: 85 62
    sta l0063                                               ; d255: 85 63
    sta l0064                                               ; d257: 85 64
    sta l0065                                               ; d259: 85 65
    ldx #&01                                                ; d25b: a2 01
.ld25d
    lda l0099,x                                             ; d25d: b5 99
    eor #&ff                                                ; d25f: 49 ff
    and l0056,x                                             ; d261: 35 56
    sta l0054,x                                             ; d263: 95 54
    dex                                                     ; d265: ca
    bpl ld25d                                               ; d266: 10 f5
    jsr ld2f3                                               ; d268: 20 f3 d2
    ldx l0004                                               ; d26b: a6 04
    ldy #&56 ; 'V'                                          ; d26d: a0 56
    jsr basic_pop_workspace_to_zeropage                     ; d26f: 20 cd c3
    php                                                     ; d272: 08
    sei                                                     ; d273: 78
.ld274
    ldx #&09                                                ; d274: a2 09
.ld276
    dex                                                     ; d276: ca
    bne ld276                                               ; d277: d0 fd
    nop                                                     ; d279: ea
    nop                                                     ; d27a: ea
    lda system_8154_port_b_keboard                          ; d27b: ad 21 0e
    cmp #&1b                                                ; d27e: c9 1b
    beq ld2ed                                               ; d280: f0 6b
    clc                                                     ; d282: 18
    lda l005a                                               ; d283: a5 5a
    sbc #&00                                                ; d285: e9 00
    sta l005a                                               ; d287: 85 5a
    lda l005b                                               ; d289: a5 5b
    sbc #&00                                                ; d28b: e9 00
    sta l005b                                               ; d28d: 85 5b
    lda l005c                                               ; d28f: a5 5c
    sbc #&00                                                ; d291: e9 00
    sta l005c                                               ; d293: 85 5c
    lda l005d                                               ; d295: a5 5d
    sbc #&00                                                ; d297: e9 00
    sta l005d                                               ; d299: 85 5d
    ora l005a                                               ; d29b: 05 5a
    ora l005b                                               ; d29d: 05 5b
    ora l005c                                               ; d29f: 05 5c
    bne ld2a6                                               ; d2a1: d0 03
    jsr ld2f3                                               ; d2a3: 20 f3 d2
.ld2a6
    lda l0054                                               ; d2a6: a5 54
    and user_8154_port_a                                    ; d2a8: 2d 20 09
    bne ld2ed                                               ; d2ab: d0 40
    lda l0055                                               ; d2ad: a5 55
    and user_8154_port_b                                    ; d2af: 2d 21 09
    bne ld2ed                                               ; d2b2: d0 39
    sec                                                     ; d2b4: 38
    lda l0062                                               ; d2b5: a5 62
    adc #&00                                                ; d2b7: 69 00
    sta l0062                                               ; d2b9: 85 62
    lda l0063                                               ; d2bb: a5 63
    adc #&00                                                ; d2bd: 69 00
    sta l0063                                               ; d2bf: 85 63
    lda l0064                                               ; d2c1: a5 64
    adc #&00                                                ; d2c3: 69 00
    sta l0064                                               ; d2c5: 85 64
    lda l0065                                               ; d2c7: a5 65
    adc #&00                                                ; d2c9: 69 00
    sta l0065                                               ; d2cb: 85 65
    lda l005e                                               ; d2cd: a5 5e
    sbc #&00                                                ; d2cf: e9 00
    sta l005e                                               ; d2d1: 85 5e
    lda l005f                                               ; d2d3: a5 5f
    sbc #&00                                                ; d2d5: e9 00
    sta l005f                                               ; d2d7: 85 5f
    lda l0060                                               ; d2d9: a5 60
    sbc #&00                                                ; d2db: e9 00
    sta l0060                                               ; d2dd: 85 60
    lda l0061                                               ; d2df: a5 61
    sbc #&00                                                ; d2e1: e9 00
    sta l0061                                               ; d2e3: 85 61
    ora l0060                                               ; d2e5: 05 60
    ora l005f                                               ; d2e7: 05 5f
    ora l005e                                               ; d2e9: 05 5e
    bne ld274                                               ; d2eb: d0 87
.ld2ed
    plp                                                     ; d2ed: 28
    ldy #&62 ; 'b'                                          ; d2ee: a0 62
    jmp basic_push_zeropage_to_workspace                    ; d2f0: 4c 9f c9
.ld2f3
    ldx #&03                                                ; d2f3: a2 03
    ldy #&00                                                ; d2f5: a0 00
.ld2f7
    lda ld431,x                                             ; d2f7: bd 31 d4
    sta l0052                                               ; d2fa: 85 52
    lda ld435,x                                             ; d2fc: bd 35 d4
    sta l0053                                               ; d2ff: 85 53
    lda l0056,x                                             ; d301: b5 56
    sta (l0052),y                                           ; d303: 91 52
    dex                                                     ; d305: ca
    bpl ld2f7                                               ; d306: 10 ef
    rts                                                     ; d308: 60
.ld309
    equb &01, &02                                           ; d309: ..
.ld30b
    brk                                                     ; d30b: 00
.ld30c
    jsr basic_pop_workspace_to_arithmetic_workspace         ; d30c: 20 cb c3
    lda l0055                                               ; d30f: a5 55
    ora l0054                                               ; d311: 05 54
    ora l0053                                               ; d313: 05 53
    bne ld30b                                               ; d315: d0 f4
    lda l0052                                               ; d317: a5 52
    cmp #&18                                                ; d319: c9 18
    bcs ld30b                                               ; d31b: b0 ee
    lsr a                                                   ; d31d: 4a
    lsr a                                                   ; d31e: 4a
    lsr a                                                   ; d31f: 4a
    tax                                                     ; d320: aa
    lda l0052                                               ; d321: a5 52
    and #&07                                                ; d323: 29 07
    tay                                                     ; d325: a8
    lda ld32a,y                                             ; d326: b9 2a d3
    rts                                                     ; d329: 60
.ld32a
    equb &01, &02, &04, &08, &10, &20, &40, &80             ; d32a: ..... @.
.cmd_RQIN
    jsr basic_push_function_to_workspace                    ; d332: 20 bc c8
    jsr basic_search_for_comma                              ; d335: 20 31 c2
    jsr basic_push_function_to_workspace                    ; d338: 20 bc c8
    jsr basic_search_for_comma                              ; d33b: 20 31 c2
    jsr basic_process_goto_gosub_target                     ; d33e: 20 1f cc
    jsr basic_post_cmd_checks                               ; d341: 20 e4 c4
    lda l0057                                               ; d344: a5 57
    bne ld34d                                               ; d346: d0 05
    jsr basic_search_for_line_number                        ; d348: 20 2e c6
    bcs ld3bc                                               ; d34b: b0 6f
.ld34d
    ldx l0004                                               ; d34d: a6 04
    jsr ld30c                                               ; d34f: 20 0c d3
    sta l0057                                               ; d352: 85 57
    lda l0052                                               ; d354: a5 52
    cmp #&10                                                ; d356: c9 10
    bcs ld30b                                               ; d358: b0 b1
    lda l0057                                               ; d35a: a5 57
    php                                                     ; d35c: 08
    sei                                                     ; d35d: 78
    ora l0091,x                                             ; d35e: 15 91
    sta l0091,x                                             ; d360: 95 91
    lda l0057                                               ; d362: a5 57
    eor #&ff                                                ; d364: 49 ff
    and l0094,x                                             ; d366: 35 94
    sta l0094,x                                             ; d368: 95 94
    stx l0056                                               ; d36a: 86 56
    ldx l0052                                               ; d36c: a6 52
    lda l0058                                               ; d36e: a5 58
    sta l03cd,x                                             ; d370: 9d cd 03
    lda l0059                                               ; d373: a5 59
    sta l03e5,x                                             ; d375: 9d e5 03
    ldx l0004                                               ; d378: a6 04
    jsr basic_pop_workspace_to_arithmetic_workspace         ; d37a: 20 cb c3
    ldx l0056                                               ; d37d: a6 56
    lda l0057                                               ; d37f: a5 57
    lsr l0052                                               ; d381: 46 52
    bcs ld389                                               ; d383: b0 04
    ora l0096,x                                             ; d385: 15 96
    bcc ld38d                                               ; d387: 90 04
.ld389
    eor #&ff                                                ; d389: 49 ff
    and l0096,x                                             ; d38b: 35 96
.ld38d
    sta l0096,x                                             ; d38d: 95 96
    plp                                                     ; d38f: 28
    jmp basic_next_command                                  ; d390: 4c 5b c5
.ld393
    brk                                                     ; d393: 00
.cmd_RCLK
    jsr basic_push_function_to_workspace                    ; d394: 20 bc c8
    jsr basic_search_for_comma                              ; d397: 20 31 c2
    jsr basic_push_function_to_workspace                    ; d39a: 20 bc c8
    lda l0043                                               ; d39d: a5 43
    ora l0025                                               ; d39f: 05 25
    ora l0034                                               ; d3a1: 05 34
    bne ld393                                               ; d3a3: d0 ee
    lda l0016                                               ; d3a5: a5 16
    cmp #&08                                                ; d3a7: c9 08
    bcs ld393                                               ; d3a9: b0 e8
    pha                                                     ; d3ab: 48
    jsr basic_search_for_comma                              ; d3ac: 20 31 c2
    jsr basic_process_goto_gosub_target                     ; d3af: 20 1f cc
    jsr basic_post_cmd_checks                               ; d3b2: 20 e4 c4
    lda l0057                                               ; d3b5: a5 57
    bne ld3be                                               ; d3b7: d0 05
    jsr basic_search_for_line_number                        ; d3b9: 20 2e c6
.ld3bc
    bcs ld3f1                                               ; d3bc: b0 33
.ld3be
    pla                                                     ; d3be: 68
    tax                                                     ; d3bf: aa
    lda ld32a,x                                             ; d3c0: bd 2a d3
    php                                                     ; d3c3: 08
    pha                                                     ; d3c4: 48
    sei                                                     ; d3c5: 78
    ora l0090                                               ; d3c6: 05 90
    sta l0090                                               ; d3c8: 85 90
    pla                                                     ; d3ca: 68
    eor #&ff                                                ; d3cb: 49 ff
    and l0093                                               ; d3cd: 25 93
    sta l0093                                               ; d3cf: 85 93
    lda l0058                                               ; d3d1: a5 58
    sta l03c5,x                                             ; d3d3: 9d c5 03
    lda l0059                                               ; d3d6: a5 59
    sta l03dd,x                                             ; d3d8: 9d dd 03
    txa                                                     ; d3db: 8a
    asl a                                                   ; d3dc: 0a
    asl a                                                   ; d3dd: 0a
    adc #&6a ; 'j'                                          ; d3de: 69 6a
    tay                                                     ; d3e0: a8
    ldx l0004                                               ; d3e1: a6 04
    jsr basic_pop_workspace_to_zeropage                     ; d3e3: 20 cd c3
    plp                                                     ; d3e6: 28
    dex                                                     ; d3e7: ca
    stx l0004                                               ; d3e8: 86 04
    jmp basic_next_command                                  ; d3ea: 4c 5b c5
.cmd_HANGUP
    jsr basic_post_cmd_checks                               ; d3ed: 20 e4 c4
.ld3f0
ld3f1 = ld3f0+1
    ldx #&00                                                ; d3f0: a2 00
    lda system_8154_port_b_keboard                          ; d3f2: ad 21 0e
    cmp #&1b                                                ; d3f5: c9 1b
    bne ld3fc                                               ; d3f7: d0 03
    jmp basic_warm_start                                    ; d3f9: 4c cf c2
.ld3fc
    ldy #&00                                                ; d3fc: a0 00
    lda l0093,x                                             ; d3fe: b5 93
.ld400
    lsr a                                                   ; d400: 4a
    bcs ld40f                                               ; d401: b0 0c
    iny                                                     ; d403: c8
    cpy #&08                                                ; d404: c0 08
    bcc ld400                                               ; d406: 90 f8
    inx                                                     ; d408: e8
    cpx #&03                                                ; d409: e0 03
    bcc ld3fc                                               ; d40b: 90 ef
    bcs ld3f0                                               ; d40d: b0 e1
.ld40f
    lda ld32a,y                                             ; d40f: b9 2a d3
    eor #&ff                                                ; d412: 49 ff
    sei                                                     ; d414: 78
    and l0093,x                                             ; d415: 35 93
    sta l0093,x                                             ; d417: 95 93
    cli                                                     ; d419: 58
    clc                                                     ; d41a: 18
    tya                                                     ; d41b: 98
.ld41c
    dex                                                     ; d41c: ca
    bmi ld423                                               ; d41d: 30 04
    adc #&08                                                ; d41f: 69 08
    bcc ld41c                                               ; d421: 90 f9
.ld423
    tay                                                     ; d423: a8
    lda l03c5,y                                             ; d424: b9 c5 03
    sta l0005                                               ; d427: 85 05
    lda l03dd,y                                             ; d429: b9 dd 03
    sta l0006                                               ; d42c: 85 06
    jmp basic_return_next                                   ; d42e: 4c ff cb
.ld431
    equb &20, &21, &20, &21                                 ; d431:  ! !
.ld435
    equb &09, &09, &10, &10                                 ; d435: ....
.fn_ADC
    jsr basic_push_function_to_workspace                    ; d439: 20 bc c8
    lda l0015,x                                             ; d43c: b5 15
    asl a                                                   ; d43e: 0a
    asl a                                                   ; d43f: 0a
    asl a                                                   ; d440: 0a
    asl a                                                   ; d441: 0a
    sta analog_6522_orbirb                                  ; d442: 8d 30 1a
    lda #&0c                                                ; d445: a9 0c
    sta analog_6522_pcr                                     ; d447: 8d 3c 1a
    lda #&0e                                                ; d44a: a9 0e
    sta analog_6522_pcr                                     ; d44c: 8d 3c 1a
    lda #&02                                                ; d44f: a9 02
.ld451
    bit analog_6522_ifr                                     ; d451: 2c 3d 1a
    beq ld451                                               ; d454: f0 fb
    lda #&00                                                ; d456: a9 00
    sta l0024,x                                             ; d458: 95 24
    sta l0033,x                                             ; d45a: 95 33
    sta l0042,x                                             ; d45c: 95 42
    lda analog_6522_oraira                                  ; d45e: ad 31 1a
    asl a                                                   ; d461: 0a
    rol l0024,x                                             ; d462: 36 24
    asl a                                                   ; d464: 0a
    rol l0024,x                                             ; d465: 36 24
    asl a                                                   ; d467: 0a
    rol l0024,x                                             ; d468: 36 24
    asl a                                                   ; d46a: 0a
    rol l0024,x                                             ; d46b: 36 24
    sta l0052                                               ; d46d: 85 52
    lda analog_6522_orbirb                                  ; d46f: ad 30 1a
    and #&0f                                                ; d472: 29 0f
    ora l0052                                               ; d474: 05 52
    sta l0015,x                                             ; d476: 95 15
    rts                                                     ; d478: 60
.cmd_DAC
    jsr basic_push_function_to_workspace                    ; d479: 20 bc c8
    jsr basic_process_equals_and_expression                 ; d47c: 20 de c4
    lda l0014,x                                             ; d47f: b5 14
    and #&01                                                ; d481: 29 01
    tay                                                     ; d483: a8
    lda l0015,x                                             ; d484: b5 15
    sta l0052                                               ; d486: 85 52
    sta l0053                                               ; d488: 85 53
    lda l0024,x                                             ; d48a: b5 24
    asl l0052                                               ; d48c: 06 52
    rol a                                                   ; d48e: 2a
    asl l0052                                               ; d48f: 06 52
    rol a                                                   ; d491: 2a
    asl l0052                                               ; d492: 06 52
    rol a                                                   ; d494: 2a
    asl l0052                                               ; d495: 06 52
    rol a                                                   ; d497: 2a
    sta analog_8255_port_a,y                                ; d498: 99 00 1a
    lda l0052                                               ; d49b: a5 52
    ldx #&f0                                                ; d49d: a2 f0
    cpy #&01                                                ; d49f: c0 01
    beq ld4a7                                               ; d4a1: f0 04
    ldx #&0f                                                ; d4a3: a2 0f
    lda l0053                                               ; d4a5: a5 53
.ld4a7
    stx l0052                                               ; d4a7: 86 52
    and l0052                                               ; d4a9: 25 52
    sta l0053                                               ; d4ab: 85 53
    lda l0052                                               ; d4ad: a5 52
    eor #&ff                                                ; d4af: 49 ff
    and analog_8255_port_c                                  ; d4b1: 2d 02 1a
    ora l0053                                               ; d4b4: 05 53
    sta analog_8255_port_c                                  ; d4b6: 8d 02 1a
    dec l0004                                               ; d4b9: c6 04
    dec l0004                                               ; d4bb: c6 04
    jmp basic_next_command                                  ; d4bd: 4c 5b c5
.cmd_DRAW
    ldx #&05                                                ; d4c0: a2 05
    bne ld4c6                                               ; d4c2: d0 02
.cmd_MOVE
    ldx #&0c                                                ; d4c4: a2 0c
.ld4c6
    stx l0016                                               ; d4c6: 86 16
    inc l0004                                               ; d4c8: e6 04
    bne ld4d2                                               ; d4ca: d0 06
.cmd_PLOT
    jsr basic_push_function_to_workspace                    ; d4cc: 20 bc c8
    jsr basic_search_for_comma                              ; d4cf: 20 31 c2
.ld4d2
    jsr basic_push_function_to_workspace                    ; d4d2: 20 bc c8
    jsr basic_search_for_comma                              ; d4d5: 20 31 c2
    jsr basic_push_function_to_workspace                    ; d4d8: 20 bc c8
    jsr basic_post_cmd_checks                               ; d4db: 20 e4 c4
    lda l0015,x                                             ; d4de: b5 15
    sta l005c                                               ; d4e0: 85 5c
    lda l0024,x                                             ; d4e2: b5 24
    sta l005d                                               ; d4e4: 85 5d
    lda l0014,x                                             ; d4e6: b5 14
    sta l005a                                               ; d4e8: 85 5a
    lda l0023,x                                             ; d4ea: b5 23
    sta l005b                                               ; d4ec: 85 5b
    ldx #&00                                                ; d4ee: a2 00
    stx l0004                                               ; d4f0: 86 04
    ldx #&03                                                ; d4f2: a2 03
.ld4f4
    lda last_point_0,x                                      ; d4f4: bd c1 03
    sta l0052,x                                             ; d4f7: 95 52
    dex                                                     ; d4f9: ca
    bpl ld4f4                                               ; d4fa: 10 f8
    lda l0016                                               ; d4fc: a5 16
    and #&04                                                ; d4fe: 29 04
    bne ld51c                                               ; d500: d0 1a
    clc                                                     ; d502: 18
    lda l005a                                               ; d503: a5 5a
    adc l0052                                               ; d505: 65 52
    sta l005a                                               ; d507: 85 5a
    lda l005b                                               ; d509: a5 5b
    adc l0053                                               ; d50b: 65 53
    sta l005b                                               ; d50d: 85 5b
    clc                                                     ; d50f: 18
    lda l005c                                               ; d510: a5 5c
    adc l0054                                               ; d512: 65 54
    sta l005c                                               ; d514: 85 5c
    lda l005d                                               ; d516: a5 5d
    adc l0055                                               ; d518: 65 55
    sta l005d                                               ; d51a: 85 5d
.ld51c
    ldx #&03                                                ; d51c: a2 03
.ld51e
    lda l005a,x                                             ; d51e: b5 5a
    sta last_point_0,x                                      ; d520: 9d c1 03
    dex                                                     ; d523: ca
    bpl ld51e                                               ; d524: 10 f8
    lda l0016                                               ; d526: a5 16
    and #&03                                                ; d528: 29 03
    beq ld537                                               ; d52a: f0 0b
    sta l005e                                               ; d52c: 85 5e
    lda l0016                                               ; d52e: a5 16
    and #&08                                                ; d530: 29 08
    beq ld53a                                               ; d532: f0 06
    jsr ld626                                               ; d534: 20 26 d6
.ld537
    jmp basic_next_command                                  ; d537: 4c 5b c5
.ld53a
    ldx #&02                                                ; d53a: a2 02
.ld53c
    sec                                                     ; d53c: 38
    lda l005a,x                                             ; d53d: b5 5a
    sbc l0052,x                                             ; d53f: f5 52
    ldy l0052,x                                             ; d541: b4 52
    sty l005a,x                                             ; d543: 94 5a
    sta l0052,x                                             ; d545: 95 52
    ldy l0053,x                                             ; d547: b4 53
    lda l005b,x                                             ; d549: b5 5b
    sbc l0053,x                                             ; d54b: f5 53
    sty l005b,x                                             ; d54d: 94 5b
    sta l0053,x                                             ; d54f: 95 53
    sta l0056,x                                             ; d551: 95 56
    bpl ld562                                               ; d553: 10 0d
    lda #&00                                                ; d555: a9 00
    sec                                                     ; d557: 38
    sbc l0052,x                                             ; d558: f5 52
    sta l0052,x                                             ; d55a: 95 52
    lda #&00                                                ; d55c: a9 00
    sbc l0053,x                                             ; d55e: f5 53
    sta l0053,x                                             ; d560: 95 53
.ld562
    dex                                                     ; d562: ca
    dex                                                     ; d563: ca
    bpl ld53c                                               ; d564: 10 d6
    lda l0054                                               ; d566: a5 54
    cmp l0052                                               ; d568: c5 52
    lda l0055                                               ; d56a: a5 55
    sbc l0053                                               ; d56c: e5 53
    bcc ld5a1                                               ; d56e: 90 31
    lda #&00                                                ; d570: a9 00
    sbc l0054                                               ; d572: e5 54
    sta l0057                                               ; d574: 85 57
    lda #&00                                                ; d576: a9 00
    sbc l0055                                               ; d578: e5 55
    sec                                                     ; d57a: 38
    ror a                                                   ; d57b: 6a
    sta l0059                                               ; d57c: 85 59
    ror l0057                                               ; d57e: 66 57
.ld580
    jsr ld626                                               ; d580: 20 26 d6
    lda l005c                                               ; d583: a5 5c
    cmp last_point_2                                        ; d585: cd c3 03
    bne ld594                                               ; d588: d0 0a
    lda l005d                                               ; d58a: a5 5d
    cmp last_point_3                                        ; d58c: cd c4 03
    bne ld594                                               ; d58f: d0 03
.ld591
    jmp basic_next_command                                  ; d591: 4c 5b c5
.ld594
    jsr ld5da                                               ; d594: 20 da d5
    lda l0059                                               ; d597: a5 59
    bmi ld580                                               ; d599: 30 e5
    jsr ld5c9                                               ; d59b: 20 c9 d5
    jmp ld580                                               ; d59e: 4c 80 d5
.ld5a1
    lda l0053                                               ; d5a1: a5 53
    lsr a                                                   ; d5a3: 4a
    sta l0059                                               ; d5a4: 85 59
    lda l0052                                               ; d5a6: a5 52
    ror a                                                   ; d5a8: 6a
    sta l0057                                               ; d5a9: 85 57
.ld5ab
    jsr ld626                                               ; d5ab: 20 26 d6
    lda l005a                                               ; d5ae: a5 5a
    cmp last_point_0                                        ; d5b0: cd c1 03
    bne ld5bc                                               ; d5b3: d0 07
    lda l005b                                               ; d5b5: a5 5b
    cmp last_point_1                                        ; d5b7: cd c2 03
    beq ld591                                               ; d5ba: f0 d5
.ld5bc
    jsr ld5c9                                               ; d5bc: 20 c9 d5
    lda l0059                                               ; d5bf: a5 59
    bpl ld5ab                                               ; d5c1: 10 e8
    jsr ld5da                                               ; d5c3: 20 da d5
    jmp ld5ab                                               ; d5c6: 4c ab d5
.ld5c9
    sec                                                     ; d5c9: 38
    lda l0057                                               ; d5ca: a5 57
    sbc l0054                                               ; d5cc: e5 54
    sta l0057                                               ; d5ce: 85 57
    lda l0059                                               ; d5d0: a5 59
    sbc l0055                                               ; d5d2: e5 55
    sta l0059                                               ; d5d4: 85 59
    ldx #&00                                                ; d5d6: a2 00
    beq ld5e9                                               ; d5d8: f0 0f
.ld5da
    clc                                                     ; d5da: 18
    lda l0057                                               ; d5db: a5 57
    adc l0052                                               ; d5dd: 65 52
    sta l0057                                               ; d5df: 85 57
    lda l0059                                               ; d5e1: a5 59
    adc l0053                                               ; d5e3: 65 53
    sta l0059                                               ; d5e5: 85 59
    ldx #&02                                                ; d5e7: a2 02
.ld5e9
    clc                                                     ; d5e9: 18
    lda l0056,x                                             ; d5ea: b5 56
    bpl ld5f9                                               ; d5ec: 10 0b
    lda l005a,x                                             ; d5ee: b5 5a
    sbc #&00                                                ; d5f0: e9 00
    sta l005a,x                                             ; d5f2: 95 5a
    bcs ld5f8                                               ; d5f4: b0 02
    dec l005b,x                                             ; d5f6: d6 5b
.ld5f8
    rts                                                     ; d5f8: 60
.ld5f9
    lda l005a,x                                             ; d5f9: b5 5a
    adc #&01                                                ; d5fb: 69 01
    sta l005a,x                                             ; d5fd: 95 5a
    bcc ld5f8                                               ; d5ff: 90 f7
    inc l005b,x                                             ; d601: f6 5b
    rts                                                     ; d603: 60
.cmd_CLEAR
    jsr basic_copy_function_to_arithmetic_workspace         ; d604: 20 c8 c3
    lda #&0c                                                ; d607: a9 0c
    jsr oswrch                                              ; d609: 20 f4 ff
    ldy #&00                                                ; d60c: a0 00
    ldx #&18                                                ; d60e: a2 18
.ld610
    lda ld681,x                                             ; d610: bd 81 d6
    sta l0053                                               ; d613: 85 53
    lda ld69a,x                                             ; d615: bd 9a d6
    sta l0054                                               ; d618: 85 54
    lda l0052                                               ; d61a: a5 52
    eor #&17                                                ; d61c: 49 17
    sta (l0053),y                                           ; d61e: 91 53
    dex                                                     ; d620: ca
    bpl ld610                                               ; d621: 10 ed
    jmp basic_post_cmd_checks_and_next_cmd                  ; d623: 4c 58 c5
.ld626
    lda l005b                                               ; d626: a5 5b
    ora l005d                                               ; d628: 05 5d
    bne ld67a                                               ; d62a: d0 4e
    lda l005a                                               ; d62c: a5 5a
    cmp #&4e ; 'N'                                          ; d62e: c9 4e
    bcs ld67a                                               ; d630: b0 48
    lsr a                                                   ; d632: 4a
    sta l005f                                               ; d633: 85 5f
    lda l005c                                               ; d635: a5 5c
    cmp #&4b ; 'K'                                          ; d637: c9 4b
    bcs ld67a                                               ; d639: b0 3f
    ldx #&ff                                                ; d63b: a2 ff
    sec                                                     ; d63d: 38
.ld63e
    inx                                                     ; d63e: e8
    sbc #&03                                                ; d63f: e9 03
    bcs ld63e                                               ; d641: b0 fb
    adc #&03                                                ; d643: 69 03
    sta l0061                                               ; d645: 85 61
    lda ld681,x                                             ; d647: bd 81 d6
    sec                                                     ; d64a: 38
    adc l005f                                               ; d64b: 65 5f
    sta l005f                                               ; d64d: 85 5f
    lda ld69a,x                                             ; d64f: bd 9a d6
    adc #&00                                                ; d652: 69 00
    sta l0060                                               ; d654: 85 60
    lda l005a                                               ; d656: a5 5a
    lsr a                                                   ; d658: 4a
    lda l0061                                               ; d659: a5 61
    rol a                                                   ; d65b: 2a
    tay                                                     ; d65c: a8
    lda ld67b,y                                             ; d65d: b9 7b d6
    ldy #&00                                                ; d660: a0 00
    ldx l005e                                               ; d662: a6 5e
    dex                                                     ; d664: ca
    beq ld676                                               ; d665: f0 0f
    dex                                                     ; d667: ca
    beq ld671                                               ; d668: f0 07
    eor #&ff                                                ; d66a: 49 ff
    and (l005f),y                                           ; d66c: 31 5f
    sta (l005f),y                                           ; d66e: 91 5f
    rts                                                     ; d670: 60
.ld671
    eor (l005f),y                                           ; d671: 51 5f
    sta (l005f),y                                           ; d673: 91 5f
    rts                                                     ; d675: 60
.ld676
    ora (l005f),y                                           ; d676: 11 5f
    sta (l005f),y                                           ; d678: 91 5f
.ld67a
    rts                                                     ; d67a: 60
.ld67b
    equb &10, &40, &04, &08, &01, &02                       ; d67b: .@....
.ld681
    equb &c0, &98, &70, &48, &20, &f8, &d0, &a8             ; d681: ..pH ...
    equb &80, &58, &30, &08, &e0, &b8, &90, &68             ; d689: .X0....h
    equb &40, &18, &f0, &c8, &a0, &78, &50, &28             ; d691: @....xP(
    equb &00                                                ; d699: .
.ld69a
    equb &07, &07, &07, &07, &07, &06, &06, &06             ; d69a: ........
    equb &06, &06, &06, &06, &05, &05, &05, &05             ; d6a2: ........
    equb &05, &05, &04, &04, &04, &04, &04, &04             ; d6aa: ........
    equb &04                                                ; d6b2: .
.ignored
    equb &52, &91, &56, &4c, &5b, &c5, &ca, &86             ; d6b3: R.VL[...
    equb &04, &b4, &16, &b9, &31, &d5, &d5, &d5             ; d6bb: ....1...
    equb &d1, &d1, &d7, &d8, &d8, &d8, &d3, &d8             ; d6c3: ........
    equb &d1, &23, &c6, &96, &d7, &74, &88, &81             ; d6cb: .#...t..
    equb &96, &9f, &7a, &5b, &57, &62, &77, &cb             ; d6d3: ..z[Wbw.
    equb &bd, &f9, &e8, &1a, &24, &33, &7b, &65             ; d6db: ....$3{e
    equb &17, &2b, &ff, &00, &00, &00, &ff, &ff             ; d6e3: .+......
    equb &ff, &ff, &ff, &ff, &ff, &00, &00, &00             ; d6eb: ........
    equb &00, &00, &00, &00, &00, &ff, &00, &00             ; d6f3: ........
    equb &00, &00, &ff, &52, &41, &42, &43, &7f             ; d6fb: ...RABC.
    equb &54, &51, &b2, &c8, &c0, &bd, &04, &0a             ; d703: TQ......
    equb &3b, &d3, &d3, &d3, &d3, &d3, &d3, &d0             ; d70b: ;.......
    equb &00, &00, &00, &00, &00, &ff, &ff, &a9             ; d713: ........
    equb &4c, &20, &38, &d6, &a5, &00, &85, &0d             ; d71b: L 8.....
    equb &a5, &01, &85, &0e, &20, &06, &d6, &a0             ; d723: .... ...
    equb &00, &f0, &08, &a0, &00, &e6, &0d, &d0             ; d72b: ........
    equb &02, &e6, &0e, &a5, &0d, &c5, &02, &a5             ; d733: ........
    equb &0e, &e5, &03, &b0, &24, &b9, &01, &01             ; d73b: ....$...
    equb &cd, &00, &01, &f0, &07, &d1, &0d, &d0             ; d743: ........
    equb &e2, &c8, &d0, &f1, &a5, &0d, &85, &00             ; d74b: ........
    equb &a5, &0e, &85, &01, &a9, &00, &85, &06             ; d753: ........
    equb &85, &07, &b9, &02, &01, &c9, &0d, &d0             ; d75b: ........
    equb &03, &4c, &6c, &d1, &84, &02, &c8, &b9             ; d763: .Ll.....
    equb &01, &01, &85, &03, &c9, &0d, &f0, &11             ; d76b: ........
    equb &cd, &00, &01, &d0, &f1, &b9, &02, &01             ; d773: ........
    equb &20, &fb, &d5, &85, &03, &c9, &52, &f0             ; d77b:  .....R.
    equb &0d, &20, &42, &d0, &a9, &6c, &20, &70             ; d783: . B..l p
    equb &d6, &a9, &3a, &20, &f4, &ff, &a5, &00             ; d78b: ..: ....
    equb &85, &0a, &18, &a4, &02, &88, &98, &65             ; d793: .......e
    equb &00, &85, &0b, &a5, &01, &85, &08, &69             ; d79b: .......i
    equb &00, &85, &09, &a2, &00, &86, &0f, &86             ; d7a3: ........
    equb &10, &b9, &03, &01, &cd, &00, &01, &f0             ; d7ab: ........
    equb &13, &9d, &00, &28, &e8, &c8, &e6, &0f             ; d7b3: ...(....
    equb &b9, &03, &01, &c9, &0d, &f0, &05, &cd             ; d7bb: ........
    equb &00, &01, &d0, &ed, &a9, &04, &9d, &00             ; d7c3: ........
    equb &28, &a5, &03, &c9, &52, &f0, &12, &20             ; d7cb: (...R.. 
    equb &bc, &d8, &20, &fb, &d5, &c9, &51, &f0             ; d7d3: .. ...Q.
    equb &88, &c9, &50, &f0, &2e, &c9, &52, &d0             ; d7db: ..P...R.
    equb &e8, &a5, &02, &48, &20, &90, &d4, &68             ; d7e3: ...H ..h
    equb &a8, &b9, &02, &01, &cd, &00, &01, &f0             ; d7eb: ........
    equb &20, &a5, &0b, &d0, &02, &c6, &09, &c6             ; d7f3:  .......
    equb &0b, &20, &d1, &d3, &18                            ; d7fb: . ...

.pydis_end

save pydis_start, pydis_end
