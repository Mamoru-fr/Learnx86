; Create a program that writes content into a file.

org 100h

section .text 
    start:
        mov dx, filename
        call openFile
        call writeFile

        print buffer2, 10

        call closeFile

        jmp exit



    writeFile:
        mov dx, buffer2
        mov cx, 10,
        mov bx, 1
        mov ah, 40h
        int 21h
        ret







%include "FileRead&Write/read.asm"