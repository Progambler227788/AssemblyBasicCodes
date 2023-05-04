
.model small
.stack 100h         

; a=10-a+1


.data 
bin db 10001b 
   
.code


mov ax,@data
mov ds,ax  



mov al,bin  

mov ah,02h
mov dl,bin
int 21h

not al ; take 1s complement
mov bin,al  

mov ah,02h
mov dl,bin
int 21h





mov ah,4ch
int 21h ; interrupt command