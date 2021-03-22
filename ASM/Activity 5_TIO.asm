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
n1 db '*'
r1 db 5
c1 db 20



begin:
mov ax,0003h
int 10h

mov bx, 5
y1: mov cx, 5
x1: g r1, c1
pc n1
add r1,2
sub c1,2
loop x1

sub r1,8
add c1,12

dec bx
cmp bx, 1
jae y1


g 23,0
int 20h
cseg ends
end start