; Create a program that jumps to a function 
;       if the value in ax is higher than the one in bx.

org 100h

section .text
    exit:
        mov ah, [var1]
        int 21h
