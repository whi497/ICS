## 计算机系统概论

### 第二章 bit，数据类型及运算

> bit是信息的基本单位能表示一个0或1。

无符号整数与有符号整数。

##### 补码：(2's complement)

> 负数数值位取反加一，ps：对整位取反加一得其相反数

##### 进制转化

##### 算术运算

* 加法直接加，减法补码运算，乘除使用移位操作。

* **符号位扩展**，正数补0，负数补1（以补码表示）位数不同的二进制运算先扩展为同位。**十进制运算大法**
* 溢出，同位相加可能会溢出，向前进位与符号位不同代表溢出产生错误

##### 逻辑运算

* 与或非，异或同或，以及按位进行上述操作。
* 位矢量：以n bit代表n个单元，0，1表示其工作与否。

##### 浮点数   P26 (Floating-point converse to FIxed-point)

通常采用IEEE标准，共三十二位。第一位为符号位(sign)，后八位表示指数（1<=n<=254)(有效计为n-127)，在后23位表示小数。

##### ASCII码：last page



### 第三章 数字逻辑

##### MOS晶体管

* NMOS：高电平导通
* PMOS：低电平导通

##### 由MOS管构成逻辑门  P35
AND OR NOT is complement

要证明其他门或门组合完备，需要证明它能实现与，或，非。

##### 摩根定律：用于转换非
##### 组合逻辑电路
* 编码器
* 译码器（Decoder)
* 复用器（选择器)(MUX)
* 全加器（FULL Adder）(减法器对另一输入取非)
* Incrementer(增量器)
* 可编程逻辑阵列（PLD）
##### 储存单元（Basic Storage Elements)
Combinational 组合的
Sequential 时序的  锁存器 寄存器 触发器

##### 内存   P46

内存大小通常为寻址空间*寻址能力

* 寻址空间：n bit 表示其有$$2^n$$个内存单元（n 通常也代表地址线根数）
* 寻址能力：m bit 表示其有每个内存单元有 m bit 大小

A向量表示地址，WE 为write enable.

##### 状态机（State Machine）

有限状态机（Finite State Machine）：每个状态都是系统处于一个状态的快照，包含：

* 有限系统状态
* 有限输入输出
* 状态迁移方向
* 状态转换原因

在计算机中状态的改变通常由时钟信号进行引导。

##### 数据通路（Data Path）

* Control Unit 
* Processing Unit
* Memory Unit
* I/O



### 冯.诺伊曼模型
##### LC3 Data Path

* Memory: Storage of information (data/program)

*  Processing Unit: Computation/Processing of Information

*  Input: Means of getting information into the computer. e.g. keyboard, mouse

*  Output: Means of getting information out of the computer. e.g. printer, monitor

*  Control Unit: Makes sure that all the other parts perform their tasks correctly and at the correct time.

##### Memory

* Address  |  Contents

* Basic Operation: LOAD  |  STORE
* Interface to memory: (内存接口)
  * MAD: Memory Address Register
  * MDR: Memory Data Register

##### Processing Unit

* Function Unit

* Register

* Word Size（常见的32位处理器，64位处理器。字长与处理能力有关）

##### Control Unit

* Instruction Register(IR):存储当前指令
* Program Counter(PC):指向下一条应当执行的指令位置的“指针”<img src="D:\wh030917\Documents\1624745389\FileRecv\MobileFile\E032BD17EAD873CB3EDCA0F5F2F81F16.png" alt="E032BD17EAD873CB3EDCA0F5F2F81F16" style="zoom: 25%;" />

##### Instruction

* opcode:操作指令
* operands:操作数或地址
* Instruction Set Architecture(ISA):指令集结构

### The LC3  Operate Instructions

##### Memory of LC3:

寻址空间：$$2^{16}$$(或65536)

寻址能力(字大小)：16bit

##### Registers:

* eight general-purpose register(八个通用寄存器)：$$R_0 - R_7$$

* other register

##### opcode

* 15 opcodes（1101 保留没有定义暂不可使用）
* Operate opcode: <u>ADD,AND,NOT</u>
* Data Movement: <u>LD,LDI,LDR</u>,LEA,ST,STR,STI
* Control instruction: BR, JSR/JSRR, JMP(RET), RTI, TRAP

TIP: the opcodes with underline will set condition codes: **N: negative Z: zero P: positive**
**Attention**:LEA no longer sets the condition codes.

TRAP x23使用R0暂存读入值。与返回相关的指令会使用R7暂存部分恢复信息。

##### Addressing Modes

* 非寻址：立即数，通用寄存器
* 寻址：PC相关寻址，间接寻址，base+offset寻址

##### Data Path
* 全局总线
* 内存
* ALU和寄存器
* PC和PCMUX
* MAR和MARMUX

![C372F95BA750C8B9565BD67AD9766348](D:\wh030917\Documents\1624745389\FileRecv\MobileFile\C372F95BA750C8B9565BD67AD9766348.png)