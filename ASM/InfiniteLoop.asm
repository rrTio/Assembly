gotoxy macro row,column
mov ah,02
mov dh,row
mov dl,column
int 10h
endm

printCharacter macro char
mov ah, 02
mov dl,char
int 21h
endm

cseg segment para 'code'
assume cs:cseg;ds:cseg;ss:cseg;es:cseg
org 100h
start:
mov ax,0003h
int 10h

x:mov cx,5
printCharacter 'A'
loop x



gotoxy 23,0
int 20h
cseg ends
end start
endm
