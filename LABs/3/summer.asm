mov 40h,#0015h
mov 50h,#0000h

here:
add a,40h
djnz 40h,here
      
mov 50h,a

