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
c1 db 5
n1 db '5'
n2 db 'c'
r1 db 6
n3 db '8'
n4 db 'm'
n5 db 'z'
n6 db '1'
n7 db '6'

begin:
mov ax,0003h
int 10h

mov cx,3
x1:g 5,c1
pc n1
add c1,2
inc n1
loop x1

mov cx,3
x2:g 5,c1
pc '&'
add c1,2
loop x2

mov cx,3
x3:g 5,c1
pc n2
add c1,2
dec n2
loop x3

mov cx,2
x4:g r1,5
pc n3
inc r1
g r1,5
pc n4
inc r1
g r1,5
pc '5'
inc r1
sub n3,3
add n4,2
loop x4

mov c1,5

mov cx,3
x5:g 12,c1
pc n5
add c1,2
dec n5
loop x5

mov cx,3
x6:g 12,c1
pc n6
add c1,2
inc n6
loop x6

mov cx,3
x7:g 12,c1
pc n7
add c1,2
sub n7,2
loop x7

mov r1,6
mov n6,'5'
mov n7,'4'

mov cx,3
x8:g r1,21
pc n6
inc r1
g r1,21
pc n7
inc r1
inc n6
dec n7
loop x8



g 23,0
int 20h
cseg ends
end start
