;*******************************************************************************
;
; 8096.INC - DEFINITION OF SYMBOLIC NAMES FOR THE I/O REGISTERS OF THE
;            8096 AND THE 80C196
;            Copyright INTEL Corporation 1983,1990
;*******************************************************************************
;
;/*
; *     8096 SFR's
; */
R0             EQU   00H:WORD      ; R    ZERO REGISTER
AD_COMMAND     EQU   02H:BYTE      ;   W
AD_RESULT_LO   EQU   02H:BYTE      ; R
AD_RESULT_HI   EQU   03H:BYTE      ; R
HSI_MODE       EQU   03H:BYTE      ;   W
HSO_TIME       EQU   04H:WORD      ;   W
HSI_TIME       EQU   04H:WORD      ; R
HSO_COMMAND    EQU   06H:BYTE      ;   W
HSI_STATUS     EQU   06H:BYTE      ; R
SBUF           EQU   07H:BYTE      ; R/W
INT_MASK       EQU   08H:BYTE      ; R/W
INT_PENDING    EQU   09H:BYTE      ; R/W
WATCHDOG       EQU   0AH:BYTE      ;   W  WATCHDOG TIMER
TIMER1         EQU   0AH:WORD      ; R
TIMER2         EQU   0CH:WORD      ; R
BAUD_RATE      EQU   0EH:BYTE      ;   W
IOPORT0        EQU   0EH:BYTE      ; R
IOPORT1        EQU   0FH:BYTE      ; R/W
IOPORT2        EQU   10H:BYTE      ; R/W
SP_CON         EQU   11H:BYTE      ;   W
SP_STAT        EQU   11H:BYTE      ; R
IOC0           EQU   15H:BYTE      ;   W
IOS0           EQU   15H:BYTE      ; R
IOC1           EQU   16H:BYTE      ;   W
IOS1           EQU   16H:BYTE      ; R
PWM_CONTROL    EQU   17H:BYTE      ;   W
SP             EQU   18H:WORD      ; R/W
;
;/*
; *     80C196KB SFR's
; */
IOC2           EQU   0BH:BYTE      ;   W
T2CAPTURE      EQU   0CH:WORD      ; R/W
IPEND1         EQU   12H:BYTE      ; R/W
IMASK1         EQU   13H:BYTE      ; R/W
WSR            EQU   14H:BYTE      ; R/W
IOS2           EQU   17H:BYTE      ; R  
;
;/*
; *     80C196KC SFR's - HWindow 1
; */
AD_TIME        EQU   03H:BYTE      ; R/W
PTSSEL         EQU   04H:WORD      ; R/W
PTSSRV         EQU   06H:WORD      ; R/W
T2CONTROL      EQU   0CH:BYTE      ; R/W
PWM1_CONTROL   EQU   16H:BYTE      ; R/W
PWM2_CONTROL   EQU   17H:BYTE      ; R/W
