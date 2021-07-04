IOC1            EQU 16H:BYTE
PWMC            EQU 17H:BYTE

                RSEG AT 40H

PWM_VALUE:      DSB 1
                
                                

                CSEG AT 9000H

                LD      IOC1,#21h
LOOP:           LDB     PWMC,PWM_VALUE
                SJMP    LOOP
                END
