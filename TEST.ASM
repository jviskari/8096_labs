HSO_TIME        EQU 04H:WORD
HSO_COM         EQU 06H:BYTE
INT_MASK        EQU 08H:BYTE
TIMER1          EQU 0AH:WORD

VALINTA         EQU 0F000H:BYTE
SEGMENTIT       EQU 0F800H:BYTE

                RSEG AT 40H

MERKKI:         DSB 3
LEDNRO:         DSB 1

                RSEG AT 44H

INDEX:          DSW 1
DELAY:          DSW 1
SUBINDEX:       DSW 1
LEDNROW:        DSW 1
ARVO:           DSB 1

                CSEG AT 8500H

SWINT:          PUSHF
                
                LDB HSO_COM, #00111000B
                ADD HSO_TIME,TIMER1,DELAY
                
                ANDB LEDNRO,#0FH                ;MASKATAAN 4 YLINTŽ BITTIŽ
                LDBZE LEDNROW,LEDNRO[0]         ;muunnetaan wordiksi
                
                LDB ARVO,NAYTTONO[INDEX]        ;n„yt”n valinta
                XORB ARVO,LED[LEDNROW]          ;
                STB ARVO,VALINTA[0]             ;
                
                LDBZE SUBINDEX, MERKKI[INDEX]   ;muunnetaan wordiksi
                LDB ARVO,SEGM[SUBINDEX]         ;
                
                STB ARVO,SEGMENTIT[0]           ;
                
                INC INDEX                       ;
                CMP INDEX, #3                   ;
                JNE VALMIS                      ;
                LD INDEX,0                      ;

VALMIS:         POPF
                RET

NAYTTONO:       DCB 11011111B, 10111111B, 01111111B


SEGM:       DCB 00111111B               ;0
            DCB 00000110B               ;1
            DCB 01011011B               ;2
            DCB 01001111B               ;3
            DCB 01100110B               ;4
            DCB 01101101B               ;5
            DCB 01111101B               ;6
            DCB 00000111B               ;7
            DCB 01111111B               ;8
            DCB 01101111B               ;9
            DCB 01110111B               ;A
            DCB 01111100B               ;B
            DCB 00111001B               ;C
            DCB 01011110B               ;D
            DCB 01111001B               ;E
            DCB 01110001B               ;F

LED:        DCB 00001111B               ;0
            DCB 00000111B               ;1
            DCB 00001011B               ;2
            DCB 00000011B               ;3
            DCB 00001101B               ;4
            DCB 00000101B               ;5
            DCB 00001001B               ;6
            DCB 00000001B               ;7
            DCB 00001110B               ;8
            DCB 00000110B               ;9
            DCB 00001010B               ;A
            DCB 00000010B               ;B
            DCB 00001100B               ;C
            DCB 00000100B               ;D
            DCB 00001000B               ;E
            DCB 00000000B               ;F

                CSEG AT 9000H

ALKU:           LD INDEX,#0
                LD DELAY, #4000
                LDB HSO_COM, #00111000B
                ADD HSO_TIME,TIMER1,DELAY
                ORB INT_MASK, #00100000b                                    
                SJMP  $
