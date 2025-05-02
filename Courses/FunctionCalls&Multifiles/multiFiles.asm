; Create a program that includes another .asm file 
;       and can use its content freely.

org 100h

section .data
    var1 db 4ch

section .text
    start:
        mov ax, 1
        mov bx, 2
        cmp ax, bx
        jne exit

    mov byte [var1], 1

    %include "FunctionCalls&Multifiles/condition.asm"