; Create a program that uses the stack to store and retreive data.
; Use the section .bss to declare variables.

org 100h

section .bss
    var resb 1        

section .text
    mov byte [var], 9
    start:
        mov ax, [var]
        push ax
        mov byte [var], 6
        call printChar
        pop ax
        mov byte [var], al
        call printChar
        jmp exit

    printChar:
        mov al, [var]
        add al, '0'
        mov ah, 0eh
        int 10h
        ret

    exit:
        mov ah, 4ch
        int 21h