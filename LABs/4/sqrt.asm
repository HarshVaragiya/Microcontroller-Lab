MOV R7,#1AH
ACALL SQRT
HERE:
SJMP HERE

SQRT:
MOV A,R7  
MOV R6,A  
LOOP:
MOV A,R6
MOV R5,A
MOV A,R7
MOV B,R6
DIV AB
ADD A,R6
MOV B,#02H
DIV AB
MOV R6,A
CLR C
SUBB A,R5
JNZ LOOP
RET
