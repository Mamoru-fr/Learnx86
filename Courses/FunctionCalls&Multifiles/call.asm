; Create a program that calls a function, executes its instructions 
;       and returns to where it was called.

org 100h ; .COM program

section .data
    var1 db 1

section .text 
    start:
    
        mov ax,[var1]
        mov bx,2
        call calcul
        call PrepareExit
        jmp exit

    exit:
        mov ah, [var1] ; Function to terminate program
        int 21h ; Interrupt the CPU

    calcul: 
        add ax, bx
        ret
    
    PrepareExit:
        mov byte [var1], 4ch ; Assign value 4ch to var1
        ret