.model small
.data

a db -40h
b db -30h

.code
 
; Assembler Program to store bigger number in CX. Making CX absolute. Comparing cl with 0 and make bl 1 in case of +ve cl
; -1 in bl in case -ve cl and 0 in bl if ZF=0 is on in case of CL compare with zero
mov ax,@data
mov ds,ax 

mov bl,b
mov cl,a 
cmp cl,bl  ; a-b .. if a big then exit other wise cl,b
jg next
mov cl,b    


next:   

; check cx is negative. if not make it, +ve. In case of +ve, dont do anything
cmp cl,0
jge nep
neg cl ; making positive   

; place 1,0,-1 in bl according to value of cl      
;mov cl,0   
;mov cl,-9
;mov cl,5

cmp cl,0

je zero
jg g
jl l

zero:
mov bl,0  
jmp nep  

g:
mov bl,1 
jmp nep   

l:
mov bl,-1
nep:
mov ah,4ch
int 21h
