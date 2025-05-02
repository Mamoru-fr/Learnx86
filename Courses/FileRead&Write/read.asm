; Create a program that reads a file's content.

org 100h

%macro print 2
    mov dx, %1
    mov cx, %2
    mov bx, 1
    mov ah, 40h
    int 21h 
    
%endmacro

section .data
    filename db "content.bin", 0

section .bss
    buffer resb 9
    filehandler resw 1

section .text

    start:
        mov dx, filename
        call openFile
        call readFile
        call closeFile


        jmp exit

    openFile:
        mov ah, 3dh
        mov al, 0
        int 21h
        mov word [filehandler], ax
        ret

    closeFile:
        mov bx, [filehandler]
        mov ah, 3eh
        int 21h
        ret

    readFile:
        mov bx, [filehandler]
        mov dx, buffer
        mov cx, 9
        mov ah, 3fh
        int 21h
        print buffer, 9
        ret

    exit:
        mov ah, 4ch
        int 21h