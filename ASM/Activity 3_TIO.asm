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

cls macro
mov ax,0003h
int 10h
endm

exit macro
int 20h
cseg ends
end start
endm

cseg segment para 'code'
assume cs:cseg
org 100h
start: jmp begin
c1 db 0
r1 db 0
n1 db 'w'
n2 db 'd'
c2 db 3
r2 db 3
n3 db 'n'
c3 db 6
r3 db 6
r5 db 7
c5 db 11
n4 db '$'
r6 db 6
c6 db 12
n5 db '8'
r7 db 5
c7 db 13
n6 db '3'
r8 db 0
c8 db 20
n7 db 'a'
r9 db 3
c9 db 24
n8 db '&'
r10 db 6
c10 db 28
n9 db '9'
r11 db 8
c11 db 32
n10 db '2'
r12 db 5
c12 db 35
n11 db '7'
r13 db 5
c13 db 19
n12 db '2'
r14 db 6
c14 db 18
n13 db '3'
r15 db 7
c15 db 17
n14 db '4'
r16 db 8
c16 db 16
n15 db '5'
r17 db 9
c17 db 17
n16 db '6'
r18 db 10
c18 db 18
n17 db '7'
r19 db 11
c19 db 19
n18 db '8'
r20 db 3
c20 db 6
n19 db '*'
r21 db 4
c21 db 7

r22 db 1
c22 db 9
n20 db 'b'
r23 db 2
c23 db 9
n21 db 'a'

r24 db 0
c24 db 28
n22 db 'a'
r25 db 1
c25 db 29
n23 db 'b'
r26 db 3
c26 db 29
n24 db 'b'
r27 db 4
c27 db 28
n25 db 'a'

begin:
cls

;;wxy
mov cx,3
x1:g r1,c1
pc n1
inc r1
inc c1
inc n1
loop x1

;;dcb
mov cx,3
x2:g r2,c2
pc n2
inc r2
inc c2
dec n2
loop x2

;;nml
mov cx,3
x3:g r3,c3
pc n3
inc r3
inc c3
dec n3
loop x3

;;1$
g 8,10
pc '1'
mov cx,3
x4:g r5,c5
pc n4
sub r5,3
add c5,3
loop x4 

;;864
g 0,18
pc '4'
mov cx,2
x5:g r6,c6
pc n5
sub r6,3
add c6,3
sub n5,2
loop x5

;;35
mov cx,2
x6:g r7,c7
pc n6
sub r7,3
add c7,3
add n6,2
loop x6

;;a
mov cx,3
x7:g r8,c8
pc n7
inc r8
inc c8
loop x7

;;&
mov cx,3
x8:g r9,c9
pc n8
inc r9
inc c9
loop x8

;;963
mov cx,3
x9:g r10,c10
pc n9
inc r10
inc c10
sub n9,3
loop x9

;;23
mov cx,2
x10:g r11,c11
pc n10
sub r11,7
add c11,7
inc n10
loop x10

;;cz
g 7,33
pc 'c'
g 6,34
pc 'z'
g 3,37
pc 'h'
g 2,38
pc 's'

;;76
mov cx,2
x11:g r12,c12
pc n11
dec r12
inc c12
dec n11
loop x11

;;12
g 4,20
pc '1'
mov cx,2
x12:g r13,c13
pc n12
add c13,2
loop x12

;;3
mov cx,3
x13:g r14,c14
pc n13
add c14,2
loop x13

;;4
mov cx,4
x14:g r15,c15
pc n14
add c15,2
loop x14

;;5
mov cx,5
x15:g r16,c16
pc n15
add c16,2
loop x15

;;6
mov cx,4
x16:g r17,c17
pc n16
add c17,2
loop x16

;;7
mov cx,3
x17:g r18,c18
pc n17
add c18,2
loop x17

;;8
g 12,20
pc '9'
mov cx,2
x18:g r19,c19
pc n18
add c19,2
loop x18

;;*
g 5,8
pc '*'
mov cx,3
x19:g r20,c20
pc n19
inc c20
loop x19
mov cx,2
x20:g r21,c21
pc n19
inc c21 
loop x20

;;abc
g 0,9
pc 'c'
mov cx,2
x21:g r22,c22
pc n20
inc c22
loop x21
mov cx,3
x22:g r23,c23
pc n21
inc c23 
loop x22
;;a
mov cx,5
x23:g r24,c24
pc n22
inc c24 
loop x23
;;b
mov cx,3
x24:g r25,c25
pc n23
inc c25 
loop x24
;;cba
g 2,30
pc 'c'
mov cx,3
x25:g r26,c26
pc n24
inc c26 
loop x25
mov cx,5
x26:g r27,c27
pc n25
inc c27 
loop x26
exit