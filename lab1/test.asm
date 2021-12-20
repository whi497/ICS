.orig X3000
            ADD R0  R0  #-1
            BRP NEXT
            ADD R7  R7  #1
            HALT
NEXT        LD  R3  NUM
            ADD R7  R7  #2 
            ADD R6  R6  #1
            ADD R5  R5  #1
LOOP        ADD R0  R0  #-1
            BRP CONTINUE
            HALT
CONTINUE    ADD R4  R5  #0
            ADD R5  R6  #0
            ADD R6  R7  #0
            ADD R7  R4  R6
            ADD R7  R7  R4
            AND R7  R7  R3
            BRP LOOP
NUM         .FILL x03FF
            .FILL #930
            .FILL #1
            .FILL #1
            .FILL #338
.END