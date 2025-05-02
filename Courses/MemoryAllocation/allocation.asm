; Create a program that allocates and deallocates a block of RAM, 
;       as well as writes and reads data onto the allocated RAM block.

org 100h 

%macro printChar 1
    mov al, [%1]
    add al, '0'
    mov ah, 0eh
    int 10h
%endmacro

%macro allocation 1
    mov bx, %1
    mov ah, 48h
    int 21h
%endmacro

%macro deallocation 1
    mov es, %1
    mov ah, 49h
    int 21h
    jc error
%endmacro

%macro writeMemory 2
    mov al, %2
    pop es
    mov di, %1
    mov byte [es:di], al
    push es
%endmacro

%macro readMemory 2
    pop es
    mov di, %1
    mov ax, [es:di]
    mov byte %2, al
    push es 
    
%endmacro

section .data
    var1 db 5
    errorMsg db "Error blud", 0

section .bss
    var2 resb 1

section .text
    start:
        printChar var1
        printChar var2

        allocation 1
        push ax

        writeMemory 8, [var1]
        readMemory 8, [var2]

        pop ax
        deallocation ax

        printChar var1
        printChar var2

        jmp exit

    error:
        mov dx, [errorMsg]
        mov cx, 10
        mov bx, 1
        mov ah, 40h
        int 21h
    
    exit:
        mov ah, 4ch
        int 21h