; Create a program that performs separated actions 
;       defined in functions. All those must be executed.

org 100h ; .COM program
; The program will be loaded at offset 100h in memory

section .data
    var1 db 1
         db 4ch
    var2 db 3 


section .text
    exit:
        mov ah, [var1+1] ; Function to terminate program
        int 21h ; Interrupt the CPU
    start:
        jmp claculations
    claculations:
        mov ax, [var1] ; Assign value 1 to AX register
        mov bx, [var2] ; Assign value 3 to BX register
        add ax, bx ; Add BX to AX (AX = 1 + 3)
        ; AX now contains 4
        
        mov bx, 2 ; Assign value 2 to BX register
        sub ax, bx ; Subtract BX from AX (AX = 4 - 2)
        ; AX now contains 2

        ; reassign var1
        ; mov byte [var1], 4ch ; Assign value 4ch to var1

        jmp exit
