gotoxy macro r,c
mov ah,02
mov dh,r
mov dl,c
int 10h
endm

printChar macro x
mov ah,02
mov dl,x
int 21h
endm

cseg segment para 'code'
assume cs:cseg;ds:cseg;ss:cseg;es:cseg
org 100h
start:jmp begin
RightChar db 'A'
rightCharRow db 7 ;row 7
characterLeft db 'A'
leftCharacterRow db 0 ;Left Character Row 0
leftCharacterColumn db 0 ;Left Character Column 0
characterRight db 'A'
RightCharacterRow db 0 ; Right Character Row 0
RightCharacterColumn db 23 ;Right Character Column 23
begin:
mov ax,0003h
int 10h

;A-H
mov cx,0
x:gotoxy rightCharRow, 50 ;50 == column
printChar RightChar
inc rightCharRow ;increment rows
inc RightChar ;increment character
inc cx ;increment value
cmp cx,8 ;loop terminator
jbe x ;check validity

;====
;A-Z
mov cx,24 ;24 == limit
y:gotoxy leftCharacterRow,leftCharacterColumn
printChar characterLeft
inc leftCharacterRow
inc leftCharacterColumn
inc characterLeft
loop y

mov cx,24 ;24 == limit
z:gotoxy RightCharacterRow,RightCharacterColumn
printChar characterRight
inc RightCharacterRow
dec RightCharacterColumn
inc characterRight
loop z

int 20h
cseg ends
end start
