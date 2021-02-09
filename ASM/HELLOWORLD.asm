cseg segment para 'code'
assume cs:cseg;ds:cseg;ss:cseg;es:cseg
org 100h
start:
mov ax,0003h
int 10h 
mov ah,02
mov dh,11
mov dl,39
int 10h
mov ah,02
mov dl,'C
int 21h
cseg ends
end start