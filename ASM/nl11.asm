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
n1 db 'm'
n2 db 'z'
r1 db 5
c1 db 6

begin:
mov ax,0003h
int 10H

mov bx,2
y1:mov cx,3
x1:g r1,5
pc n1
inc r1
inc n1
loop x1
g r1,5
pc n2
sub n2,2
inc r1
mov n1,'m'
dec bx
cmp bx,1
jae y1
;====
mov n1,'s'
mov n2,'9'
mov r1,5

mov bx,2
y2:mov cx,2
g r1,c1
pc n1
inc r1
inc c1
x2:g r1,c1
pc n2
sub n2,2
inc r1
inc c1
loop x2
add n1,2
mov n2,'9'
dec bx
cmp bx,1
jae y2
;====
g 10,12
mov bx,2
y3:mov cx,3
pc '#'
pc ' '
x3:pc '*'
pc ' '
loop x3
dec bx
cmp bx,1
jae y3













g 22,0
int 20h
cseg ends
end start
