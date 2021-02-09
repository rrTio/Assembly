cseg segment para 'code'
assume cs:cseg;ds:cseg;ss:cseg;es:cseg
org 100h
start:
mov ax,0003h
int 10h 
mov ah,14
mov dh,00
mov dl,00
int 10h
mov dl,'Hello World' ;print 'Hello World'
mov ah,14
int 21h
cseg ends
end start