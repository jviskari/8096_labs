;X96 LAB11.ASM (C) Joonas Viskari 1998

        RSEG AT 22h

SRC:    DSW 1

        RSEG AT 66h

DST1:   DSW 1
DST2:   DSW 1
       
        
        
        CSEG AT 9000h           ;Ohjelmaa alkaa osoitteesta 9000h
        
        ADD      DST1,SRC       ;lis„t„„n rekisteriin 66h 22h      
        ADD      DST2,SRC       ;lis„t„„n rekisteriin 68h 22h       

        SJMP     $              ;hallittu lopetus
        END
