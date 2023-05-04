.model small      
.stack 100h

.data 
msg db 'The addition of '
num1 db ?,' and '
num2 db ?, ' is '
sum db ?, ' their result$'


.code

mov ah,2
mov dl,'?'
int 21h

mov ah,1
int 21h  
mov num1,al
int 21h
mov num2,al

add num1,al


mov ah,4ch
int 21h