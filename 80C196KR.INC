;*****************************************************************************
;
; 80C196KR.INC - DEFINITION OF SYMBOLIC NAMES FOR THE I/O REGISTERS
;                OF THE 8XC196KR
;                Copyright INTEL Corporation 1989
;*****************************************************************************

BANK0           EQU     00H
BANK1F          EQU     1FH       ; WSR = 1f to map 1F80/1FDF -> 80/DF

;***************************************************************************** 

P1PIN           EQU     0D6H:BYTE
P1REG           EQU     0D4H:BYTE
P1IO            EQU     0D2H:BYTE
P1SSEL          EQU     0D0H:BYTE

P6PIN           EQU     0D7H:BYTE
P6REG           EQU     0D5H:BYTE
P6IO            EQU     0D3H:BYTE
P6SSEL          EQU     0D1H:BYTE

P2PIN           EQU     0CFH:BYTE
P2REG           EQU     0CDH:BYTE
P2IO            EQU     0CBH:BYTE
P2SSEL          EQU     0C9H:BYTE

TIMER1          EQU     09AH:WORD
TIMER2          EQU     09EH:WORD
TIMER1_CONTROL  EQU     098H:BYTE
TIMER2_CONTROL  EQU     09EH:BYTE

SP_BAUD         EQU     0BCH:WORD
SP_CONTROL      EQU     0BBH:BYTE
SP_STATUS       EQU     0B9H:BYTE
SBUF_TX         EQU     0BAH:BYTE
SBUF_RX         EQU     0B8H:BYTE

EPAIPV          EQU     0A8H:BYTE
EPA_PEND        EQU     0A2H:WORD
EPA_PEND1       EQU     0A6H:BYTE
EPA_MASK        EQU     0A0H:WORD
EPA_MASK1       EQU     0A4H:WORD ; BUG... must write to mask as a word

AD_TIME         EQU     0AFH:BYTE
AD_TEST         EQU     0AEH:BYTE
AD_COMMAND      EQU     0ACH:WORD
AD_RESULT       EQU     0AAH:WORD

SSIO_BAUD_COUNT EQU     0B6H:BYTE
SSIO_BAUD       EQU     0B4H:BYTE
SSIO_STCR1      EQU     0B3H:BYTE
SSIO_STB1       EQU     0B2H:BYTE
SSIO_STCR0      EQU     0B1H:BYTE
SSIO_STB0       EQU     0B0H:BYTE

P3PIN           EQU     1FFEH:BYTE
P4PIN           EQU     1FFFH:BYTE
P3REG           EQU     1FFCH:BYTE
P4REG           EQU     1FFDH:BYTE

COMP_TIME1      EQU     08EH:WORD
COMP_CONTROL1   EQU     08CH:BYTE
COMP_TIME0      EQU     08AH:WORD
COMP_CONTROL0   EQU     088H:BYTE

EPA_TIME9       EQU     01F86H:WORD
EPA_CONTROL9    EQU     01F84H:BYTE
EPA_TIME8       EQU     01F82H:WORD
EPA_CONTROL8    EQU     01F80H:BYTE
EPA_TIME7       EQU     01F7EH:WORD
EPA_CONTROL7    EQU     01F7CH:BYTE
EPA_TIME6       EQU     01F7AH:WORD
EPA_CONTROL6    EQU     01F78H:BYTE
EPA_TIME5       EQU     01F76H:WORD
EPA_CONTROL5    EQU     01F74H:BYTE
EPA_TIME4       EQU     01F72H:WORD
EPA_CONTROL4    EQU     01F70H:BYTE
EPA_TIME3       EQU     01F6EH:WORD
EPA_CONTROL3    EQU     01F6CH:WORD
EPA_TIME2       EQU     01F6AH:WORD
EPA_CONTROL2    EQU     01F68H:WORD
EPA_TIME1       EQU     01F66H:WORD
EPA_CONTROL1    EQU     01F64H:WORD
EPA_TIME0       EQU     01F62H:WORD
EPA_CONTROL0    EQU     01F60H:WORD

