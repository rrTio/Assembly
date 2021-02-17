data segment 
n1 db 'Juan Dela Cruz$'
n2 db 'BSCPE$'
n3 db '2nd Year Student$'
data ends
cseg segment para 'code'
assume cs:cseg;ds:cseg;ss:cseg;es:cseg
org 100h

start:
mov ax,0003h
int 10h

mov ah,02
mov dh,00
mov dl,30
int 10h
mov ax,data
mov ds,ax
lea dx,n1
mov ah,09h
int 21h

mov ah,02
mov dh,01
mov dl,30
int 10h
mov ax,data
mov ds,ax
lea dx,n2
mov ah,09h
int 21h

mov ah,02
mov dh,02
mov dl,30
int 10h
mov ax,data
mov ds,ax
lea dx,n3
mov ah,09h
int 21h

int 20h
cseg ends
end start
