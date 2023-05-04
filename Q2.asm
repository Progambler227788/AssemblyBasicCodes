
.model small
.stack 100h         

; d= b-3*a

; define data segment with variables a and b of binary that are 21 and 29 in decimal, 
.data
a db 10101b      
b db 11101b
     ; after subtraction 11000 .. after 2's complement 01000 is 08 in decimal and also 08h in hexa
.code

; apply logic
mov ax,@data
mov ds,ax
mov ah,a
sub ah,b
neg ah    ; gives 8


mov ah,4ch
int 21h ; interrupt command