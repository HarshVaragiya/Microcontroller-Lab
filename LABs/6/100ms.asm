MOV 50h,#0AH
LOOP:
LCALL MILLIS
DJNZ 50h,LOOP

DONE:
SJMP DONE

MILLIS:
MOV TMOD,#01H
MOV TH0,#00DCH
MOV TL0,#0000H
CLR TF0
SETB TR0
HERE:
JNB TF0,HERE
CLR TR0
RET
