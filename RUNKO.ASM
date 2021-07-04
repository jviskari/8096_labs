HSO_TIME        EQU 04H:WORD
HSO_COM         EQU 06H:BYTE
INT_MASK        EQU 08H:BYTE
TIMER1          EQU 0AH:WORD


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
                
                
                POPF
                RET
                
                
                CSEG AT 9000H

ALKU:           LD INDEX,#0
                LD DELAY, #4000
                LDB HSO_COM, #00111000B
                ADD HSO_TIME,TIMER1,DELAY
                ORB INT_MASK, #00100000b                                    
                
                SJMP  $
                END
