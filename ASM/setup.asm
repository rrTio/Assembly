data segment
;strings here
data ends

gotoxy macro y,x
mov ah,02
mov dh,y
mov dl,x
int 10h
endm

print macro char,colour,repetition
mov ah,09
mov al,char
colour
mov cx,repetition
int 10h
endm

string macro t
mov ax,data
mov ds,ax
LEA DX,t
mov ah,09h
int 21h
endm

clear macro
mov ax,0003h
int 10h
endm

exit macro
int 20h
cseg ends
end start
endm

;conLoopIncrement = Conditional Looping Incrementation
;format: conLoopIncrement = row, character, limit, loopName
conLoopIncrement macro rowX, character, limit, loopname
inc rowX
inc character
inc cx
cmp cx, limit
jbe loopname
endm

;uncLoopIncrement = Unconditional Looping Incrementation
;format: uncLoopIncrement = row, column, character, loopName
uncLoopIncrement macro rowX1, columnY1, character1, loopnameinc
inc rowX1
inc columnY1
inc character1
loop loopnameinc
endm

;uncLoopDecrement = Unconditional Looping Decrementation
;format: uncloopDecrement = row, column, character, loopName
uncLoopDecrement macro rowX2, columnY2, character2, loopnamedec
inc rowX2
dec columnY2
dec character2
loop loopnamedec
endm

cseg segment para 'code'
assume cs:cseg
org 100h
start:
clear

;code here

exit