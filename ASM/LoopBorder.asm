g macro r,c
mov ah,02
mov dh,r
mov dl,c
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
c1 db 0
r1 db 0

begin:
mov ax,0003h
int 10h

mov cx,80
x1:g 0,c1
pc 'R'
inc c1
loop x1

mov cx,24
x2:g r1,79
pc 'R'
inc r1
loop x2

dec c1
mov cx,80
x3:g 23,c1
pc 'R'
dec c1
loop x3

dec r1
mov cx,24
x4:g r1,0
pc 'R'
dec r1
loop x4

g 11,39
pc 'R'

g 23,0
int 20h
cseg ends
end start





