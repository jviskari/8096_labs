;X96 LAB12.ASM (C) Joonas Viskari 1998

        RSEG AT 23h

SRC:    DSB 1

        RSEG AT 66h

DST1L:  DSB 1
DST1H:  DSB 1
DST2L:  DSB 1
DST2H:  DSB 1

       
        
        
        CSEG AT 9000h           ;Ohjelmaa alkaa osoitteesta 9000h
        
        ADDB     DST1L,SRC      ;lis„t„„n rekisteriin 66h 23h      
        ADDCB    DST1H,0        ;Otetaan Carry huomioon

        ADDB     DST2L,SRC      ;lis„t„„n rekisteriin 68h 23h       
        ADDCB    DST2H,0        ;otetaan Carry huomioon
        SJMP     $              ;hallittu lopetus
        END
