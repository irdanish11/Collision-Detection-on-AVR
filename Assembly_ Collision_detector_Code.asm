;Irfan Danish [CIIT/FA15-BEL-012]
;Hammad Munir [CIIT/FA15-BEL-034]
00000000 <__vectors>:
       0:       0c 94 63 00     jmp     0xc6    ; 0xc6 <__ctors_end>
       4:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
       8:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
       c:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      10:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      14:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      18:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      1c:       0c 94 5f 05     jmp     0xabe   ; 0xabe <__vector_7>
      20:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      24:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      28:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      2c:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      30:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      34:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      38:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      3c:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      40:       0c 94 13 06     jmp     0xc26   ; 0xc26 <__vector_16>
      44:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      48:       0c 94 e1 05     jmp     0xbc2   ; 0xbc2 <__vector_18>
      4c:       0c 94 bb 05     jmp     0xb76   ; 0xb76 <__vector_19>
      50:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      54:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      58:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      5c:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      60:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>
      64:       0c 94 8b 00     jmp     0x116   ; 0x116 <__bad_interrupt>

00000068 <__trampolines_end>:
      68:       00 00           nop
      6a:       00 00           nop
      6c:       24 00           .word   0x0024  ; ????
      6e:       27 00           .word   0x0027  ; ????
      70:       2a 00           .word   0x002a  ; ????

00000072 <port_to_input_PGM>:
      72:       00 00 00 00 23 00 26 00 29 00                       ....#.&.).

0000007c <digital_pin_to_timer_PGM>:
      7c:       00 00 00 08 00 02 01 00 00 03 04 07 00 00 00 00     ................
      8c:       00 00 00 00                                         ....

00000090 <digital_pin_to_bit_mask_PGM>:
      90:       01 02 04 08 10 20 40 80 01 02 04 08 10 20 01 02     ..... @...... ..
      a0:       04 08 10 20                                         ...

000000a4 <port_to_output_PGM>:
      a4:       00 00 00 00 25 00 28 00 2b 00                       ....%.(.+.

000000ae <digital_pin_to_port_PGM>:
      ae:       04 04 04 04 04 04 04 04 02 02 02 02 02 02 03 03     ................
      be:       03 03 03 03                                         ....

000000c2 <tone_pin_to_timer_PGM>:
      c2:       02 00                                               ..

000000c4 <__ctors_start>:
      c4:       a2 06           cpc     r10, r18

000000c6 <__ctors_end>:
      c6:       11 24           eor     r1, r1
      c8:       1f be           out     0x3f, r1        ; 63
      ca:       cf ef           ldi     r28, 0xFF       ; 255
      cc:       d8 e0           ldi     r29, 0x08       ; 8
      ce:       de bf           out     0x3e, r29       ; 62
      d0:       cd bf           out     0x3d, r28       ; 61

000000d2 <__do_copy_data>:
      d2:       11 e0           ldi     r17, 0x01       ; 1
      d4:       a0 e0           ldi     r26, 0x00       ; 0
      d6:       b1 e0           ldi     r27, 0x01       ; 1
      d8:       ea e7           ldi     r30, 0x7A       ; 122
      da:       f4 e1           ldi     r31, 0x14       ; 20
      dc:       02 c0           rjmp    .+4             ; 0xe2 <__do_copy_data+0x10>
      de:       05 90           lpm     r0, Z+
      e0:       0d 92           st      X+, r0
      e2:       a0 33           cpi     r26, 0x30       ; 48
      e4:       b1 07           cpc     r27, r17
      e6:       d9 f7           brne    .-10            ; 0xde <__do_copy_data+0xc>

000000e8 <__do_clear_bss>:
      e8:       22 e0           ldi     r18, 0x02       ; 2
      ea:       a0 e3           ldi     r26, 0x30       ; 48
      ec:       b1 e0           ldi     r27, 0x01       ; 1
      ee:       01 c0           rjmp    .+2             ; 0xf2 <.do_clear_bss_start>

000000f0 <.do_clear_bss_loop>:
      f0:       1d 92           st      X+, r1

000000f2 <.do_clear_bss_start>:
      f2:       a9 30           cpi     r26, 0x09       ; 9
      f4:       b2 07           cpc     r27, r18
      f6:       e1 f7           brne    .-8             ; 0xf0 <.do_clear_bss_loop>

000000f8 <__do_global_ctors>:
      f8:       10 e0           ldi     r17, 0x00       ; 0
      fa:       c3 e6           ldi     r28, 0x63       ; 99
      fc:       d0 e0           ldi     r29, 0x00       ; 0
      fe:       04 c0           rjmp    .+8             ; 0x108 <__do_global_ctors+0x10>
     100:       21 97           sbiw    r28, 0x01       ; 1
     102:       fe 01           movw    r30, r28
     104:       0e 94 30 0a     call    0x1460  ; 0x1460 <__tablejump2__>
     108:       c2 36           cpi     r28, 0x62       ; 98
     10a:       d1 07           cpc     r29, r17
     10c:       c9 f7           brne    .-14            ; 0x100 <__do_global_ctors+0x8>
     10e:       0e 94 ec 06     call    0xdd8   ; 0xdd8 <main>
     112:       0c 94 3b 0a     jmp     0x1476  ; 0x1476 <_exit>

00000116 <__bad_interrupt>:
     116:       0c 94 00 00     jmp     0       ; 0x0 <__vectors>

0000011a <HardwareSerial::availableForWrite()>:
     11a:       fc 01           movw    r30, r24
     11c:       53 8d           ldd     r21, Z+27       ; 0x1b
     11e:       44 8d           ldd     r20, Z+28       ; 0x1c
     120:       25 2f           mov     r18, r21
     122:       30 e0           ldi     r19, 0x00       ; 0
     124:       84 2f           mov     r24, r20
     126:       90 e0           ldi     r25, 0x00       ; 0
     128:       82 1b           sub     r24, r18
     12a:       93 0b           sbc     r25, r19
     12c:       54 17           cp      r21, r20
     12e:       10 f0           brcs    .+4             ; 0x134 <HardwareSerial::availableForWrite()+0x1a>
     130:       cf 96           adiw    r24, 0x3f       ; 63
     132:       08 95           ret
     134:       01 97           sbiw    r24, 0x01       ; 1
     136:       08 95           ret

00000138 <HardwareSerial::read()>:
     138:       fc 01           movw    r30, r24
     13a:       91 8d           ldd     r25, Z+25       ; 0x19
     13c:       82 8d           ldd     r24, Z+26       ; 0x1a
     13e:       98 17           cp      r25, r24
     140:       61 f0           breq    .+24            ; 0x15a <HardwareSerial::read()+0x22>
     142:       82 8d           ldd     r24, Z+26       ; 0x1a
     144:       df 01           movw    r26, r30
     146:       a8 0f           add     r26, r24
     148:       b1 1d           adc     r27, r1
     14a:       5d 96           adiw    r26, 0x1d       ; 29
     14c:       8c 91           ld      r24, X
     14e:       92 8d           ldd     r25, Z+26       ; 0x1a
     150:       9f 5f           subi    r25, 0xFF       ; 255
     152:       9f 73           andi    r25, 0x3F       ; 63
     154:       92 8f           std     Z+26, r25       ; 0x1a
     156:       90 e0           ldi     r25, 0x00       ; 0
     158:       08 95           ret
     15a:       8f ef           ldi     r24, 0xFF       ; 255
     15c:       9f ef           ldi     r25, 0xFF       ; 255
     15e:       08 95           ret

00000160 <HardwareSerial::peek()>:
     160:       fc 01           movw    r30, r24
     162:       91 8d           ldd     r25, Z+25       ; 0x19
     164:       82 8d           ldd     r24, Z+26       ; 0x1a
     166:       98 17           cp      r25, r24
     168:       31 f0           breq    .+12            ; 0x176 <HardwareSerial::peek()+0x16>
     16a:       82 8d           ldd     r24, Z+26       ; 0x1a
     16c:       e8 0f           add     r30, r24
     16e:       f1 1d           adc     r31, r1
     170:       85 8d           ldd     r24, Z+29       ; 0x1d
     172:       90 e0           ldi     r25, 0x00       ; 0
     174:       08 95           ret
     176:       8f ef           ldi     r24, 0xFF       ; 255
     178:       9f ef           ldi     r25, 0xFF       ; 255
     17a:       08 95           ret

0000017c <HardwareSerial::available()>:
     17c:       fc 01           movw    r30, r24
     17e:       91 8d           ldd     r25, Z+25       ; 0x19
     180:       22 8d           ldd     r18, Z+26       ; 0x1a
     182:       89 2f           mov     r24, r25
     184:       90 e0           ldi     r25, 0x00       ; 0
     186:       80 5c           subi    r24, 0xC0       ; 192
     188:       9f 4f           sbci    r25, 0xFF       ; 255
     18a:       82 1b           sub     r24, r18
     18c:       91 09           sbc     r25, r1
     18e:       8f 73           andi    r24, 0x3F       ; 63
     190:       99 27           eor     r25, r25
     192:       08 95           ret

00000194 <HardwareSerial::_tx_udr_empty_irq()>:
     194:       fc 01           movw    r30, r24
     196:       84 8d           ldd     r24, Z+28       ; 0x1c
     198:       df 01           movw    r26, r30
     19a:       a8 0f           add     r26, r24
     19c:       b1 1d           adc     r27, r1
     19e:       a3 5a           subi    r26, 0xA3       ; 163
     1a0:       bf 4f           sbci    r27, 0xFF       ; 255
     1a2:       2c 91           ld      r18, X
     1a4:       84 8d           ldd     r24, Z+28       ; 0x1c
     1a6:       90 e0           ldi     r25, 0x00       ; 0
     1a8:       01 96           adiw    r24, 0x01       ; 1
     1aa:       8f 73           andi    r24, 0x3F       ; 63
     1ac:       99 27           eor     r25, r25
     1ae:       84 8f           std     Z+28, r24       ; 0x1c
     1b0:       a6 89           ldd     r26, Z+22       ; 0x16
     1b2:       b7 89           ldd     r27, Z+23       ; 0x17
     1b4:       2c 93           st      X, r18
     1b6:       a0 89           ldd     r26, Z+16       ; 0x10
     1b8:       b1 89           ldd     r27, Z+17       ; 0x11
     1ba:       8c 91           ld      r24, X
     1bc:       80 64           ori     r24, 0x40       ; 64
     1be:       8c 93           st      X, r24
     1c0:       93 8d           ldd     r25, Z+27       ; 0x1b
     1c2:       84 8d           ldd     r24, Z+28       ; 0x1c
     1c4:       98 13           cpse    r25, r24
     1c6:       06 c0           rjmp    .+12            ; 0x1d4 <HardwareSerial::_tx_udr_empty_irq()+0x40>
     1c8:       02 88           ldd     r0, Z+18        ; 0x12
     1ca:       f3 89           ldd     r31, Z+19       ; 0x13
     1cc:       e0 2d           mov     r30, r0
     1ce:       80 81           ld      r24, Z
     1d0:       8f 7d           andi    r24, 0xDF       ; 223
     1d2:       80 83           st      Z, r24
     1d4:       08 95           ret

000001d6 <HardwareSerial::write(unsigned char)>:
     1d6:       ef 92           push    r14
     1d8:       ff 92           push    r15
     1da:       0f 93           push    r16
     1dc:       1f 93           push    r17
     1de:       cf 93           push    r28
     1e0:       df 93           push    r29
     1e2:       ec 01           movw    r28, r24
     1e4:       81 e0           ldi     r24, 0x01       ; 1
     1e6:       88 8f           std     Y+24, r24       ; 0x18
     1e8:       9b 8d           ldd     r25, Y+27       ; 0x1b
     1ea:       8c 8d           ldd     r24, Y+28       ; 0x1c
     1ec:       98 13           cpse    r25, r24
     1ee:       05 c0           rjmp    .+10            ; 0x1fa <HardwareSerial::write(unsigned char)+0x24>
     1f0:       e8 89           ldd     r30, Y+16       ; 0x10
     1f2:       f9 89           ldd     r31, Y+17       ; 0x11
     1f4:       80 81           ld      r24, Z
     1f6:       85 fd           sbrc    r24, 5
     1f8:       24 c0           rjmp    .+72            ; 0x242 <HardwareSerial::write(unsigned char)+0x6c>
     1fa:       f6 2e           mov     r15, r22
     1fc:       0b 8d           ldd     r16, Y+27       ; 0x1b
     1fe:       10 e0           ldi     r17, 0x00       ; 0
     200:       0f 5f           subi    r16, 0xFF       ; 255
     202:       1f 4f           sbci    r17, 0xFF       ; 255
     204:       0f 73           andi    r16, 0x3F       ; 63
     206:       11 27           eor     r17, r17
     208:       e0 2e           mov     r14, r16
     20a:       8c 8d           ldd     r24, Y+28       ; 0x1c
     20c:       e8 12           cpse    r14, r24
     20e:       0c c0           rjmp    .+24            ; 0x228 <HardwareSerial::write(unsigned char)+0x52>
     210:       0f b6           in      r0, 0x3f        ; 63
     212:       07 fc           sbrc    r0, 7
     214:       fa cf           rjmp    .-12            ; 0x20a <HardwareSerial::write(unsigned char)+0x34>
     216:       e8 89           ldd     r30, Y+16       ; 0x10
     218:       f9 89           ldd     r31, Y+17       ; 0x11
     21a:       80 81           ld      r24, Z
     21c:       85 ff           sbrs    r24, 5
     21e:       f5 cf           rjmp    .-22            ; 0x20a <HardwareSerial::write(unsigned char)+0x34>
     220:       ce 01           movw    r24, r28
     222:       0e 94 ca 00     call    0x194   ; 0x194 <HardwareSerial::_tx_udr_empty_irq()>
     226:       f1 cf           rjmp    .-30            ; 0x20a <HardwareSerial::write(unsigned char)+0x34>
     228:       8b 8d           ldd     r24, Y+27       ; 0x1b
     22a:       fe 01           movw    r30, r28
     22c:       e8 0f           add     r30, r24
     22e:       f1 1d           adc     r31, r1
     230:       e3 5a           subi    r30, 0xA3       ; 163
     232:       ff 4f           sbci    r31, 0xFF       ; 255
     234:       f0 82           st      Z, r15
     236:       0b 8f           std     Y+27, r16       ; 0x1b
     238:       ea 89           ldd     r30, Y+18       ; 0x12
     23a:       fb 89           ldd     r31, Y+19       ; 0x13
     23c:       80 81           ld      r24, Z
     23e:       80 62           ori     r24, 0x20       ; 32
     240:       07 c0           rjmp    .+14            ; 0x250 <HardwareSerial::write(unsigned char)+0x7a>
     242:       ee 89           ldd     r30, Y+22       ; 0x16
     244:       ff 89           ldd     r31, Y+23       ; 0x17
     246:       60 83           st      Z, r22
     248:       e8 89           ldd     r30, Y+16       ; 0x10
     24a:       f9 89           ldd     r31, Y+17       ; 0x11
     24c:       80 81           ld      r24, Z
     24e:       80 64           ori     r24, 0x40       ; 64
     250:       80 83           st      Z, r24
     252:       81 e0           ldi     r24, 0x01       ; 1
     254:       90 e0           ldi     r25, 0x00       ; 0
     256:       df 91           pop     r29
     258:       cf 91           pop     r28
     25a:       1f 91           pop     r17
     25c:       0f 91           pop     r16
     25e:       ff 90           pop     r15
     260:       ef 90           pop     r14
     262:       08 95           ret

00000264 <HardwareSerial::flush()>:
     264:       cf 93           push    r28
     266:       df 93           push    r29
     268:       ec 01           movw    r28, r24
     26a:       88 8d           ldd     r24, Y+24       ; 0x18
     26c:       88 23           and     r24, r24
     26e:       c9 f0           breq    .+50            ; 0x2a2 <HardwareSerial::flush()+0x3e>
     270:       ea 89           ldd     r30, Y+18       ; 0x12
     272:       fb 89           ldd     r31, Y+19       ; 0x13
     274:       80 81           ld      r24, Z
     276:       85 fd           sbrc    r24, 5
     278:       05 c0           rjmp    .+10            ; 0x284 <HardwareSerial::flush()+0x20>
     27a:       a8 89           ldd     r26, Y+16       ; 0x10
     27c:       b9 89           ldd     r27, Y+17       ; 0x11
     27e:       8c 91           ld      r24, X
     280:       86 fd           sbrc    r24, 6
     282:       0f c0           rjmp    .+30            ; 0x2a2 <HardwareSerial::flush()+0x3e>
     284:       0f b6           in      r0, 0x3f        ; 63
     286:       07 fc           sbrc    r0, 7
     288:       f5 cf           rjmp    .-22            ; 0x274 <HardwareSerial::flush()+0x10>
     28a:       80 81           ld      r24, Z
     28c:       85 ff           sbrs    r24, 5
     28e:       f2 cf           rjmp    .-28            ; 0x274 <HardwareSerial::flush()+0x10>
     290:       a8 89           ldd     r26, Y+16       ; 0x10
     292:       b9 89           ldd     r27, Y+17       ; 0x11
     294:       8c 91           ld      r24, X
     296:       85 ff           sbrs    r24, 5
     298:       ed cf           rjmp    .-38            ; 0x274 <HardwareSerial::flush()+0x10>
     29a:       ce 01           movw    r24, r28
     29c:       0e 94 ca 00     call    0x194   ; 0x194 <HardwareSerial::_tx_udr_empty_irq()>
     2a0:       e7 cf           rjmp    .-50            ; 0x270 <HardwareSerial::flush()+0xc>
     2a2:       df 91           pop     r29
     2a4:       cf 91           pop     r28
     2a6:       08 95           ret

000002a8 <Serial0_available()>:
     2a8:       84 e5           ldi     r24, 0x54       ; 84
     2aa:       91 e0           ldi     r25, 0x01       ; 1
     2ac:       0e 94 be 00     call    0x17c   ; 0x17c <HardwareSerial::available()>
     2b0:       21 e0           ldi     r18, 0x01       ; 1
     2b2:       89 2b           or      r24, r25
     2b4:       09 f4           brne    .+2             ; 0x2b8 <Serial0_available()+0x10>
     2b6:       20 e0           ldi     r18, 0x00       ; 0
     2b8:       82 2f           mov     r24, r18
     2ba:       08 95           ret

000002bc <serialEventRun()>:
     2bc:       80 e0           ldi     r24, 0x00       ; 0
     2be:       90 e0           ldi     r25, 0x00       ; 0
     2c0:       89 2b           or      r24, r25
     2c2:       29 f0           breq    .+10            ; 0x2ce <serialEventRun()+0x12>
     2c4:       0e 94 54 01     call    0x2a8   ; 0x2a8 <Serial0_available()>
     2c8:       81 11           cpse    r24, r1
     2ca:       0c 94 00 00     jmp     0       ; 0x0 <__vectors>
     2ce:       08 95           ret

000002d0 <Print::write(unsigned char const*, unsigned int)>:
     2d0:       cf 92           push    r12
     2d2:       df 92           push    r13
     2d4:       ef 92           push    r14
     2d6:       ff 92           push    r15
     2d8:       0f 93           push    r16
     2da:       1f 93           push    r17
     2dc:       cf 93           push    r28
     2de:       df 93           push    r29
     2e0:       6c 01           movw    r12, r24
     2e2:       7a 01           movw    r14, r20
     2e4:       8b 01           movw    r16, r22
     2e6:       c0 e0           ldi     r28, 0x00       ; 0
     2e8:       d0 e0           ldi     r29, 0x00       ; 0
     2ea:       ce 15           cp      r28, r14
     2ec:       df 05           cpc     r29, r15
     2ee:       89 f0           breq    .+34            ; 0x312 <Print::write(unsigned char const*, unsigned int)+0x42>
     2f0:       d8 01           movw    r26, r16
     2f2:       6d 91           ld      r22, X+
     2f4:       8d 01           movw    r16, r26
     2f6:       d6 01           movw    r26, r12
     2f8:       ed 91           ld      r30, X+
     2fa:       fc 91           ld      r31, X
     2fc:       01 90           ld      r0, Z+
     2fe:       f0 81           ld      r31, Z
     300:       e0 2d           mov     r30, r0
     302:       c6 01           movw    r24, r12
     304:       09 95           icall
     306:       89 2b           or      r24, r25
     308:       11 f4           brne    .+4             ; 0x30e <Print::write(unsigned char const*, unsigned int)+0x3e>
     30a:       7e 01           movw    r14, r28
     30c:       02 c0           rjmp    .+4             ; 0x312 <Print::write(unsigned char const*, unsigned int)+0x42>
     30e:       21 96           adiw    r28, 0x01       ; 1
     310:       ec cf           rjmp    .-40            ; 0x2ea <Print::write(unsigned char const*, unsigned int)+0x1a>
     312:       c7 01           movw    r24, r14
     314:       df 91           pop     r29
     316:       cf 91           pop     r28
     318:       1f 91           pop     r17
     31a:       0f 91           pop     r16
     31c:       ff 90           pop     r15
     31e:       ef 90           pop     r14
     320:       df 90           pop     r13
     322:       cf 90           pop     r12
     324:       08 95           ret

00000326 <digitalWrite>:
     326:       90 e0           ldi     r25, 0x00       ; 0
     328:       fc 01           movw    r30, r24
     32a:       e4 58           subi    r30, 0x84       ; 132
     32c:       ff 4f           sbci    r31, 0xFF       ; 255
     32e:       34 91           lpm     r19, Z
     330:       fc 01           movw    r30, r24
     332:       e0 57           subi    r30, 0x70       ; 112
     334:       ff 4f           sbci    r31, 0xFF       ; 255
     336:       24 91           lpm     r18, Z
     338:       fc 01           movw    r30, r24
     33a:       e2 55           subi    r30, 0x52       ; 82
     33c:       ff 4f           sbci    r31, 0xFF       ; 255
     33e:       e4 91           lpm     r30, Z
     340:       ee 23           and     r30, r30
     342:       09 f4           brne    .+2             ; 0x346 <digitalWrite+0x20>
     344:       3b c0           rjmp    .+118           ; 0x3bc <digitalWrite+0x96>
     346:       33 23           and     r19, r19
     348:       39 f1           breq    .+78            ; 0x398 <digitalWrite+0x72>
     34a:       33 30           cpi     r19, 0x03       ; 3
     34c:       91 f0           breq    .+36            ; 0x372 <digitalWrite+0x4c>
     34e:       38 f4           brcc    .+14            ; 0x35e <digitalWrite+0x38>
     350:       31 30           cpi     r19, 0x01       ; 1
     352:       a9 f0           breq    .+42            ; 0x37e <digitalWrite+0x58>
     354:       32 30           cpi     r19, 0x02       ; 2
     356:       01 f5           brne    .+64            ; 0x398 <digitalWrite+0x72>
     358:       84 b5           in      r24, 0x24       ; 36
     35a:       8f 7d           andi    r24, 0xDF       ; 223
     35c:       12 c0           rjmp    .+36            ; 0x382 <digitalWrite+0x5c>
     35e:       37 30           cpi     r19, 0x07       ; 7
     360:       91 f0           breq    .+36            ; 0x386 <digitalWrite+0x60>
     362:       38 30           cpi     r19, 0x08       ; 8
     364:       a1 f0           breq    .+40            ; 0x38e <digitalWrite+0x68>
     366:       34 30           cpi     r19, 0x04       ; 4
     368:       b9 f4           brne    .+46            ; 0x398 <digitalWrite+0x72>
     36a:       80 91 80 00     lds     r24, 0x0080     ; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     36e:       8f 7d           andi    r24, 0xDF       ; 223
     370:       03 c0           rjmp    .+6             ; 0x378 <digitalWrite+0x52>
     372:       80 91 80 00     lds     r24, 0x0080     ; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     376:       8f 77           andi    r24, 0x7F       ; 127
     378:       80 93 80 00     sts     0x0080, r24     ; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     37c:       0d c0           rjmp    .+26            ; 0x398 <digitalWrite+0x72>
     37e:       84 b5           in      r24, 0x24       ; 36
     380:       8f 77           andi    r24, 0x7F       ; 127
     382:       84 bd           out     0x24, r24       ; 36
     384:       09 c0           rjmp    .+18            ; 0x398 <digitalWrite+0x72>
     386:       80 91 b0 00     lds     r24, 0x00B0     ; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     38a:       8f 77           andi    r24, 0x7F       ; 127
     38c:       03 c0           rjmp    .+6             ; 0x394 <digitalWrite+0x6e>
     38e:       80 91 b0 00     lds     r24, 0x00B0     ; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     392:       8f 7d           andi    r24, 0xDF       ; 223
     394:       80 93 b0 00     sts     0x00B0, r24     ; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     398:       f0 e0           ldi     r31, 0x00       ; 0
     39a:       ee 0f           add     r30, r30
     39c:       ff 1f           adc     r31, r31
     39e:       ec 55           subi    r30, 0x5C       ; 92
     3a0:       ff 4f           sbci    r31, 0xFF       ; 255
     3a2:       a5 91           lpm     r26, Z+
     3a4:       b4 91           lpm     r27, Z
     3a6:       8f b7           in      r24, 0x3f       ; 63
     3a8:       f8 94           cli
     3aa:       ec 91           ld      r30, X
     3ac:       61 11           cpse    r22, r1
     3ae:       03 c0           rjmp    .+6             ; 0x3b6 <digitalWrite+0x90>
     3b0:       20 95           com     r18
     3b2:       2e 23           and     r18, r30
     3b4:       01 c0           rjmp    .+2             ; 0x3b8 <digitalWrite+0x92>
     3b6:       2e 2b           or      r18, r30
     3b8:       2c 93           st      X, r18
     3ba:       8f bf           out     0x3f, r24       ; 63
     3bc:       08 95           ret

000003be <noTone(unsigned char)>:
     3be:       90 91 00 01     lds     r25, 0x0100     ; 0x800100 <__data_start>
     3c2:       98 13           cpse    r25, r24
     3c4:       24 c0           rjmp    .+72            ; 0x40e <__LOCK_REGION_LENGTH__+0xe>
     3c6:       e2 ec           ldi     r30, 0xC2       ; 194
     3c8:       f0 e0           ldi     r31, 0x00       ; 0
     3ca:       e4 91           lpm     r30, Z
     3cc:       9f ef           ldi     r25, 0xFF       ; 255
     3ce:       90 93 00 01     sts     0x0100, r25     ; 0x800100 <__data_start>
     3d2:       e1 30           cpi     r30, 0x01       ; 1
     3d4:       b9 f0           breq    .+46            ; 0x404 <__LOCK_REGION_LENGTH__+0x4>
     3d6:       98 f0           brcs    .+38            ; 0x3fe <noTone(unsigned char)+0x40>
     3d8:       e2 30           cpi     r30, 0x02       ; 2
     3da:       c9 f4           brne    .+50            ; 0x40e <__LOCK_REGION_LENGTH__+0xe>
     3dc:       90 91 70 00     lds     r25, 0x0070     ; 0x800070 <__TEXT_REGION_LENGTH__+0x7e0070>
     3e0:       9d 7f           andi    r25, 0xFD       ; 253
     3e2:       90 93 70 00     sts     0x0070, r25     ; 0x800070 <__TEXT_REGION_LENGTH__+0x7e0070>
     3e6:       91 e0           ldi     r25, 0x01       ; 1
     3e8:       90 93 b0 00     sts     0x00B0, r25     ; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     3ec:       90 91 b1 00     lds     r25, 0x00B1     ; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
     3f0:       98 7f           andi    r25, 0xF8       ; 248
     3f2:       94 60           ori     r25, 0x04       ; 4
     3f4:       90 93 b1 00     sts     0x00B1, r25     ; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
     3f8:       10 92 b3 00     sts     0x00B3, r1      ; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     3fc:       08 c0           rjmp    .+16            ; 0x40e <__LOCK_REGION_LENGTH__+0xe>
     3fe:       10 92 6e 00     sts     0x006E, r1      ; 0x80006e <__TEXT_REGION_LENGTH__+0x7e006e>
     402:       05 c0           rjmp    .+10            ; 0x40e <__LOCK_REGION_LENGTH__+0xe>
     404:       90 91 6f 00     lds     r25, 0x006F     ; 0x80006f <__TEXT_REGION_LENGTH__+0x7e006f>
     408:       9d 7f           andi    r25, 0xFD       ; 253
     40a:       90 93 6f 00     sts     0x006F, r25     ; 0x80006f <__TEXT_REGION_LENGTH__+0x7e006f>
     40e:       60 e0           ldi     r22, 0x00       ; 0
     410:       0c 94 93 01     jmp     0x326   ; 0x326 <digitalWrite>

00000414 <pinMode>:
     414:       cf 93           push    r28
     416:       df 93           push    r29
     418:       90 e0           ldi     r25, 0x00       ; 0
     41a:       fc 01           movw    r30, r24
     41c:       e0 57           subi    r30, 0x70       ; 112
     41e:       ff 4f           sbci    r31, 0xFF       ; 255
     420:       24 91           lpm     r18, Z
     422:       fc 01           movw    r30, r24
     424:       e2 55           subi    r30, 0x52       ; 82
     426:       ff 4f           sbci    r31, 0xFF       ; 255
     428:       84 91           lpm     r24, Z
     42a:       88 23           and     r24, r24
     42c:       61 f1           breq    .+88            ; 0x486 <pinMode+0x72>
     42e:       90 e0           ldi     r25, 0x00       ; 0
     430:       88 0f           add     r24, r24
     432:       99 1f           adc     r25, r25
     434:       fc 01           movw    r30, r24
     436:       e8 59           subi    r30, 0x98       ; 152
     438:       ff 4f           sbci    r31, 0xFF       ; 255
     43a:       c5 91           lpm     r28, Z+
     43c:       d4 91           lpm     r29, Z
     43e:       fc 01           movw    r30, r24
     440:       ec 55           subi    r30, 0x5C       ; 92
     442:       ff 4f           sbci    r31, 0xFF       ; 255
     444:       a5 91           lpm     r26, Z+
     446:       b4 91           lpm     r27, Z
     448:       61 11           cpse    r22, r1
     44a:       09 c0           rjmp    .+18            ; 0x45e <pinMode+0x4a>
     44c:       9f b7           in      r25, 0x3f       ; 63
     44e:       f8 94           cli
     450:       88 81           ld      r24, Y
     452:       20 95           com     r18
     454:       82 23           and     r24, r18
     456:       88 83           st      Y, r24
     458:       ec 91           ld      r30, X
     45a:       2e 23           and     r18, r30
     45c:       0b c0           rjmp    .+22            ; 0x474 <pinMode+0x60>
     45e:       62 30           cpi     r22, 0x02       ; 2
     460:       61 f4           brne    .+24            ; 0x47a <pinMode+0x66>
     462:       9f b7           in      r25, 0x3f       ; 63
     464:       f8 94           cli
     466:       38 81           ld      r19, Y
     468:       82 2f           mov     r24, r18
     46a:       80 95           com     r24
     46c:       83 23           and     r24, r19
     46e:       88 83           st      Y, r24
     470:       ec 91           ld      r30, X
     472:       2e 2b           or      r18, r30
     474:       2c 93           st      X, r18
     476:       9f bf           out     0x3f, r25       ; 63
     478:       06 c0           rjmp    .+12            ; 0x486 <pinMode+0x72>
     47a:       8f b7           in      r24, 0x3f       ; 63
     47c:       f8 94           cli
     47e:       e8 81           ld      r30, Y
     480:       2e 2b           or      r18, r30
     482:       28 83           st      Y, r18
     484:       8f bf           out     0x3f, r24       ; 63
     486:       df 91           pop     r29
     488:       cf 91           pop     r28
     48a:       08 95           ret

0000048c <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]>:
     48c:       cf 93           push    r28
     48e:       90 91 00 01     lds     r25, 0x0100     ; 0x800100 <__data_start>
     492:       98 17           cp      r25, r24
     494:       21 f0           breq    .+8             ; 0x49e <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]+0x12>
     496:       9f 3f           cpi     r25, 0xFF       ; 255
     498:       09 f0           breq    .+2             ; 0x49c <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]+0x10>
     49a:       e1 c0           rjmp    .+450           ; 0x65e <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]+0x1d2>
     49c:       04 c0           rjmp    .+8             ; 0x4a6 <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]+0x1a>
     49e:       e2 ec           ldi     r30, 0xC2       ; 194
     4a0:       f0 e0           ldi     r31, 0x00       ; 0
     4a2:       c4 91           lpm     r28, Z
     4a4:       7f c0           rjmp    .+254           ; 0x5a4 <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]+0x118>
     4a6:       80 93 00 01     sts     0x0100, r24     ; 0x800100 <__data_start>
     4aa:       e2 ec           ldi     r30, 0xC2       ; 194
     4ac:       f0 e0           ldi     r31, 0x00       ; 0
     4ae:       e4 91           lpm     r30, Z
     4b0:       ef 3f           cpi     r30, 0xFF       ; 255
     4b2:       09 f4           brne    .+2             ; 0x4b6 <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]+0x2a>
     4b4:       d4 c0           rjmp    .+424           ; 0x65e <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]+0x1d2>
     4b6:       e1 30           cpi     r30, 0x01       ; 1
     4b8:       31 f1           breq    .+76            ; 0x506 <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]+0x7a>
     4ba:       e2 30           cpi     r30, 0x02       ; 2
     4bc:       09 f4           brne    .+2             ; 0x4c0 <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]+0x34>
     4be:       4a c0           rjmp    .+148           ; 0x554 <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]+0xc8>
     4c0:       e1 11           cpse    r30, r1
     4c2:       6f c0           rjmp    .+222           ; 0x5a2 <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]+0x116>
     4c4:       14 bc           out     0x24, r1        ; 36
     4c6:       15 bc           out     0x25, r1        ; 37
     4c8:       94 b5           in      r25, 0x24       ; 36
     4ca:       92 60           ori     r25, 0x02       ; 2
     4cc:       94 bd           out     0x24, r25       ; 36
     4ce:       95 b5           in      r25, 0x25       ; 37
     4d0:       91 60           ori     r25, 0x01       ; 1
     4d2:       95 bd           out     0x25, r25       ; 37
     4d4:       28 2f           mov     r18, r24
     4d6:       30 e0           ldi     r19, 0x00       ; 0
     4d8:       f9 01           movw    r30, r18
     4da:       e2 55           subi    r30, 0x52       ; 82
     4dc:       ff 4f           sbci    r31, 0xFF       ; 255
     4de:       e4 91           lpm     r30, Z
     4e0:       f0 e0           ldi     r31, 0x00       ; 0
     4e2:       ee 0f           add     r30, r30
     4e4:       ff 1f           adc     r31, r31
     4e6:       ec 55           subi    r30, 0x5C       ; 92
     4e8:       ff 4f           sbci    r31, 0xFF       ; 255
     4ea:       45 91           lpm     r20, Z+
     4ec:       54 91           lpm     r21, Z
     4ee:       50 93 47 01     sts     0x0147, r21     ; 0x800147 <timer0_pin_port+0x1>
     4f2:       40 93 46 01     sts     0x0146, r20     ; 0x800146 <timer0_pin_port>
     4f6:       f9 01           movw    r30, r18
     4f8:       e0 57           subi    r30, 0x70       ; 112
     4fa:       ff 4f           sbci    r31, 0xFF       ; 255
     4fc:       e4 91           lpm     r30, Z
     4fe:       e0 93 45 01     sts     0x0145, r30     ; 0x800145 <timer0_pin_mask>
     502:       c0 e0           ldi     r28, 0x00       ; 0
     504:       51 c0           rjmp    .+162           ; 0x5a8 <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]+0x11c>
     506:       10 92 80 00     sts     0x0080, r1      ; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     50a:       10 92 81 00     sts     0x0081, r1      ; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     50e:       90 91 81 00     lds     r25, 0x0081     ; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     512:       98 60           ori     r25, 0x08       ; 8
     514:       90 93 81 00     sts     0x0081, r25     ; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     518:       90 91 81 00     lds     r25, 0x0081     ; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     51c:       91 60           ori     r25, 0x01       ; 1
     51e:       90 93 81 00     sts     0x0081, r25     ; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     522:       28 2f           mov     r18, r24
     524:       30 e0           ldi     r19, 0x00       ; 0
     526:       f9 01           movw    r30, r18
     528:       e2 55           subi    r30, 0x52       ; 82
     52a:       ff 4f           sbci    r31, 0xFF       ; 255
     52c:       e4 91           lpm     r30, Z
     52e:       f0 e0           ldi     r31, 0x00       ; 0
     530:       ee 0f           add     r30, r30
     532:       ff 1f           adc     r31, r31
     534:       ec 55           subi    r30, 0x5C       ; 92
     536:       ff 4f           sbci    r31, 0xFF       ; 255
     538:       45 91           lpm     r20, Z+
     53a:       54 91           lpm     r21, Z
     53c:       50 93 44 01     sts     0x0144, r21     ; 0x800144 <timer1_pin_port+0x1>
     540:       40 93 43 01     sts     0x0143, r20     ; 0x800143 <timer1_pin_port>
     544:       f9 01           movw    r30, r18
     546:       e0 57           subi    r30, 0x70       ; 112
     548:       ff 4f           sbci    r31, 0xFF       ; 255
     54a:       e4 91           lpm     r30, Z
     54c:       e0 93 42 01     sts     0x0142, r30     ; 0x800142 <timer1_pin_mask>
     550:       c1 e0           ldi     r28, 0x01       ; 1
     552:       2a c0           rjmp    .+84            ; 0x5a8 <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]+0x11c>
     554:       10 92 b0 00     sts     0x00B0, r1      ; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     558:       10 92 b1 00     sts     0x00B1, r1      ; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
     55c:       90 91 b0 00     lds     r25, 0x00B0     ; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     560:       92 60           ori     r25, 0x02       ; 2
     562:       90 93 b0 00     sts     0x00B0, r25     ; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     566:       90 91 b1 00     lds     r25, 0x00B1     ; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
     56a:       91 60           ori     r25, 0x01       ; 1
     56c:       90 93 b1 00     sts     0x00B1, r25     ; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
     570:       28 2f           mov     r18, r24
     572:       30 e0           ldi     r19, 0x00       ; 0
     574:       f9 01           movw    r30, r18
     576:       e2 55           subi    r30, 0x52       ; 82
     578:       ff 4f           sbci    r31, 0xFF       ; 255
     57a:       e4 91           lpm     r30, Z
     57c:       f0 e0           ldi     r31, 0x00       ; 0
     57e:       ee 0f           add     r30, r30
     580:       ff 1f           adc     r31, r31
     582:       ec 55           subi    r30, 0x5C       ; 92
     584:       ff 4f           sbci    r31, 0xFF       ; 255
     586:       45 91           lpm     r20, Z+
     588:       54 91           lpm     r21, Z
     58a:       50 93 41 01     sts     0x0141, r21     ; 0x800141 <timer2_pin_port+0x1>
     58e:       40 93 40 01     sts     0x0140, r20     ; 0x800140 <timer2_pin_port>
     592:       f9 01           movw    r30, r18
     594:       e0 57           subi    r30, 0x70       ; 112
     596:       ff 4f           sbci    r31, 0xFF       ; 255
     598:       e4 91           lpm     r30, Z
     59a:       e0 93 3f 01     sts     0x013F, r30     ; 0x80013f <timer2_pin_mask>
     59e:       c2 e0           ldi     r28, 0x02       ; 2
     5a0:       03 c0           rjmp    .+6             ; 0x5a8 <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]+0x11c>
     5a2:       ce 2f           mov     r28, r30
     5a4:       c7 fd           sbrc    r28, 7
     5a6:       5b c0           rjmp    .+182           ; 0x65e <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]+0x1d2>
     5a8:       61 e0           ldi     r22, 0x01       ; 1
     5aa:       0e 94 0a 02     call    0x414   ; 0x414 <pinMode>
     5ae:       cc 23           and     r28, r28
     5b0:       09 f4           brne    .+2             ; 0x5b4 <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]+0x128>
     5b2:       3f c0           rjmp    .+126           ; 0x632 <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]+0x1a6>
     5b4:       c2 30           cpi     r28, 0x02       ; 2
     5b6:       a9 f1           breq    .+106           ; 0x622 <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]+0x196>
     5b8:       c1 30           cpi     r28, 0x01       ; 1
     5ba:       e9 f4           brne    .+58            ; 0x5f6 <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]+0x16a>
     5bc:       80 91 81 00     lds     r24, 0x0081     ; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     5c0:       88 7f           andi    r24, 0xF8       ; 248
     5c2:       81 60           ori     r24, 0x01       ; 1
     5c4:       80 93 81 00     sts     0x0081, r24     ; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     5c8:       8f e9           ldi     r24, 0x9F       ; 159
     5ca:       9f e0           ldi     r25, 0x0F       ; 15
     5cc:       90 93 89 00     sts     0x0089, r25     ; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     5d0:       80 93 88 00     sts     0x0088, r24     ; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     5d4:       8f ef           ldi     r24, 0xFF       ; 255
     5d6:       9f ef           ldi     r25, 0xFF       ; 255
     5d8:       dc 01           movw    r26, r24
     5da:       80 93 4c 01     sts     0x014C, r24     ; 0x80014c <timer1_toggle_count>
     5de:       90 93 4d 01     sts     0x014D, r25     ; 0x80014d <timer1_toggle_count+0x1>
     5e2:       a0 93 4e 01     sts     0x014E, r26     ; 0x80014e <timer1_toggle_count+0x2>
     5e6:       b0 93 4f 01     sts     0x014F, r27     ; 0x80014f <timer1_toggle_count+0x3>
     5ea:       80 91 6f 00     lds     r24, 0x006F     ; 0x80006f <__TEXT_REGION_LENGTH__+0x7e006f>
     5ee:       82 60           ori     r24, 0x02       ; 2
     5f0:       80 93 6f 00     sts     0x006F, r24     ; 0x80006f <__TEXT_REGION_LENGTH__+0x7e006f>
     5f4:       34 c0           rjmp    .+104           ; 0x65e <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]+0x1d2>
     5f6:       c2 30           cpi     r28, 0x02       ; 2
     5f8:       91 f5           brne    .+100           ; 0x65e <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]+0x1d2>
     5fa:       8f e9           ldi     r24, 0x9F       ; 159
     5fc:       80 93 b3 00     sts     0x00B3, r24     ; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     600:       8f ef           ldi     r24, 0xFF       ; 255
     602:       9f ef           ldi     r25, 0xFF       ; 255
     604:       dc 01           movw    r26, r24
     606:       80 93 48 01     sts     0x0148, r24     ; 0x800148 <timer2_toggle_count>
     60a:       90 93 49 01     sts     0x0149, r25     ; 0x800149 <timer2_toggle_count+0x1>
     60e:       a0 93 4a 01     sts     0x014A, r26     ; 0x80014a <timer2_toggle_count+0x2>
     612:       b0 93 4b 01     sts     0x014B, r27     ; 0x80014b <timer2_toggle_count+0x3>
     616:       80 91 70 00     lds     r24, 0x0070     ; 0x800070 <__TEXT_REGION_LENGTH__+0x7e0070>
     61a:       82 60           ori     r24, 0x02       ; 2
     61c:       80 93 70 00     sts     0x0070, r24     ; 0x800070 <__TEXT_REGION_LENGTH__+0x7e0070>
     620:       1e c0           rjmp    .+60            ; 0x65e <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]+0x1d2>
     622:       80 91 b1 00     lds     r24, 0x00B1     ; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
     626:       88 7f           andi    r24, 0xF8       ; 248
     628:       83 60           ori     r24, 0x03       ; 3
     62a:       80 93 b1 00     sts     0x00B1, r24     ; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
     62e:       8c e7           ldi     r24, 0x7C       ; 124
     630:       e5 cf           rjmp    .-54            ; 0x5fc <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]+0x170>
     632:       85 b5           in      r24, 0x25       ; 37
     634:       88 7f           andi    r24, 0xF8       ; 248
     636:       83 60           ori     r24, 0x03       ; 3
     638:       85 bd           out     0x25, r24       ; 37
     63a:       8d e3           ldi     r24, 0x3D       ; 61
     63c:       87 bd           out     0x27, r24       ; 39
     63e:       8f ef           ldi     r24, 0xFF       ; 255
     640:       9f ef           ldi     r25, 0xFF       ; 255
     642:       dc 01           movw    r26, r24
     644:       80 93 50 01     sts     0x0150, r24     ; 0x800150 <timer0_toggle_count>
     648:       90 93 51 01     sts     0x0151, r25     ; 0x800151 <timer0_toggle_count+0x1>
     64c:       a0 93 52 01     sts     0x0152, r26     ; 0x800152 <timer0_toggle_count+0x2>
     650:       b0 93 53 01     sts     0x0153, r27     ; 0x800153 <timer0_toggle_count+0x3>
     654:       80 91 6e 00     lds     r24, 0x006E     ; 0x80006e <__TEXT_REGION_LENGTH__+0x7e006e>
     658:       82 60           ori     r24, 0x02       ; 2
     65a:       80 93 6e 00     sts     0x006E, r24     ; 0x80006e <__TEXT_REGION_LENGTH__+0x7e006e>
     65e:       cf 91           pop     r28
     660:       08 95           ret

00000662 <micros>:
     662:       3f b7           in      r19, 0x3f       ; 63
     664:       f8 94           cli
     666:       80 91 35 01     lds     r24, 0x0135     ; 0x800135 <timer0_overflow_count>
     66a:       90 91 36 01     lds     r25, 0x0136     ; 0x800136 <timer0_overflow_count+0x1>
     66e:       a0 91 37 01     lds     r26, 0x0137     ; 0x800137 <timer0_overflow_count+0x2>
     672:       b0 91 38 01     lds     r27, 0x0138     ; 0x800138 <timer0_overflow_count+0x3>
     676:       26 b5           in      r18, 0x26       ; 38
     678:       a8 9b           sbis    0x15, 0 ; 21
     67a:       05 c0           rjmp    .+10            ; 0x686 <micros+0x24>
     67c:       2f 3f           cpi     r18, 0xFF       ; 255
     67e:       19 f0           breq    .+6             ; 0x686 <micros+0x24>
     680:       01 96           adiw    r24, 0x01       ; 1
     682:       a1 1d           adc     r26, r1
     684:       b1 1d           adc     r27, r1
     686:       3f bf           out     0x3f, r19       ; 63
     688:       ba 2f           mov     r27, r26
     68a:       a9 2f           mov     r26, r25
     68c:       98 2f           mov     r25, r24
     68e:       88 27           eor     r24, r24
     690:       82 0f           add     r24, r18
     692:       91 1d           adc     r25, r1
     694:       a1 1d           adc     r26, r1
     696:       b1 1d           adc     r27, r1
     698:       bc 01           movw    r22, r24
     69a:       cd 01           movw    r24, r26
     69c:       42 e0           ldi     r20, 0x02       ; 2
     69e:       66 0f           add     r22, r22
     6a0:       77 1f           adc     r23, r23
     6a2:       88 1f           adc     r24, r24
     6a4:       99 1f           adc     r25, r25
     6a6:       4a 95           dec     r20
     6a8:       d1 f7           brne    .-12            ; 0x69e <micros+0x3c>
     6aa:       08 95           ret

000006ac <delay>:
     6ac:       8f 92           push    r8
     6ae:       9f 92           push    r9
     6b0:       af 92           push    r10
     6b2:       bf 92           push    r11
     6b4:       cf 92           push    r12
     6b6:       df 92           push    r13
     6b8:       ef 92           push    r14
     6ba:       ff 92           push    r15
     6bc:       6b 01           movw    r12, r22
     6be:       7c 01           movw    r14, r24
     6c0:       0e 94 31 03     call    0x662   ; 0x662 <micros>
     6c4:       4b 01           movw    r8, r22
     6c6:       5c 01           movw    r10, r24
     6c8:       c1 14           cp      r12, r1
     6ca:       d1 04           cpc     r13, r1
     6cc:       e1 04           cpc     r14, r1
     6ce:       f1 04           cpc     r15, r1
     6d0:       f1 f0           breq    .+60            ; 0x70e <delay+0x62>
     6d2:       0e 94 31 03     call    0x662   ; 0x662 <micros>
     6d6:       dc 01           movw    r26, r24
     6d8:       cb 01           movw    r24, r22
     6da:       88 19           sub     r24, r8
     6dc:       99 09           sbc     r25, r9
     6de:       aa 09           sbc     r26, r10
     6e0:       bb 09           sbc     r27, r11
     6e2:       88 3e           cpi     r24, 0xE8       ; 232
     6e4:       93 40           sbci    r25, 0x03       ; 3
     6e6:       a1 05           cpc     r26, r1
     6e8:       b1 05           cpc     r27, r1
     6ea:       70 f3           brcs    .-36            ; 0x6c8 <delay+0x1c>
     6ec:       21 e0           ldi     r18, 0x01       ; 1
     6ee:       c2 1a           sub     r12, r18
     6f0:       d1 08           sbc     r13, r1
     6f2:       e1 08           sbc     r14, r1
     6f4:       f1 08           sbc     r15, r1
     6f6:       88 ee           ldi     r24, 0xE8       ; 232
     6f8:       88 0e           add     r8, r24
     6fa:       83 e0           ldi     r24, 0x03       ; 3
     6fc:       98 1e           adc     r9, r24
     6fe:       a1 1c           adc     r10, r1
     700:       b1 1c           adc     r11, r1
     702:       c1 14           cp      r12, r1
     704:       d1 04           cpc     r13, r1
     706:       e1 04           cpc     r14, r1
     708:       f1 04           cpc     r15, r1
     70a:       19 f7           brne    .-58            ; 0x6d2 <delay+0x26>
     70c:       dd cf           rjmp    .-70            ; 0x6c8 <delay+0x1c>
     70e:       ff 90           pop     r15
     710:       ef 90           pop     r14
     712:       df 90           pop     r13
     714:       cf 90           pop     r12
     716:       bf 90           pop     r11
     718:       af 90           pop     r10
     71a:       9f 90           pop     r9
     71c:       8f 90           pop     r8
     71e:       08 95           ret

00000720 <LiquidCrystal::pulseEnable()>:
     720:       cf 93           push    r28
     722:       df 93           push    r29
     724:       ec 01           movw    r28, r24
     726:       60 e0           ldi     r22, 0x00       ; 0
     728:       8e 81           ldd     r24, Y+6        ; 0x06
     72a:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     72e:       61 e0           ldi     r22, 0x01       ; 1
     730:       8e 81           ldd     r24, Y+6        ; 0x06
     732:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     736:       60 e0           ldi     r22, 0x00       ; 0
     738:       8e 81           ldd     r24, Y+6        ; 0x06
     73a:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     73e:       8b e8           ldi     r24, 0x8B       ; 139
     740:       91 e0           ldi     r25, 0x01       ; 1
     742:       01 97           sbiw    r24, 0x01       ; 1
     744:       f1 f7           brne    .-4             ; 0x742 <LiquidCrystal::pulseEnable()+0x22>
     746:       df 91           pop     r29
     748:       cf 91           pop     r28
     74a:       08 95           ret

0000074c <LiquidCrystal::write4bits(unsigned char)>:
     74c:       cf 92           push    r12
     74e:       df 92           push    r13
     750:       ef 92           push    r14
     752:       ff 92           push    r15
     754:       0f 93           push    r16
     756:       1f 93           push    r17
     758:       cf 93           push    r28
     75a:       df 93           push    r29
     75c:       7c 01           movw    r14, r24
     75e:       6c 01           movw    r12, r24
     760:       87 e0           ldi     r24, 0x07       ; 7
     762:       c8 0e           add     r12, r24
     764:       d1 1c           adc     r13, r1
     766:       c0 e0           ldi     r28, 0x00       ; 0
     768:       d0 e0           ldi     r29, 0x00       ; 0
     76a:       06 2f           mov     r16, r22
     76c:       10 e0           ldi     r17, 0x00       ; 0
     76e:       b8 01           movw    r22, r16
     770:       0c 2e           mov     r0, r28
     772:       02 c0           rjmp    .+4             ; 0x778 <LiquidCrystal::write4bits(unsigned char)+0x2c>
     774:       75 95           asr     r23
     776:       67 95           ror     r22
     778:       0a 94           dec     r0
     77a:       e2 f7           brpl    .-8             ; 0x774 <LiquidCrystal::write4bits(unsigned char)+0x28>
     77c:       61 70           andi    r22, 0x01       ; 1
     77e:       f6 01           movw    r30, r12
     780:       81 91           ld      r24, Z+
     782:       6f 01           movw    r12, r30
     784:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     788:       21 96           adiw    r28, 0x01       ; 1
     78a:       c4 30           cpi     r28, 0x04       ; 4
     78c:       d1 05           cpc     r29, r1
     78e:       79 f7           brne    .-34            ; 0x76e <LiquidCrystal::write4bits(unsigned char)+0x22>
     790:       c7 01           movw    r24, r14
     792:       df 91           pop     r29
     794:       cf 91           pop     r28
     796:       1f 91           pop     r17
     798:       0f 91           pop     r16
     79a:       ff 90           pop     r15
     79c:       ef 90           pop     r14
     79e:       df 90           pop     r13
     7a0:       cf 90           pop     r12
     7a2:       0c 94 90 03     jmp     0x720   ; 0x720 <LiquidCrystal::pulseEnable()>

000007a6 <LiquidCrystal::send(unsigned char, unsigned char)>:
     7a6:       cf 92           push    r12
     7a8:       df 92           push    r13
     7aa:       ef 92           push    r14
     7ac:       ff 92           push    r15
     7ae:       0f 93           push    r16
     7b0:       1f 93           push    r17
     7b2:       cf 93           push    r28
     7b4:       df 93           push    r29
     7b6:       ec 01           movw    r28, r24
     7b8:       f6 2e           mov     r15, r22
     7ba:       64 2f           mov     r22, r20
     7bc:       8c 81           ldd     r24, Y+4        ; 0x04
     7be:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     7c2:       8d 81           ldd     r24, Y+5        ; 0x05
     7c4:       8f 3f           cpi     r24, 0xFF       ; 255
     7c6:       19 f0           breq    .+6             ; 0x7ce <LiquidCrystal::send(unsigned char, unsigned char)+0x28>
     7c8:       60 e0           ldi     r22, 0x00       ; 0
     7ca:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     7ce:       8f 85           ldd     r24, Y+15       ; 0x0f
     7d0:       0f 2d           mov     r16, r15
     7d2:       10 e0           ldi     r17, 0x00       ; 0
     7d4:       84 ff           sbrs    r24, 4
     7d6:       25 c0           rjmp    .+74            ; 0x822 <LiquidCrystal::send(unsigned char, unsigned char)+0x7c>
     7d8:       6e 01           movw    r12, r28
     7da:       87 e0           ldi     r24, 0x07       ; 7
     7dc:       c8 0e           add     r12, r24
     7de:       d1 1c           adc     r13, r1
     7e0:       e1 2c           mov     r14, r1
     7e2:       f1 2c           mov     r15, r1
     7e4:       b8 01           movw    r22, r16
     7e6:       0e 2c           mov     r0, r14
     7e8:       02 c0           rjmp    .+4             ; 0x7ee <LiquidCrystal::send(unsigned char, unsigned char)+0x48>
     7ea:       75 95           asr     r23
     7ec:       67 95           ror     r22
     7ee:       0a 94           dec     r0
     7f0:       e2 f7           brpl    .-8             ; 0x7ea <LiquidCrystal::send(unsigned char, unsigned char)+0x44>
     7f2:       61 70           andi    r22, 0x01       ; 1
     7f4:       f6 01           movw    r30, r12
     7f6:       81 91           ld      r24, Z+
     7f8:       6f 01           movw    r12, r30
     7fa:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     7fe:       ff ef           ldi     r31, 0xFF       ; 255
     800:       ef 1a           sub     r14, r31
     802:       ff 0a           sbc     r15, r31
     804:       88 e0           ldi     r24, 0x08       ; 8
     806:       e8 16           cp      r14, r24
     808:       f1 04           cpc     r15, r1
     80a:       61 f7           brne    .-40            ; 0x7e4 <LiquidCrystal::send(unsigned char, unsigned char)+0x3e>
     80c:       ce 01           movw    r24, r28
     80e:       df 91           pop     r29
     810:       cf 91           pop     r28
     812:       1f 91           pop     r17
     814:       0f 91           pop     r16
     816:       ff 90           pop     r15
     818:       ef 90           pop     r14
     81a:       df 90           pop     r13
     81c:       cf 90           pop     r12
     81e:       0c 94 90 03     jmp     0x720   ; 0x720 <LiquidCrystal::pulseEnable()>
     822:       b8 01           movw    r22, r16
     824:       84 e0           ldi     r24, 0x04       ; 4
     826:       75 95           asr     r23
     828:       67 95           ror     r22
     82a:       8a 95           dec     r24
     82c:       e1 f7           brne    .-8             ; 0x826 <LiquidCrystal::send(unsigned char, unsigned char)+0x80>
     82e:       ce 01           movw    r24, r28
     830:       0e 94 a6 03     call    0x74c   ; 0x74c <LiquidCrystal::write4bits(unsigned char)>
     834:       6f 2d           mov     r22, r15
     836:       ce 01           movw    r24, r28
     838:       df 91           pop     r29
     83a:       cf 91           pop     r28
     83c:       1f 91           pop     r17
     83e:       0f 91           pop     r16
     840:       ff 90           pop     r15
     842:       ef 90           pop     r14
     844:       df 90           pop     r13
     846:       cf 90           pop     r12
     848:       0c 94 a6 03     jmp     0x74c   ; 0x74c <LiquidCrystal::write4bits(unsigned char)>

0000084c <LiquidCrystal::write(unsigned char)>:
     84c:       41 e0           ldi     r20, 0x01       ; 1
     84e:       0e 94 d3 03     call    0x7a6   ; 0x7a6 <LiquidCrystal::send(unsigned char, unsigned char)>
     852:       81 e0           ldi     r24, 0x01       ; 1
     854:       90 e0           ldi     r25, 0x00       ; 0
     856:       08 95           ret

00000858 <LiquidCrystal::command(unsigned char)>:
     858:       40 e0           ldi     r20, 0x00       ; 0
     85a:       0c 94 d3 03     jmp     0x7a6   ; 0x7a6 <LiquidCrystal::send(unsigned char, unsigned char)>

0000085e <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]>:
     85e:       ef 92           push    r14
     860:       ff 92           push    r15
     862:       0f 93           push    r16
     864:       1f 93           push    r17
     866:       cf 93           push    r28
     868:       df 93           push    r29
     86a:       ec 01           movw    r28, r24
     86c:       62 30           cpi     r22, 0x02       ; 2
     86e:       18 f0           brcs    .+6             ; 0x876 <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]+0x18>
     870:       8f 85           ldd     r24, Y+15       ; 0x0f
     872:       88 60           ori     r24, 0x08       ; 8
     874:       8f 87           std     Y+15, r24       ; 0x0f
     876:       6b 8b           std     Y+19, r22       ; 0x13
     878:       1c 8a           std     Y+20, r1        ; 0x14
     87a:       80 e4           ldi     r24, 0x40       ; 64
     87c:       8d 8b           std     Y+21, r24       ; 0x15
     87e:       80 e1           ldi     r24, 0x10       ; 16
     880:       8e 8b           std     Y+22, r24       ; 0x16
     882:       80 e5           ldi     r24, 0x50       ; 80
     884:       8f 8b           std     Y+23, r24       ; 0x17
     886:       61 e0           ldi     r22, 0x01       ; 1
     888:       8c 81           ldd     r24, Y+4        ; 0x04
     88a:       0e 94 0a 02     call    0x414   ; 0x414 <pinMode>
     88e:       8d 81           ldd     r24, Y+5        ; 0x05
     890:       8f 3f           cpi     r24, 0xFF       ; 255
     892:       19 f0           breq    .+6             ; 0x89a <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]+0x3c>
     894:       61 e0           ldi     r22, 0x01       ; 1
     896:       0e 94 0a 02     call    0x414   ; 0x414 <pinMode>
     89a:       61 e0           ldi     r22, 0x01       ; 1
     89c:       8e 81           ldd     r24, Y+6        ; 0x06
     89e:       0e 94 0a 02     call    0x414   ; 0x414 <pinMode>
     8a2:       7e 01           movw    r14, r28
     8a4:       87 e0           ldi     r24, 0x07       ; 7
     8a6:       e8 0e           add     r14, r24
     8a8:       f1 1c           adc     r15, r1
     8aa:       00 e0           ldi     r16, 0x00       ; 0
     8ac:       10 e0           ldi     r17, 0x00       ; 0
     8ae:       8f 85           ldd     r24, Y+15       ; 0x0f
     8b0:       84 fd           sbrc    r24, 4
     8b2:       03 c0           rjmp    .+6             ; 0x8ba <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]+0x5c>
     8b4:       84 e0           ldi     r24, 0x04       ; 4
     8b6:       90 e0           ldi     r25, 0x00       ; 0
     8b8:       02 c0           rjmp    .+4             ; 0x8be <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]+0x60>
     8ba:       88 e0           ldi     r24, 0x08       ; 8
     8bc:       90 e0           ldi     r25, 0x00       ; 0
     8be:       08 17           cp      r16, r24
     8c0:       19 07           cpc     r17, r25
     8c2:       4c f4           brge    .+18            ; 0x8d6 <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]+0x78>
     8c4:       61 e0           ldi     r22, 0x01       ; 1
     8c6:       f7 01           movw    r30, r14
     8c8:       81 91           ld      r24, Z+
     8ca:       7f 01           movw    r14, r30
     8cc:       0e 94 0a 02     call    0x414   ; 0x414 <pinMode>
     8d0:       0f 5f           subi    r16, 0xFF       ; 255
     8d2:       1f 4f           sbci    r17, 0xFF       ; 255
     8d4:       ec cf           rjmp    .-40            ; 0x8ae <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]+0x50>
     8d6:       8b e3           ldi     r24, 0x3B       ; 59
     8d8:       9d e0           ldi     r25, 0x0D       ; 13
     8da:       01 97           sbiw    r24, 0x01       ; 1
     8dc:       f1 f7           brne    .-4             ; 0x8da <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]+0x7c>
     8de:       60 e0           ldi     r22, 0x00       ; 0
     8e0:       8c 81           ldd     r24, Y+4        ; 0x04
     8e2:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     8e6:       60 e0           ldi     r22, 0x00       ; 0
     8e8:       8e 81           ldd     r24, Y+6        ; 0x06
     8ea:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     8ee:       8d 81           ldd     r24, Y+5        ; 0x05
     8f0:       8f 3f           cpi     r24, 0xFF       ; 255
     8f2:       19 f0           breq    .+6             ; 0x8fa <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]+0x9c>
     8f4:       60 e0           ldi     r22, 0x00       ; 0
     8f6:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     8fa:       6f 85           ldd     r22, Y+15       ; 0x0f
     8fc:       64 fd           sbrc    r22, 4
     8fe:       1d c0           rjmp    .+58            ; 0x93a <__stack+0x3b>
     900:       63 e0           ldi     r22, 0x03       ; 3
     902:       ce 01           movw    r24, r28
     904:       0e 94 a6 03     call    0x74c   ; 0x74c <LiquidCrystal::write4bits(unsigned char)>
     908:       0b e4           ldi     r16, 0x4B       ; 75
     90a:       16 e4           ldi     r17, 0x46       ; 70
     90c:       c8 01           movw    r24, r16
     90e:       01 97           sbiw    r24, 0x01       ; 1
     910:       f1 f7           brne    .-4             ; 0x90e <__stack+0xf>
     912:       63 e0           ldi     r22, 0x03       ; 3
     914:       ce 01           movw    r24, r28
     916:       0e 94 a6 03     call    0x74c   ; 0x74c <LiquidCrystal::write4bits(unsigned char)>
     91a:       c8 01           movw    r24, r16
     91c:       01 97           sbiw    r24, 0x01       ; 1
     91e:       f1 f7           brne    .-4             ; 0x91c <__stack+0x1d>
     920:       63 e0           ldi     r22, 0x03       ; 3
     922:       ce 01           movw    r24, r28
     924:       0e 94 a6 03     call    0x74c   ; 0x74c <LiquidCrystal::write4bits(unsigned char)>
     928:       83 e5           ldi     r24, 0x53       ; 83
     92a:       92 e0           ldi     r25, 0x02       ; 2
     92c:       01 97           sbiw    r24, 0x01       ; 1
     92e:       f1 f7           brne    .-4             ; 0x92c <__stack+0x2d>
     930:       62 e0           ldi     r22, 0x02       ; 2
     932:       ce 01           movw    r24, r28
     934:       0e 94 a6 03     call    0x74c   ; 0x74c <LiquidCrystal::write4bits(unsigned char)>
     938:       16 c0           rjmp    .+44            ; 0x966 <__stack+0x67>
     93a:       60 62           ori     r22, 0x20       ; 32
     93c:       ce 01           movw    r24, r28
     93e:       0e 94 2c 04     call    0x858   ; 0x858 <LiquidCrystal::command(unsigned char)>
     942:       8b e4           ldi     r24, 0x4B       ; 75
     944:       96 e4           ldi     r25, 0x46       ; 70
     946:       01 97           sbiw    r24, 0x01       ; 1
     948:       f1 f7           brne    .-4             ; 0x946 <__stack+0x47>
     94a:       6f 85           ldd     r22, Y+15       ; 0x0f
     94c:       60 62           ori     r22, 0x20       ; 32
     94e:       ce 01           movw    r24, r28
     950:       0e 94 2c 04     call    0x858   ; 0x858 <LiquidCrystal::command(unsigned char)>
     954:       83 e5           ldi     r24, 0x53       ; 83
     956:       92 e0           ldi     r25, 0x02       ; 2
     958:       01 97           sbiw    r24, 0x01       ; 1
     95a:       f1 f7           brne    .-4             ; 0x958 <__stack+0x59>
     95c:       6f 85           ldd     r22, Y+15       ; 0x0f
     95e:       60 62           ori     r22, 0x20       ; 32
     960:       ce 01           movw    r24, r28
     962:       0e 94 2c 04     call    0x858   ; 0x858 <LiquidCrystal::command(unsigned char)>
     966:       6f 85           ldd     r22, Y+15       ; 0x0f
     968:       60 62           ori     r22, 0x20       ; 32
     96a:       ce 01           movw    r24, r28
     96c:       0e 94 2c 04     call    0x858   ; 0x858 <LiquidCrystal::command(unsigned char)>
     970:       84 e0           ldi     r24, 0x04       ; 4
     972:       88 8b           std     Y+16, r24       ; 0x10
     974:       6c e0           ldi     r22, 0x0C       ; 12
     976:       ce 01           movw    r24, r28
     978:       0e 94 2c 04     call    0x858   ; 0x858 <LiquidCrystal::command(unsigned char)>
     97c:       61 e0           ldi     r22, 0x01       ; 1
     97e:       ce 01           movw    r24, r28
     980:       0e 94 2c 04     call    0x858   ; 0x858 <LiquidCrystal::command(unsigned char)>
     984:       8b e3           ldi     r24, 0x3B       ; 59
     986:       9f e1           ldi     r25, 0x1F       ; 31
     988:       01 97           sbiw    r24, 0x01       ; 1
     98a:       f1 f7           brne    .-4             ; 0x988 <__stack+0x89>
     98c:       82 e0           ldi     r24, 0x02       ; 2
     98e:       89 8b           std     Y+17, r24       ; 0x11
     990:       66 e0           ldi     r22, 0x06       ; 6
     992:       ce 01           movw    r24, r28
     994:       df 91           pop     r29
     996:       cf 91           pop     r28
     998:       1f 91           pop     r17
     99a:       0f 91           pop     r16
     99c:       ff 90           pop     r15
     99e:       ef 90           pop     r14
     9a0:       0c 94 2c 04     jmp     0x858   ; 0x858 <LiquidCrystal::command(unsigned char)>

000009a4 <Print::flush()>:
     9a4:       08 95           ret

000009a6 <Print::availableForWrite()>:
     9a6:       80 e0           ldi     r24, 0x00       ; 0
     9a8:       90 e0           ldi     r25, 0x00       ; 0
     9aa:       08 95           ret

000009ac <__cxa_pure_virtual>:
     9ac:       0e 94 36 0a     call    0x146c  ; 0x146c <abort>

000009b0 <Print::write(char const*)>:
     9b0:       61 15           cp      r22, r1
     9b2:       71 05           cpc     r23, r1
     9b4:       79 f0           breq    .+30            ; 0x9d4 <Print::write(char const*)+0x24>
     9b6:       fb 01           movw    r30, r22
     9b8:       01 90           ld      r0, Z+
     9ba:       00 20           and     r0, r0
     9bc:       e9 f7           brne    .-6             ; 0x9b8 <Print::write(char const*)+0x8>
     9be:       31 97           sbiw    r30, 0x01       ; 1
     9c0:       af 01           movw    r20, r30
     9c2:       46 1b           sub     r20, r22
     9c4:       57 0b           sbc     r21, r23
     9c6:       dc 01           movw    r26, r24
     9c8:       ed 91           ld      r30, X+
     9ca:       fc 91           ld      r31, X
     9cc:       02 80           ldd     r0, Z+2 ; 0x02
     9ce:       f3 81           ldd     r31, Z+3        ; 0x03
     9d0:       e0 2d           mov     r30, r0
     9d2:       09 94           ijmp
     9d4:       80 e0           ldi     r24, 0x00       ; 0
     9d6:       90 e0           ldi     r25, 0x00       ; 0
     9d8:       08 95           ret

000009da <Print::printNumber(unsigned long, unsigned char)>:
     9da:       4f 92           push    r4
     9dc:       5f 92           push    r5
     9de:       6f 92           push    r6
     9e0:       7f 92           push    r7
     9e2:       ef 92           push    r14
     9e4:       ff 92           push    r15
     9e6:       0f 93           push    r16
     9e8:       1f 93           push    r17
     9ea:       cf 93           push    r28
     9ec:       df 93           push    r29
     9ee:       cd b7           in      r28, 0x3d       ; 61
     9f0:       de b7           in      r29, 0x3e       ; 62
     9f2:       a1 97           sbiw    r28, 0x21       ; 33
     9f4:       0f b6           in      r0, 0x3f        ; 63
     9f6:       f8 94           cli
     9f8:       de bf           out     0x3e, r29       ; 62
     9fa:       0f be           out     0x3f, r0        ; 63
     9fc:       cd bf           out     0x3d, r28       ; 61
     9fe:       7c 01           movw    r14, r24
     a00:       fa 01           movw    r30, r20
     a02:       cb 01           movw    r24, r22
     a04:       19 a2           std     Y+33, r1        ; 0x21
     a06:       22 30           cpi     r18, 0x02       ; 2
     a08:       08 f4           brcc    .+2             ; 0xa0c <Print::printNumber(unsigned long, unsigned char)+0x32>
     a0a:       2a e0           ldi     r18, 0x0A       ; 10
     a0c:       8e 01           movw    r16, r28
     a0e:       0f 5d           subi    r16, 0xDF       ; 223
     a10:       1f 4f           sbci    r17, 0xFF       ; 255
     a12:       42 2e           mov     r4, r18
     a14:       51 2c           mov     r5, r1
     a16:       61 2c           mov     r6, r1
     a18:       71 2c           mov     r7, r1
     a1a:       bf 01           movw    r22, r30
     a1c:       a3 01           movw    r20, r6
     a1e:       92 01           movw    r18, r4
     a20:       0e 94 0e 0a     call    0x141c  ; 0x141c <__udivmodsi4>
     a24:       f9 01           movw    r30, r18
     a26:       ca 01           movw    r24, r20
     a28:       01 50           subi    r16, 0x01       ; 1
     a2a:       11 09           sbc     r17, r1
     a2c:       6a 30           cpi     r22, 0x0A       ; 10
     a2e:       14 f4           brge    .+4             ; 0xa34 <Print::printNumber(unsigned long, unsigned char)+0x5a>
     a30:       60 5d           subi    r22, 0xD0       ; 208
     a32:       01 c0           rjmp    .+2             ; 0xa36 <Print::printNumber(unsigned long, unsigned char)+0x5c>
     a34:       69 5c           subi    r22, 0xC9       ; 201
     a36:       d8 01           movw    r26, r16
     a38:       6c 93           st      X, r22
     a3a:       23 2b           or      r18, r19
     a3c:       24 2b           or      r18, r20
     a3e:       25 2b           or      r18, r21
     a40:       61 f7           brne    .-40            ; 0xa1a <Print::printNumber(unsigned long, unsigned char)+0x40>
     a42:       b8 01           movw    r22, r16
     a44:       c7 01           movw    r24, r14
     a46:       0e 94 d8 04     call    0x9b0   ; 0x9b0 <Print::write(char const*)>
     a4a:       a1 96           adiw    r28, 0x21       ; 33
     a4c:       0f b6           in      r0, 0x3f        ; 63
     a4e:       f8 94           cli
     a50:       de bf           out     0x3e, r29       ; 62
     a52:       0f be           out     0x3f, r0        ; 63
     a54:       cd bf           out     0x3d, r28       ; 61
     a56:       df 91           pop     r29
     a58:       cf 91           pop     r28
     a5a:       1f 91           pop     r17
     a5c:       0f 91           pop     r16
     a5e:       ff 90           pop     r15
     a60:       ef 90           pop     r14
     a62:       7f 90           pop     r7
     a64:       6f 90           pop     r6
     a66:       5f 90           pop     r5
     a68:       4f 90           pop     r4
     a6a:       08 95           ret

00000a6c <Print::print(long, int) [clone .part.2]>:
     a6c:       cf 92           push    r12
     a6e:       df 92           push    r13
     a70:       ef 92           push    r14
     a72:       ff 92           push    r15
     a74:       0f 93           push    r16
     a76:       1f 93           push    r17
     a78:       cf 93           push    r28
     a7a:       df 93           push    r29
     a7c:       ec 01           movw    r28, r24
     a7e:       6a 01           movw    r12, r20
     a80:       7b 01           movw    r14, r22
     a82:       e8 81           ld      r30, Y
     a84:       f9 81           ldd     r31, Y+1        ; 0x01
     a86:       01 90           ld      r0, Z+
     a88:       f0 81           ld      r31, Z
     a8a:       e0 2d           mov     r30, r0
     a8c:       6d e2           ldi     r22, 0x2D       ; 45
     a8e:       09 95           icall
     a90:       8c 01           movw    r16, r24
     a92:       44 27           eor     r20, r20
     a94:       55 27           eor     r21, r21
     a96:       ba 01           movw    r22, r20
     a98:       4c 19           sub     r20, r12
     a9a:       5d 09           sbc     r21, r13
     a9c:       6e 09           sbc     r22, r14
     a9e:       7f 09           sbc     r23, r15
     aa0:       2a e0           ldi     r18, 0x0A       ; 10
     aa2:       ce 01           movw    r24, r28
     aa4:       0e 94 ed 04     call    0x9da   ; 0x9da <Print::printNumber(unsigned long, unsigned char)>
     aa8:       80 0f           add     r24, r16
     aaa:       91 1f           adc     r25, r17
     aac:       df 91           pop     r29
     aae:       cf 91           pop     r28
     ab0:       1f 91           pop     r17
     ab2:       0f 91           pop     r16
     ab4:       ff 90           pop     r15
     ab6:       ef 90           pop     r14
     ab8:       df 90           pop     r13
     aba:       cf 90           pop     r12
     abc:       08 95           ret

00000abe <__vector_7>:
     abe:       1f 92           push    r1
     ac0:       0f 92           push    r0
     ac2:       0f b6           in      r0, 0x3f        ; 63
     ac4:       0f 92           push    r0
     ac6:       11 24           eor     r1, r1
     ac8:       2f 93           push    r18
     aca:       3f 93           push    r19
     acc:       4f 93           push    r20
     ace:       5f 93           push    r21
     ad0:       6f 93           push    r22
     ad2:       7f 93           push    r23
     ad4:       8f 93           push    r24
     ad6:       9f 93           push    r25
     ad8:       af 93           push    r26
     ada:       bf 93           push    r27
     adc:       ef 93           push    r30
     ade:       ff 93           push    r31
     ae0:       80 91 48 01     lds     r24, 0x0148     ; 0x800148 <timer2_toggle_count>
     ae4:       90 91 49 01     lds     r25, 0x0149     ; 0x800149 <timer2_toggle_count+0x1>
     ae8:       a0 91 4a 01     lds     r26, 0x014A     ; 0x80014a <timer2_toggle_count+0x2>
     aec:       b0 91 4b 01     lds     r27, 0x014B     ; 0x80014b <timer2_toggle_count+0x3>
     af0:       89 2b           or      r24, r25
     af2:       8a 2b           or      r24, r26
     af4:       8b 2b           or      r24, r27
     af6:       51 f1           breq    .+84            ; 0xb4c <__vector_7+0x8e>
     af8:       80 91 3f 01     lds     r24, 0x013F     ; 0x80013f <timer2_pin_mask>
     afc:       e0 91 40 01     lds     r30, 0x0140     ; 0x800140 <timer2_pin_port>
     b00:       f0 91 41 01     lds     r31, 0x0141     ; 0x800141 <timer2_pin_port+0x1>
     b04:       90 81           ld      r25, Z
     b06:       89 27           eor     r24, r25
     b08:       80 83           st      Z, r24
     b0a:       80 91 48 01     lds     r24, 0x0148     ; 0x800148 <timer2_toggle_count>
     b0e:       90 91 49 01     lds     r25, 0x0149     ; 0x800149 <timer2_toggle_count+0x1>
     b12:       a0 91 4a 01     lds     r26, 0x014A     ; 0x80014a <timer2_toggle_count+0x2>
     b16:       b0 91 4b 01     lds     r27, 0x014B     ; 0x80014b <timer2_toggle_count+0x3>
     b1a:       18 16           cp      r1, r24
     b1c:       19 06           cpc     r1, r25
     b1e:       1a 06           cpc     r1, r26
     b20:       1b 06           cpc     r1, r27
     b22:       c4 f4           brge    .+48            ; 0xb54 <__vector_7+0x96>
     b24:       80 91 48 01     lds     r24, 0x0148     ; 0x800148 <timer2_toggle_count>
     b28:       90 91 49 01     lds     r25, 0x0149     ; 0x800149 <timer2_toggle_count+0x1>
     b2c:       a0 91 4a 01     lds     r26, 0x014A     ; 0x80014a <timer2_toggle_count+0x2>
     b30:       b0 91 4b 01     lds     r27, 0x014B     ; 0x80014b <timer2_toggle_count+0x3>
     b34:       01 97           sbiw    r24, 0x01       ; 1
     b36:       a1 09           sbc     r26, r1
     b38:       b1 09           sbc     r27, r1
     b3a:       80 93 48 01     sts     0x0148, r24     ; 0x800148 <timer2_toggle_count>
     b3e:       90 93 49 01     sts     0x0149, r25     ; 0x800149 <timer2_toggle_count+0x1>
     b42:       a0 93 4a 01     sts     0x014A, r26     ; 0x80014a <timer2_toggle_count+0x2>
     b46:       b0 93 4b 01     sts     0x014B, r27     ; 0x80014b <timer2_toggle_count+0x3>
     b4a:       04 c0           rjmp    .+8             ; 0xb54 <__vector_7+0x96>
     b4c:       80 91 00 01     lds     r24, 0x0100     ; 0x800100 <__data_start>
     b50:       0e 94 df 01     call    0x3be   ; 0x3be <noTone(unsigned char)>
     b54:       ff 91           pop     r31
     b56:       ef 91           pop     r30
     b58:       bf 91           pop     r27
     b5a:       af 91           pop     r26
     b5c:       9f 91           pop     r25
     b5e:       8f 91           pop     r24
     b60:       7f 91           pop     r23
     b62:       6f 91           pop     r22
     b64:       5f 91           pop     r21
     b66:       4f 91           pop     r20
     b68:       3f 91           pop     r19
     b6a:       2f 91           pop     r18
     b6c:       0f 90           pop     r0
     b6e:       0f be           out     0x3f, r0        ; 63
     b70:       0f 90           pop     r0
     b72:       1f 90           pop     r1
     b74:       18 95           reti

00000b76 <__vector_19>:
     b76:       1f 92           push    r1
     b78:       0f 92           push    r0
     b7a:       0f b6           in      r0, 0x3f        ; 63
     b7c:       0f 92           push    r0
     b7e:       11 24           eor     r1, r1
     b80:       2f 93           push    r18
     b82:       3f 93           push    r19
     b84:       4f 93           push    r20
     b86:       5f 93           push    r21
     b88:       6f 93           push    r22
     b8a:       7f 93           push    r23
     b8c:       8f 93           push    r24
     b8e:       9f 93           push    r25
     b90:       af 93           push    r26
     b92:       bf 93           push    r27
     b94:       ef 93           push    r30
     b96:       ff 93           push    r31
     b98:       84 e5           ldi     r24, 0x54       ; 84
     b9a:       91 e0           ldi     r25, 0x01       ; 1
     b9c:       0e 94 ca 00     call    0x194   ; 0x194 <HardwareSerial::_tx_udr_empty_irq()>
     ba0:       ff 91           pop     r31
     ba2:       ef 91           pop     r30
     ba4:       bf 91           pop     r27
     ba6:       af 91           pop     r26
     ba8:       9f 91           pop     r25
     baa:       8f 91           pop     r24
     bac:       7f 91           pop     r23
     bae:       6f 91           pop     r22
     bb0:       5f 91           pop     r21
     bb2:       4f 91           pop     r20
     bb4:       3f 91           pop     r19
     bb6:       2f 91           pop     r18
     bb8:       0f 90           pop     r0
     bba:       0f be           out     0x3f, r0        ; 63
     bbc:       0f 90           pop     r0
     bbe:       1f 90           pop     r1
     bc0:       18 95           reti

00000bc2 <__vector_18>:
     bc2:       1f 92           push    r1
     bc4:       0f 92           push    r0
     bc6:       0f b6           in      r0, 0x3f        ; 63
     bc8:       0f 92           push    r0
     bca:       11 24           eor     r1, r1
     bcc:       2f 93           push    r18
     bce:       8f 93           push    r24
     bd0:       9f 93           push    r25
     bd2:       ef 93           push    r30
     bd4:       ff 93           push    r31
     bd6:       e0 91 64 01     lds     r30, 0x0164     ; 0x800164 <Serial+0x10>
     bda:       f0 91 65 01     lds     r31, 0x0165     ; 0x800165 <Serial+0x11>
     bde:       80 81           ld      r24, Z
     be0:       e0 91 6a 01     lds     r30, 0x016A     ; 0x80016a <Serial+0x16>
     be4:       f0 91 6b 01     lds     r31, 0x016B     ; 0x80016b <Serial+0x17>
     be8:       82 fd           sbrc    r24, 2
     bea:       12 c0           rjmp    .+36            ; 0xc10 <__vector_18+0x4e>
     bec:       90 81           ld      r25, Z
     bee:       80 91 6d 01     lds     r24, 0x016D     ; 0x80016d <Serial+0x19>
     bf2:       8f 5f           subi    r24, 0xFF       ; 255
     bf4:       8f 73           andi    r24, 0x3F       ; 63
     bf6:       20 91 6e 01     lds     r18, 0x016E     ; 0x80016e <Serial+0x1a>
     bfa:       82 17           cp      r24, r18
     bfc:       51 f0           breq    .+20            ; 0xc12 <__vector_18+0x50>
     bfe:       e0 91 6d 01     lds     r30, 0x016D     ; 0x80016d <Serial+0x19>
     c02:       f0 e0           ldi     r31, 0x00       ; 0
     c04:       ec 5a           subi    r30, 0xAC       ; 172
     c06:       fe 4f           sbci    r31, 0xFE       ; 254
     c08:       95 8f           std     Z+29, r25       ; 0x1d
     c0a:       80 93 6d 01     sts     0x016D, r24     ; 0x80016d <Serial+0x19>
     c0e:       01 c0           rjmp    .+2             ; 0xc12 <__vector_18+0x50>
     c10:       80 81           ld      r24, Z
     c12:       ff 91           pop     r31
     c14:       ef 91           pop     r30
     c16:       9f 91           pop     r25
     c18:       8f 91           pop     r24
     c1a:       2f 91           pop     r18
     c1c:       0f 90           pop     r0
     c1e:       0f be           out     0x3f, r0        ; 63
     c20:       0f 90           pop     r0
     c22:       1f 90           pop     r1
     c24:       18 95           reti

00000c26 <__vector_16>:
     c26:       1f 92           push    r1
     c28:       0f 92           push    r0
     c2a:       0f b6           in      r0, 0x3f        ; 63
     c2c:       0f 92           push    r0
     c2e:       11 24           eor     r1, r1
     c30:       2f 93           push    r18
     c32:       3f 93           push    r19
     c34:       8f 93           push    r24
     c36:       9f 93           push    r25
     c38:       af 93           push    r26
     c3a:       bf 93           push    r27
     c3c:       80 91 31 01     lds     r24, 0x0131     ; 0x800131 <timer0_millis>
     c40:       90 91 32 01     lds     r25, 0x0132     ; 0x800132 <timer0_millis+0x1>
     c44:       a0 91 33 01     lds     r26, 0x0133     ; 0x800133 <timer0_millis+0x2>
     c48:       b0 91 34 01     lds     r27, 0x0134     ; 0x800134 <timer0_millis+0x3>
     c4c:       30 91 30 01     lds     r19, 0x0130     ; 0x800130 <__data_end>
     c50:       23 e0           ldi     r18, 0x03       ; 3
     c52:       23 0f           add     r18, r19
     c54:       2d 37           cpi     r18, 0x7D       ; 125
     c56:       20 f4           brcc    .+8             ; 0xc60 <__vector_16+0x3a>
     c58:       01 96           adiw    r24, 0x01       ; 1
     c5a:       a1 1d           adc     r26, r1
     c5c:       b1 1d           adc     r27, r1
     c5e:       05 c0           rjmp    .+10            ; 0xc6a <__vector_16+0x44>
     c60:       26 e8           ldi     r18, 0x86       ; 134
     c62:       23 0f           add     r18, r19
     c64:       02 96           adiw    r24, 0x02       ; 2
     c66:       a1 1d           adc     r26, r1
     c68:       b1 1d           adc     r27, r1
     c6a:       20 93 30 01     sts     0x0130, r18     ; 0x800130 <__data_end>
     c6e:       80 93 31 01     sts     0x0131, r24     ; 0x800131 <timer0_millis>
     c72:       90 93 32 01     sts     0x0132, r25     ; 0x800132 <timer0_millis+0x1>
     c76:       a0 93 33 01     sts     0x0133, r26     ; 0x800133 <timer0_millis+0x2>
     c7a:       b0 93 34 01     sts     0x0134, r27     ; 0x800134 <timer0_millis+0x3>
     c7e:       80 91 35 01     lds     r24, 0x0135     ; 0x800135 <timer0_overflow_count>
     c82:       90 91 36 01     lds     r25, 0x0136     ; 0x800136 <timer0_overflow_count+0x1>
     c86:       a0 91 37 01     lds     r26, 0x0137     ; 0x800137 <timer0_overflow_count+0x2>
     c8a:       b0 91 38 01     lds     r27, 0x0138     ; 0x800138 <timer0_overflow_count+0x3>
     c8e:       01 96           adiw    r24, 0x01       ; 1
     c90:       a1 1d           adc     r26, r1
     c92:       b1 1d           adc     r27, r1
     c94:       80 93 35 01     sts     0x0135, r24     ; 0x800135 <timer0_overflow_count>
     c98:       90 93 36 01     sts     0x0136, r25     ; 0x800136 <timer0_overflow_count+0x1>
     c9c:       a0 93 37 01     sts     0x0137, r26     ; 0x800137 <timer0_overflow_count+0x2>
     ca0:       b0 93 38 01     sts     0x0138, r27     ; 0x800138 <timer0_overflow_count+0x3>
     ca4:       bf 91           pop     r27
     ca6:       af 91           pop     r26
     ca8:       9f 91           pop     r25
     caa:       8f 91           pop     r24
     cac:       3f 91           pop     r19
     cae:       2f 91           pop     r18
     cb0:       0f 90           pop     r0
     cb2:       0f be           out     0x3f, r0        ; 63
     cb4:       0f 90           pop     r0
     cb6:       1f 90           pop     r1
     cb8:       18 95           reti

00000cba <countPulseASM>:
     cba:       cf 92           push    r12
     cbc:       df 92           push    r13
     cbe:       ef 92           push    r14
     cc0:       ff 92           push    r15
     cc2:       0f 93           push    r16
     cc4:       1f 93           push    r17
     cc6:       e8 2f           mov     r30, r24
     cc8:       f9 2f           mov     r31, r25
     cca:       05 c0           rjmp    .+10            ; 0xcd6 <countPulseASM+0x1c>
     ccc:       01 50           subi    r16, 0x01       ; 1
     cce:       11 09           sbc     r17, r1
     cd0:       21 09           sbc     r18, r1
     cd2:       31 09           sbc     r19, r1
     cd4:       61 f1           breq    .+88            ; 0xd2e <countPulseASM+0x74>
     cd6:       90 81           ld      r25, Z
     cd8:       96 23           and     r25, r22
     cda:       94 17           cp      r25, r20
     cdc:       b9 f3           breq    .-18            ; 0xccc <countPulseASM+0x12>
     cde:       05 c0           rjmp    .+10            ; 0xcea <countPulseASM+0x30>
     ce0:       01 50           subi    r16, 0x01       ; 1
     ce2:       11 09           sbc     r17, r1
     ce4:       21 09           sbc     r18, r1
     ce6:       31 09           sbc     r19, r1
     ce8:       11 f1           breq    .+68            ; 0xd2e <countPulseASM+0x74>
     cea:       90 81           ld      r25, Z
     cec:       96 23           and     r25, r22
     cee:       94 13           cpse    r25, r20
     cf0:       f7 cf           rjmp    .-18            ; 0xce0 <countPulseASM+0x26>
     cf2:       c1 2c           mov     r12, r1
     cf4:       d1 2c           mov     r13, r1
     cf6:       e1 2c           mov     r14, r1
     cf8:       f1 2c           mov     r15, r1
     cfa:       0a c0           rjmp    .+20            ; 0xd10 <countPulseASM+0x56>
     cfc:       8f ef           ldi     r24, 0xFF       ; 255
     cfe:       c8 1a           sub     r12, r24
     d00:       d8 0a           sbc     r13, r24
     d02:       e8 0a           sbc     r14, r24
     d04:       f8 0a           sbc     r15, r24
     d06:       0c 15           cp      r16, r12
     d08:       1d 05           cpc     r17, r13
     d0a:       2e 05           cpc     r18, r14
     d0c:       3f 05           cpc     r19, r15
     d0e:       79 f0           breq    .+30            ; 0xd2e <countPulseASM+0x74>
     d10:       80 81           ld      r24, Z
     d12:       86 23           and     r24, r22
     d14:       84 17           cp      r24, r20
     d16:       91 f3           breq    .-28            ; 0xcfc <countPulseASM+0x42>
     d18:       6c 2d           mov     r22, r12
     d1a:       7d 2d           mov     r23, r13
     d1c:       8e 2d           mov     r24, r14
     d1e:       9f 2d           mov     r25, r15
     d20:       1f 91           pop     r17
     d22:       0f 91           pop     r16
     d24:       ff 90           pop     r15
     d26:       ef 90           pop     r14
     d28:       df 90           pop     r13
     d2a:       cf 90           pop     r12
     d2c:       08 95           ret
     d2e:       60 e0           ldi     r22, 0x00       ; 0
     d30:       70 e0           ldi     r23, 0x00       ; 0
     d32:       80 e0           ldi     r24, 0x00       ; 0
     d34:       90 e0           ldi     r25, 0x00       ; 0
     d36:       1f 91           pop     r17
     d38:       0f 91           pop     r16
     d3a:       ff 90           pop     r15
     d3c:       ef 90           pop     r14
     d3e:       df 90           pop     r13
     d40:       cf 90           pop     r12
     d42:       08 95           ret

00000d44 <global constructors keyed to 65535_0_Collision_detector_Code.ino.cpp.o.1906>:
     d44:       e4 e5           ldi     r30, 0x54       ; 84
     d46:       f1 e0           ldi     r31, 0x01       ; 1
     d48:       13 82           std     Z+3, r1 ; 0x03
     d4a:       12 82           std     Z+2, r1 ; 0x02
     d4c:       88 ee           ldi     r24, 0xE8       ; 232
     d4e:       93 e0           ldi     r25, 0x03       ; 3
     d50:       a0 e0           ldi     r26, 0x00       ; 0
     d52:       b0 e0           ldi     r27, 0x00       ; 0
     d54:       84 83           std     Z+4, r24        ; 0x04
     d56:       95 83           std     Z+5, r25        ; 0x05
     d58:       a6 83           std     Z+6, r26        ; 0x06
     d5a:       b7 83           std     Z+7, r27        ; 0x07
     d5c:       85 e0           ldi     r24, 0x05       ; 5
     d5e:       91 e0           ldi     r25, 0x01       ; 1
     d60:       91 83           std     Z+1, r25        ; 0x01
     d62:       80 83           st      Z, r24
     d64:       85 ec           ldi     r24, 0xC5       ; 197
     d66:       90 e0           ldi     r25, 0x00       ; 0
     d68:       95 87           std     Z+13, r25       ; 0x0d
     d6a:       84 87           std     Z+12, r24       ; 0x0c
     d6c:       84 ec           ldi     r24, 0xC4       ; 196
     d6e:       90 e0           ldi     r25, 0x00       ; 0
     d70:       97 87           std     Z+15, r25       ; 0x0f
     d72:       86 87           std     Z+14, r24       ; 0x0e
     d74:       80 ec           ldi     r24, 0xC0       ; 192
     d76:       90 e0           ldi     r25, 0x00       ; 0
     d78:       91 8b           std     Z+17, r25       ; 0x11
     d7a:       80 8b           std     Z+16, r24       ; 0x10
     d7c:       81 ec           ldi     r24, 0xC1       ; 193
     d7e:       90 e0           ldi     r25, 0x00       ; 0
     d80:       93 8b           std     Z+19, r25       ; 0x13
     d82:       82 8b           std     Z+18, r24       ; 0x12
     d84:       82 ec           ldi     r24, 0xC2       ; 194
     d86:       90 e0           ldi     r25, 0x00       ; 0
     d88:       95 8b           std     Z+21, r25       ; 0x15
     d8a:       84 8b           std     Z+20, r24       ; 0x14
     d8c:       86 ec           ldi     r24, 0xC6       ; 198
     d8e:       90 e0           ldi     r25, 0x00       ; 0
     d90:       97 8b           std     Z+23, r25       ; 0x17
     d92:       86 8b           std     Z+22, r24       ; 0x16
     d94:       11 8e           std     Z+25, r1        ; 0x19
     d96:       12 8e           std     Z+26, r1        ; 0x1a
     d98:       13 8e           std     Z+27, r1        ; 0x1b
     d9a:       14 8e           std     Z+28, r1        ; 0x1c
     d9c:       e1 ef           ldi     r30, 0xF1       ; 241
     d9e:       f1 e0           ldi     r31, 0x01       ; 1
     da0:       13 82           std     Z+3, r1 ; 0x03
     da2:       12 82           std     Z+2, r1 ; 0x02
     da4:       87 e1           ldi     r24, 0x17       ; 23
     da6:       91 e0           ldi     r25, 0x01       ; 1
     da8:       91 83           std     Z+1, r25        ; 0x01
     daa:       80 83           st      Z, r24
     dac:       14 82           std     Z+4, r1 ; 0x04
     dae:       8f ef           ldi     r24, 0xFF       ; 255
     db0:       85 83           std     Z+5, r24        ; 0x05
     db2:       81 e0           ldi     r24, 0x01       ; 1
     db4:       86 83           std     Z+6, r24        ; 0x06
     db6:       82 e0           ldi     r24, 0x02       ; 2
     db8:       87 83           std     Z+7, r24        ; 0x07
     dba:       83 e0           ldi     r24, 0x03       ; 3
     dbc:       80 87           std     Z+8, r24        ; 0x08
     dbe:       84 e0           ldi     r24, 0x04       ; 4
     dc0:       81 87           std     Z+9, r24        ; 0x09
     dc2:       85 e0           ldi     r24, 0x05       ; 5
     dc4:       82 87           std     Z+10, r24       ; 0x0a
     dc6:       13 86           std     Z+11, r1        ; 0x0b
     dc8:       14 86           std     Z+12, r1        ; 0x0c
     dca:       15 86           std     Z+13, r1        ; 0x0d
     dcc:       16 86           std     Z+14, r1        ; 0x0e
     dce:       17 86           std     Z+15, r1        ; 0x0f
     dd0:       61 e0           ldi     r22, 0x01       ; 1
     dd2:       cf 01           movw    r24, r30
     dd4:       0c 94 2f 04     jmp     0x85e   ; 0x85e <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]>

00000dd8 <main>:
     dd8:       78 94           sei
     dda:       84 b5           in      r24, 0x24       ; 36
     ddc:       82 60           ori     r24, 0x02       ; 2
     dde:       84 bd           out     0x24, r24       ; 36
     de0:       84 b5           in      r24, 0x24       ; 36
     de2:       81 60           ori     r24, 0x01       ; 1
     de4:       84 bd           out     0x24, r24       ; 36
     de6:       85 b5           in      r24, 0x25       ; 37
     de8:       82 60           ori     r24, 0x02       ; 2
     dea:       85 bd           out     0x25, r24       ; 37
     dec:       85 b5           in      r24, 0x25       ; 37
     dee:       81 60           ori     r24, 0x01       ; 1
     df0:       85 bd           out     0x25, r24       ; 37
     df2:       80 91 6e 00     lds     r24, 0x006E     ; 0x80006e <__TEXT_REGION_LENGTH__+0x7e006e>
     df6:       81 60           ori     r24, 0x01       ; 1
     df8:       80 93 6e 00     sts     0x006E, r24     ; 0x80006e <__TEXT_REGION_LENGTH__+0x7e006e>
     dfc:       10 92 81 00     sts     0x0081, r1      ; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     e00:       80 91 81 00     lds     r24, 0x0081     ; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     e04:       82 60           ori     r24, 0x02       ; 2
     e06:       80 93 81 00     sts     0x0081, r24     ; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     e0a:       80 91 81 00     lds     r24, 0x0081     ; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     e0e:       81 60           ori     r24, 0x01       ; 1
     e10:       80 93 81 00     sts     0x0081, r24     ; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     e14:       80 91 80 00     lds     r24, 0x0080     ; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     e18:       81 60           ori     r24, 0x01       ; 1
     e1a:       80 93 80 00     sts     0x0080, r24     ; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     e1e:       80 91 b1 00     lds     r24, 0x00B1     ; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
     e22:       84 60           ori     r24, 0x04       ; 4
     e24:       80 93 b1 00     sts     0x00B1, r24     ; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
     e28:       80 91 b0 00     lds     r24, 0x00B0     ; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     e2c:       81 60           ori     r24, 0x01       ; 1
     e2e:       80 93 b0 00     sts     0x00B0, r24     ; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     e32:       80 91 7a 00     lds     r24, 0x007A     ; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     e36:       84 60           ori     r24, 0x04       ; 4
     e38:       80 93 7a 00     sts     0x007A, r24     ; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     e3c:       80 91 7a 00     lds     r24, 0x007A     ; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     e40:       82 60           ori     r24, 0x02       ; 2
     e42:       80 93 7a 00     sts     0x007A, r24     ; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     e46:       80 91 7a 00     lds     r24, 0x007A     ; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     e4a:       81 60           ori     r24, 0x01       ; 1
     e4c:       80 93 7a 00     sts     0x007A, r24     ; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     e50:       80 91 7a 00     lds     r24, 0x007A     ; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     e54:       80 68           ori     r24, 0x80       ; 128
     e56:       80 93 7a 00     sts     0x007A, r24     ; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     e5a:       10 92 c1 00     sts     0x00C1, r1      ; 0x8000c1 <__TEXT_REGION_LENGTH__+0x7e00c1>
     e5e:       61 e0           ldi     r22, 0x01       ; 1
     e60:       86 e0           ldi     r24, 0x06       ; 6
     e62:       0e 94 0a 02     call    0x414   ; 0x414 <pinMode>
     e66:       60 e0           ldi     r22, 0x00       ; 0
     e68:       87 e0           ldi     r24, 0x07       ; 7
     e6a:       0e 94 0a 02     call    0x414   ; 0x414 <pinMode>
     e6e:       61 e0           ldi     r22, 0x01       ; 1
     e70:       88 e0           ldi     r24, 0x08       ; 8
     e72:       0e 94 0a 02     call    0x414   ; 0x414 <pinMode>
     e76:       61 e0           ldi     r22, 0x01       ; 1
     e78:       89 e0           ldi     r24, 0x09       ; 9
     e7a:       0e 94 0a 02     call    0x414   ; 0x414 <pinMode>
     e7e:       61 e0           ldi     r22, 0x01       ; 1
     e80:       8b e0           ldi     r24, 0x0B       ; 11
     e82:       0e 94 0a 02     call    0x414   ; 0x414 <pinMode>
     e86:       62 e0           ldi     r22, 0x02       ; 2
     e88:       81 ef           ldi     r24, 0xF1       ; 241
     e8a:       91 e0           ldi     r25, 0x01       ; 1
     e8c:       0e 94 2f 04     call    0x85e   ; 0x85e <LiquidCrystal::begin(unsigned char, unsigned char, unsigned char) [clone .constprop.13]>
     e90:       93 e0           ldi     r25, 0x03       ; 3
     e92:       e9 2e           mov     r14, r25
     e94:       f1 2c           mov     r15, r1
     e96:       23 e2           ldi     r18, 0x23       ; 35
     e98:       c2 2e           mov     r12, r18
     e9a:       d1 2c           mov     r13, r1
     e9c:       37 e9           ldi     r19, 0x97       ; 151
     e9e:       63 2e           mov     r6, r19
     ea0:       30 e0           ldi     r19, 0x00       ; 0
     ea2:       73 2e           mov     r7, r19
     ea4:       45 eb           ldi     r20, 0xB5       ; 181
     ea6:       a4 2e           mov     r10, r20
     ea8:       40 e0           ldi     r20, 0x00       ; 0
     eaa:       b4 2e           mov     r11, r20
     eac:       57 e8           ldi     r21, 0x87       ; 135
     eae:       85 2e           mov     r8, r21
     eb0:       50 e0           ldi     r21, 0x00       ; 0
     eb2:       95 2e           mov     r9, r21
     eb4:       c4 e6           ldi     r28, 0x64       ; 100
     eb6:       d0 e0           ldi     r29, 0x00       ; 0
     eb8:       64 e6           ldi     r22, 0x64       ; 100
     eba:       56 2e           mov     r5, r22
     ebc:       60 e0           ldi     r22, 0x00       ; 0
     ebe:       86 e0           ldi     r24, 0x06       ; 6
     ec0:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     ec4:       c7 01           movw    r24, r14
     ec6:       01 97           sbiw    r24, 0x01       ; 1
     ec8:       f1 f7           brne    .-4             ; 0xec6 <main+0xee>
     eca:       61 e0           ldi     r22, 0x01       ; 1
     ecc:       86 e0           ldi     r24, 0x06       ; 6
     ece:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     ed2:       c6 01           movw    r24, r12
     ed4:       01 97           sbiw    r24, 0x01       ; 1
     ed6:       f1 f7           brne    .-4             ; 0xed4 <main+0xfc>
     ed8:       60 e0           ldi     r22, 0x00       ; 0
     eda:       86 e0           ldi     r24, 0x06       ; 6
     edc:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
     ee0:       f3 01           movw    r30, r6
     ee2:       64 91           lpm     r22, Z
     ee4:       f5 01           movw    r30, r10
     ee6:       84 91           lpm     r24, Z
     ee8:       e8 2f           mov     r30, r24
     eea:       f0 e0           ldi     r31, 0x00       ; 0
     eec:       ee 0f           add     r30, r30
     eee:       ff 1f           adc     r31, r31
     ef0:       ee 58           subi    r30, 0x8E       ; 142
     ef2:       ff 4f           sbci    r31, 0xFF       ; 255
     ef4:       85 91           lpm     r24, Z+
     ef6:       94 91           lpm     r25, Z
     ef8:       00 e4           ldi     r16, 0x40       ; 64
     efa:       12 e4           ldi     r17, 0x42       ; 66
     efc:       2f e0           ldi     r18, 0x0F       ; 15
     efe:       30 e0           ldi     r19, 0x00       ; 0
     f00:       46 2f           mov     r20, r22
     f02:       0e 94 5d 06     call    0xcba   ; 0xcba <countPulseASM>
     f06:       61 15           cp      r22, r1
     f08:       71 05           cpc     r23, r1
     f0a:       81 05           cpc     r24, r1
     f0c:       91 05           cpc     r25, r1
     f0e:       49 f0           breq    .+18            ; 0xf22 <main+0x14a>
     f10:       dc 01           movw    r26, r24
     f12:       cb 01           movw    r24, r22
     f14:       01 96           adiw    r24, 0x01       ; 1
     f16:       a1 1d           adc     r26, r1
     f18:       b1 1d           adc     r27, r1
     f1a:       bc 01           movw    r22, r24
     f1c:       cd 01           movw    r24, r26
     f1e:       9f 70           andi    r25, 0x0F       ; 15
     f20:       03 c0           rjmp    .+6             ; 0xf28 <main+0x150>
     f22:       60 e0           ldi     r22, 0x00       ; 0
     f24:       70 e0           ldi     r23, 0x00       ; 0
     f26:       cb 01           movw    r24, r22
     f28:       60 93 3b 01     sts     0x013B, r22     ; 0x80013b <duration>
     f2c:       70 93 3c 01     sts     0x013C, r23     ; 0x80013c <duration+0x1>
     f30:       80 93 3d 01     sts     0x013D, r24     ; 0x80013d <duration+0x2>
     f34:       90 93 3e 01     sts     0x013E, r25     ; 0x80013e <duration+0x3>
     f38:       0e 94 15 09     call    0x122a  ; 0x122a <__floatsisf>
     f3c:       26 e9           ldi     r18, 0x96       ; 150
     f3e:       33 e4           ldi     r19, 0x43       ; 67
     f40:       4b e0           ldi     r20, 0x0B       ; 11
     f42:       5d e3           ldi     r21, 0x3D       ; 61
     f44:       0e 94 79 09     call    0x12f2  ; 0x12f2 <__mulsf3>
     f48:       20 e0           ldi     r18, 0x00       ; 0
     f4a:       30 e0           ldi     r19, 0x00       ; 0
     f4c:       40 e0           ldi     r20, 0x00       ; 0
     f4e:       5f e3           ldi     r21, 0x3F       ; 63
     f50:       0e 94 79 09     call    0x12f2  ; 0x12f2 <__mulsf3>
     f54:       0e 94 dd 08     call    0x11ba  ; 0x11ba <__fixsfsi>
     f58:       70 93 3a 01     sts     0x013A, r23     ; 0x80013a <distance+0x1>
     f5c:       60 93 39 01     sts     0x0139, r22     ; 0x800139 <distance>
     f60:       e1 e0           ldi     r30, 0x01       ; 1
     f62:       80 91 04 02     lds     r24, 0x0204     ; 0x800204 <LCD+0x13>
     f66:       81 11           cpse    r24, r1
     f68:       e0 e0           ldi     r30, 0x00       ; 0
     f6a:       e1 95           neg     r30
     f6c:       f0 e0           ldi     r31, 0x00       ; 0
     f6e:       ef 50           subi    r30, 0x0F       ; 15
     f70:       fe 4f           sbci    r31, 0xFE       ; 254
     f72:       64 89           ldd     r22, Z+20       ; 0x14
     f74:       60 68           ori     r22, 0x80       ; 128
     f76:       81 ef           ldi     r24, 0xF1       ; 241
     f78:       91 e0           ldi     r25, 0x01       ; 1
     f7a:       0e 94 2c 04     call    0x858   ; 0x858 <LiquidCrystal::command(unsigned char)>
     f7e:       6f e1           ldi     r22, 0x1F       ; 31
     f80:       71 e0           ldi     r23, 0x01       ; 1
     f82:       81 ef           ldi     r24, 0xF1       ; 241
     f84:       91 e0           ldi     r25, 0x01       ; 1
     f86:       0e 94 d8 04     call    0x9b0   ; 0x9b0 <Print::write(char const*)>
     f8a:       e0 91 04 02     lds     r30, 0x0204     ; 0x800204 <LCD+0x13>
     f8e:       e2 30           cpi     r30, 0x02       ; 2
     f90:       10 f4           brcc    .+4             ; 0xf96 <main+0x1be>
     f92:       e1 50           subi    r30, 0x01       ; 1
     f94:       01 c0           rjmp    .+2             ; 0xf98 <main+0x1c0>
     f96:       e1 e0           ldi     r30, 0x01       ; 1
     f98:       f0 e0           ldi     r31, 0x00       ; 0
     f9a:       ef 50           subi    r30, 0x0F       ; 15
     f9c:       fe 4f           sbci    r31, 0xFE       ; 254
     f9e:       64 89           ldd     r22, Z+20       ; 0x14
     fa0:       60 68           ori     r22, 0x80       ; 128
     fa2:       81 ef           ldi     r24, 0xF1       ; 241
     fa4:       91 e0           ldi     r25, 0x01       ; 1
     fa6:       0e 94 2c 04     call    0x858   ; 0x858 <LiquidCrystal::command(unsigned char)>
     faa:       e0 91 04 02     lds     r30, 0x0204     ; 0x800204 <LCD+0x13>
     fae:       e2 30           cpi     r30, 0x02       ; 2
     fb0:       10 f4           brcc    .+4             ; 0xfb6 <main+0x1de>
     fb2:       e1 50           subi    r30, 0x01       ; 1
     fb4:       01 c0           rjmp    .+2             ; 0xfb8 <main+0x1e0>
     fb6:       e1 e0           ldi     r30, 0x01       ; 1
     fb8:       f0 e0           ldi     r31, 0x00       ; 0
     fba:       ef 50           subi    r30, 0x0F       ; 15
     fbc:       fe 4f           sbci    r31, 0xFE       ; 254
     fbe:       64 89           ldd     r22, Z+20       ; 0x14
     fc0:       60 68           ori     r22, 0x80       ; 128
     fc2:       81 ef           ldi     r24, 0xF1       ; 241
     fc4:       91 e0           ldi     r25, 0x01       ; 1
     fc6:       0e 94 2c 04     call    0x858   ; 0x858 <LiquidCrystal::command(unsigned char)>
     fca:       40 91 39 01     lds     r20, 0x0139     ; 0x800139 <distance>
     fce:       50 91 3a 01     lds     r21, 0x013A     ; 0x80013a <distance+0x1>
     fd2:       05 2e           mov     r0, r21
     fd4:       00 0c           add     r0, r0
     fd6:       66 0b           sbc     r22, r22
     fd8:       77 0b           sbc     r23, r23
     fda:       77 ff           sbrs    r23, 7
     fdc:       05 c0           rjmp    .+10            ; 0xfe8 <main+0x210>
     fde:       81 ef           ldi     r24, 0xF1       ; 241
     fe0:       91 e0           ldi     r25, 0x01       ; 1
     fe2:       0e 94 36 05     call    0xa6c   ; 0xa6c <Print::print(long, int) [clone .part.2]>
     fe6:       05 c0           rjmp    .+10            ; 0xff2 <main+0x21a>
     fe8:       2a e0           ldi     r18, 0x0A       ; 10
     fea:       81 ef           ldi     r24, 0xF1       ; 241
     fec:       91 e0           ldi     r25, 0x01       ; 1
     fee:       0e 94 ed 04     call    0x9da   ; 0x9da <Print::printNumber(unsigned long, unsigned char)>
     ff2:       69 e2           ldi     r22, 0x29       ; 41
     ff4:       71 e0           ldi     r23, 0x01       ; 1
     ff6:       81 ef           ldi     r24, 0xF1       ; 241
     ff8:       91 e0           ldi     r25, 0x01       ; 1
     ffa:       0e 94 d8 04     call    0x9b0   ; 0x9b0 <Print::write(char const*)>
     ffe:       6a ef           ldi     r22, 0xFA       ; 250
    1000:       70 e0           ldi     r23, 0x00       ; 0
    1002:       80 e0           ldi     r24, 0x00       ; 0
    1004:       90 e0           ldi     r25, 0x00       ; 0
    1006:       0e 94 56 03     call    0x6ac   ; 0x6ac <delay>
    100a:       40 91 39 01     lds     r20, 0x0139     ; 0x800139 <distance>
    100e:       50 91 3a 01     lds     r21, 0x013A     ; 0x80013a <distance+0x1>
    1012:       05 2e           mov     r0, r21
    1014:       00 0c           add     r0, r0
    1016:       66 0b           sbc     r22, r22
    1018:       77 0b           sbc     r23, r23
    101a:       77 ff           sbrs    r23, 7
    101c:       05 c0           rjmp    .+10            ; 0x1028 <main+0x250>
    101e:       84 e5           ldi     r24, 0x54       ; 84
    1020:       91 e0           ldi     r25, 0x01       ; 1
    1022:       0e 94 36 05     call    0xa6c   ; 0xa6c <Print::print(long, int) [clone .part.2]>
    1026:       05 c0           rjmp    .+10            ; 0x1032 <main+0x25a>
    1028:       2a e0           ldi     r18, 0x0A       ; 10
    102a:       84 e5           ldi     r24, 0x54       ; 84
    102c:       91 e0           ldi     r25, 0x01       ; 1
    102e:       0e 94 ed 04     call    0x9da   ; 0x9da <Print::printNumber(unsigned long, unsigned char)>
    1032:       6c e2           ldi     r22, 0x2C       ; 44
    1034:       71 e0           ldi     r23, 0x01       ; 1
    1036:       84 e5           ldi     r24, 0x54       ; 84
    1038:       91 e0           ldi     r25, 0x01       ; 1
    103a:       0e 94 d8 04     call    0x9b0   ; 0x9b0 <Print::write(char const*)>
    103e:       00 91 39 01     lds     r16, 0x0139     ; 0x800139 <distance>
    1042:       10 91 3a 01     lds     r17, 0x013A     ; 0x80013a <distance+0x1>
    1046:       03 33           cpi     r16, 0x33       ; 51
    1048:       11 05           cpc     r17, r1
    104a:       44 f0           brlt    .+16            ; 0x105c <main+0x284>
    104c:       61 e0           ldi     r22, 0x01       ; 1
    104e:       8b e0           ldi     r24, 0x0B       ; 11
    1050:       0e 94 0a 02     call    0x414   ; 0x414 <pinMode>
    1054:       61 e0           ldi     r22, 0x01       ; 1
    1056:       8b e0           ldi     r24, 0x0B       ; 11
    1058:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
    105c:       04 51           subi    r16, 0x14       ; 20
    105e:       11 09           sbc     r17, r1
    1060:       0f 31           cpi     r16, 0x1F       ; 31
    1062:       11 05           cpc     r17, r1
    1064:       08 f0           brcs    .+2             ; 0x1068 <main+0x290>
    1066:       48 c0           rjmp    .+144           ; 0x10f8 <main+0x320>
    1068:       61 e0           ldi     r22, 0x01       ; 1
    106a:       88 e0           ldi     r24, 0x08       ; 8
    106c:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
    1070:       61 e0           ldi     r22, 0x01       ; 1
    1072:       8b e0           ldi     r24, 0x0B       ; 11
    1074:       0e 94 0a 02     call    0x414   ; 0x414 <pinMode>
    1078:       f4 01           movw    r30, r8
    107a:       84 91           lpm     r24, Z
    107c:       83 30           cpi     r24, 0x03       ; 3
    107e:       f9 f0           breq    .+62            ; 0x10be <main+0x2e6>
    1080:       48 f4           brcc    .+18            ; 0x1094 <main+0x2bc>
    1082:       81 30           cpi     r24, 0x01       ; 1
    1084:       b9 f0           breq    .+46            ; 0x10b4 <main+0x2dc>
    1086:       82 30           cpi     r24, 0x02       ; 2
    1088:       a1 f5           brne    .+104           ; 0x10f2 <main+0x31a>
    108a:       84 b5           in      r24, 0x24       ; 36
    108c:       80 62           ori     r24, 0x20       ; 32
    108e:       84 bd           out     0x24, r24       ; 36
    1090:       58 bc           out     0x28, r5        ; 40
    1092:       36 c0           rjmp    .+108           ; 0x1100 <main+0x328>
    1094:       87 30           cpi     r24, 0x07       ; 7
    1096:       e9 f0           breq    .+58            ; 0x10d2 <main+0x2fa>
    1098:       88 30           cpi     r24, 0x08       ; 8
    109a:       19 f1           breq    .+70            ; 0x10e2 <main+0x30a>
    109c:       84 30           cpi     r24, 0x04       ; 4
    109e:       49 f5           brne    .+82            ; 0x10f2 <main+0x31a>
    10a0:       80 91 80 00     lds     r24, 0x0080     ; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
    10a4:       80 62           ori     r24, 0x20       ; 32
    10a6:       80 93 80 00     sts     0x0080, r24     ; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
    10aa:       d0 93 8b 00     sts     0x008B, r29     ; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
    10ae:       c0 93 8a 00     sts     0x008A, r28     ; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
    10b2:       26 c0           rjmp    .+76            ; 0x1100 <main+0x328>
    10b4:       84 b5           in      r24, 0x24       ; 36
    10b6:       80 68           ori     r24, 0x80       ; 128
    10b8:       84 bd           out     0x24, r24       ; 36
    10ba:       57 bc           out     0x27, r5        ; 39
    10bc:       21 c0           rjmp    .+66            ; 0x1100 <main+0x328>
    10be:       80 91 80 00     lds     r24, 0x0080     ; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
    10c2:       80 68           ori     r24, 0x80       ; 128
    10c4:       80 93 80 00     sts     0x0080, r24     ; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
    10c8:       d0 93 89 00     sts     0x0089, r29     ; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
    10cc:       c0 93 88 00     sts     0x0088, r28     ; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
    10d0:       17 c0           rjmp    .+46            ; 0x1100 <main+0x328>
    10d2:       80 91 b0 00     lds     r24, 0x00B0     ; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
    10d6:       80 68           ori     r24, 0x80       ; 128
    10d8:       80 93 b0 00     sts     0x00B0, r24     ; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
    10dc:       50 92 b3 00     sts     0x00B3, r5      ; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
    10e0:       0f c0           rjmp    .+30            ; 0x1100 <main+0x328>
    10e2:       80 91 b0 00     lds     r24, 0x00B0     ; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
    10e6:       80 62           ori     r24, 0x20       ; 32
    10e8:       80 93 b0 00     sts     0x00B0, r24     ; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
    10ec:       50 92 b4 00     sts     0x00B4, r5      ; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
    10f0:       07 c0           rjmp    .+14            ; 0x1100 <main+0x328>
    10f2:       60 e0           ldi     r22, 0x00       ; 0
    10f4:       8b e0           ldi     r24, 0x0B       ; 11
    10f6:       02 c0           rjmp    .+4             ; 0x10fc <main+0x324>
    10f8:       60 e0           ldi     r22, 0x00       ; 0
    10fa:       88 e0           ldi     r24, 0x08       ; 8
    10fc:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
    1100:       80 91 39 01     lds     r24, 0x0139     ; 0x800139 <distance>
    1104:       90 91 3a 01     lds     r25, 0x013A     ; 0x80013a <distance+0x1>
    1108:       45 97           sbiw    r24, 0x15       ; 21
    110a:       0c f0           brlt    .+2             ; 0x110e <main+0x336>
    110c:       4f c0           rjmp    .+158           ; 0x11ac <main+0x3d4>
    110e:       61 e0           ldi     r22, 0x01       ; 1
    1110:       89 e0           ldi     r24, 0x09       ; 9
    1112:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
    1116:       61 e0           ldi     r22, 0x01       ; 1
    1118:       8b e0           ldi     r24, 0x0B       ; 11
    111a:       0e 94 0a 02     call    0x414   ; 0x414 <pinMode>
    111e:       60 e0           ldi     r22, 0x00       ; 0
    1120:       8b e0           ldi     r24, 0x0B       ; 11
    1122:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
    1126:       8a e0           ldi     r24, 0x0A       ; 10
    1128:       0e 94 46 02     call    0x48c   ; 0x48c <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]>
    112c:       64 e6           ldi     r22, 0x64       ; 100
    112e:       70 e0           ldi     r23, 0x00       ; 0
    1130:       80 e0           ldi     r24, 0x00       ; 0
    1132:       90 e0           ldi     r25, 0x00       ; 0
    1134:       0e 94 56 03     call    0x6ac   ; 0x6ac <delay>
    1138:       8a e0           ldi     r24, 0x0A       ; 10
    113a:       0e 94 df 01     call    0x3be   ; 0x3be <noTone(unsigned char)>
    113e:       64 e6           ldi     r22, 0x64       ; 100
    1140:       70 e0           ldi     r23, 0x00       ; 0
    1142:       80 e0           ldi     r24, 0x00       ; 0
    1144:       90 e0           ldi     r25, 0x00       ; 0
    1146:       0e 94 56 03     call    0x6ac   ; 0x6ac <delay>
    114a:       8a e0           ldi     r24, 0x0A       ; 10
    114c:       0e 94 46 02     call    0x48c   ; 0x48c <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]>
    1150:       64 e6           ldi     r22, 0x64       ; 100
    1152:       70 e0           ldi     r23, 0x00       ; 0
    1154:       80 e0           ldi     r24, 0x00       ; 0
    1156:       90 e0           ldi     r25, 0x00       ; 0
    1158:       0e 94 56 03     call    0x6ac   ; 0x6ac <delay>
    115c:       8a e0           ldi     r24, 0x0A       ; 10
    115e:       0e 94 df 01     call    0x3be   ; 0x3be <noTone(unsigned char)>
    1162:       64 e6           ldi     r22, 0x64       ; 100
    1164:       70 e0           ldi     r23, 0x00       ; 0
    1166:       80 e0           ldi     r24, 0x00       ; 0
    1168:       90 e0           ldi     r25, 0x00       ; 0
    116a:       0e 94 56 03     call    0x6ac   ; 0x6ac <delay>
    116e:       8a e0           ldi     r24, 0x0A       ; 10
    1170:       0e 94 46 02     call    0x48c   ; 0x48c <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]>
    1174:       64 e6           ldi     r22, 0x64       ; 100
    1176:       70 e0           ldi     r23, 0x00       ; 0
    1178:       80 e0           ldi     r24, 0x00       ; 0
    117a:       90 e0           ldi     r25, 0x00       ; 0
    117c:       0e 94 56 03     call    0x6ac   ; 0x6ac <delay>
    1180:       8a e0           ldi     r24, 0x0A       ; 10
    1182:       0e 94 df 01     call    0x3be   ; 0x3be <noTone(unsigned char)>
    1186:       8a e0           ldi     r24, 0x0A       ; 10
    1188:       0e 94 46 02     call    0x48c   ; 0x48c <tone(unsigned char, unsigned int, unsigned long) [clone .constprop.11]>
    118c:       64 e6           ldi     r22, 0x64       ; 100
    118e:       70 e0           ldi     r23, 0x00       ; 0
    1190:       80 e0           ldi     r24, 0x00       ; 0
    1192:       90 e0           ldi     r25, 0x00       ; 0
    1194:       0e 94 56 03     call    0x6ac   ; 0x6ac <delay>
    1198:       8a e0           ldi     r24, 0x0A       ; 10
    119a:       0e 94 df 01     call    0x3be   ; 0x3be <noTone(unsigned char)>
    119e:       64 e6           ldi     r22, 0x64       ; 100
    11a0:       70 e0           ldi     r23, 0x00       ; 0
    11a2:       80 e0           ldi     r24, 0x00       ; 0
    11a4:       90 e0           ldi     r25, 0x00       ; 0
    11a6:       0e 94 56 03     call    0x6ac   ; 0x6ac <delay>
    11aa:       04 c0           rjmp    .+8             ; 0x11b4 <main+0x3dc>
    11ac:       60 e0           ldi     r22, 0x00       ; 0
    11ae:       89 e0           ldi     r24, 0x09       ; 9
    11b0:       0e 94 93 01     call    0x326   ; 0x326 <digitalWrite>
    11b4:       0e 94 5e 01     call    0x2bc   ; 0x2bc <serialEventRun()>
    11b8:       81 ce           rjmp    .-766           ; 0xebc <main+0xe4>

000011ba <__fixsfsi>:
    11ba:       0e 94 e4 08     call    0x11c8  ; 0x11c8 <__fixunssfsi>
    11be:       68 94           set
    11c0:       b1 11           cpse    r27, r1
    11c2:       0c 94 73 09     jmp     0x12e6  ; 0x12e6 <__fp_szero>
    11c6:       08 95           ret

000011c8 <__fixunssfsi>:
    11c8:       0e 94 58 09     call    0x12b0  ; 0x12b0 <__fp_splitA>
    11cc:       88 f0           brcs    .+34            ; 0x11f0 <__fixunssfsi+0x28>
    11ce:       9f 57           subi    r25, 0x7F       ; 127
    11d0:       98 f0           brcs    .+38            ; 0x11f8 <__fixunssfsi+0x30>
    11d2:       b9 2f           mov     r27, r25
    11d4:       99 27           eor     r25, r25
    11d6:       b7 51           subi    r27, 0x17       ; 23
    11d8:       b0 f0           brcs    .+44            ; 0x1206 <__fixunssfsi+0x3e>
    11da:       e1 f0           breq    .+56            ; 0x1214 <__fixunssfsi+0x4c>
    11dc:       66 0f           add     r22, r22
    11de:       77 1f           adc     r23, r23
    11e0:       88 1f           adc     r24, r24
    11e2:       99 1f           adc     r25, r25
    11e4:       1a f0           brmi    .+6             ; 0x11ec <__fixunssfsi+0x24>
    11e6:       ba 95           dec     r27
    11e8:       c9 f7           brne    .-14            ; 0x11dc <__fixunssfsi+0x14>
    11ea:       14 c0           rjmp    .+40            ; 0x1214 <__fixunssfsi+0x4c>
    11ec:       b1 30           cpi     r27, 0x01       ; 1
    11ee:       91 f0           breq    .+36            ; 0x1214 <__fixunssfsi+0x4c>
    11f0:       0e 94 72 09     call    0x12e4  ; 0x12e4 <__fp_zero>
    11f4:       b1 e0           ldi     r27, 0x01       ; 1
    11f6:       08 95           ret
    11f8:       0c 94 72 09     jmp     0x12e4  ; 0x12e4 <__fp_zero>
    11fc:       67 2f           mov     r22, r23
    11fe:       78 2f           mov     r23, r24
    1200:       88 27           eor     r24, r24
    1202:       b8 5f           subi    r27, 0xF8       ; 248
    1204:       39 f0           breq    .+14            ; 0x1214 <__fixunssfsi+0x4c>
    1206:       b9 3f           cpi     r27, 0xF9       ; 249
    1208:       cc f3           brlt    .-14            ; 0x11fc <__fixunssfsi+0x34>
    120a:       86 95           lsr     r24
    120c:       77 95           ror     r23
    120e:       67 95           ror     r22
    1210:       b3 95           inc     r27
    1212:       d9 f7           brne    .-10            ; 0x120a <__fixunssfsi+0x42>
    1214:       3e f4           brtc    .+14            ; 0x1224 <__fixunssfsi+0x5c>
    1216:       90 95           com     r25
    1218:       80 95           com     r24
    121a:       70 95           com     r23
    121c:       61 95           neg     r22
    121e:       7f 4f           sbci    r23, 0xFF       ; 255
    1220:       8f 4f           sbci    r24, 0xFF       ; 255
    1222:       9f 4f           sbci    r25, 0xFF       ; 255
    1224:       08 95           ret

00001226 <__floatunsisf>:
    1226:       e8 94           clt
    1228:       09 c0           rjmp    .+18            ; 0x123c <__floatsisf+0x12>

0000122a <__floatsisf>:
    122a:       97 fb           bst     r25, 7
    122c:       3e f4           brtc    .+14            ; 0x123c <__floatsisf+0x12>
    122e:       90 95           com     r25
    1230:       80 95           com     r24
    1232:       70 95           com     r23
    1234:       61 95           neg     r22
    1236:       7f 4f           sbci    r23, 0xFF       ; 255
    1238:       8f 4f           sbci    r24, 0xFF       ; 255
    123a:       9f 4f           sbci    r25, 0xFF       ; 255
    123c:       99 23           and     r25, r25
    123e:       a9 f0           breq    .+42            ; 0x126a <__floatsisf+0x40>
    1240:       f9 2f           mov     r31, r25
    1242:       96 e9           ldi     r25, 0x96       ; 150
    1244:       bb 27           eor     r27, r27
    1246:       93 95           inc     r25
    1248:       f6 95           lsr     r31
    124a:       87 95           ror     r24
    124c:       77 95           ror     r23
    124e:       67 95           ror     r22
    1250:       b7 95           ror     r27
    1252:       f1 11           cpse    r31, r1
    1254:       f8 cf           rjmp    .-16            ; 0x1246 <__floatsisf+0x1c>
    1256:       fa f4           brpl    .+62            ; 0x1296 <__floatsisf+0x6c>
    1258:       bb 0f           add     r27, r27
    125a:       11 f4           brne    .+4             ; 0x1260 <__floatsisf+0x36>
    125c:       60 ff           sbrs    r22, 0
    125e:       1b c0           rjmp    .+54            ; 0x1296 <__floatsisf+0x6c>
    1260:       6f 5f           subi    r22, 0xFF       ; 255
    1262:       7f 4f           sbci    r23, 0xFF       ; 255
    1264:       8f 4f           sbci    r24, 0xFF       ; 255
    1266:       9f 4f           sbci    r25, 0xFF       ; 255
    1268:       16 c0           rjmp    .+44            ; 0x1296 <__floatsisf+0x6c>
    126a:       88 23           and     r24, r24
    126c:       11 f0           breq    .+4             ; 0x1272 <__floatsisf+0x48>
    126e:       96 e9           ldi     r25, 0x96       ; 150
    1270:       11 c0           rjmp    .+34            ; 0x1294 <__floatsisf+0x6a>
    1272:       77 23           and     r23, r23
    1274:       21 f0           breq    .+8             ; 0x127e <__floatsisf+0x54>
    1276:       9e e8           ldi     r25, 0x8E       ; 142
    1278:       87 2f           mov     r24, r23
    127a:       76 2f           mov     r23, r22
    127c:       05 c0           rjmp    .+10            ; 0x1288 <__floatsisf+0x5e>
    127e:       66 23           and     r22, r22
    1280:       71 f0           breq    .+28            ; 0x129e <__floatsisf+0x74>
    1282:       96 e8           ldi     r25, 0x86       ; 134
    1284:       86 2f           mov     r24, r22
    1286:       70 e0           ldi     r23, 0x00       ; 0
    1288:       60 e0           ldi     r22, 0x00       ; 0
    128a:       2a f0           brmi    .+10            ; 0x1296 <__floatsisf+0x6c>
    128c:       9a 95           dec     r25
    128e:       66 0f           add     r22, r22
    1290:       77 1f           adc     r23, r23
    1292:       88 1f           adc     r24, r24
    1294:       da f7           brpl    .-10            ; 0x128c <__floatsisf+0x62>
    1296:       88 0f           add     r24, r24
    1298:       96 95           lsr     r25
    129a:       87 95           ror     r24
    129c:       97 f9           bld     r25, 7
    129e:       08 95           ret

000012a0 <__fp_split3>:
    12a0:       57 fd           sbrc    r21, 7
    12a2:       90 58           subi    r25, 0x80       ; 128
    12a4:       44 0f           add     r20, r20
    12a6:       55 1f           adc     r21, r21
    12a8:       59 f0           breq    .+22            ; 0x12c0 <__fp_splitA+0x10>
    12aa:       5f 3f           cpi     r21, 0xFF       ; 255
    12ac:       71 f0           breq    .+28            ; 0x12ca <__fp_splitA+0x1a>
    12ae:       47 95           ror     r20

000012b0 <__fp_splitA>:
    12b0:       88 0f           add     r24, r24
    12b2:       97 fb           bst     r25, 7
    12b4:       99 1f           adc     r25, r25
    12b6:       61 f0           breq    .+24            ; 0x12d0 <__fp_splitA+0x20>
    12b8:       9f 3f           cpi     r25, 0xFF       ; 255
    12ba:       79 f0           breq    .+30            ; 0x12da <__fp_splitA+0x2a>
    12bc:       87 95           ror     r24
    12be:       08 95           ret
    12c0:       12 16           cp      r1, r18
    12c2:       13 06           cpc     r1, r19
    12c4:       14 06           cpc     r1, r20
    12c6:       55 1f           adc     r21, r21
    12c8:       f2 cf           rjmp    .-28            ; 0x12ae <__fp_split3+0xe>
    12ca:       46 95           lsr     r20
    12cc:       f1 df           rcall   .-30            ; 0x12b0 <__fp_splitA>
    12ce:       08 c0           rjmp    .+16            ; 0x12e0 <__fp_splitA+0x30>
    12d0:       16 16           cp      r1, r22
    12d2:       17 06           cpc     r1, r23
    12d4:       18 06           cpc     r1, r24
    12d6:       99 1f           adc     r25, r25
    12d8:       f1 cf           rjmp    .-30            ; 0x12bc <__fp_splitA+0xc>
    12da:       86 95           lsr     r24
    12dc:       71 05           cpc     r23, r1
    12de:       61 05           cpc     r22, r1
    12e0:       08 94           sec
    12e2:       08 95           ret

000012e4 <__fp_zero>:
    12e4:       e8 94           clt

000012e6 <__fp_szero>:
    12e6:       bb 27           eor     r27, r27
    12e8:       66 27           eor     r22, r22
    12ea:       77 27           eor     r23, r23
    12ec:       cb 01           movw    r24, r22
    12ee:       97 f9           bld     r25, 7
    12f0:       08 95           ret

000012f2 <__mulsf3>:
    12f2:       0e 94 8c 09     call    0x1318  ; 0x1318 <__mulsf3x>
    12f6:       0c 94 fd 09     jmp     0x13fa  ; 0x13fa <__fp_round>
    12fa:       0e 94 ef 09     call    0x13de  ; 0x13de <__fp_pscA>
    12fe:       38 f0           brcs    .+14            ; 0x130e <__mulsf3+0x1c>
    1300:       0e 94 f6 09     call    0x13ec  ; 0x13ec <__fp_pscB>
    1304:       20 f0           brcs    .+8             ; 0x130e <__mulsf3+0x1c>
    1306:       95 23           and     r25, r21
    1308:       11 f0           breq    .+4             ; 0x130e <__mulsf3+0x1c>
    130a:       0c 94 e6 09     jmp     0x13cc  ; 0x13cc <__fp_inf>
    130e:       0c 94 ec 09     jmp     0x13d8  ; 0x13d8 <__fp_nan>
    1312:       11 24           eor     r1, r1
    1314:       0c 94 73 09     jmp     0x12e6  ; 0x12e6 <__fp_szero>

00001318 <__mulsf3x>:
    1318:       0e 94 50 09     call    0x12a0  ; 0x12a0 <__fp_split3>
    131c:       70 f3           brcs    .-36            ; 0x12fa <__mulsf3+0x8>

0000131e <__mulsf3_pse>:
    131e:       95 9f           mul     r25, r21
    1320:       c1 f3           breq    .-16            ; 0x1312 <__mulsf3+0x20>
    1322:       95 0f           add     r25, r21
    1324:       50 e0           ldi     r21, 0x00       ; 0
    1326:       55 1f           adc     r21, r21
    1328:       62 9f           mul     r22, r18
    132a:       f0 01           movw    r30, r0
    132c:       72 9f           mul     r23, r18
    132e:       bb 27           eor     r27, r27
    1330:       f0 0d           add     r31, r0
    1332:       b1 1d           adc     r27, r1
    1334:       63 9f           mul     r22, r19
    1336:       aa 27           eor     r26, r26
    1338:       f0 0d           add     r31, r0
    133a:       b1 1d           adc     r27, r1
    133c:       aa 1f           adc     r26, r26
    133e:       64 9f           mul     r22, r20
    1340:       66 27           eor     r22, r22
    1342:       b0 0d           add     r27, r0
    1344:       a1 1d           adc     r26, r1
    1346:       66 1f           adc     r22, r22
    1348:       82 9f           mul     r24, r18
    134a:       22 27           eor     r18, r18
    134c:       b0 0d           add     r27, r0
    134e:       a1 1d           adc     r26, r1
    1350:       62 1f           adc     r22, r18
    1352:       73 9f           mul     r23, r19
    1354:       b0 0d           add     r27, r0
    1356:       a1 1d           adc     r26, r1
    1358:       62 1f           adc     r22, r18
    135a:       83 9f           mul     r24, r19
    135c:       a0 0d           add     r26, r0
    135e:       61 1d           adc     r22, r1
    1360:       22 1f           adc     r18, r18
    1362:       74 9f           mul     r23, r20
    1364:       33 27           eor     r19, r19
    1366:       a0 0d           add     r26, r0
    1368:       61 1d           adc     r22, r1
    136a:       23 1f           adc     r18, r19
    136c:       84 9f           mul     r24, r20
    136e:       60 0d           add     r22, r0
    1370:       21 1d           adc     r18, r1
    1372:       82 2f           mov     r24, r18
    1374:       76 2f           mov     r23, r22
    1376:       6a 2f           mov     r22, r26
    1378:       11 24           eor     r1, r1
    137a:       9f 57           subi    r25, 0x7F       ; 127
    137c:       50 40           sbci    r21, 0x00       ; 0
    137e:       9a f0           brmi    .+38            ; 0x13a6 <__mulsf3_pse+0x88>
    1380:       f1 f0           breq    .+60            ; 0x13be <__mulsf3_pse+0xa0>
    1382:       88 23           and     r24, r24
    1384:       4a f0           brmi    .+18            ; 0x1398 <__mulsf3_pse+0x7a>
    1386:       ee 0f           add     r30, r30
    1388:       ff 1f           adc     r31, r31
    138a:       bb 1f           adc     r27, r27
    138c:       66 1f           adc     r22, r22
    138e:       77 1f           adc     r23, r23
    1390:       88 1f           adc     r24, r24
    1392:       91 50           subi    r25, 0x01       ; 1
    1394:       50 40           sbci    r21, 0x00       ; 0
    1396:       a9 f7           brne    .-22            ; 0x1382 <__mulsf3_pse+0x64>
    1398:       9e 3f           cpi     r25, 0xFE       ; 254
    139a:       51 05           cpc     r21, r1
    139c:       80 f0           brcs    .+32            ; 0x13be <__mulsf3_pse+0xa0>
    139e:       0c 94 e6 09     jmp     0x13cc  ; 0x13cc <__fp_inf>
    13a2:       0c 94 73 09     jmp     0x12e6  ; 0x12e6 <__fp_szero>
    13a6:       5f 3f           cpi     r21, 0xFF       ; 255
    13a8:       e4 f3           brlt    .-8             ; 0x13a2 <__mulsf3_pse+0x84>
    13aa:       98 3e           cpi     r25, 0xE8       ; 232
    13ac:       d4 f3           brlt    .-12            ; 0x13a2 <__mulsf3_pse+0x84>
    13ae:       86 95           lsr     r24
    13b0:       77 95           ror     r23
    13b2:       67 95           ror     r22
    13b4:       b7 95           ror     r27
    13b6:       f7 95           ror     r31
    13b8:       e7 95           ror     r30
    13ba:       9f 5f           subi    r25, 0xFF       ; 255
    13bc:       c1 f7           brne    .-16            ; 0x13ae <__mulsf3_pse+0x90>
    13be:       fe 2b           or      r31, r30
    13c0:       88 0f           add     r24, r24
    13c2:       91 1d           adc     r25, r1
    13c4:       96 95           lsr     r25
    13c6:       87 95           ror     r24
    13c8:       97 f9           bld     r25, 7
    13ca:       08 95           ret

000013cc <__fp_inf>:
    13cc:       97 f9           bld     r25, 7
    13ce:       9f 67           ori     r25, 0x7F       ; 127
    13d0:       80 e8           ldi     r24, 0x80       ; 128
    13d2:       70 e0           ldi     r23, 0x00       ; 0
    13d4:       60 e0           ldi     r22, 0x00       ; 0
    13d6:       08 95           ret

000013d8 <__fp_nan>:
    13d8:       9f ef           ldi     r25, 0xFF       ; 255
    13da:       80 ec           ldi     r24, 0xC0       ; 192
    13dc:       08 95           ret

000013de <__fp_pscA>:
    13de:       00 24           eor     r0, r0
    13e0:       0a 94           dec     r0
    13e2:       16 16           cp      r1, r22
    13e4:       17 06           cpc     r1, r23
    13e6:       18 06           cpc     r1, r24
    13e8:       09 06           cpc     r0, r25
    13ea:       08 95           ret

000013ec <__fp_pscB>:
    13ec:       00 24           eor     r0, r0
    13ee:       0a 94           dec     r0
    13f0:       12 16           cp      r1, r18
    13f2:       13 06           cpc     r1, r19
    13f4:       14 06           cpc     r1, r20
    13f6:       05 06           cpc     r0, r21
    13f8:       08 95           ret

000013fa <__fp_round>:
    13fa:       09 2e           mov     r0, r25
    13fc:       03 94           inc     r0
    13fe:       00 0c           add     r0, r0
    1400:       11 f4           brne    .+4             ; 0x1406 <__fp_round+0xc>
    1402:       88 23           and     r24, r24
    1404:       52 f0           brmi    .+20            ; 0x141a <__fp_round+0x20>
    1406:       bb 0f           add     r27, r27
    1408:       40 f4           brcc    .+16            ; 0x141a <__fp_round+0x20>
    140a:       bf 2b           or      r27, r31
    140c:       11 f4           brne    .+4             ; 0x1412 <__fp_round+0x18>
    140e:       60 ff           sbrs    r22, 0
    1410:       04 c0           rjmp    .+8             ; 0x141a <__fp_round+0x20>
    1412:       6f 5f           subi    r22, 0xFF       ; 255
    1414:       7f 4f           sbci    r23, 0xFF       ; 255
    1416:       8f 4f           sbci    r24, 0xFF       ; 255
    1418:       9f 4f           sbci    r25, 0xFF       ; 255
    141a:       08 95           ret

0000141c <__udivmodsi4>:
    141c:       a1 e2           ldi     r26, 0x21       ; 33
    141e:       1a 2e           mov     r1, r26
    1420:       aa 1b           sub     r26, r26
    1422:       bb 1b           sub     r27, r27
    1424:       fd 01           movw    r30, r26
    1426:       0d c0           rjmp    .+26            ; 0x1442 <__udivmodsi4_ep>

00001428 <__udivmodsi4_loop>:
    1428:       aa 1f           adc     r26, r26
    142a:       bb 1f           adc     r27, r27
    142c:       ee 1f           adc     r30, r30
    142e:       ff 1f           adc     r31, r31
    1430:       a2 17           cp      r26, r18
    1432:       b3 07           cpc     r27, r19
    1434:       e4 07           cpc     r30, r20
    1436:       f5 07           cpc     r31, r21
    1438:       20 f0           brcs    .+8             ; 0x1442 <__udivmodsi4_ep>
    143a:       a2 1b           sub     r26, r18
    143c:       b3 0b           sbc     r27, r19
    143e:       e4 0b           sbc     r30, r20
    1440:       f5 0b           sbc     r31, r21

00001442 <__udivmodsi4_ep>:
    1442:       66 1f           adc     r22, r22
    1444:       77 1f           adc     r23, r23
    1446:       88 1f           adc     r24, r24
    1448:       99 1f           adc     r25, r25
    144a:       1a 94           dec     r1
    144c:       69 f7           brne    .-38            ; 0x1428 <__udivmodsi4_loop>
    144e:       60 95           com     r22
    1450:       70 95           com     r23
    1452:       80 95           com     r24
    1454:       90 95           com     r25
    1456:       9b 01           movw    r18, r22
    1458:       ac 01           movw    r20, r24
    145a:       bd 01           movw    r22, r26
    145c:       cf 01           movw    r24, r30
    145e:       08 95           ret

00001460 <__tablejump2__>:
    1460:       ee 0f           add     r30, r30
    1462:       ff 1f           adc     r31, r31
    1464:       05 90           lpm     r0, Z+
    1466:       f4 91           lpm     r31, Z
    1468:       e0 2d           mov     r30, r0
    146a:       09 94           ijmp

0000146c <abort>:
    146c:       81 e0           ldi     r24, 0x01       ; 1
    146e:       90 e0           ldi     r25, 0x00       ; 0
    1470:       f8 94           cli
    1472:       0c 94 3b 0a     jmp     0x1476  ; 0x1476 <_exit>

00001476 <_exit>:
    1476:       f8 94           cli

00001478 <__stop_program>:
    1478:       ff cf           rjmp    .-2             ; 0x1478 <__stop_program>