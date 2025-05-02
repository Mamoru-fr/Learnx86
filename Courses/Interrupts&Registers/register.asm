; Create a program that transfers data with registers.
; It must perform assigning, adding and substracting instructions.

org 100h ; .COM program
; The program will be loaded at offset 100h in memory

start:
    mov ax, 1 ; Assign value 1 to AX register
    mov bx, 3 ; Assign value 3 to BX register
    add ax, bx ; Add BX to AX (AX = 1 + 3)
    ; AX now contains 4
    
    mov bx, 2 ; Assign value 2 to BX register
    sub ax, bx ; Subtract BX from AX (AX = 4 - 2)
    ; AX now contains 2

    mov ah, 4ch ; Function to terminate program
    int 21h ; Interrupt the CPU