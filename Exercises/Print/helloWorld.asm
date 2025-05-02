; Create a program that prints "Hello, World!" on the DOSBox console.
; int 21h to print a string on the console
;   -> ah = 40h
;   -> bx = 1 as stdout
;   -> dx = string 
;   -> cx = string's number of bytes

org 100h

;; A function that print evry character of a string to have 'Hello, World!' on the console.
; section .data
;     msg db 'H', 'e', 'l', 'l', 'o', ',', ' ', 'W', 'o', 'r', 'l', 'd', '!'
;     msg_len db 13

; section .text 
;     mov bx, 0 
;     start:
;         cmp bl, [msg_len]
;         je exit
;         call print
;         jmp start
        
    
;     exit:
;         mov ah, 4ch
;         int 21h
    
;     print:
;         mov al, [msg+bx]
;         mov ah, 0eh
;         int 10h
;         inc bx
;         ret

org 100h

section .data
    string db 'Hello, World!', 0
    string_len db 13

section .text

    start:
        mov dx, string
        mov cx, [string_len]
        mov bx, 1
        mov ah, 40h
        int 21h

    
    exit:
        mov ah, 4ch
        int 21h    
