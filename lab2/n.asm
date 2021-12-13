.ORIG X3000
    ADD R1 R1 #1;预置R1 R2 R3的值为1，1，2
    ADD R2 R2 #1
    ADD R3 R3 #2
    LD R5 F;将1023存入R5以便后面取模
    ADD R7 R1 #0;对0，1，2特殊讨论
    ADD R0 R0 #-1
    BRN L0
    ADD R7 R2 #0
    ADD R0 R0 #-1
    BRN L0
    ADD R7 R3 #0
    ADD R0 R0 #-1
L1  BRN L0;迭代递推得到结果
    ADD R4 R1 R1
    ADD R7 R3 R4 
    AND R7 R7 R5
    ADD R1 R2 #0
    ADD R2 R3 #0
    ADD R3 R7 #0
    ADD R0 R0 #-1
    BRNZP L1
L0  HALT
    F  .FILL #1023
    Fa .FILL #930
    Fb .FILL #2
    Fc .FILL #10
    Fd .FILL #754
.END