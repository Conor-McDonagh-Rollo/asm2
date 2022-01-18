*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here

    LEA QUESTION,A1
    MOVE.B  #14,D0
    TRAP    #15
    MOVE.B  #4,D0
    TRAP    #15
    BSR ENDL
    LEA DISPLAY,A1
    MOVE.B  #14,D0
    TRAP    #15
    MOVE.B  #3,D0
    TRAP    #15

    SIMHALT             ; halt simulator

* Put variables and constants here
ENDL:
    MOVEM.L D0/A1,-(A7)
    MOVE    #14,D0
    LEA     CRLF,A1
    TRAP    #15
    MOVEM.L (A7)+,D0/A1
    RTS

QUESTION:   DC.B    'Enter your gamer points: ',0

DISPLAY:    DC.B    'Your points equal: ',0

CRLF:           DC.B    $0D,$0A,0

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
