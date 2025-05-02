; Create a program that returns to DOS (finishes properly) 
;       with an exit code of 0 (no errors).

org 100h ; .COM program
; The program will be loaded at offset 100h in memory

start:
    mov ah, 4ch ; Function to terminate program
    int 21h ; Interrupt the CPU