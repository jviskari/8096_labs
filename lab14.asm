;x96 LAB14.ASM Joonas Viskari 1998

        RSEG AT 0040h

AX:     
AL:     DSB 1
AH:     DSB 1
DST:    DSW 1
SI:     DSW 1

        RSEG AT 0060h

WTABLE: DSW 8

        RSEG AT 0080h

BTABLE: DSB 8

        CSEG AT 9000h

        LD      SI,[0]                  ;reset source index to 0
        LD      DST,[0]                 ;reset destination index to 0

LOOP:   LD      AL,BTABLE[SI]
        ADD     AX,WTABLE[DST]
        ST      AX,WTABLE[DST]        
        INC     DST
        INC     DST
        INC     SI
        CMP     SI,#8                   ;onko SI = 8 ?
        JNE     LOOP                    ;jos ei hypp„„ NEXT
        SJMP    $                       ;lopetus

        END
