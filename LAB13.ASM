;x96 LAB13.ASM Joonas Viskari 1998

        RSEG AT 0040h

INDEX:  DSW 1
HELP:   DSW 1

        RSEG AT 0060h

TABLE:  DSW 8

        CSEG AT 9000h

ADDONE: LD      INDEX,[0]               ;reset index to 0

NEXT:   LD      HELP,TABLE[INDEX]       ;helppiin arvo TABLE[0]:sta
        INC     HELP                    ;help++
        ST      HELP,TABLE[INDEX]       ;store help to register
        INC     INDEX
        INC     INDEX

        CMP     INDEX,#16               ;onko INDEX = 16  ?
        JNE     NEXT                    ;jos ei hypp„„ NEXT
        SJMP    $                       ;lopetus

        END
