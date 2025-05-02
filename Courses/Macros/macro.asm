; Create a program that uses macros with 2 or more parameters.

org 100h

%macro printChar 1
    mov al, [%1]
    add al, '0'
    mov ah, 0eh
    int 10h
%endmacro


section .data
    var1 db 6
    var2 db 9

section .text
    start:
        printChar var1
        printChar var2

        jmp exit

    exit:
        mov ah, 4ch
        int 21h