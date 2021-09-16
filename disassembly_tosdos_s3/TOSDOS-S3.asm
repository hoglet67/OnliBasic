l0000 = &0000
l0001 = &0001
l0002 = &0002
l0020 = &0020
l003f = &003f
l0063 = &0063
l0069 = &0069
l006c = &006c
l0072 = &0072
l0075 = &0075
l00ad = &00ad
l00b6 = &00b6
l00b9 = &00b9
l00ba = &00ba
l00bb = &00bb
l00bf = &00bf
l00c0 = &00c0
l00c1 = &00c1
l00c2 = &00c2
l00c3 = &00c3
l00c4 = &00c4
l00c5 = &00c5
l00c6 = &00c6
l00c7 = &00c7
l00c8 = &00c8
l00c9 = &00c9
l00ca = &00ca
l00cb = &00cb
l00cc = &00cc
l00cd = &00cd
l00ce = &00ce
l00cf = &00cf
l00d0 = &00d0
l00d1 = &00d1
l00d2 = &00d2
l00d3 = &00d3
l00d4 = &00d4
l00d5 = &00d5
l00d6 = &00d6
l00d7 = &00d7
l00d8 = &00d8
l00d9 = &00d9
l00da = &00da
l00db = &00db
l00dc = &00dc
l00dd = &00dd
l00de = &00de
l00df = &00df
l00e0 = &00e0
l00e1 = &00e1
l00e2 = &00e2
l00e3 = &00e3
l00e4 = &00e4
l00e5 = &00e5
l00e6 = &00e6
l00e7 = &00e7
l00e8 = &00e8
l00ef = &00ef
l00f0 = &00f0
l00f1 = &00f1
l00f2 = &00f2
l00f3 = &00f3
l00f7 = &00f7
l00f8 = &00f8
l00fe = &00fe
l00ff = &00ff
l0100 = &0100
l0140 = &0140
l0200 = &0200
l0202 = &0202
l0204 = &0204
l0206 = &0206
l0207 = &0207
l0208 = &0208
l020a = &020a
l020c = &020c
l020e = &020e
l0216 = &0216
l0218 = &0218
l0400 = &0400
l0500 = &0500
l0600 = &0600
l0700 = &0700
l0800 = &0800
l0801 = &0801
l0a00 = &0a00
l0a01 = &0a01
l0c01 = &0c01
l0c03 = &0c03
l0c0c = &0c0c
l0e21 = &0e21
l2000 = &2000
l2007 = &2007
l2008 = &2008
l200f = &200f
l2010 = &2010
l206f = &206f
l20f8 = &20f8
l2101 = &2101
l2102 = &2102
l2103 = &2103
l2104 = &2104
l2105 = &2105
l2106 = &2106
l2107 = &2107
l2108 = &2108
l210c = &210c
l210d = &210d
l210e = &210e
l210f = &210f
l2110 = &2110
l2200 = &2200
l2209 = &2209
l220b = &220b
l220c = &220c
l220d = &220d
l220e = &220e
l220f = &220f
l2210 = &2210
l2211 = &2211
l2212 = &2212
l2213 = &2213
l2214 = &2214
l2215 = &2215
l2216 = &2216
l2217 = &2217
l2219 = &2219
l221a = &221a
l221b = &221b
l221c = &221c
l221d = &221d
l221f = &221f
l3f65 = &3f65
l6d61 = &6d61
l706f = &706f
l7264 = &7264
l7571 = &7571
lefa5 = &efa5

    org &f000
.pydis_start

.lf000
    jsr lf009                                               ; f000: 20 09 f0
    equs "Disk "                                            ; f003: 44 69 73 ...
    equb &ea                                                ; f008: .
.lf009
    pla                                                     ; f009: 68
    sta l00d8                                               ; f00a: 85 d8
    pla                                                     ; f00c: 68
    sta l00d9                                               ; f00d: 85 d9
    ldy #&00                                                ; f00f: a0 00
.lf011
    inc l00d8                                               ; f011: e6 d8
    bne lf017                                               ; f013: d0 02
    inc l00d9                                               ; f015: e6 d9
.lf017
    lda (l00d8),y                                           ; f017: b1 d8
    bmi lf023                                               ; f019: 30 08
    beq lf023                                               ; f01b: f0 06
    jsr lfff4                                               ; f01d: 20 f4 ff
    jmp lf011                                               ; f020: 4c 11 f0
.lf023
    jmp (l00d8)                                             ; f023: 6c d8 00
.lf026
    jsr lffed                                               ; f026: 20 ed ff
.lf029
    jsr lf009                                               ; f029: 20 09 f0
    rol a                                                   ; f02c: 2a
.lf02d
    ldx #&ff                                                ; f02d: a2 ff
.lf02f
    inx                                                     ; f02f: e8
    cpx #&40 ; '@'                                          ; f030: e0 40
    bcc lf037                                               ; f032: 90 03
.lf034
    dex                                                     ; f034: ca
    bmi lf02d                                               ; f035: 30 f6
.lf037
    jsr lffe6                                               ; f037: 20 e6 ff
    cmp #&18                                                ; f03a: c9 18
    beq lf026                                               ; f03c: f0 e8
    cmp #&7f                                                ; f03e: c9 7f
    beq lf034                                               ; f040: f0 f2
    sta l0100,x                                             ; f042: 9d 00 01
    cmp #&0d                                                ; f045: c9 0d
    bne lf02f                                               ; f047: d0 e6
    rts                                                     ; f049: 60
.lf04a
    pha                                                     ; f04a: 48
    jsr lf130                                               ; f04b: 20 30 f1
    jsr lf052                                               ; f04e: 20 52 f0
    pla                                                     ; f051: 68
.lf052
    and #&0f                                                ; f052: 29 0f
    cmp #&0a                                                ; f054: c9 0a
    bcc lf05a                                               ; f056: 90 02
    adc #&06                                                ; f058: 69 06
.lf05a
    adc #&30 ; '0'                                          ; f05a: 69 30
    jmp lfff4                                               ; f05c: 4c f4 ff
.lf05f
    sty l00d7                                               ; f05f: 84 d7
    jsr lf06d                                               ; f061: 20 6d f0
    jsr lf62c                                               ; f064: 20 2c f6
    ldy l00d7                                               ; f067: a4 d7
    ldx #&00                                                ; f069: a2 00
    beq lf06f                                               ; f06b: f0 02
.lf06d
    ldx #&40 ; '@'                                          ; f06d: a2 40
.lf06f
    jsr lf0e1                                               ; f06f: 20 e1 f0
    stx l00dd                                               ; f072: 86 dd
    cmp #&22 ; '"'                                          ; f074: c9 22
    beq lf0bb                                               ; f076: f0 43
.lf078
    cmp #&0d                                                ; f078: c9 0d
    beq lf088                                               ; f07a: f0 0c
    sta l0100,x                                             ; f07c: 9d 00 01
    inx                                                     ; f07f: e8
    iny                                                     ; f080: c8
    lda l0100,y                                             ; f081: b9 00 01
    cmp #&20 ; ' '                                          ; f084: c9 20
    bne lf078                                               ; f086: d0 f0
.lf088
    lda #&0d                                                ; f088: a9 0d
    sta l0100,x                                             ; f08a: 9d 00 01
    lda #&01                                                ; f08d: a9 01
    sta l00de                                               ; f08f: 85 de
    ldx #&dd                                                ; f091: a2 dd
.lf093
    rts                                                     ; f093: 60
.lf094
    ldy #&00                                                ; f094: a0 00
.lf096
    lda l0000,x                                             ; f096: b5 00
    sta l00dd,y                                             ; f098: 99 dd 00
    inx                                                     ; f09b: e8
    iny                                                     ; f09c: c8
    cpy #&0a                                                ; f09d: c0 0a
    bcc lf096                                               ; f09f: 90 f5
.lf0a1
    lda #&20 ; ' '                                          ; f0a1: a9 20
    ldy #&06                                                ; f0a3: a0 06
.lf0a5
    sta l00e8,y                                             ; f0a5: 99 e8 00
    dey                                                     ; f0a8: 88
    bpl lf0a5                                               ; f0a9: 10 fa
.lf0ab
    iny                                                     ; f0ab: c8
    lda (l00dd),y                                           ; f0ac: b1 dd
    cmp #&0d                                                ; f0ae: c9 0d
    beq lf093                                               ; f0b0: f0 e1
    cpy #&07                                                ; f0b2: c0 07
    bcs lf0d7                                               ; f0b4: b0 21
    sta l00e8,y                                             ; f0b6: 99 e8 00
    bne lf0ab                                               ; f0b9: d0 f0
.lf0bb
    iny                                                     ; f0bb: c8
    lda l0100,y                                             ; f0bc: b9 00 01
    cmp #&0d                                                ; f0bf: c9 0d
    beq lf0d7                                               ; f0c1: f0 14
    sta l0100,x                                             ; f0c3: 9d 00 01
    inx                                                     ; f0c6: e8
    cmp #&22 ; '"'                                          ; f0c7: c9 22
    bne lf0bb                                               ; f0c9: d0 f0
    dex                                                     ; f0cb: ca
    iny                                                     ; f0cc: c8
    lda l0100,y                                             ; f0cd: b9 00 01
    cmp #&22 ; '"'                                          ; f0d0: c9 22
    bne lf088                                               ; f0d2: d0 b4
    inx                                                     ; f0d4: e8
    bcs lf0bb                                               ; f0d5: b0 e4
.lf0d7
    jsr lf009                                               ; f0d7: 20 09 f0
    lsr l6d61                                               ; f0da: 4e 61 6d
    adc l003f                                               ; f0dd: 65 3f
    brk                                                     ; f0df: 00
.lf0e0
    iny                                                     ; f0e0: c8
.lf0e1
    lda l0100,y                                             ; f0e1: b9 00 01
    cmp #&20 ; ' '                                          ; f0e4: c9 20
    beq lf0e0                                               ; f0e6: f0 f8
    rts                                                     ; f0e8: 60
.lf0e9
    ldx #&df                                                ; f0e9: a2 df
.lf0eb
    lda #&00                                                ; f0eb: a9 00
    sta l0000,x                                             ; f0ed: 95 00
    sta l0001,x                                             ; f0ef: 95 01
    sta l0002,x                                             ; f0f1: 95 02
    jsr lf0e1                                               ; f0f3: 20 e1 f0
.lf0f6
    lda l0100,y                                             ; f0f6: b9 00 01
    cmp #&30 ; '0'                                          ; f0f9: c9 30
    bcc lf11e                                               ; f0fb: 90 21
    cmp #&3a ; ':'                                          ; f0fd: c9 3a
    bcc lf109                                               ; f0ff: 90 08
    sbc #&07                                                ; f101: e9 07
    bcc lf11e                                               ; f103: 90 19
    cmp #&40 ; '@'                                          ; f105: c9 40
    bcs lf11e                                               ; f107: b0 15
.lf109
    asl a                                                   ; f109: 0a
    asl a                                                   ; f10a: 0a
    asl a                                                   ; f10b: 0a
    asl a                                                   ; f10c: 0a
    sty l0002,x                                             ; f10d: 94 02
    ldy #&04                                                ; f10f: a0 04
.lf111
    asl a                                                   ; f111: 0a
    rol l0000,x                                             ; f112: 36 00
    rol l0001,x                                             ; f114: 36 01
    dey                                                     ; f116: 88
    bne lf111                                               ; f117: d0 f8
    ldy l0002,x                                             ; f119: b4 02
    iny                                                     ; f11b: c8
    bne lf0f6                                               ; f11c: d0 d8
.lf11e
    lda l0002,x                                             ; f11e: b5 02
    rts                                                     ; f120: 60
.lf121
    lda #&20 ; ' '                                          ; f121: a9 20
    jmp lfff4                                               ; f123: 4c f4 ff
    equb &a0, &06, &20, &21, &f1, &88, &d0, &fa             ; f126: .. !....
    equb &60                                                ; f12e: `
.lf12f
    lsr a                                                   ; f12f: 4a
.lf130
    lsr a                                                   ; f130: 4a
    lsr a                                                   ; f131: 4a
    lsr a                                                   ; f132: 4a
    lsr a                                                   ; f133: 4a
    rts                                                     ; f134: 60
.lf135
    iny                                                     ; f135: c8
.lf136
    iny                                                     ; f136: c8
    iny                                                     ; f137: c8
    iny                                                     ; f138: c8
.lf139
    iny                                                     ; f139: c8
    iny                                                     ; f13a: c8
    iny                                                     ; f13b: c8
    iny                                                     ; f13c: c8
    rts                                                     ; f13d: 60
.lf13e
    dey                                                     ; f13e: 88
    dey                                                     ; f13f: 88
    dey                                                     ; f140: 88
    dey                                                     ; f141: 88
    dey                                                     ; f142: 88
    dey                                                     ; f143: 88
    dey                                                     ; f144: 88
    dey                                                     ; f145: 88
    rts                                                     ; f146: 60
.lf147
    lda l00df                                               ; f147: a5 df
    sec                                                     ; f149: 38
    sbc #&01                                                ; f14a: e9 01
    sta l00c9                                               ; f14c: 85 c9
    lda l00e0                                               ; f14e: a5 e0
    sbc #&00                                                ; f150: e9 00
    sta l00ca                                               ; f152: 85 ca
    lda #&ff                                                ; f154: a9 ff
    sta l00da                                               ; f156: 85 da
    clc                                                     ; f158: 18
    adc l00e3                                               ; f159: 65 e3
    lda l00e4                                               ; f15b: a5 e4
    adc #&00                                                ; f15d: 69 00
    sta l00cb                                               ; f15f: 85 cb
    lda l00e5                                               ; f161: a5 e5
    jsr lf130                                               ; f163: 20 30 f1
    sta l00cc                                               ; f166: 85 cc
    lda l00e5                                               ; f168: a5 e5
    and #&0f                                                ; f16a: 29 0f
    tax                                                     ; f16c: aa
    lda l00e6                                               ; f16d: a5 e6
.lf16f
    sec                                                     ; f16f: 38
.lf170
    inc l00da                                               ; f170: e6 da
    sbc #&0a                                                ; f172: e9 0a
    bcs lf170                                               ; f174: b0 fa
    dex                                                     ; f176: ca
    bpl lf16f                                               ; f177: 10 f6
    adc #&0a                                                ; f179: 69 0a
    sta l00db                                               ; f17b: 85 db
.lf17d
    rts                                                     ; f17d: 60
.lf17e
    jsr lf62c                                               ; f17e: 20 2c f6
.lf181
    jsr lf094                                               ; f181: 20 94 f0
    jsr lf192                                               ; f184: 20 92 f1
    bcs lf17d                                               ; f187: b0 f4
.lf189
    jsr lf009                                               ; f189: 20 09 f0
    lsr l0069                                               ; f18c: 46 69
    jmp (l3f65)                                             ; f18e: 6c 65 3f
    equb &00                                                ; f191: .
.lf192
    jsr lf258                                               ; f192: 20 58 f2
    ldy #&f8                                                ; f195: a0 f8
.lf197
    jsr lf135                                               ; f197: 20 35 f1
    cpy l2105                                               ; f19a: cc 05 21
    bcs lf1bf                                               ; f19d: b0 20
    lda l200f,y                                             ; f19f: b9 0f 20
    and #&7f                                                ; f1a2: 29 7f
    cmp l00ef                                               ; f1a4: c5 ef
    bne lf197                                               ; f1a6: d0 ef
    jsr lf136                                               ; f1a8: 20 36 f1
    ldx #&06                                                ; f1ab: a2 06
.lf1ad
    lda l2007,y                                             ; f1ad: b9 07 20
    cmp l00e8,x                                             ; f1b0: d5 e8
    bne lf1b9                                               ; f1b2: d0 05
    dey                                                     ; f1b4: 88
    dex                                                     ; f1b5: ca
    bpl lf1ad                                               ; f1b6: 10 f5
    rts                                                     ; f1b8: 60
.lf1b9
    dey                                                     ; f1b9: 88
    dex                                                     ; f1ba: ca
    bpl lf1b9                                               ; f1bb: 10 fc
    bmi lf197                                               ; f1bd: 30 d8
.lf1bf
    clc                                                     ; f1bf: 18
    rts                                                     ; f1c0: 60
.lf1c1
    lda l200f,y                                             ; f1c1: b9 0f 20
    bmi lf1df                                               ; f1c4: 30 19
.lf1c6
    lda l2010,y                                             ; f1c6: b9 10 20
    sta l2008,y                                             ; f1c9: 99 08 20
    lda l2110,y                                             ; f1cc: b9 10 21
    sta l2108,y                                             ; f1cf: 99 08 21
    iny                                                     ; f1d2: c8
    cpy l2105                                               ; f1d3: cc 05 21
    bcc lf1c6                                               ; f1d6: 90 ee
    tya                                                     ; f1d8: 98
    sbc #&08                                                ; f1d9: e9 08
    sta l2105                                               ; f1db: 8d 05 21
    rts                                                     ; f1de: 60
.lf1df
    jsr lf009                                               ; f1df: 20 09 f0
    bvc lf256                                               ; f1e2: 50 72
    equb &6f, &74, &00                                      ; f1e4: ot.
.cmd_INFO
    jsr lf17e                                               ; f1e7: 20 7e f1
    jsr lf1f4                                               ; f1ea: 20 f4 f1
    jmp lf4a9                                               ; f1ed: 4c a9 f4
.lf1f0
    lda l00f0                                               ; f1f0: a5 f0
    bne lf265                                               ; f1f2: d0 71
.lf1f4
    lda l200f,y                                             ; f1f4: b9 0f 20
    and #&7f                                                ; f1f7: 29 7f
    jsr lfff4                                               ; f1f9: 20 f4 ff
    jsr lf121                                               ; f1fc: 20 21 f1
    ldx l200f,y                                             ; f1ff: be 0f 20
    bpl lf206                                               ; f202: 10 02
    lda #&23 ; '#'                                          ; f204: a9 23
.lf206
    jsr lfff4                                               ; f206: 20 f4 ff
    ldx #&07                                                ; f209: a2 07
.lf20b
    lda l2008,y                                             ; f20b: b9 08 20
    jsr lfff4                                               ; f20e: 20 f4 ff
    iny                                                     ; f211: c8
    dex                                                     ; f212: ca
    bne lf20b                                               ; f213: d0 f6
.lf215
    jsr lf121                                               ; f215: 20 21 f1
    lda l2102,y                                             ; f218: b9 02 21
    jsr lf04a                                               ; f21b: 20 4a f0
    lda l2101,y                                             ; f21e: b9 01 21
    jsr lf04a                                               ; f221: 20 4a f0
    iny                                                     ; f224: c8
    inx                                                     ; f225: e8
    iny                                                     ; f226: c8
    cpx #&02                                                ; f227: e0 02
    bcc lf215                                               ; f229: 90 ea
    jsr lf121                                               ; f22b: 20 21 f1
    jsr lf121                                               ; f22e: 20 21 f1
    lda l2103,y                                             ; f231: b9 03 21
    jsr lf130                                               ; f234: 20 30 f1
    jsr lf052                                               ; f237: 20 52 f0
    lda l2102,y                                             ; f23a: b9 02 21
    jsr lf04a                                               ; f23d: 20 4a f0
    lda l2101,y                                             ; f240: b9 01 21
    jsr lf04a                                               ; f243: 20 4a f0
    jsr lf121                                               ; f246: 20 21 f1
    lda l2103,y                                             ; f249: b9 03 21
    jsr lf052                                               ; f24c: 20 52 f0
    lda l2104,y                                             ; f24f: b9 04 21
    jsr lf04a                                               ; f252: 20 4a f0
.lf255
lf256 = lf255+1
    jsr lffed                                               ; f255: 20 ed ff
.lf258
    jsr lf74d                                               ; f258: 20 4d f7
.lf25b
    bit l0a00                                               ; f25b: 2c 00 0a
    bmi lf25b                                               ; f25e: 30 fb
    bit l0a00                                               ; f260: 2c 00 0a
    bmi lf25b                                               ; f263: 30 f6
.lf265
    rts                                                     ; f265: 60
.cmd_DIR
    jsr cmd_DRIVE                                           ; f266: 20 73 f4
    jmp lf258                                               ; f269: 4c 58 f2
.cmd_CAT
    jsr cmd_DIR                                             ; f26c: 20 66 f2
    ldx #&00                                                ; f26f: a2 00
    stx l00b6                                               ; f271: 86 b6
.lf273
    lda l2000,x                                             ; f273: bd 00 20
    cpx #&08                                                ; f276: e0 08
    bcc lf27d                                               ; f278: 90 03
    lda l20f8,x                                             ; f27a: bd f8 20
.lf27d
    jsr lfff4                                               ; f27d: 20 f4 ff
    inx                                                     ; f280: e8
    cpx #&0d                                                ; f281: e0 0d
    bne lf273                                               ; f283: d0 ee
    jsr lf009                                               ; f285: 20 09 f0
    jsr l7264                                               ; f288: 20 64 72
    adc #&76 ; 'v'                                          ; f28b: 69 76
    adc l0020                                               ; f28d: 65 20
    lda l00dc                                               ; f28f: a5 dc
    jsr lf052                                               ; f291: 20 52 f0
    jsr lf009                                               ; f294: 20 09 f0
    jsr l7571                                               ; f297: 20 71 75
    adc (l006c,x)                                           ; f29a: 61 6c
    jsr lefa5                                               ; f29c: 20 a5 ef
    jsr lfff4                                               ; f29f: 20 f4 ff
    jsr lf009                                               ; f2a2: 20 09 f0
    jsr l706f                                               ; f2a5: 20 6f 70
    equb &74, &20, &ad, &06                                 ; f2a8: t ..
    equs "! 0"                                              ; f2ac: 21 20 30
    equb &f1, &20, &52, &f0, &a0, &00, &20, &ce             ; f2af: . R... .
    equb &f2, &90                                           ; f2b7: ..
    equs "J >"                                              ; f2b9: 4a 20 3e
    equb &f1, &b9, &08, &20, &29, &7f, &99, &08             ; f2bc: ... )...
    equb &20, &98, &d0, &f2, &4c, &ed, &ff, &20             ; f2c4:  ...L.. 
    equb &35, &f1, &cc, &05, &21, &b0, &05, &b9             ; f2cc: 5...!...
    equb &08, &20, &30, &f3, &60, &a4, &b8, &f0             ; f2d4: . 0.`...
    equb &05, &20, &ed, &ff, &a0, &ff, &c8, &84             ; f2dc: . ......
    equb &b8, &20, &26, &f1, &a9, &23, &a4, &b7             ; f2e4: . &..#..
    equb &be, &0f, &20, &30, &02, &a9, &20, &20             ; f2ec: .. 0..  
    equb &f4, &ff, &a2, &00, &b5, &ae, &20, &f4             ; f2f4: ...... .
    equb &ff, &e8, &e0, &07, &d0, &f6, &f0, &af             ; f2fc: ........
    equb &84, &b7, &a2, &00, &b9, &08, &20, &29             ; f304: ...... )
    equb &7f, &95, &ae, &c8, &e8, &e0, &08, &d0             ; f30c: ........
    equb &f3, &20, &ce, &f2, &b0, &1d, &a2, &06             ; f314: . ......
    equb &38, &b9, &0e, &20, &f5, &ae, &88, &ca             ; f31c: 8.. ....
    equb &10, &f7, &20, &36, &f1, &b9, &0f, &20             ; f324: .. 6... 
    equb &29, &7f, &e5, &b5, &90, &d2, &20, &35             ; f32c: )..... 5
    equb &f1, &b0, &de, &a4, &b7, &b9, &08, &20             ; f334: ....... 
    equb &09, &80, &99, &08, &20, &a5, &b5, &c5             ; f33c: .... ...
    equb &b6, &f0, &92, &85, &b6, &20, &ed, &ff             ; f344: ..... ..
    equb &a5, &b5, &20, &f4, &ff, &a9, &3a, &20             ; f34c: .. ...: 
    equb &f4, &ff, &a0, &04, &20, &28, &f1, &84             ; f354: .... (..
    equb &b8, &f0, &89                                      ; f35c: ...
.lf35f
    lda l210e,y                                             ; f35f: b9 0e 21
    jsr lf130                                               ; f362: 20 30 f1
    sta l00e5                                               ; f365: 85 e5
    clc                                                     ; f367: 18
    lda #&ff                                                ; f368: a9 ff
    adc l210c,y                                             ; f36a: 79 0c 21
    lda l210f,y                                             ; f36d: b9 0f 21
    adc l210d,y                                             ; f370: 79 0d 21
    sta l00e6                                               ; f373: 85 e6
    lda l210e,y                                             ; f375: b9 0e 21
    and #&0f                                                ; f378: 29 0f
    adc l00e5                                               ; f37a: 65 e5
    sta l00e5                                               ; f37c: 85 e5
.lf37e
    sec                                                     ; f37e: 38
    lda l2107,y                                             ; f37f: b9 07 21
    sbc l00e6                                               ; f382: e5 e6
    pha                                                     ; f384: 48
    lda l2106,y                                             ; f385: b9 06 21
    and #&0f                                                ; f388: 29 0f
    sbc l00e5                                               ; f38a: e5 e5
    tax                                                     ; f38c: aa
    lda #&00                                                ; f38d: a9 00
    cmp l00e3                                               ; f38f: c5 e3
    pla                                                     ; f391: 68
    sbc l00e4                                               ; f392: e5 e4
    txa                                                     ; f394: 8a
    sbc #&00                                                ; f395: e9 00
    rts                                                     ; f397: 60
.lf398
    ldx #&02                                                ; f398: a2 02
    bne lf39e                                               ; f39a: d0 02
.lf39c
    ldx #&00                                                ; f39c: a2 00
.lf39e
    sty l00bf                                               ; f39e: 84 bf
.lf3a0
    ldy l0208,x                                             ; f3a0: bc 08 02
    lda l00bb,x                                             ; f3a3: b5 bb
    sty l00bb,x                                             ; f3a5: 94 bb
    sta l0208,x                                             ; f3a7: 9d 08 02
    inx                                                     ; f3aa: e8
    txa                                                     ; f3ab: 8a
    lsr a                                                   ; f3ac: 4a
    bcs lf3a0                                               ; f3ad: b0 f1
    ldy l00bf                                               ; f3af: a4 bf
    rts                                                     ; f3b1: 60
.command_table
    equs "CAT"                                              ; f3b2: 43 41 54
    equb >(cmd_CAT)                                         ; f3b5: .
    equb <(cmd_CAT)                                         ; f3b6: .
    equs "DIR"                                              ; f3b7: 44 49 52
    equb >(cmd_DIR)                                         ; f3ba: .
    equb <(cmd_DIR)                                         ; f3bb: .
    equs "INFO"                                             ; f3bc: 49 4e 46 ...
    equb >(cmd_INFO)                                        ; f3c0: .
    equb <(cmd_INFO)                                        ; f3c1: .
    equs "LOAD"                                             ; f3c2: 4c 4f 41 ...
    equb >(cmd_LOAD)                                        ; f3c6: .
    equb <(cmd_LOAD)                                        ; f3c7: .
    equs "SAVE"                                             ; f3c8: 53 41 56 ...
    equb >(cmd_SAVE)                                        ; f3cc: .
    equb <(cmd_SAVE)                                        ; f3cd: .
    equs "DELETE"                                           ; f3ce: 44 45 4c ...
    equb >(cmd_DELETE)                                      ; f3d4: .
    equb <(cmd_DELETE)                                      ; f3d5: .
    equs "GO"                                               ; f3d6: 47 4f
    equb >(cmd_GO)                                          ; f3d8: .
    equb <(cmd_GO)                                          ; f3d9: .
    equs "RUN"                                              ; f3da: 52 55 4e
    equb >(cmd_RUN)                                         ; f3dd: .
    equb <(cmd_RUN)                                         ; f3de: .
    equs "LOCK"                                             ; f3df: 4c 4f 43 ...
    equb >(cmd_LOCK)                                        ; f3e3: .
    equb <(cmd_LOCK)                                        ; f3e4: .
    equs "UNLOCK"                                           ; f3e5: 55 4e 4c ...
    equb >(cmd_UNLOCK)                                      ; f3eb: .
    equb <(cmd_UNLOCK)                                      ; f3ec: .
    equs "MON"                                              ; f3ed: 4d 4f 4e
    equb >(cmd_MON)                                         ; f3f0: .
    equb <(cmd_MON)                                         ; f3f1: .
    equs "NOMON"                                            ; f3f2: 4e 4f 4d ...
    equb >(cmd_NOMON)                                       ; f3f7: .
    equb <(cmd_NOMON)                                       ; f3f8: .
    equs "SET"                                              ; f3f9: 53 45 54
    equb >(cmd_SET)                                         ; f3fc: .
    equb <(cmd_SET)                                         ; f3fd: .
    equs "DRIVE"                                            ; f3fe: 44 52 49 ...
    equb >(cmd_DRIVE)                                       ; f403: .
    equb <(cmd_DRIVE)                                       ; f404: .
    equs "TITLE"                                            ; f405: 54 49 54 ...
    equb >(cmd_TITLE)                                       ; f40a: .
    equb <(cmd_TITLE)                                       ; f40b: .
    equs "USE"                                              ; f40c: 55 53 45
    equb >(cmd_USE)                                         ; f40f: .
    equb <(cmd_USE)                                         ; f410: .
    equs "OPTION"                                           ; f411: 4f 50 54 ...
    equb >(cmd_OPTION)                                      ; f417: .
    equb <(cmd_OPTION)                                      ; f418: .
    equs "EXEC"                                             ; f419: 45 58 45 ...
    equb >(cmd_EXEC)                                        ; f41d: .
    equb <(cmd_EXEC)                                        ; f41e: .
    equs "SHUT"                                             ; f41f: 53 48 55 ...
    equb >(cmd_SHUT)                                        ; f423: .
    equb <(cmd_SHUT)                                        ; f424: .
    equs "SPOOL"                                            ; f425: 53 50 4f ...
    equb >(cmd_SPOOL)                                       ; f42a: .
    equb <(cmd_SPOOL)                                       ; f42b: .
    equb >(cmd_UNKNOWN)                                     ; f42c: .
    equb <(cmd_UNKNOWN)                                     ; f42d: .
.lf42e
    ldx #&ff                                                ; f42e: a2 ff
    cld                                                     ; f430: d8
.lf431
    ldy #&00                                                ; f431: a0 00
    jsr lf0e1                                               ; f433: 20 e1 f0
    dey                                                     ; f436: 88
.lf437
    iny                                                     ; f437: c8
    inx                                                     ; f438: e8
.lf439
    lda command_table,x                                     ; f439: bd b2 f3
    bmi lf456                                               ; f43c: 30 18
    cmp l0100,y                                             ; f43e: d9 00 01
    beq lf437                                               ; f441: f0 f4
    dex                                                     ; f443: ca
.lf444
    inx                                                     ; f444: e8
    lda command_table,x                                     ; f445: bd b2 f3
    bpl lf444                                               ; f448: 10 fa
    inx                                                     ; f44a: e8
    lda l0100,y                                             ; f44b: b9 00 01
    cmp #&2e ; '.'                                          ; f44e: c9 2e
    bne lf431                                               ; f450: d0 df
    iny                                                     ; f452: c8
    dex                                                     ; f453: ca
    bcs lf439                                               ; f454: b0 e3
.lf456
    sta l00de                                               ; f456: 85 de
    lda command_table+1,x                                   ; f458: bd b3 f3
    sta l00dd                                               ; f45b: 85 dd
    clc                                                     ; f45d: 18
    ldx #&00                                                ; f45e: a2 00
    jmp (l00dd)                                             ; f460: 6c dd 00
.cmd_DELETE
    jsr lf17e                                               ; f463: 20 7e f1
    sty l00dd                                               ; f466: 84 dd
    jsr lf1f0                                               ; f468: 20 f0 f1
    ldy l00dd                                               ; f46b: a4 dd
    jsr lf1c1                                               ; f46d: 20 c1 f1
    jmp lf5f2                                               ; f470: 4c f2 f5
.cmd_DRIVE
    jsr lf0e1                                               ; f473: 20 e1 f0
    cmp #&0d                                                ; f476: c9 0d
    beq lf497                                               ; f478: f0 1d
    iny                                                     ; f47a: c8
    pha                                                     ; f47b: 48
    jsr lf62f                                               ; f47c: 20 2f f6
    pla                                                     ; f47f: 68
    cmp #&30 ; '0'                                          ; f480: c9 30
    bcc lf498                                               ; f482: 90 14
    cmp #&34 ; '4'                                          ; f484: c9 34
    bcs lf498                                               ; f486: b0 10
.lf488
    and #&03                                                ; f488: 29 03
    eor l00dc                                               ; f48a: 45 dc
    jsr lf25b                                               ; f48c: 20 5b f2
    cmp #&80                                                ; f48f: c9 80
    beq lf497                                               ; f491: f0 04
    eor l00dc                                               ; f493: 45 dc
    sta l00dc                                               ; f495: 85 dc
.lf497
    rts                                                     ; f497: 60
.lf498
    jsr lf009                                               ; f498: 20 09 f0
    equs "Drive?"                                           ; f49b: 44 72 69 ...
    equb &00                                                ; f4a1: .
.cmd_NOMON
    ldx #&ff                                                ; f4a2: a2 ff
.cmd_MON
    jsr lf62f                                               ; f4a4: 20 2f f6
    stx l00f0                                               ; f4a7: 86 f0
.lf4a9
    lda l00cd                                               ; f4a9: a5 cd
    sta l00ef                                               ; f4ab: 85 ef
    rts                                                     ; f4ad: 60
.cmd_LOAD
    jsr lf06d                                               ; f4ae: 20 6d f0
    jsr lf0e9                                               ; f4b1: 20 e9 f0
    beq lf4ba                                               ; f4b4: f0 04
    lda #&ff                                                ; f4b6: a9 ff
.lf4b8
    sta l00e1                                               ; f4b8: 85 e1
.lf4ba
    ldx #&dd                                                ; f4ba: a2 dd
    clc                                                     ; f4bc: 18
    jmp (l020c)                                             ; f4bd: 6c 0c 02
.lf4c0
    php                                                     ; f4c0: 08
    jsr lf4cd                                               ; f4c1: 20 cd f4
.lf4c4
    plp                                                     ; f4c4: 28
    bcc lf4ca                                               ; f4c5: 90 03
    jsr lf25b                                               ; f4c7: 20 5b f2
.lf4ca
    jmp lf4a9                                               ; f4ca: 4c a9 f4
.lf4cd
    jsr lf181                                               ; f4cd: 20 81 f1
.lf4d0
    sty l00dd                                               ; f4d0: 84 dd
    ldx #&00                                                ; f4d2: a2 00
    lda l00e1                                               ; f4d4: a5 e1
    bpl lf4dc                                               ; f4d6: 10 04
    ldx #&02                                                ; f4d8: a2 02
    iny                                                     ; f4da: c8
    iny                                                     ; f4db: c8
.lf4dc
    lda l2108,y                                             ; f4dc: b9 08 21
    sta l00df,x                                             ; f4df: 95 df
    iny                                                     ; f4e1: c8
    inx                                                     ; f4e2: e8
    cpx #&08                                                ; f4e3: e0 08
    bne lf4dc                                               ; f4e5: d0 f5
    ldy l00dd                                               ; f4e7: a4 dd
    jsr lf1f0                                               ; f4e9: 20 f0 f1
    jsr lf7ae                                               ; f4ec: 20 ae f7
    lda #&53 ; 'S'                                          ; f4ef: a9 53
.lf4f1
    sta l00ad                                               ; f4f1: 85 ad
    jsr lf147                                               ; f4f3: 20 47 f1
.lf4f6
    jsr lf832                                               ; f4f6: 20 32 f8
    beq lf50d                                               ; f4f9: f0 12
.lf4fb
    jsr lf862                                               ; f4fb: 20 62 f8
    lda l00ad                                               ; f4fe: a5 ad
    jsr lf809                                               ; f500: 20 09 f8
    jsr lf7c0                                               ; f503: 20 c0 f7
    bne lf4fb                                               ; f506: d0 f3
    jsr lf855                                               ; f508: 20 55 f8
    bne lf4f6                                               ; f50b: d0 e9
.lf50d
    rts                                                     ; f50d: 60
.cmd_UNKNOWN
    jsr lf05f                                               ; f50e: 20 5f f0
    lda l00dc                                               ; f511: a5 dc
    sta l00c7                                               ; f513: 85 c7
    lda l00ef                                               ; f515: a5 ef
    sta l00c8                                               ; f517: 85 c8
    lda #&20 ; ' '                                          ; f519: a9 20
    sta l00ef                                               ; f51b: 85 ef
    lda #&00                                                ; f51d: a9 00
    sta l00e1                                               ; f51f: 85 e1
    jsr lf488                                               ; f521: 20 88 f4
    ldx #&dd                                                ; f524: a2 dd
    jsr lf094                                               ; f526: 20 94 f0
    jsr lf192                                               ; f529: 20 92 f1
    bcs lf53d                                               ; f52c: b0 0f
    jsr lf549                                               ; f52e: 20 49 f5
.lf531
    jsr lf009                                               ; f531: 20 09 f0
    equs "Command?"                                         ; f534: 43 6f 6d ...
    equb &00                                                ; f53c: .
.lf53d
    jsr lf4d0                                               ; f53d: 20 d0 f4
    jsr lf25b                                               ; f540: 20 5b f2
    jsr lf549                                               ; f543: 20 49 f5
    jmp (l00e1)                                             ; f546: 6c e1 00
.lf549
    lda l00c7                                               ; f549: a5 c7
    jsr lf488                                               ; f54b: 20 88 f4
    lda l00c8                                               ; f54e: a5 c8
    sta l00ef                                               ; f550: 85 ef
    rts                                                     ; f552: 60
.cmd_RUN
    jsr lf05f                                               ; f553: 20 5f f0
    jsr lf4b8                                               ; f556: 20 b8 f4
.lf559
    jsr lf25b                                               ; f559: 20 5b f2
    jmp (l00e1)                                             ; f55c: 6c e1 00
.lf55f
    jmp lf189                                               ; f55f: 4c 89 f1
.cmd_EXEC
    jsr lf62c                                               ; f562: 20 2c f6
    jsr lffce                                               ; f565: 20 ce ff
    tay                                                     ; f568: a8
    beq lf55f                                               ; f569: f0 f4
    sta l00b9                                               ; f56b: 85 b9
    jsr lf398                                               ; f56d: 20 98 f3
    lda #&7c ; '|'                                          ; f570: a9 7c
    ldy #&f5                                                ; f572: a0 f5
.lf574
    sta l0206,x                                             ; f574: 9d 06 02
    tya                                                     ; f577: 98
    sta l0207,x                                             ; f578: 9d 07 02
    rts                                                     ; f57b: 60
    equb &84, &d7, &a4, &b9, &20, &d4, &ff, &90             ; f57c: .... ...
    equb &08, &20, &cb, &ff, &a4, &d7, &6c, &0a             ; f584: . ....l.
    equb &02, &a4, &d7, &60                                 ; f58c: ...`
.cmd_SPOOL
    jsr lf62c                                               ; f590: 20 2c f6
    clc                                                     ; f593: 18
    jsr lffce                                               ; f594: 20 ce ff
    sta l00ba                                               ; f597: 85 ba
    jsr lf39c                                               ; f599: 20 9c f3
    lda #&a2                                                ; f59c: a9 a2
    ldy #&f5                                                ; f59e: a0 f5
    bne lf574                                               ; f5a0: d0 d2
    sty l00d7                                               ; f5a2: 84 d7
    ldy l00ba                                               ; f5a4: a4 ba
    jsr lffd1                                               ; f5a6: 20 d1 ff
    ldy l00d7                                               ; f5a9: a4 d7
    jmp (l00bb)                                             ; f5ab: 6c bb 00
.cmd_GO
    jsr lf0e9                                               ; f5ae: 20 e9 f0
    php                                                     ; f5b1: 08
    jsr lf62f                                               ; f5b2: 20 2f f6
    plp                                                     ; f5b5: 28
    beq lf559                                               ; f5b6: f0 a1
    jmp (l00df)                                             ; f5b8: 6c df 00
.cmd_SET
    jsr lf5fc                                               ; f5bb: 20 fc f5
    sta l00cd                                               ; f5be: 85 cd
    rts                                                     ; f5c0: 60
.cmd_TITLE
    jsr lf06d                                               ; f5c1: 20 6d f0
    jsr cmd_DIR                                             ; f5c4: 20 66 f2
    ldx #&0c                                                ; f5c7: a2 0c
    lda #&20 ; ' '                                          ; f5c9: a9 20
.lf5cb
    jsr lf620                                               ; f5cb: 20 20 f6
    dex                                                     ; f5ce: ca
    bpl lf5cb                                               ; f5cf: 10 fa
.lf5d1
    inx                                                     ; f5d1: e8
    lda l0140,x                                             ; f5d2: bd 40 01
    cmp #&0d                                                ; f5d5: c9 0d
    beq lf5f2                                               ; f5d7: f0 19
    jsr lf620                                               ; f5d9: 20 20 f6
    cpx #&0c                                                ; f5dc: e0 0c
    bcc lf5d1                                               ; f5de: 90 f1
    bcs lf5f2                                               ; f5e0: b0 10
.cmd_LOCK
    sec                                                     ; f5e2: 38
.cmd_UNLOCK
    php                                                     ; f5e3: 08
    jsr lf17e                                               ; f5e4: 20 7e f1
    lda l00ef                                               ; f5e7: a5 ef
    rol a                                                   ; f5e9: 2a
    plp                                                     ; f5ea: 28
    ror a                                                   ; f5eb: 6a
    sta l200f,y                                             ; f5ec: 99 0f 20
    jsr lf1f0                                               ; f5ef: 20 f0 f1
.lf5f2
    jsr lf766                                               ; f5f2: 20 66 f7
    jmp lf4a9                                               ; f5f5: 4c a9 f4
.cmd_USE
    lda l00ef                                               ; f5f8: a5 ef
    sta l00cd                                               ; f5fa: 85 cd
.lf5fc
    iny                                                     ; f5fc: c8
    jsr lf62f                                               ; f5fd: 20 2f f6
    lda l00ff,y                                             ; f600: b9 ff 00
    sta l00ef                                               ; f603: 85 ef
    rts                                                     ; f605: 60
.cmd_OPTION
    jsr lf0e9                                               ; f606: 20 e9 f0
    jsr cmd_DIR                                             ; f609: 20 66 f2
    lda l00df                                               ; f60c: a5 df
    asl a                                                   ; f60e: 0a
    asl a                                                   ; f60f: 0a
    asl a                                                   ; f610: 0a
    asl a                                                   ; f611: 0a
    eor l2106                                               ; f612: 4d 06 21
    and #&30 ; '0'                                          ; f615: 29 30
    eor l2106                                               ; f617: 4d 06 21
    sta l2106                                               ; f61a: 8d 06 21
    jmp lf766                                               ; f61d: 4c 66 f7
.lf620
    cpx #&08                                                ; f620: e0 08
    bcc lf628                                               ; f622: 90 04
    sta l20f8,x                                             ; f624: 9d f8 20
    rts                                                     ; f627: 60
.lf628
    sta l2000,x                                             ; f628: 9d 00 20
.lf62b
    rts                                                     ; f62b: 60
.lf62c
    jsr lf06d                                               ; f62c: 20 6d f0
.lf62f
    jsr lf0e1                                               ; f62f: 20 e1 f0
    cmp #&0d                                                ; f632: c9 0d
    beq lf62b                                               ; f634: f0 f5
.lf636
    jsr lf009                                               ; f636: 20 09 f0
    equs "Syntax?"                                          ; f639: 53 79 6e ...
    equb &00                                                ; f640: .
.lf641
    jsr lf009                                               ; f641: 20 09 f0
    lsr l0075                                               ; f644: 46 75
    jmp (l006c)                                             ; f646: 6c 6c 00
.cmd_SAVE
    jsr lf06d                                               ; f649: 20 6d f0
    jsr lf0e9                                               ; f64c: 20 e9 f0
    beq lf636                                               ; f64f: f0 e5
    ldx #&e5                                                ; f651: a2 e5
    jsr lf0eb                                               ; f653: 20 eb f0
    beq lf636                                               ; f656: f0 de
    ldx #&e1                                                ; f658: a2 e1
    jsr lf0eb                                               ; f65a: 20 eb f0
    php                                                     ; f65d: 08
    lda l00df                                               ; f65e: a5 df
    ldx l00e0                                               ; f660: a6 e0
    plp                                                     ; f662: 28
    bne lf669                                               ; f663: d0 04
    sta l00e1                                               ; f665: 85 e1
    stx l00e2                                               ; f667: 86 e2
.lf669
    sta l00e3                                               ; f669: 85 e3
    stx l00e4                                               ; f66b: 86 e4
    jsr lf62f                                               ; f66d: 20 2f f6
    ldx #&dd                                                ; f670: a2 dd
    clc                                                     ; f672: 18
    jmp lffdd                                               ; f673: 4c dd ff
.lf676
    php                                                     ; f676: 08
    jsr lf710                                               ; f677: 20 10 f7
    jmp lf4c4                                               ; f67a: 4c c4 f4
.lf67d
    jsr lf094                                               ; f67d: 20 94 f0
    jsr lf192                                               ; f680: 20 92 f1
    bcc lf688                                               ; f683: 90 03
    jsr lf1c1                                               ; f685: 20 c1 f1
.lf688
    lda l00e3                                               ; f688: a5 e3
    pha                                                     ; f68a: 48
    lda l00e4                                               ; f68b: a5 e4
    pha                                                     ; f68d: 48
    sec                                                     ; f68e: 38
    lda l00e5                                               ; f68f: a5 e5
    sbc l00e3                                               ; f691: e5 e3
    sta l00e3                                               ; f693: 85 e3
    lda l00e6                                               ; f695: a5 e6
    sbc l00e4                                               ; f697: e5 e4
    sta l00e4                                               ; f699: 85 e4
    lda #&00                                                ; f69b: a9 00
    sta l00e5                                               ; f69d: 85 e5
    lda #&02                                                ; f69f: a9 02
    sta l00e6                                               ; f6a1: 85 e6
    ldy l2105                                               ; f6a3: ac 05 21
    beq lf6e2                                               ; f6a6: f0 3a
    cpy #&f8                                                ; f6a8: c0 f8
    bcs lf641                                               ; f6aa: b0 95
    jsr lf37e                                               ; f6ac: 20 7e f3
    jmp lf6b8                                               ; f6af: 4c b8 f6
.lf6b2
    jsr lf13e                                               ; f6b2: 20 3e f1
    jsr lf35f                                               ; f6b5: 20 5f f3
.lf6b8
    tya                                                     ; f6b8: 98
    beq lf6bd                                               ; f6b9: f0 02
    bcc lf6b2                                               ; f6bb: 90 f5
.lf6bd
    bcs lf6ca                                               ; f6bd: b0 0b
    jsr lf009                                               ; f6bf: 20 09 f0
    lsr l206f                                               ; f6c2: 4e 6f 20
    equs "room"                                             ; f6c5: 72 6f 6f ...
    equb &00                                                ; f6c9: .
.lf6ca
    sty l00d8                                               ; f6ca: 84 d8
    ldy l2105                                               ; f6cc: ac 05 21
.lf6cf
    cpy l00d8                                               ; f6cf: c4 d8
    beq lf6e2                                               ; f6d1: f0 0f
    lda l2007,y                                             ; f6d3: b9 07 20
    sta l200f,y                                             ; f6d6: 99 0f 20
    lda l2107,y                                             ; f6d9: b9 07 21
    sta l210f,y                                             ; f6dc: 99 0f 21
    dey                                                     ; f6df: 88
    bcs lf6cf                                               ; f6e0: b0 ed
.lf6e2
    ldx #&00                                                ; f6e2: a2 00
.lf6e4
    lda l00e8,x                                             ; f6e4: b5 e8
    sta l2008,y                                             ; f6e6: 99 08 20
    iny                                                     ; f6e9: c8
    inx                                                     ; f6ea: e8
    cpx #&08                                                ; f6eb: e0 08
    bne lf6e4                                               ; f6ed: d0 f5
.lf6ef
    lda l00de,x                                             ; f6ef: b5 de
    dey                                                     ; f6f1: 88
    sta l2108,y                                             ; f6f2: 99 08 21
    dex                                                     ; f6f5: ca
    bne lf6ef                                               ; f6f6: d0 f7
    jsr lf1f0                                               ; f6f8: 20 f0 f1
    pla                                                     ; f6fb: 68
    sta l00e0                                               ; f6fc: 85 e0
    pla                                                     ; f6fe: 68
    sta l00df                                               ; f6ff: 85 df
    ldy l2105                                               ; f701: ac 05 21
    jsr lf135                                               ; f704: 20 35 f1
    sty l2105                                               ; f707: 8c 05 21
    jsr lf766                                               ; f70a: 20 66 f7
    jmp lf25b                                               ; f70d: 4c 5b f2
.lf710
    jsr lf67d                                               ; f710: 20 7d f6
    jsr lf7b2                                               ; f713: 20 b2 f7
    lda #&4b ; 'K'                                          ; f716: a9 4b
    jmp lf4f1                                               ; f718: 4c f1 f4
.lf71b
    lda #&00                                                ; f71b: a9 00
    sta l00da                                               ; f71d: 85 da
    sta l00db                                               ; f71f: 85 db
    lda #&02                                                ; f721: a9 02
    sta l00f2                                               ; f723: 85 f2
    ldy #&16                                                ; f725: a0 16
    lda #&45 ; 'E'                                          ; f727: a9 45
    sta l00d5                                               ; f729: 85 d5
    lda #&f7                                                ; f72b: a9 f7
    sta l00d6                                               ; f72d: 85 d6
.lf72f
    lda lf87e,y                                             ; f72f: b9 7e f8
    jsr lf7ee                                               ; f732: 20 ee f7
.lf735
    iny                                                     ; f735: c8
    lda lf87e,y                                             ; f736: b9 7e f8
    cmp #&ea                                                ; f739: c9 ea
    beq lf743                                               ; f73b: f0 06
    jsr lf825                                               ; f73d: 20 25 f8
    jmp lf735                                               ; f740: 4c 35 f7
.lf743
    iny                                                     ; f743: c8
    rts                                                     ; f744: 60
    equb &20, &00, &f8, &a9, &0a, &85, &f1, &60             ; f745:  ......`
.lf74d
    jsr lf796                                               ; f74d: 20 96 f7
    bne lf765                                               ; f750: d0 13
    jsr lf777                                               ; f752: 20 77 f7
    jsr lf71b                                               ; f755: 20 1b f7
.lf758
    jsr lf7ae                                               ; f758: 20 ae f7
    lda #&53 ; 'S'                                          ; f75b: a9 53
    jsr lf809                                               ; f75d: 20 09 f8
    jsr lf7c0                                               ; f760: 20 c0 f7
    bne lf758                                               ; f763: d0 f3
.lf765
    rts                                                     ; f765: 60
.lf766
    jsr lf71b                                               ; f766: 20 1b f7
.lf769
    jsr lf7b2                                               ; f769: 20 b2 f7
    lda #&4b ; 'K'                                          ; f76c: a9 4b
    jsr lf809                                               ; f76e: 20 09 f8
    jsr lf7c0                                               ; f771: 20 c0 f7
    bne lf769                                               ; f774: d0 f3
    rts                                                     ; f776: 60
.lf777
    lda l00dc                                               ; f777: a5 dc
    and #&03                                                ; f779: 29 03
    tay                                                     ; f77b: a8
    ora #&80                                                ; f77c: 09 80
    sta l00dc                                               ; f77e: 85 dc
    lda #&3a ; ':'                                          ; f780: a9 3a
    jsr lf7f7                                               ; f782: 20 f7 f7
    lda #&23 ; '#'                                          ; f785: a9 23
    jsr lf825                                               ; f787: 20 25 f8
    lda lf7aa,y                                             ; f78a: b9 aa f7
    jsr lf825                                               ; f78d: 20 25 f8
.lf790
    jsr lf796                                               ; f790: 20 96 f7
    beq lf790                                               ; f793: f0 fb
    rts                                                     ; f795: 60
.lf796
    lda l00dc                                               ; f796: a5 dc
    bpl lf7a7                                               ; f798: 10 0d
    lda #&6c ; 'l'                                          ; f79a: a9 6c
    jsr lf7ee                                               ; f79c: 20 ee f7
    jsr lf800                                               ; f79f: 20 00 f8
    bcc lf7a7                                               ; f7a2: 90 03
    jsr lf130                                               ; f7a4: 20 30 f1
.lf7a7
    and #&04                                                ; f7a7: 29 04
    rts                                                     ; f7a9: 60
.lf7aa
    equb &48, &88, &68, &a8                                 ; f7aa: H.h.
.lf7ae
    ldy #&0a                                                ; f7ae: a0 0a
    bne lf7b4                                               ; f7b0: d0 02
.lf7b2
    ldy #&12                                                ; f7b2: a0 12
.lf7b4
    ldx #&0b                                                ; f7b4: a2 0b
.lf7b6
    lda lf86b,y                                             ; f7b6: b9 6b f8
    sta l00f2,x                                             ; f7b9: 95 f2
    dey                                                     ; f7bb: 88
    dex                                                     ; f7bc: ca
    bne lf7b6                                               ; f7bd: d0 f7
.lf7bf
    rts                                                     ; f7bf: 60
.lf7c0
    jsr lf800                                               ; f7c0: 20 00 f8
    beq lf7bf                                               ; f7c3: f0 fa
    cmp #&12                                                ; f7c5: c9 12
    bne lf7d1                                               ; f7c7: d0 08
    jsr lf000                                               ; f7c9: 20 00 f0
    bvs lf840                                               ; f7cc: 70 72
    equb &6f, &74, &00                                      ; f7ce: ot.
.lf7d1
    cmp #&16                                                ; f7d1: c9 16
    bne lf7da                                               ; f7d3: d0 05
    jsr lf000                                               ; f7d5: 20 00 f0
    equb &3f, &00                                           ; f7d8: ?.
.lf7da
    dec l00f1                                               ; f7da: c6 f1
    bne lf7bf                                               ; f7dc: d0 e1
    pha                                                     ; f7de: 48
    jsr lf000                                               ; f7df: 20 00 f0
    adc l0072                                               ; f7e2: 65 72
    equs "ror "                                             ; f7e4: 72 6f 72 ...
    equb &ea                                                ; f7e8: .
    equs "h J"                                              ; f7e9: 68 20 4a
    equb &f0, &00                                           ; f7ec: ..
.lf7ee
    pha                                                     ; f7ee: 48
    lda l00dc                                               ; f7ef: a5 dc
    ror a                                                   ; f7f1: 6a
    pla                                                     ; f7f2: 68
    bcc lf7f7                                               ; f7f3: 90 02
    eor #&c0                                                ; f7f5: 49 c0
.lf7f7
    bit l0a00                                               ; f7f7: 2c 00 0a
    bmi lf7f7                                               ; f7fa: 30 fb
    sta l0a00                                               ; f7fc: 8d 00 0a
    rts                                                     ; f7ff: 60
.lf800
    lda l0a00                                               ; f800: ad 00 0a
    bmi lf800                                               ; f803: 30 fb
    lda l0a01                                               ; f805: ad 01 0a
    rts                                                     ; f808: 60
.lf809
    jsr lf7ee                                               ; f809: 20 ee f7
    clc                                                     ; f80c: 18
    pla                                                     ; f80d: 68
    adc #&01                                                ; f80e: 69 01
    sta l00d5                                               ; f810: 85 d5
    pla                                                     ; f812: 68
    adc #&00                                                ; f813: 69 00
    sta l00d6                                               ; f815: 85 d6
    lda l00da                                               ; f817: a5 da
    jsr lf825                                               ; f819: 20 25 f8
    lda l00db                                               ; f81c: a5 db
    jsr lf825                                               ; f81e: 20 25 f8
    lda l00f2                                               ; f821: a5 f2
    ora #&20 ; ' '                                          ; f823: 09 20
.lf825
    pha                                                     ; f825: 48
.lf826
    lda l0a00                                               ; f826: ad 00 0a
    and #&20 ; ' '                                          ; f829: 29 20
    bne lf826                                               ; f82b: d0 f9
    pla                                                     ; f82d: 68
    sta l0a01                                               ; f82e: 8d 01 0a
    rts                                                     ; f831: 60
.lf832
    lda #&0a                                                ; f832: a9 0a
    sta l00f1                                               ; f834: 85 f1
    sec                                                     ; f836: 38
    lda #&0a                                                ; f837: a9 0a
    sbc l00db                                               ; f839: e5 db
    ldy l00cc                                               ; f83b: a4 cc
    bne lf845                                               ; f83d: d0 06
.lf83f
lf840 = lf83f+1
    cmp l00cb                                               ; f83f: c5 cb
    bcc lf845                                               ; f841: 90 02
    lda l00cb                                               ; f843: a5 cb
.lf845
    sta l00f2                                               ; f845: 85 f2
    sec                                                     ; f847: 38
    lda l00cb                                               ; f848: a5 cb
    sbc l00f2                                               ; f84a: e5 f2
    sta l00cb                                               ; f84c: 85 cb
    bcs lf852                                               ; f84e: b0 02
    dec l00cc                                               ; f850: c6 cc
.lf852
    lda l00f2                                               ; f852: a5 f2
    rts                                                     ; f854: 60
.lf855
    sta l00db                                               ; f855: 85 db
    lda l00f7                                               ; f857: a5 f7
    sta l00c9                                               ; f859: 85 c9
    lda l00f8                                               ; f85b: a5 f8
    sta l00ca                                               ; f85d: 85 ca
    inc l00da                                               ; f85f: e6 da
    rts                                                     ; f861: 60
.lf862
    lda l00c9                                               ; f862: a5 c9
    sta l00f7                                               ; f864: 85 f7
    lda l00ca                                               ; f866: a5 ca
    sta l00f8                                               ; f868: 85 f8
    rts                                                     ; f86a: 60
.lf86b
    equb &ad, &04, &0a, &8d, &ff, &1f                       ; f86b: ......
    equs "h@L"                                              ; f871: 68 40 4c
    equb &f6, &00, &ad, &ff, &1f, &8d, &04, &0a             ; f874: ........
.lf87c
lf87e = lf87c+2
    equs "h@5"                                              ; f87c: 68 40 35
    equb &0d, &0d, &08, &c5, &ea, &35, &10, &ff             ; f87f: .....5..
    equb &ff, &00, &ea, &35, &18, &ff, &ff, &00             ; f887: ...5....
    equb &ea, &3a, &17, &c1, &ea, &69, &00, &ea             ; f88f: .:...i..
.lf897
    pha                                                     ; f897: 48
    lda l0a00                                               ; f898: ad 00 0a
    and #&04                                                ; f89b: 29 04
    beq lf8a8                                               ; f89d: f0 09
    inc l00f7                                               ; f89f: e6 f7
    bne lf8a5                                               ; f8a1: d0 02
    inc l00f8                                               ; f8a3: e6 f8
.lf8a5
    jmp l00f3                                               ; f8a5: 4c f3 00
.lf8a8
    lda l0a00                                               ; f8a8: ad 00 0a
    and #&08                                                ; f8ab: 29 08
    bne lf8b2                                               ; f8ad: d0 03
    jmp (l0200)                                             ; f8af: 6c 00 02
.lf8b2
    txa                                                     ; f8b2: 8a
    pha                                                     ; f8b3: 48
    tya                                                     ; f8b4: 98
    pha                                                     ; f8b5: 48
    cld                                                     ; f8b6: d8
    jsr lf8c0                                               ; f8b7: 20 c0 f8
    pla                                                     ; f8ba: 68
    tay                                                     ; f8bb: a8
    pla                                                     ; f8bc: 68
    tax                                                     ; f8bd: aa
    pla                                                     ; f8be: 68
    rti                                                     ; f8bf: 40
.lf8c0
    jmp (l00d5)                                             ; f8c0: 6c d5 00
.cmd_SHUT
    ldy #&00                                                ; f8c3: a0 00
.lf8c5
    pha                                                     ; f8c5: 48
    cld                                                     ; f8c6: d8
    tya                                                     ; f8c7: 98
    bne lf8d9                                               ; f8c8: d0 0f
.lf8ca
    clc                                                     ; f8ca: 18
    adc #&20 ; ' '                                          ; f8cb: 69 20
    beq lf8d7                                               ; f8cd: f0 08
    tay                                                     ; f8cf: a8
    jsr lf8c5                                               ; f8d0: 20 c5 f8
    bne lf8ca                                               ; f8d3: d0 f5
.lf8d5
    ldx l00c6                                               ; f8d5: a6 c6
.lf8d7
    pla                                                     ; f8d7: 68
    rts                                                     ; f8d8: 60
.lf8d9
    jsr lfaa3                                               ; f8d9: 20 a3 fa
    bcs lf8d5                                               ; f8dc: b0 f7
    cpy l00b9                                               ; f8de: c4 b9
    bne lf8e8                                               ; f8e0: d0 06
    jsr lf398                                               ; f8e2: 20 98 f3
    lsr a                                                   ; f8e5: 4a
    sta l00b9                                               ; f8e6: 85 b9
.lf8e8
    cpy l00ba                                               ; f8e8: c4 ba
    bne lf8f1                                               ; f8ea: d0 05
    jsr lf39c                                               ; f8ec: 20 9c f3
    sta l00ba                                               ; f8ef: 85 ba
.lf8f1
    lda l2217,y                                             ; f8f1: b9 17 22
    and #&60 ; '`'                                          ; f8f4: 29 60
    beq lf92d                                               ; f8f6: f0 35
    jsr lf939                                               ; f8f8: 20 39 f9
    lda l2217,y                                             ; f8fb: b9 17 22
    and #&20 ; ' '                                          ; f8fe: 29 20
    beq lf927                                               ; f900: f0 25
    ldx l00c4                                               ; f902: a6 c4
    lda l2214,y                                             ; f904: b9 14 22
    sta l210c,x                                             ; f907: 9d 0c 21
    lda l2215,y                                             ; f90a: b9 15 22
    sta l210d,x                                             ; f90d: 9d 0d 21
    lda l2216,y                                             ; f910: b9 16 22
    asl a                                                   ; f913: 0a
    asl a                                                   ; f914: 0a
    asl a                                                   ; f915: 0a
    asl a                                                   ; f916: 0a
    eor l210e,x                                             ; f917: 5d 0e 21
    and #&f0                                                ; f91a: 29 f0
    eor l210e,x                                             ; f91c: 5d 0e 21
    sta l210e,x                                             ; f91f: 9d 0e 21
    jsr lf766                                               ; f922: 20 66 f7
    ldy l00c2                                               ; f925: a4 c2
.lf927
    jsr lfb9d                                               ; f927: 20 9d fb
    jsr lf549                                               ; f92a: 20 49 f5
.lf92d
    lda l221b,y                                             ; f92d: b9 1b 22
    eor #&ff                                                ; f930: 49 ff
    and l00c0                                               ; f932: 25 c0
    sta l00c0                                               ; f934: 85 c0
    jmp lf8d5                                               ; f936: 4c d5 f8
.lf939
    jsr lf965                                               ; f939: 20 65 f9
.lf93c
    ldx #&07                                                ; f93c: a2 07
.lf93e
    lda l220c,y                                             ; f93e: b9 0c 22
    sta l00e7,x                                             ; f941: 95 e7
    dey                                                     ; f943: 88
    dey                                                     ; f944: 88
    dex                                                     ; f945: ca
    bne lf93e                                               ; f946: d0 f6
    jsr lf192                                               ; f948: 20 92 f1
    bcc lf981                                               ; f94b: 90 34
    sty l00c4                                               ; f94d: 84 c4
    lda l210e,y                                             ; f94f: b9 0e 21
    ldx l210f,y                                             ; f952: be 0f 21
    ldy l00c2                                               ; f955: a4 c2
    eor l220d,y                                             ; f957: 59 0d 22
    and #&0f                                                ; f95a: 29 0f
    bne lf981                                               ; f95c: d0 23
    txa                                                     ; f95e: 8a
    cmp l220f,y                                             ; f95f: d9 0f 22
    bne lf981                                               ; f962: d0 1d
    rts                                                     ; f964: 60
.lf965
    lda l00dc                                               ; f965: a5 dc
    sta l00c7                                               ; f967: 85 c7
    lda l00ef                                               ; f969: a5 ef
    sta l00c8                                               ; f96b: 85 c8
    lda l220e,y                                             ; f96d: b9 0e 22
    and #&7f                                                ; f970: 29 7f
    sta l00ef                                               ; f972: 85 ef
    lda l2217,y                                             ; f974: b9 17 22
    jmp lf488                                               ; f977: 4c 88 f4
.lf97a
    cld                                                     ; f97a: d8
    tya                                                     ; f97b: 98
    pha                                                     ; f97c: 48
    stx l00c6                                               ; f97d: 86 c6
.lf97f
    php                                                     ; f97f: 08
.lf980
lf981 = lf980+1
    lda l0000,x                                             ; f980: b5 00
    sta l00dd                                               ; f982: 85 dd
    lda l0001,x                                             ; f984: b5 01
    sta l00de                                               ; f986: 85 de
    jsr lf0a1                                               ; f988: 20 a1 f0
    jsr lf192                                               ; f98b: 20 92 f1
    bcs lf9af                                               ; f98e: b0 1f
    plp                                                     ; f990: 28
    bcc lf998                                               ; f991: 90 05
    ldy #&00                                                ; f993: a0 00
    jmp lfa78                                               ; f995: 4c 78 fa
.lf998
    lda #&00                                                ; f998: a9 00
    ldx #&08                                                ; f99a: a2 08
.lf99c
    sta l00de,x                                             ; f99c: 95 de
    dex                                                     ; f99e: ca
    bne lf99c                                               ; f99f: d0 fb
    lda #&40 ; '@'                                          ; f9a1: a9 40
    sta l00e6                                               ; f9a3: 85 e6
    ldx #&dd                                                ; f9a5: a2 dd
    jsr lf67d                                               ; f9a7: 20 7d f6
    ldx l00c6                                               ; f9aa: a6 c6
    clc                                                     ; f9ac: 18
    bcc lf97f                                               ; f9ad: 90 d0
.lf9af
    sty l00c3                                               ; f9af: 84 c3
.lf9b1
lf9b2 = lf9b1+1
    lda #&00                                                ; f9b1: a9 00
    sta l00c2                                               ; f9b3: 85 c2
    ldy #&a0                                                ; f9b5: a0 a0
    lda #&08                                                ; f9b7: a9 08
.lf9b9
    bit l00c0                                               ; f9b9: 24 c0
    beq lf9e5                                               ; f9bb: f0 28
    pha                                                     ; f9bd: 48
    sty l00c4                                               ; f9be: 84 c4
    ldx l00c3                                               ; f9c0: a6 c3
    lda #&08                                                ; f9c2: a9 08
    sta l00c5                                               ; f9c4: 85 c5
.lf9c6
    lda l2200,y                                             ; f9c6: b9 00 22
    cmp l2008,x                                             ; f9c9: dd 08 20
    bne lf9ec                                               ; f9cc: d0 1e
    iny                                                     ; f9ce: c8
    lda l2200,y                                             ; f9cf: b9 00 22
    cmp l2108,x                                             ; f9d2: dd 08 21
    bne lf9ec                                               ; f9d5: d0 15
    iny                                                     ; f9d7: c8
    inx                                                     ; f9d8: e8
    dec l00c5                                               ; f9d9: c6 c5
    bne lf9c6                                               ; f9db: d0 e9
    ldy l00c4                                               ; f9dd: a4 c4
    ldx l00c6                                               ; f9df: a6 c6
    jsr lf8c5                                               ; f9e1: 20 c5 f8
    pla                                                     ; f9e4: 68
.lf9e5
    sty l00c2                                               ; f9e5: 84 c2
    sta l00c1                                               ; f9e7: 85 c1
    jmp lf9ef                                               ; f9e9: 4c ef f9
.lf9ec
    ldy l00c4                                               ; f9ec: a4 c4
    pla                                                     ; f9ee: 68
.lf9ef
    pha                                                     ; f9ef: 48
    tya                                                     ; f9f0: 98
    sec                                                     ; f9f1: 38
    sbc #&20 ; ' '                                          ; f9f2: e9 20
    tay                                                     ; f9f4: a8
    pla                                                     ; f9f5: 68
    asl a                                                   ; f9f6: 0a
    bne lf9b9                                               ; f9f7: d0 c0
    ldy l00c2                                               ; f9f9: a4 c2
    beq lf9b2                                               ; f9fb: f0 b5
    ldx l00c3                                               ; f9fd: a6 c3
    lda #&08                                                ; f9ff: a9 08
    sta l00c5                                               ; fa01: 85 c5
.lfa03
    lda l2008,x                                             ; fa03: bd 08 20
    sta l2200,y                                             ; fa06: 99 00 22
    iny                                                     ; fa09: c8
    lda l2108,x                                             ; fa0a: bd 08 21
    sta l2200,y                                             ; fa0d: 99 00 22
    iny                                                     ; fa10: c8
    inx                                                     ; fa11: e8
    dec l00c5                                               ; fa12: c6 c5
    bne lfa03                                               ; fa14: d0 ed
    ldx #&10                                                ; fa16: a2 10
    lda #&00                                                ; fa18: a9 00
.lfa1a
    sta l2200,y                                             ; fa1a: 99 00 22
    iny                                                     ; fa1d: c8
    dex                                                     ; fa1e: ca
    bne lfa1a                                               ; fa1f: d0 f9
    lda l00c2                                               ; fa21: a5 c2
    tay                                                     ; fa23: a8
    jsr lf12f                                               ; fa24: 20 2f f1
    adc #&22 ; '"'                                          ; fa27: 69 22
    sta l2213,y                                             ; fa29: 99 13 22
    lda l00c1                                               ; fa2c: a5 c1
    sta l221b,y                                             ; fa2e: 99 1b 22
    ora l00c0                                               ; fa31: 05 c0
    sta l00c0                                               ; fa33: 85 c0
    lda l2209,y                                             ; fa35: b9 09 22
    adc #&ff                                                ; fa38: 69 ff
    lda l220b,y                                             ; fa3a: b9 0b 22
    adc #&00                                                ; fa3d: 69 00
    sta l2219,y                                             ; fa3f: 99 19 22
    lda l220d,y                                             ; fa42: b9 0d 22
    ora #&0f                                                ; fa45: 09 0f
    adc #&00                                                ; fa47: 69 00
    jsr lf130                                               ; fa49: 20 30 f1
    sta l221a,y                                             ; fa4c: 99 1a 22
    plp                                                     ; fa4f: 28
    bcc lfa81                                               ; fa50: 90 2f
    lda l2209,y                                             ; fa52: b9 09 22
    sta l2214,y                                             ; fa55: 99 14 22
    lda l220b,y                                             ; fa58: b9 0b 22
    sta l2215,y                                             ; fa5b: 99 15 22
    lda l220d,y                                             ; fa5e: b9 0d 22
    jsr lf130                                               ; fa61: 20 30 f1
    sta l2216,y                                             ; fa64: 99 16 22
.lfa67
    lda l00dc                                               ; fa67: a5 dc
    and #&0f                                                ; fa69: 29 0f
    ora l2217,y                                             ; fa6b: 19 17 22
    sta l2217,y                                             ; fa6e: 99 17 22
    jsr lfaf8                                               ; fa71: 20 f8 fa
    lda l00cd                                               ; fa74: a5 cd
    sta l00ef                                               ; fa76: 85 ef
.lfa78
    sty l00c3                                               ; fa78: 84 c3
    ldx l00c6                                               ; fa7a: a6 c6
    pla                                                     ; fa7c: 68
    tay                                                     ; fa7d: a8
    lda l00c3                                               ; fa7e: a5 c3
    rts                                                     ; fa80: 60
.lfa81
    lda #&20 ; ' '                                          ; fa81: a9 20
    sta l2217,y                                             ; fa83: 99 17 22
    bne lfa67                                               ; fa86: d0 df
.lfa88
    pha                                                     ; fa88: 48
    sty l00c2                                               ; fa89: 84 c2
    asl a                                                   ; fa8b: 0a
    asl a                                                   ; fa8c: 0a
    adc l00c2                                               ; fa8d: 65 c2
    tay                                                     ; fa8f: a8
    lda l2210,y                                             ; fa90: b9 10 22
    sta l0000,x                                             ; fa93: 95 00
    lda l2211,y                                             ; fa95: b9 11 22
    sta l0001,x                                             ; fa98: 95 01
    lda l2212,y                                             ; fa9a: b9 12 22
    sta l0002,x                                             ; fa9d: 95 02
    ldy l00c2                                               ; fa9f: a4 c2
    pla                                                     ; faa1: 68
    rts                                                     ; faa2: 60
.lfaa3
    pha                                                     ; faa3: 48
    stx l00c6                                               ; faa4: 86 c6
    tya                                                     ; faa6: 98
    and #&e0                                                ; faa7: 29 e0
    sta l00c2                                               ; faa9: 85 c2
    beq lfabe                                               ; faab: f0 11
    jsr lf12f                                               ; faad: 20 2f f1
    tay                                                     ; fab0: a8
    lda #&00                                                ; fab1: a9 00
    sec                                                     ; fab3: 38
.lfab4
    ror a                                                   ; fab4: 6a
    dey                                                     ; fab5: 88
    bne lfab4                                               ; fab6: d0 fc
    ldy l00c2                                               ; fab8: a4 c2
    bit l00c0                                               ; faba: 24 c0
    bne lfac1                                               ; fabc: d0 03
.lfabe
    pla                                                     ; fabe: 68
    sec                                                     ; fabf: 38
    rts                                                     ; fac0: 60
.lfac1
    pla                                                     ; fac1: 68
    clc                                                     ; fac2: 18
.lfac3
    rts                                                     ; fac3: 60
.lfac4
    ldx #&20 ; ' '                                          ; fac4: a2 20
    txa                                                     ; fac6: 8a
    clc                                                     ; fac7: 18
.lfac8
    adc l2200,y                                             ; fac8: 79 00 22
    iny                                                     ; facb: c8
    dex                                                     ; facc: ca
    bne lfac8                                               ; facd: d0 f9
    adc #&00                                                ; facf: 69 00
    ldy l00c2                                               ; fad1: a4 c2
    rts                                                     ; fad3: 60
.lfad4
    jsr lfac4                                               ; fad4: 20 c4 fa
    cmp #&ff                                                ; fad7: c9 ff
    beq lfac3                                               ; fad9: f0 e8
    brk                                                     ; fadb: 00
.lfadc
    clc                                                     ; fadc: 18
    lda l220f,y                                             ; fadd: b9 0f 22
    adc l2211,y                                             ; fae0: 79 11 22
    sta l00e6                                               ; fae3: 85 e6
    sta l221c,y                                             ; fae5: 99 1c 22
    lda l220d,y                                             ; fae8: b9 0d 22
    and #&0f                                                ; faeb: 29 0f
    adc l2212,y                                             ; faed: 79 12 22
    sta l00e5                                               ; faf0: 85 e5
    sta l221d,y                                             ; faf2: 99 1d 22
    jsr lfb8c                                               ; faf5: 20 8c fb
.lfaf8
    lda #&ff                                                ; faf8: a9 ff
    sta l221f,y                                             ; fafa: 99 1f 22
    jsr lfac4                                               ; fafd: 20 c4 fa
    eor #&ff                                                ; fb00: 49 ff
    sta l221f,y                                             ; fb02: 99 1f 22
    rts                                                     ; fb05: 60
    equb &18, &79, &1f, &22, &69, &00, &d0, &f4             ; fb06: .y."i...
.lfb0e
    jsr lffe6                                               ; fb0e: 20 e6 ff
    cmp #&04                                                ; fb11: c9 04
    beq lfb37                                               ; fb13: f0 22
    clc                                                     ; fb15: 18
    rts                                                     ; fb16: 60
.lfb17
    cld                                                     ; fb17: d8
    tya                                                     ; fb18: 98
    beq lfb0e                                               ; fb19: f0 f3
    jsr lfaa3                                               ; fb1b: 20 a3 fa
    bcs lfb5b                                               ; fb1e: b0 3b
    tya                                                     ; fb20: 98
    jsr lfd21                                               ; fb21: 20 21 fd
    bne lfb3b                                               ; fb24: d0 15
    lda l2217,y                                             ; fb26: b9 17 22
    and #&10                                                ; fb29: 29 10
    bne lfb7c                                               ; fb2b: d0 4f
    lda #&10                                                ; fb2d: a9 10
    jsr lfb8e                                               ; fb2f: 20 8e fb
    jsr lfaf8                                               ; fb32: 20 f8 fa
    ldx l00c6                                               ; fb35: a6 c6
.lfb37
    lda #&ff                                                ; fb37: a9 ff
    sec                                                     ; fb39: 38
    rts                                                     ; fb3a: 60
.lfb3b
    lda l2217,y                                             ; fb3b: b9 17 22
    bmi lfb50                                               ; fb3e: 30 10
    jsr lfad4                                               ; fb40: 20 d4 fa
    jsr lf965                                               ; fb43: 20 65 f9
    jsr lfb9d                                               ; fb46: 20 9d fb
    sec                                                     ; fb49: 38
    jsr lfba5                                               ; fb4a: 20 a5 fb
    jsr lf549                                               ; fb4d: 20 49 f5
.lfb50
    lda l2210,y                                             ; fb50: b9 10 22
    sta l00dd                                               ; fb53: 85 dd
    lda l2213,y                                             ; fb55: b9 13 22
    sta l00de                                               ; fb58: 85 de
    equb &a0                                                ; fb5a: .
.lfb5b
    brk                                                     ; fb5b: 00
    equb &b1, &dd, &48, &a4, &c2, &a9, &fe, &20             ; fb5c: ..H.... 
    equb &06, &fb, &a6, &dd, &e8, &8a, &99, &10             ; fb64: ........
    equb &22, &d0, &19, &18, &b9, &11, &22, &69             ; fb6c: "....."i
    equb &01, &99, &11, &22, &b9, &12, &22, &69             ; fb74: ...".."i
.lfb7c
    brk                                                     ; fb7c: 00
    equb &99, &12, &22, &20, &93, &fb, &a9, &80             ; fb7d: .." ....
    equb &20, &06, &fb                                      ; fb85:  ..
.lfb88
    clc                                                     ; fb88: 18
    jmp lf8d5                                               ; fb89: 4c d5 f8
.lfb8c
    lda #&80                                                ; fb8c: a9 80
.lfb8e
    ora l2217,y                                             ; fb8e: 19 17 22
    bne lfb98                                               ; fb91: d0 05
.lfb93
    lda #&7f                                                ; fb93: a9 7f
.lfb95
    and l2217,y                                             ; fb95: 39 17 22
.lfb98
    sta l2217,y                                             ; fb98: 99 17 22
    clc                                                     ; fb9b: 18
    rts                                                     ; fb9c: 60
.lfb9d
    lda l2217,y                                             ; fb9d: b9 17 22
    and #&40 ; '@'                                          ; fba0: 29 40
    beq lfbde                                               ; fba2: f0 3a
    clc                                                     ; fba4: 18
.lfba5
    php                                                     ; fba5: 08
    jsr lf777                                               ; fba6: 20 77 f7
    ldy l00c2                                               ; fba9: a4 c2
    lda l2213,y                                             ; fbab: b9 13 22
    sta l00e0                                               ; fbae: 85 e0
    equb &a9                                                ; fbb0: .
.lfbb1
    brk                                                     ; fbb1: 00
    equb &85, &df, &85, &e3, &a9, &01, &85, &e4             ; fbb2: ........
    equb &28, &b0, &16, &b9, &1c, &22, &85, &e6             ; fbba: (...."..
    equb &b9, &1d, &22, &85, &e5, &20, &13, &f7             ; fbc2: ..".. ..
    equb &a4, &c2, &a9, &bf, &20, &95, &fb, &90             ; fbca: .... ...
    equb &06, &20, &dc, &fa, &20, &ec, &f4, &20             ; fbd2: . .. .. 
    equb &5b, &f2, &a4, &c2                                 ; fbda: [...
.lfbde
    rts                                                     ; fbde: 60
.lfbdf
    pla                                                     ; fbdf: 68
    jmp lffe9                                               ; fbe0: 4c e9 ff
.lfbe3
    cld                                                     ; fbe3: d8
    pha                                                     ; fbe4: 48
    tya                                                     ; fbe5: 98
    beq lfbdf                                               ; fbe6: f0 f7
    jsr lfaa3                                               ; fbe8: 20 a3 fa
    bcs lfc46                                               ; fbeb: b0 59
    jsr lfad4                                               ; fbed: 20 d4 fa
    lda l220e,y                                             ; fbf0: b9 0e 22
    bmi lfbb1                                               ; fbf3: 30 bc
    jsr lf965                                               ; fbf5: 20 65 f9
    tya                                                     ; fbf8: 98
    clc                                                     ; fbf9: 18
    adc #&04                                                ; fbfa: 69 04
    jsr lfd21                                               ; fbfc: 20 21 fd
    bne lfc52                                               ; fbff: d0 51
    jsr lf93c                                               ; fc01: 20 3c f9
    ldx l00c4                                               ; fc04: a6 c4
    sec                                                     ; fc06: 38
    lda l2107,x                                             ; fc07: bd 07 21
    sbc l210f,x                                             ; fc0a: fd 0f 21
    pha                                                     ; fc0d: 48
    lda l2106,x                                             ; fc0e: bd 06 21
    sbc l210e,x                                             ; fc11: fd 0e 21
    and #&0f                                                ; fc14: 29 0f
    sta l00c3                                               ; fc16: 85 c3
    asl a                                                   ; fc18: 0a
    asl a                                                   ; fc19: 0a
    asl a                                                   ; fc1a: 0a
    asl a                                                   ; fc1b: 0a
    eor l210e,x                                             ; fc1c: 5d 0e 21
    and #&f0                                                ; fc1f: 29 f0
    eor l210e,x                                             ; fc21: 5d 0e 21
    cmp l210e,x                                             ; fc24: dd 0e 21
    sta l210e,x                                             ; fc27: 9d 0e 21
    bne lfc39                                               ; fc2a: d0 0d
    pla                                                     ; fc2c: 68
    cmp l210d,x                                             ; fc2d: dd 0d 21
    bne lfc3a                                               ; fc30: d0 08
    jsr lf549                                               ; fc32: 20 49 f5
    jsr lf8c5                                               ; fc35: 20 c5 f8
    brk                                                     ; fc38: 00
.lfc39
    pla                                                     ; fc39: 68
.lfc3a
    sta l210d,x                                             ; fc3a: 9d 0d 21
    sta l2219,y                                             ; fc3d: 99 19 22
    lda l00c3                                               ; fc40: a5 c3
    sta l221a,y                                             ; fc42: 99 1a 22
    equb &a9                                                ; fc45: .
.lfc46
    brk                                                     ; fc46: 00
    equb &9d, &0c                                           ; fc47: ..
    equs "! f"                                              ; fc49: 21 20 66
    equb &f7, &20, &5b, &f2, &a4, &c2                       ; fc4c: . [...
.lfc52
    lda l2217,y                                             ; fc52: b9 17 22
    bmi lfc6e                                               ; fc55: 30 17
    jsr lfb9d                                               ; fc57: 20 9d fb
    lda l2214,y                                             ; fc5a: b9 14 22
    bne lfc6a                                               ; fc5d: d0 0b
    tya                                                     ; fc5f: 98
    jsr lfd21                                               ; fc60: 20 21 fd
    bne lfc6a                                               ; fc63: d0 05
    jsr lfadc                                               ; fc65: 20 dc fa
    bne lfc6e                                               ; fc68: d0 04
.lfc6a
    sec                                                     ; fc6a: 38
    jsr lfba5                                               ; fc6b: 20 a5 fb
.lfc6e
    lda l2210,y                                             ; fc6e: b9 10 22
    sta l00dd                                               ; fc71: 85 dd
    lda l2213,y                                             ; fc73: b9 13 22
    sta l00de                                               ; fc76: 85 de
    pla                                                     ; fc78: 68
    ldy #&00                                                ; fc79: a0 00
    sta (l00dd),y                                           ; fc7b: 91 dd
    pha                                                     ; fc7d: 48
    ldy l00c2                                               ; fc7e: a4 c2
    lda #&40 ; '@'                                          ; fc80: a9 40
    jsr lfb8e                                               ; fc82: 20 8e fb
    inc l00dd                                               ; fc85: e6 dd
    lda l00dd                                               ; fc87: a5 dd
    sta l2210,y                                             ; fc89: 99 10 22
    bne lfca1                                               ; fc8c: d0 13
    jsr lfb93                                               ; fc8e: 20 93 fb
    lda l2211,y                                             ; fc91: b9 11 22
    adc #&01                                                ; fc94: 69 01
    sta l2211,y                                             ; fc96: 99 11 22
    lda l2212,y                                             ; fc99: b9 12 22
    equb &69                                                ; fc9c: i
.lfc9d
    brk                                                     ; fc9d: 00
    equb &99, &12, &22                                      ; fc9e: .."
.lfca1
    tya                                                     ; fca1: 98
    jsr lfd21                                               ; fca2: 20 21 fd
    bcc lfcbe                                               ; fca5: 90 17
    lda #&20 ; ' '                                          ; fca7: a9 20
    jsr lfb8e                                               ; fca9: 20 8e fb
    lda l2210,y                                             ; fcac: b9 10 22
    sta l2214,y                                             ; fcaf: 99 14 22
    lda l2211,y                                             ; fcb2: b9 11 22
    sta l2215,y                                             ; fcb5: 99 15 22
    lda l2212,y                                             ; fcb8: b9 12 22
    sta l2216,y                                             ; fcbb: 99 16 22
.lfcbe
    jsr lfaf8                                               ; fcbe: 20 f8 fa
    jsr lf549                                               ; fcc1: 20 49 f5
    jmp lfb88                                               ; fcc4: 4c 88 fb
.lfcc7
    pha                                                     ; fcc7: 48
    jsr lfaa3                                               ; fcc8: 20 a3 fa
    bcs lfc9d                                               ; fccb: b0 d0
    jsr lfad4                                               ; fccd: 20 d4 fa
    ldx l00c6                                               ; fcd0: a6 c6
    jsr lf139                                               ; fcd2: 20 39 f1
    jsr lfd39                                               ; fcd5: 20 39 fd
    bcc lfd3d                                               ; fcd8: 90 63
    ldy l00c2                                               ; fcda: a4 c2
.lfcdc
    jsr lfd39                                               ; fcdc: 20 39 fd
    bcs lfce8                                               ; fcdf: b0 07
    lda #&ff                                                ; fce1: a9 ff
    jsr lfbe3                                               ; fce3: 20 e3 fb
    bne lfcdc                                               ; fce6: d0 f4
.lfce8
    lda l0000,x                                             ; fce8: b5 00
    sta l2210,y                                             ; fcea: 99 10 22
    lda l0001,x                                             ; fced: b5 01
    sta l2211,y                                             ; fcef: 99 11 22
    lda l0002,x                                             ; fcf2: b5 02
    sta l2212,y                                             ; fcf4: 99 12 22
    lda #&6f ; 'o'                                          ; fcf7: a9 6f
    jsr lfb95                                               ; fcf9: 20 95 fb
    lda l220f,y                                             ; fcfc: b9 0f 22
    adc l2211,y                                             ; fcff: 79 11 22
    sta l00c5                                               ; fd02: 85 c5
    lda l220d,y                                             ; fd04: b9 0d 22
    and #&0f                                                ; fd07: 29 0f
    adc l2212,y                                             ; fd09: 79 12 22
    cmp l221d,y                                             ; fd0c: d9 1d 22
    bne lfd1b                                               ; fd0f: d0 0a
    lda l00c5                                               ; fd11: a5 c5
    cmp l221c,y                                             ; fd13: d9 1c 22
    bne lfd1b                                               ; fd16: d0 03
    jsr lfb8c                                               ; fd18: 20 8c fb
.lfd1b
    jsr lfaf8                                               ; fd1b: 20 f8 fa
    jmp lfb88                                               ; fd1e: 4c 88 fb
.lfd21
    tax                                                     ; fd21: aa
    lda l2212,y                                             ; fd22: b9 12 22
    cmp l2216,x                                             ; fd25: dd 16 22
    bne lfd38                                               ; fd28: d0 0e
    lda l2211,y                                             ; fd2a: b9 11 22
    cmp l2215,x                                             ; fd2d: dd 15 22
    bne lfd38                                               ; fd30: d0 06
    lda l2210,y                                             ; fd32: b9 10 22
    cmp l2214,x                                             ; fd35: dd 14 22
.lfd38
    rts                                                     ; fd38: 60
.lfd39
    lda l2214,y                                             ; fd39: b9 14 22
    equb &d5                                                ; fd3c: .
.lfd3d
    brk                                                     ; fd3d: 00
    equb &b9, &15, &22, &f5, &01, &b9, &16, &22             ; fd3e: .."...."
    equb &f5, &02, &60, &48                                 ; fd46: ..`H
.lfd4a
    ora #&08                                                ; fd4a: 09 08
    and #&0a                                                ; fd4c: 29 0a
    asl a                                                   ; fd4e: 0a
.lfd4f
    lsr a                                                   ; fd4f: 4a
    jsr lfd7e                                               ; fd50: 20 7e fd
.lfd53
    bit l0e21                                               ; fd53: 2c 21 0e
    bpl lfd53                                               ; fd56: 10 fb
.lfd58
    lda l0e21                                               ; fd58: ad 21 0e
    bmi lfd58                                               ; fd5b: 30 fb
    cmp #&11                                                ; fd5d: c9 11
    beq lfd72                                               ; fd5f: f0 11
    cmp #&17                                                ; fd61: c9 17
    beq lfd4f                                               ; fd63: f0 ea
    cmp #&01                                                ; fd65: c9 01
    beq lfd4a                                               ; fd67: f0 e1
    cmp #&13                                                ; fd69: c9 13
    beq lfd4f                                               ; fd6b: f0 e2
    cmp #&1a                                                ; fd6d: c9 1a
    beq lfd4a                                               ; fd6f: f0 d9
    rts                                                     ; fd71: 60
.lfd72
    sty l00d7                                               ; fd72: 84 d7
    ldy #&00                                                ; fd74: a0 00
    lda (l00d2),y                                           ; fd76: b1 d2
    ldy l00d7                                               ; fd78: a4 d7
    rts                                                     ; fd7a: 60
.lfd7b
    jsr lfd8b                                               ; fd7b: 20 8b fd
.lfd7e
    php                                                     ; fd7e: 08
    pha                                                     ; fd7f: 48
    cld                                                     ; fd80: d8
    sty l00d7                                               ; fd81: 84 d7
    jsr lfe4a                                               ; fd83: 20 4a fe
    pla                                                     ; fd86: 68
    ldy l00d7                                               ; fd87: a4 d7
    plp                                                     ; fd89: 28
    rts                                                     ; fd8a: 60
.lfd8b
    pha                                                     ; fd8b: 48
    cmp #&02                                                ; fd8c: c9 02
    beq lfdb7                                               ; fd8e: f0 27
    cmp #&03                                                ; fd90: c9 03
    beq lfdc8                                               ; fd92: f0 34
    cmp l00fe                                               ; fd94: c5 fe
    beq lfdc6                                               ; fd96: f0 2e
    lda l0c0c                                               ; fd98: ad 0c 0c
    and #&0e                                                ; fd9b: 29 0e
    beq lfdc6                                               ; fd9d: f0 27
    pla                                                     ; fd9f: 68
.lfda0
    bit l0c01                                               ; fda0: 2c 01 0c
    bmi lfda0                                               ; fda3: 30 fb
    sta l0c01                                               ; fda5: 8d 01 0c
    pha                                                     ; fda8: 48
    lda l0c0c                                               ; fda9: ad 0c 0c
    and #&f0                                                ; fdac: 29 f0
    ora #&0c                                                ; fdae: 09 0c
    sta l0c0c                                               ; fdb0: 8d 0c 0c
    ora #&02                                                ; fdb3: 09 02
    bne lfdc3                                               ; fdb5: d0 0c
.lfdb7
    lda #&7f                                                ; fdb7: a9 7f
    sta l0c03                                               ; fdb9: 8d 03 0c
    lda l0c0c                                               ; fdbc: ad 0c 0c
    and #&f0                                                ; fdbf: 29 f0
    ora #&0e                                                ; fdc1: 09 0e
.lfdc3
    sta l0c0c                                               ; fdc3: 8d 0c 0c
.lfdc6
    pla                                                     ; fdc6: 68
    rts                                                     ; fdc7: 60
.lfdc8
    lda l0c0c                                               ; fdc8: ad 0c 0c
    and #&f0                                                ; fdcb: 29 f0
    bcs lfdc3                                               ; fdcd: b0 f4
.lfdcf
    pla                                                     ; fdcf: 68
    pla                                                     ; fdd0: 68
    rts                                                     ; fdd1: 60
.lfdd2
    dey                                                     ; fdd2: 88
    bpl lfde9                                               ; fdd3: 10 14
    ldy #&27 ; '''                                          ; fdd5: a0 27
.lfdd7
    lda l00ce                                               ; fdd7: a5 ce
    cmp #&18                                                ; fdd9: c9 18
    bcs lfdcf                                               ; fddb: b0 f2
    inc l00ce                                               ; fddd: e6 ce
.lfddf
    lda l00cf                                               ; fddf: a5 cf
    sbc #&27 ; '''                                          ; fde1: e9 27
    sta l00cf                                               ; fde3: 85 cf
    bcs lfde9                                               ; fde5: b0 02
    dec l00d0                                               ; fde7: c6 d0
.lfde9
    rts                                                     ; fde9: 60
.lfdea
    dec l00ce                                               ; fdea: c6 ce
    rts                                                     ; fdec: 60
.lfded
    ldy #&28 ; '('                                          ; fded: a0 28
    jsr lfe21                                               ; fdef: 20 21 fe
    lda l00d2                                               ; fdf2: a5 d2
    sta l00cf                                               ; fdf4: 85 cf
    lda l00d4                                               ; fdf6: a5 d4
    sta l00d0                                               ; fdf8: 85 d0
    lda l00ce                                               ; fdfa: a5 ce
    bne lfdea                                               ; fdfc: d0 ec
    ldy #&0d                                                ; fdfe: a0 0d
    sty l0800                                               ; fe00: 8c 00 08
    lda l00cf                                               ; fe03: a5 cf
    sec                                                     ; fe05: 38
    sbc #&c0                                                ; fe06: e9 c0
    sta l0801                                               ; fe08: 8d 01 08
    dey                                                     ; fe0b: 88
    sty l0800                                               ; fe0c: 8c 00 08
    lda l00d0                                               ; fe0f: a5 d0
    sbc #&03                                                ; fe11: e9 03
    sta l0801                                               ; fe13: 8d 01 08
    ldy #&27 ; '''                                          ; fe16: a0 27
    lda #&20 ; ' '                                          ; fe18: a9 20
.lfe1a
    jsr lfe36                                               ; fe1a: 20 36 fe
    dey                                                     ; fe1d: 88
    bpl lfe1a                                               ; fe1e: 10 fa
    rts                                                     ; fe20: 60
.lfe21
    pha                                                     ; fe21: 48
    clc                                                     ; fe22: 18
    tya                                                     ; fe23: 98
    adc l00cf                                               ; fe24: 65 cf
    sta l00d2                                               ; fe26: 85 d2
    lda l00d0                                               ; fe28: a5 d0
    adc #&00                                                ; fe2a: 69 00
    sta l00d4                                               ; fe2c: 85 d4
    and #&07                                                ; fe2e: 29 07
    ora #&04                                                ; fe30: 09 04
    sta l00d3                                               ; fe32: 85 d3
    pla                                                     ; fe34: 68
    rts                                                     ; fe35: 60
.lfe36
    jsr lfe21                                               ; fe36: 20 21 fe
    sty l00d4                                               ; fe39: 84 d4
    ldy #&00                                                ; fe3b: a0 00
    sta (l00d2),y                                           ; fe3d: 91 d2
    ldy l00d4                                               ; fe3f: a4 d4
    rts                                                     ; fe41: 60
.lfe42
    clc                                                     ; fe42: 18
.lfe43
    php                                                     ; fe43: 08
    asl l00d1                                               ; fe44: 06 d1
    plp                                                     ; fe46: 28
    ror l00d1                                               ; fe47: 66 d1
    rts                                                     ; fe49: 60
.lfe4a
    cmp #&06                                                ; fe4a: c9 06
    beq lfe42                                               ; fe4c: f0 f4
    cmp #&15                                                ; fe4e: c9 15
    beq lfe43                                               ; fe50: f0 f1
    ldy l00d1                                               ; fe52: a4 d1
    bmi lfe83                                               ; fe54: 30 2d
    cmp #&20 ; ' '                                          ; fe56: c9 20
    bcc lfe8e                                               ; fe58: 90 34
    cmp #&7f                                                ; fe5a: c9 7f
    beq lfe84                                               ; fe5c: f0 26
.lfe5e
    jsr lfe36                                               ; fe5e: 20 36 fe
.lfe61
    iny                                                     ; fe61: c8
    cpy #&28 ; '('                                          ; fe62: c0 28
    bcc lfe6b                                               ; fe64: 90 05
    jsr lfded                                               ; fe66: 20 ed fd
.lfe69
    ldy #&00                                                ; fe69: a0 00
.lfe6b
    jsr lfe21                                               ; fe6b: 20 21 fe
    sty l00d1                                               ; fe6e: 84 d1
    ldy #&0f                                                ; fe70: a0 0f
    sty l0800                                               ; fe72: 8c 00 08
    lda l00d2                                               ; fe75: a5 d2
    sta l0801                                               ; fe77: 8d 01 08
    dey                                                     ; fe7a: 88
    sty l0800                                               ; fe7b: 8c 00 08
    ldy l00d4                                               ; fe7e: a4 d4
    sty l0801                                               ; fe80: 8c 01 08
.lfe83
    rts                                                     ; fe83: 60
.lfe84
    jsr lfdd2                                               ; fe84: 20 d2 fd
    lda #&20 ; ' '                                          ; fe87: a9 20
    jsr lfe36                                               ; fe89: 20 36 fe
    bpl lfe6b                                               ; fe8c: 10 dd
.lfe8e
    cmp #&0d                                                ; fe8e: c9 0d
    beq lfe69                                               ; fe90: f0 d7
    cmp #&0a                                                ; fe92: c9 0a
    beq lfeb2                                               ; fe94: f0 1c
    cmp #&0c                                                ; fe96: c9 0c
    beq lfed1                                               ; fe98: f0 37
    cmp #&08                                                ; fe9a: c9 08
    beq lfeac                                               ; fe9c: f0 0e
    cmp #&1e                                                ; fe9e: c9 1e
    beq lfeba                                               ; fea0: f0 18
    cmp #&0b                                                ; fea2: c9 0b
    beq lfecb                                               ; fea4: f0 25
    cmp #&09                                                ; fea6: c9 09
    bne lfe5e                                               ; fea8: d0 b4
    bcs lfe61                                               ; feaa: b0 b5
.lfeac
    jsr lfdd2                                               ; feac: 20 d2 fd
    jmp lfe6b                                               ; feaf: 4c 6b fe
.lfeb2
    jsr lfded                                               ; feb2: 20 ed fd
    ldy l00d1                                               ; feb5: a4 d1
    jmp lfe6b                                               ; feb7: 4c 6b fe
.lfeba
    lda #&18                                                ; feba: a9 18
    ldy l00ce                                               ; febc: a4 ce
    sta l00ce                                               ; febe: 85 ce
.lfec0
    cpy #&18                                                ; fec0: c0 18
    bcs lfe69                                               ; fec2: b0 a5
    iny                                                     ; fec4: c8
    jsr lfddf                                               ; fec5: 20 df fd
    jmp lfec0                                               ; fec8: 4c c0 fe
.lfecb
    jsr lfdd7                                               ; fecb: 20 d7 fd
    jmp lfe6b                                               ; fece: 4c 6b fe
.lfed1
    lda #&20 ; ' '                                          ; fed1: a9 20
    ldy #&00                                                ; fed3: a0 00
.lfed5
    sta l0400,y                                             ; fed5: 99 00 04
    sta l0500,y                                             ; fed8: 99 00 05
    sta l0600,y                                             ; fedb: 99 00 06
    sta l0700,y                                             ; fede: 99 00 07
    iny                                                     ; fee1: c8
    bne lfed5                                               ; fee2: d0 f1
    sty l00cf                                               ; fee4: 84 cf
    sty l00cf                                               ; fee6: 84 cf
    sty l00cf                                               ; fee8: 84 cf
    sty l00cf                                               ; feea: 84 cf
    sty l00cf                                               ; feec: 84 cf
    sty l00cf                                               ; feee: 84 cf
    sty l00cf                                               ; fef0: 84 cf
    sty l00d1                                               ; fef2: 84 d1
    ldy #&0d                                                ; fef4: a0 0d
.lfef6
    sty l0800                                               ; fef6: 8c 00 08
    lda lff8e,y                                             ; fef9: b9 8e ff
    sta l0801                                               ; fefc: 8d 01 08
    dey                                                     ; feff: 88
    bpl lfef6                                               ; ff00: 10 f4
    lda #&18                                                ; ff02: a9 18
    sta l00ce                                               ; ff04: 85 ce
    lda #&04                                                ; ff06: a9 04
    sta l00d0                                               ; ff08: 85 d0
    jmp lfe69                                               ; ff0a: 4c 69 fe
.lff0d
    ldx #&19                                                ; ff0d: a2 19
.lff0f
    lda lff9c,x                                             ; ff0f: bd 9c ff
    sta l0202,x                                             ; ff12: 9d 02 02
    dex                                                     ; ff15: ca
    bpl lff0f                                               ; ff16: 10 f7
    txs                                                     ; ff18: 9a
    cld                                                     ; ff19: d8
    lda #&20 ; ' '                                          ; ff1a: a9 20
    sta l00cd                                               ; ff1c: 85 cd
    sta l00ef                                               ; ff1e: 85 ef
    lda #&0a                                                ; ff20: a9 0a
    sta l00fe                                               ; ff22: 85 fe
    ldy #&00                                                ; ff24: a0 00
    sty l00dc                                               ; ff26: 84 dc
    sty l00c0                                               ; ff28: 84 c0
    sty l00b9                                               ; ff2a: 84 b9
    sty l00ba                                               ; ff2c: 84 ba
    ldx #&04                                                ; ff2e: a2 04
.lff30
    jsr lf72f                                               ; ff30: 20 2f f7
    dex                                                     ; ff33: ca
    bne lff30                                               ; ff34: d0 fa
    jsr lfed1                                               ; ff36: 20 d1 fe
    bit l0e21                                               ; ff39: 2c 21 0e
    bvs lff6d                                               ; ff3c: 70 2f
    ldx #&04                                                ; ff3e: a2 04
.lff40
    lda lff89,x                                             ; ff40: bd 89 ff
    sta l0100,x                                             ; ff43: 9d 00 01
    dex                                                     ; ff46: ca
    bpl lff40                                               ; ff47: 10 f7
    jsr lf258                                               ; ff49: 20 58 f2
    ldy #&00                                                ; ff4c: a0 00
    ldx #&00                                                ; ff4e: a2 00
    lda l2106                                               ; ff50: ad 06 21
    jsr lf130                                               ; ff53: 20 30 f1
    beq lff6d                                               ; ff56: f0 15
    jsr lff5e                                               ; ff58: 20 5e ff
    jmp lff6d                                               ; ff5b: 4c 6d ff
.lff5e
    cmp #&02                                                ; ff5e: c9 02
    bcc lff6a                                               ; ff60: 90 08
    beq lff67                                               ; ff62: f0 03
    jmp cmd_EXEC                                            ; ff64: 4c 62 f5
.lff67
    jmp cmd_RUN                                             ; ff67: 4c 53 f5
.lff6a
    jmp cmd_LOAD                                            ; ff6a: 4c ae f4
.lff6d
    jsr lf009                                               ; ff6d: 20 09 f0
    eor (l0063,x)                                           ; ff70: 41 63
    equs "orn Dos"                                          ; ff72: 6f 72 6e ...
    equb &0a                                                ; ff79: .
.lff7a
    ldx #&ff                                                ; ff7a: a2 ff
    txs                                                     ; ff7c: 9a
    jsr lffed                                               ; ff7d: 20 ed ff
.lff80
    jsr lf029                                               ; ff80: 20 29 f0
    jsr lfff7                                               ; ff83: 20 f7 ff
    jmp lff80                                               ; ff86: 4c 80 ff
.lff89
    equs "BOOT"                                             ; ff89: 42 4f 4f ...
    equb &0d                                                ; ff8d: .
.lff8e
    equs "?(3D"                                             ; ff8e: 3f 28 33 ...
    equb &1e, &02, &19, &1b, &03, &12, &72, &13             ; ff92: ......r.
    equb &04, &00                                           ; ff9a: ..
.lff9c
    equw lff7a, lf531, lf42e, lfd7b, lfd53, lf4c0, lf676    ; ff9c: 7a ff 31 ...
    equw lfa88, lfcc7, lfb17, lfbe3, lf97a, lf8c5           ; ffa3: fd 53 fd ...
.lffb6
    sta l00ff                                               ; ffb6: 85 ff
    pla                                                     ; ffb8: 68
    pha                                                     ; ffb9: 48
    and #&10                                                ; ffba: 29 10
    bne lffc4                                               ; ffbc: d0 06
    lda l00ff                                               ; ffbe: a5 ff
    pha                                                     ; ffc0: 48
    jmp (l0204)                                             ; ffc1: 6c 04 02
.lffc4
    lda l00ff                                               ; ffc4: a5 ff
    plp                                                     ; ffc6: 28
    php                                                     ; ffc7: 08
    jmp (l0202)                                             ; ffc8: 6c 02 02
    equb &6c, &1a, &02                                      ; ffcb: l..
.lffce
    jmp (l0218)                                             ; ffce: 6c 18 02
.lffd1
    jmp (l0216)                                             ; ffd1: 6c 16 02
    equb &6c, &14, &02, &6c, &12, &02, &6c, &10             ; ffd4: l..l..l.
    equb &02                                                ; ffdc: .
.lffdd
    jmp (l020e)                                             ; ffdd: 6c 0e 02
    equb &6c, &0c, &02                                      ; ffe0: l..
.lffe3
    jmp (l020a)                                             ; ffe3: 6c 0a 02
.lffe6
    jsr lffe3                                               ; ffe6: 20 e3 ff
.lffe9
    cmp #&0d                                                ; ffe9: c9 0d
    bne lfff4                                               ; ffeb: d0 07
.lffed
    lda #&0a                                                ; ffed: a9 0a
    jsr lfff4                                               ; ffef: 20 f4 ff
    lda #&0d                                                ; fff2: a9 0d
.lfff4
    jmp (l0208)                                             ; fff4: 6c 08 02
.lfff7
    jmp (l0206)                                             ; fff7: 6c 06 02
    equw lf897, lff0d, lffb6                                ; fffa: 97 f8 0d ...

.pydis_end

save pydis_start, pydis_end
