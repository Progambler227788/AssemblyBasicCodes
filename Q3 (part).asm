
.model small
.stack 100h         

; d= b-3*a

; define data segment with variables a and b of binary that are 21 and 29 in decimal, 
.data 
msg1 db "Enter value for a : $"   
msg2 db 0ah,0dh"Enter value for b : $" 
msg3 db 0ah,0dh,"Value of a,b and d are "
a db ?," is a, "     
b db ?," is b, "
d db ?," is d, $"
    
.code

; apply logic
mov ax,@data
mov ds,ax 

mov ah,09h
lea dx,msg1
int 21h

mov ah,01h
int 21h
mov a,al 

mov ah,09h
lea dx,msg2
int 21h

mov ah,01h
int 21h 

mov b,al   

; perform 3*a

mov bl,03
mov al,a

mul bl ; multiply bl with al




;perform b - result of 3*a

mov al,b
sub al,a

; store result in d
mov d,al


mov ah,09h
lea dx,msg3 
int 21h



mov ah,4ch
int 21h ; interrupt command