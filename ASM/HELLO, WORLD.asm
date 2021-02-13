data segment
text1 db 'Hello, World!$'
data ends
;///////////////////////////////////////
cseg segment para 'code'
assume cs:cseg;ds:cseg;ss:cseg;es:cseg
org 100h
start:
mov ax,0003h
int 10h
;///////////////////////////////////////
mov ah,02
mov dh,00
mov dl,00
int 10h
mov ax,data
mov ds,ax
LEA DX,text1
mov ah,09h
int 21h
;///////////////////////////////////////
int 20h
cseg ends
end start