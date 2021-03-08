gotoxy macro r,c
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

;Output: 5 6 7
mov cx,3
x1:gotoxy 5,c1
pc n1
add c1,2
inc n1
loop x1

;Output: & & &
mov cx,3
x2:gotoxy 5,c1
pc '&'
add c1,2
loop x2

;Output: c b a
mov cx,3
x3:gotoxy 5,c1
pc n2
add c1,2
dec n2
loop x3

;Output: 8 m 5 5 o 5
mov cx,2
x4:gotoxy r1,5
pc n3 ;8 _ _ 5
inc r1
gotoxy r1,5
pc n4 ;_ m _ _ o
inc r1
gotoxy r1,5
pc '5' ;_ _5 _ _ 5
inc r1
sub n3,3 ;8 - 3 = 5
add n4,2 ;m + 2 = o
loop x4

;Output: z y x 
mov c1,5 ;X coordinate
mov cx,3 ;repeated loop 3 times
x5:gotoxy 12,c1
pc n5 ;'z'
add c1,2 ;x coordinate
dec n5 ;decrement z
loop x5

;Output: 1 2 3
mov cx,3
x6:gotoxy 12,c1
pc n6 ;'1'
add c1,2
inc n6
loop x6

;Output: 6 4 2
mov cx,3
x7:gotoxy 12,c1
pc n7 ;'6'
add c1,2
sub n7,2
loop x7

;Output: 5 4 6 3 7 2
mov r1,6 ;Declarations
mov n6,'5' ;Declarations
mov n7,'4' ;Declarations
mov cx,3 ;repetition
x8:gotoxy r1,21
pc n6 ;'5'
inc r1 ;increment row from row 6
gotoxy r1,21
pc n7 ;'4'
inc r1 ;increment row
inc n6 ;increment '5' 5 _ 6 _ 7
dec n7 ;decrement '4' _ 4 _ 3 _ 2
loop x8


gotoxy 23,0 ;move last line to row 23, column
int 20h
cseg ends
end start
