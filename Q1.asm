.model small
.stack 100h

; data variables
.data
a db 24h
b db 59h


;code segment
.code  

; initialize data segement address using ds register that is I/O register
mov ax, @data
mov ds, ax

; Apply logic to subtract
mov al, b
sub al, a 



; Exit program
mov ah, 4ch
int 21h
