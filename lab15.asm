;x96 LAB15.ASM Joonas Viskari 1998

ADDR    EQU     0A000H

        RSEG AT 0040H

AX:     
AL:     DSB 1     
AH:     DSB 1

        CSEG AT 9000H

        LDB     AL,23H                  ;byterekisteri 23 apurekisteriin
        ADD     AX,ADDR[0]              ;AX=[23]+[0A000H]
        ST      AX,ADDR[0]              ;AX->0A000H
        
        SJMP    $                       ;lopetus

        END
