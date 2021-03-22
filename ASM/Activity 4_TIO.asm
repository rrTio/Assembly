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
n1 db '2'
n2 db '3'
r1 db 10
c1 db 10



begin:
mov ax,0003h
int 10h


mov bx, 2
y1: mov cx, 3
g r1, c1
pc n1
inc r1
inc c1
x1: g r1, c1
pc n2
inc n2
inc r1
inc c1
loop x1
mov n2, '3'

dec bx
cmp bx, 1
jae y1

dec r1
mov c1, 19 
mov n1, 'j'
mov n2, '&'
mov bx, 3
y2: mov cx, 2
g r1, c1
pc n1
dec r1
inc c1
add n1, 2 
x2: g r1, c1
pc n2
dec r1
inc c1
loop x2

dec bx
cmp bx, 1
jae y2

inc r1
mov c1, 29 
mov n1, '9'
mov n2, '7'
mov bx, 2
y3: mov cx, 3
g r1, c1
pc n1
inc r1
inc c1
sub n1, 3 
x3: g r1, c1
pc n2
inc r1
inc c1
sub n2, 3
loop x3
mov n2, '7'

dec bx
cmp bx, 1
jae y3


dec r1
mov c1, 38 
mov n1, 'a'
mov n2, '0'
mov bx, 2
y4: mov cx, 2
x4: g r1, c1
pc n1
dec r1
inc c1
loop x4
g r1, c1
pc n2
dec r1
inc c1
add n2, 5


dec bx
cmp bx, 1
jae y4



g 23,0
int 20h
cseg ends
end start