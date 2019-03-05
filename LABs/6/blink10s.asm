BLINK:
SETB P1.0
LCALL SECS
CLR P1.0
LCALL SECS
SJMP BLINK


SECS:
MOV 50h,#00C8H
LOOP:
LCALL MILLIS
DJNZ 50h,LOOP
RET

MILLIS:
MOV TMOD,#01H
MOV TH0,#004CH
MOV TL0,#0004H
CLR TF0
SETB TR0
HERE:
JNB TF0,HERE
CLR TR0
RET










      BLINK:
0000| SETB P1.0        D2
0001|                  90
0002| LCALL SECS       12
0003|                  41  
0004|                  0C
0005| CLR P1.0         C2
0006|                  90
0007| LCALL SECS       12
0008|                  41
0009|                  0C
000A| SJMP BLINK       80
000B|                  F4
      
      SECS:
000C| MOV R0,#00C8H    78
000D|                  C8
      LOOP:
000E| LCALL MILLIS     12
000F|                  41
0010|                  14
0011| DJNZ R0,LOOP     D8
0012|                  F9
0013| RET              22            
       
      MILLIS:
0014| MOV TMOD,#01H    75
0015|                  89
0016|                  01
0017| MOV TH0,#004CH   75
0018|                  8C
0019|                  4C
001A| MOV TL0,#0004H   75
001B|                  8A
001C|                  04
001D| CLR TF0          C2
001E|                  8D
001F| SETB TR0         D2
0020|                  8C
      HERE:
0021| JNB TF0,HERE     30
0022|                  8D
0023|                  FD
0024| CLR TR0          C2
0025|                  8C
0026| RET              22














