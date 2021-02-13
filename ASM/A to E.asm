cseg segment para 'code'
assume cs:cseg;ds:cseg;ss:cseg;es:cseg
org 100h
start:
mov ax,0003h; clrscr
int 10h
;A
mov ah,02;gotoxy
mov dh,11
mov dl,39
int 10h
mov ah,02;print char
mov dl,'A'
int 21h
;B
mov ah,02;gotoxy
mov dh,0
mov dl,79
int 10h
mov ah,02;print char
mov dl,'B'
int 21h
;C
mov ah,02;gotoxy
mov dh,23
mov dl,79
int 10h
mov ah,02;print char
mov dl,'C'
int 21h
;D
mov ah,02;gotoxy
mov dh,23
mov dl,0
int 10h
mov ah,02;print char
mov dl,'D'
int 21h
;E
mov ah,02;gotoxy
mov dh,0
mov dl,0
int 10h
mov ah,02;print char
mov dl,'E'
int 21h

int 20h
cseg ends
end start