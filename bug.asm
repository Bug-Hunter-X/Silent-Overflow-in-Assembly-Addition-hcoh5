```assembly
mov ax, bx
add ax, cx
mov dx, ax
; ... more instructions ...
```

This code snippet demonstrates a potential problem if the addition of `ax` and `cx` results in an overflow.  If the sum exceeds the maximum value that `ax` can hold (65535 for a 16-bit register), the result will wrap around, leading to an incorrect value in `ax` and consequently in `dx`. This silent overflow can be very difficult to debug.