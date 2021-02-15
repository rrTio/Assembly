cseg segment para 'code'
assume cs:cseg;ds:cseg;ss:cseg;es:cseg
org 100h
start: jmp begin
n1 db 'Juan Dela Cruz$'
n2 db 'BSCPE$'
n3 db '2nd Year Student$'

begin:
mov ax,0003h
int 10h

mov ah,02
mov dh,11
mov dl,25
int 10h
mov ah,09
lea dx,n1
int 21h

mov ah,02
mov dl,12
mov dh,25
int 10h
mov ah,09
lea dx,n2
int 21h

mov ah,02
mov dl,10
mov dh,25
int 10h
mov ah,09
lea dx,n3
int 21h

int 20h
cseg ends
end start
