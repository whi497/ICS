.ORIG X3000
JSR JUDGE 
HALT

JUDGE   ST R7 ADDR
        AND R2 R2 #0
        AND R1 R1 #0
        AND R3 R3 #0
        ADD R2 R2 #2
        ADD R1 R1 #1
TADD    ADD R3 R2 #0
        AND R4 R4 #0
MUST    ADD R4 R4 R2
        ADD R3 R3 #-1
        BRZ MUTI
        BRNZP MUST
MUTI    NOT R3 R0
        ADD R3 R3 #1
        ADD R5 R4 R3
        BRP OUT0
        JSR MOD0
        BRZ RE1
        ADD R2 R2 #1
        BRNZP TADD
RE1     AND R1 R1 #0  
OUT0    LD R7 ADDR
        RET

MOD0    AND R5 R5 #0
        AND R6 R6 #0
        NOT R6 R0
        ADD R6 R6 #1
BACK    ADD R5 R5 R2
        BRNZ RES
        ADD R3 R5 R6
        BRZP OUT1
        BRNZP BACK
RES     AND R3 R3 #0
        ADD R3 R3 #1
OUT1    RET
ADDR    .FILL #0
.END