;x96 LAB17.ASM Joonas Viskari 1998

ADDR    EQU     0A000H

        RSEG AT 0080h

AX:     
AL:     DSB 1
AH:     DSB 1
SI:     DSW 1


        CSEG AT 9000h

        LD      SI,[0]                  ;reset source index to 0

LOOP:   ADDB    AL,ADDR[SI]
        ADDCB   AH,[0]                  ;otetaan muistinumero huomioon
        INC     SI
        CMP     SI,#0FFH                ;onko SI = 0FFH ?
        JNE     LOOP                    ;jos ei hypp„„ NEXT
        SJMP    $                       ;lopetus

        END
