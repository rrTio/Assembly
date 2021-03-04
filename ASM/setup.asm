data segment
;strings here
data ends

gotoxy macro y,x
mov ah,02
mov dh,y
mov dl,x
int 10h
endm

printColoured macro char,colour,repetition
mov ah,09
mov al,char
colour
mov cx,repetition
int 10h
endm

print macro char
mov ah,02
mov dl,char
int 21h
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
;format: 
;mov cx, limit/end
;loopName: gotoxy column, row
;print characterVariable
;conLoopIncrement = row, character, limit, loopName
conLoopIncrement macro rowX, character, limit, loopname
inc rowX
inc character
inc cx
cmp cx, limit
jbe loopname
endm

;uncLoopIncrement = Unconditional Looping Incrementation
;format: 
;mov cx, limit/end
;loopName: gotoxy column, row
;print characterVariable
;uncLoopIncrement = row, column, character, loopName
uncLoopIncrement macro rowX1, columnY1, character1, loopnameinc
inc rowX1
inc columnY1
inc character1
loop loopnameinc
endm

;uncLoopDecrementA = Unconditional Looping Decrementation (character decremented
;format: 
;mov cx, limit/end
;loopName: gotoxy column, row
;print characterVariable
;uncloopDecrement = row, column, character, loopName
uncLoopDecrement macro rowX2, columnY2, character2, loopnamedec
inc rowX2
dec columnY2
dec character2
loop loopnamedec
endm

;uncLoopDecrementB = Unconditional Looping Decrementation (character incremented)
;format: 
;mov cx, limit/end
;loopName: gotoxy column, row
;print characterVariable
;uncloopDecrement = row, column, characterVariable, loopName
uncLoopDecrementB macro rowX3, columnY3, character3, loopnamedec
inc rowX3
dec columnY3
inc character3
loop loopnamedecB
endm

cseg segment para 'code'
assume cs:cseg
org 100h
start:
clear

;code/macroVariables here

exit