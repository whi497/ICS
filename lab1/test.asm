.ORIG X3000
    LD  R2 BASE
    ADD R3 R0 R2
    BRP s2
    LEA R1 TAG1
    ADD R0 R0 R1
    BRNZP res
s2  LEA R1 TAG2
    LD  R2 get
    AND R3 R3 R2
    ADD R0 R1 R3
res LDR R7 R0 #0
HALT
BASE .FILL #-19
get  .FILL #127
TAG1 .FILL #1
    .FILL #1
    .FILL #2
    .FILL #4
    .FILL #6
    .FILL #10
    .FILL #18
    .FILL #30
    .FILL #50
    .FILL #86
    .FILL #146
    .FILL #246
    .FILL #418
    .FILL #710
    .FILL #178
    .FILL #1014
    .FILL #386
    .FILL #742
    .FILL #722
    .FILL #470
TAG2 .BLKW #1
    .FILL #930
    .FILL #326
    .FILL #242
    .FILL #54
    .FILL #706
    .FILL #166
    .FILL #274
    .FILL #662
    .FILL #994
    .FILL #518
    .FILL #818
    .FILL #758
    .FILL #770
    .FILL #358
    .FILL #850
    .FILL #342
    .FILL #34
    .FILL #710
    .FILL #370
    .FILL #438
    .FILL #834
    .FILL #550
    .FILL #402
    .FILL #22
    .FILL #98
    .FILL #902
    .FILL #946
    .FILL #118
    .FILL #898
    .FILL #742
    .FILL #978
    .FILL #726
    .FILL #162
    .FILL #70
    .FILL #498
    .FILL #822
    .FILL #962
    .FILL #934
    .FILL #530
    .FILL #406
    .FILL #226
    .FILL #262
    .FILL #50
    .FILL #502
    .FILL #2
    .FILL #102
    .FILL #82
    .FILL #86
    .FILL #290
    .FILL #454
    .FILL #626
    .FILL #182
    .FILL #66
    .FILL #294
    .FILL #658
    .FILL #790
    .FILL #354
    .FILL #646
    .FILL #178
    .FILL #886
    .FILL #130
    .FILL #486
    .FILL #210
    .FILL #470
    .FILL #418
    .FILL #838
    .FILL #754
    .FILL #566
    .FILL #194
    .FILL #678
    .FILL #786
    .FILL #150
    .FILL #482
    .FILL #6
    .FILL #306
    .FILL #246
    .FILL #258
    .FILL #870
    .FILL #338
    .FILL #854
    .FILL #546
    .FILL #198
    .FILL #882
    .FILL #950
    .FILL #322
    .FILL #38
    .FILL #914
    .FILL #534
    .FILL #610
    .FILL #390
    .FILL #434
    .FILL #630
    .FILL #386
    .FILL #230
    .FILL #466
    .FILL #214
    .FILL #674
    .FILL #582
    .FILL #1010
    .FILL #310
    .FILL #450
    .FILL #422
    .FILL #18
    .FILL #918
    .FILL #738
    .FILL #774
    .FILL #562
    .FILL #1014
    .FILL #514
    .FILL #614
    .FILL #594
    .FILL #598
    .FILL #802
    .FILL #966
    .FILL #114
    .FILL #694
    .FILL #578
    .FILL #806
    .FILL #146
    .FILL #278
    .FILL #866
    .FILL #134
    .FILL #690
    .FILL #374
    .FILL #642
    .FILL #998
    .FILL #722
    .FILL #982
.END