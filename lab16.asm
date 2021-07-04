;x96 LAB16.ASM Joonas Viskari 1998

ADDR    EQU     0A000H

        RSEG AT 0080h

AX:     
AL:     DSB 1
AH:     DSB 1
SI:     DSW 1


        CSEG AT 9000h

        LD      SI,[0]                  ;reset source index to 0

LOOP:   ADD     AX,ADDR[SI]
        INC     SI
        INC     SI
        CMP     SI,#0FEH                ;onko SI = 0FEH ?
        JNE     LOOP                    ;jos ei hypp„„ NEXT
        SJMP    $                       ;lopetus

        END
