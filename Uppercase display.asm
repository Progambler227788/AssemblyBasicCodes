.model small

 
.data
a3 dw 'Haroon is son of Talha. ',0ah,0dh,'$'

.code
 
; Assembler program to display my son name 10 times  using while loop
mov ax,@data
mov ds,ax 
mov ax,a3    
mov a3,ds  
mov ax,a3


mov ah,4ch
int 21h
