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

cseg segment para 'code'
assume cs:cseg
org 100h
start:
clear

;code here

exit