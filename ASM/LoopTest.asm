gotoxy macro column, row
mov ah,02
mov dh,row
mov dl,column
int 10h
endm

print macro char
mov ah,02
mov dl,char
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

conLoopIncrement macro rowX, character, limit, loopname
inc rowX
inc character
inc cx
cmp cx, limit
jbe loopname
endm

uncLoopIncrement macro rowX1, columnY1, character1, loopnameinc
inc rowX1
inc columnY1
inc character1
loop loopnameinc
endm

uncLoopDecrementA macro rowX2, columnY2, character2, loopnamedecA
inc rowX2
dec columnY2
dec character2
loop loopnamedecA
endm

uncLoopDecrementB macro rowX3, columnY3, character3, loopnamedecB
inc rowX3
dec columnY3
inc character3
loop loopnamedecB
endm

initialize macro value, loopNAME, columnYvar, rowXvar, charName
mov cx, value
loopNAME:gotoxy columnYvar, rowXvar
print charName
endm

keyVariables macro
char1 db '1'
char2 db 'A'
char3 db 'A'
char4 db 'Z'
rowZero db 0
columnZero db 0
rowA db 0
columnA db 0
rowB db 0
columnB db 23
rowC db 0
columnC db 23
endm

cseg segment para 'code'
assume cs:cseg
org 100h
start:jmp begin
keyVariables
begin:
clear

;conLoopIncrement = Conditional Looping Incrementation
;format: conLoopIncrement = row, character, limit, loopName
initialize 0, loopA, 39, rowZero, char1
conLoopIncrement rowZero, char1, 10, loopA

;uncLoopIncrement = Unconditional Looping Incrementation
;format: uncLoopIncrement = row, column, character, loopName
initialize 24, loopB, columnA, rowA, char2
uncLoopIncrement rowA, columnA, char2, loopB

;uncLoopDecrement = Unconditional Looping Decrementation (print decrementation)
;format: uncloopDecrement = row, column, character, loopName
initialize 24, loopC, columnB, rowB, char3
uncLoopDecrementA rowB, columnB, char3, loopC

;uncLoopDecrement = Unconditional Looping Decrementation (print incrementation)
;format: uncloopDecrement = row, column, character, loopName
initialize 24, loopD, columnC, rowC, char4
uncLoopDecrementA rowC, columnC, char4, loopD

exit