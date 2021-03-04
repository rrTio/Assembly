gotoxy macro ro,co
mov ah,02
mov dh,ro
mov dl,co
int 10h
endm

pc macro x
mov ah,02
mov dl,x
int 21h
endm

cseg segment para 'code'
assume cs:cseg;ds:cseg;ss:cseg;es:cseg
org 100h
start: jmp begin
column db 0
row db 0

begin:
mov ax,0003h
int 10h

mov cx,80
x1:gotoxy 0,column
pc 'A'
inc column
loop x1

mov cx,24
x2:gotoxy row,79
pc 'B'
inc row
loop x2

dec column
mov cx,80
x3:gotoxy 23,column
pc 'C'
dec column
loop x3

dec row
mov cx,24
x4:gotoxy row,0
pc 'D'
dec row
loop x4

gotoxy 11,39
pc 'E'

g 23,0
int 20h
cseg ends
end start
