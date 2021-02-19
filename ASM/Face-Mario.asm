data segment
text1 db "\________$"
text2 db "ROZS RAVEN TIO$"
data ends

g macro r,c
mov ah,02
mov dh,r
mov dl,c
int 10h
endm

pca macro m,n,p
mov ah,09
mov al,m
mov bl,n
mov cx,p
int 10h
endm

s macro t
mov ax,data
mov ds,ax
LEA DX,t
mov ah,09h
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

background macro
g 0,0
pca ' ' 50h, 80
g 1,0
pca ' ' 50h, 80
g 2,0
pca ' ' 50h, 80
g 3,0
pca ' ' 50h, 80
g 4,0
pca ' ' 50h, 80
g 5,0
pca ' ' 50h, 80
g 6,0
pca ' ' 50h, 80
g 7,0
pca ' ' 50h, 80
g 8,0
pca ' ' 50h, 80
g 9,0
pca ' ' 50h, 80
g 10,0
pca ' ' 50h, 80
g 11,0
pca ' ' 50h, 80
g 12,0
pca ' ' 50h, 80
g 13,0
pca ' ' 50h, 80
g 14,0
pca ' ' 50h, 80
g 15,0
pca ' ' 50h, 80
g 16,0
pca ' ' 50h, 80
g 17,0
pca ' ' 50h, 80
g 18,0
pca ' ' 50h, 80
g 19,0
pca ' ' 50h, 80
g 20,0
pca ' ' 50h, 80
g 21,0
pca ' ' 50h, 80
g 22,0
pca ' ' 50h, 80
g 23,0
pca ' ' 50h, 80
g 24,0
pca ' ' 50h, 80
endm

eyes macro
g 3, 45
pca ' ' 005h, 2 ; eyes 0e5h
g 4, 45
pca ' ' 005h, 2 ; eyes
endm

beard macro
g 5, 47
pca ' ' 0e5h, 2 ; beard
g 6, 45
pca ' ' 0e5h, 8 ; beard
endm

cap macro
g 1, 35
pca ' ' 4eh, 12 ;cap
g 2, 33
pca ' ' 4eh, 20 ;cap
endm

head macro
g 3, 33
pca ' ' 6eh, 6 ;hair
g 3, 39
pca ' ' 70h, 6 ;skin
g 3, 47
pca ' ' 70h, 2 ;skin
g 4, 31
pca ' ' 6eh, 2 ;hair
g 4, 33
pca ' ' 70h, 2 ;skin
g 4, 35
pca ' ' 6eh, 2 ;hair
g 4, 37
pca ' ' 70h, 8 ;skin
g 4, 47
pca ' ' 70h, 6 ;skin
g 5, 31
pca ' ' 6eh, 2 ;hair
g 5, 33
pca ' ' 70h, 2 ;skin
g 5, 35
pca ' ' 6eh, 4 ;hair
g 5, 39
pca ' ' 70h, 8 ;skin
g 5, 49
pca ' ' 70h, 6 ;skin
g 6, 31
pca ' ' 6eh, 4 ;hair
g 6, 35
pca ' ' 70h, 10 ;skin
g 7, 35
pca ' ' 70h, 16 ;skin
endm

body macro
g 8, 33
pca ' ' 4eh, 4 ;Shirt
g 8, 37
pca ' ' 14h, 2 ;Vest
g 8, 39
pca ' ' 4eh, 8 ;Shirt
g 9, 31
pca ' ' 4eh, 6 ;Shirt
g 9, 37
pca ' ' 14h, 2 ;Vest
g 9, 39
pca ' ' 4eh, 4 ;Shirt
g 9, 43
pca ' ' 14h, 2 ;Vest
g 9, 45
pca ' ' 4eh, 6 ;Shirt
g 10, 29
pca ' ' 4eh, 8 ;Shirt
g 10, 37
pca ' ' 14h, 8 ;Vest
g 10, 45
pca ' ' 4eh, 8 ;Shirt
g 11, 29
pca ' ' 70h, 4 ;skin
g 11, 33
pca ' ' 4eh, 2 ;Shirt
g 11, 35
pca ' ' 14h, 2 ;Vest
g 11, 37
pca ' ' 0A0h, 2 ;Button
g 11, 39
pca ' ' 14h, 4 ;Vest
g 11, 43
pca ' ' 0A0h, 2 ;Button
g 11, 45
pca ' ' 14h, 2 ;Vest
g 11, 47
pca ' ' 4eh, 2 ;Shirt
g 11, 49
pca ' ' 70h, 4 ;Skin
g 12, 29
pca ' ' 70h, 6 ;Skin
g 12, 35
pca ' ' 14h, 12 ;Vest
g 12, 47
pca ' ' 70h, 6 ;Skin
g 13, 29
pca ' ' 70h, 4 ;Skin
g 13, 33
pca ' ' 14h, 16 ;Vest
g 13, 49
pca ' ' 70h, 4 ;Skin
g 14, 33
pca ' ' 14h, 6
g 14, 43
pca ' ' 14h, 6
endm

feet macro
g 15, 31
pca ' ' 6eh, 6
g 15, 45
pca ' ' 6eh, 6

g 16, 29
pca '_' 6eh, 8
g 16, 45
pca '_' 6eh, 8
endm

pipe macro
g 17, 29
pca ' ' 20h, 24
g 18, 29
pca '=' 8Ah, 10
g 18, 39
pca 'M' 84h, 1
g 18, 40
pca 'A' 82h, 1
g 18, 41
pca 'R' 8Eh, 1
g 18, 42
pca 'I' 81h, 1
g 18, 43
pca 'O' 82h, 1
g 18, 44
pca '=' 8Ah, 9
g 19, 29
pca ' ' 20h, 24
g 20, 32
pca ' ' 80h, 18
g 20, 32
pca '\' 02h, 1
g 20, 49
pca '/' 02h, 1
g 21, 32
pca ' ' 20h, 18
g 22, 32
pca ' ' 20h, 18
g 23, 32
pca ' ' 20h, 18
g 24, 32
pca ' ' 20h, 18
endm

me macro
g 0,0 ;y,x
pca '/',50h,1
g 0,1
pca '@',50h,4
g 0,5
pca '\',50h,6
g 0, 11
pca 'w',50h,2
g 0,13
pca '/',50h,7
g 0,19
pca '@',50h,4
g 0,23
pca '\',50h,1
g 1,0 ;y,x
pca '/',50h,1
g 1,1
pca '@',50h,4
g 1,5
pca '\',50h,7
g 1,12
pca '/',50h,7
g 1,19
pca '@',50h,4
g 1,23
pca '\',50h,1
g 2, 0
pca '/',50h,5
g 2, 19
pca '\',50h,5
g 3, 0
pca '\',50h,5
g 3, 19
pca '/',50h,5
g 4, 0
pca '/',50h,5
g 4, 19
pca '\',50h,5
g 5, 0
pca '\',50h,5
g 5, 19
pca '/',50h,5
g 6, 0
pca '/',50h,5
g 6, 19
pca '\',50h,5
g 7, 0
pca '(',50h,5
g 7, 19
pca ')',50h,5
g 8, 0
pca ')',50h,5
g 8, 19
pca '(',50h,5
g 3,7
pca '\', 50h,4
g 3, 13
pca '/', 50h,4
g 4,8
pca '(', 84h,1
g 4,9
pca '@', 84h,1
g 4,10
pca ')', 84h,1
g 4, 13
pca '(', 84h,1
g 4, 14
pca '@', 84h,1
g 4, 15
pca ')', 84h,1
g 5, 12
pca '\', 50h,1
g 8, 18
pca '/', 50h,1
g 8, 5
pca '\', 50h,1
g 9, 17
pca '/', 50h,1
g 9, 6
pca '\', 50h,1
g 9, 7
pca '_', 50h,10
g 7, 7
s text1
g 10, 5
s text2
endm

mario macro
eyes
beard
cap
head
body
feet
endm

cseg segment para 'code'
assume cs:cseg
org 100h
start:
cls
background
mario
pipe
me
exit