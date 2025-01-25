# Silent Overflow Bug in Assembly

This repository demonstrates a common but subtle error in assembly language programming: silent overflow during arithmetic operations.  The `bug.asm` file contains code that adds two registers without checking for overflow.  The `bugSolution.asm` file presents a corrected version with proper overflow handling.

This is a critical issue because overflow errors can lead to unexpected program behavior and difficult-to-track bugs.

## Problem Description:

The original code adds two registers (`ax` and `cx`). If the sum exceeds the maximum value of the register, an overflow occurs. However, this overflow is silent - no explicit error is generated. The resulting value is incorrect but the program continues to execute without any warning.

## Solution:

The solution involves checking the carry flag after the addition.  The carry flag is set if an overflow occurs.  The corrected code uses this flag to detect and handle overflows appropriately.