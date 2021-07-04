IOC1            EQU 16H:BYTE
PWMC            EQU 17H:BYTE
HSO_TIME        EQU 04H:WORD
HSO_COM         EQU 06H:BYTE
INT_MASK        EQU 08H:BYTE
TIMER1          EQU 0AH:WORD

                RSEG AT 40H

PWM_VALUE:      DSB 1
DIRECTION:      DSB 1
                
                RSEG AT 42H

DELAY:          DSW 1
                
                CSEG AT 8500H

SWINT:          PUSHF
                
                LDB HSO_COM, #00111000B
                ADD HSO_TIME,TIMER1,DELAY
                
                CMPB    DIRECTION,[0]
                JNE     DECREMENT
               

INCREMENT:      LDB     DIRECTION,#1
                INCB    PWM_VALUE
                CMPB    PWM_VALUE,#0FFH
                JNE     READY
                LDB     DIRECTION,[0]

                SJMP    READY

DECREMENT:      LDB     DIRECTION,[0]
                DECB    PWM_VALUE

                CMPB    PWM_VALUE,[0]
                JNE     READY
                LDB     DIRECTION,#1



READY:          LDB     PWMC,PWM_VALUE
                POPF
                RET

                CSEG AT 9000H

ALKU:           LDB     PWM_VALUE,[0]
                LD      IOC1,#21h   
                LDB HSO_COM, #00111000B
                ADD HSO_TIME,TIMER1,DELAY
                ORB INT_MASK, #00100000b                                    
                SJMP    $
                END




                
                                
