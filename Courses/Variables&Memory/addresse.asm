; Create a program that uses variables' addresses to manipulate data.
; Use the section .bss to declare variables.

org 100h

section .bss
    var resb 1        

section .text
    mov byte [var], 8
    start:
        mov al, [var]
        add al, '0'
        mov ah, 0eh
        int 10h

    exit:
        mov ah, 4ch
        int 21h