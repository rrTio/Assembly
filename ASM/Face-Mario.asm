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

cls macro
mov ax,0003h
int 10h
endm

exit macro
int 20h
cseg ends
end start
endm

data segment
text1 db "\_________$"
data ends

cseg segment para 'code'
assume cs:cseg;ds:cseg;ss:cseg;es:cseg
org 100h
start:
cls

mov ah,02;gotoxy
mov dh,7
mov dl,7
int 10h
mov ax,data
mov ds,ax
LEA DX,text1
mov ah,09h
int 21h


g 4, 30
pca ' ' 4eh, 12 ;cap

g 5, 28
pca ' ' 4eh, 20 ;cap

g 6, 28
pca ' ' 6eh, 6 ;hair
g 6, 34
pca ' ' 70h, 6 ;skin
g 6, 42
pca ' ' 70h, 2 ;skin

g 7, 26
pca ' ' 6eh, 2 ;hair
g 7, 28
pca ' ' 70h, 2 ;skin
g 7, 30
pca ' ' 6eh, 2 ;hair
g 7, 32
pca ' ' 70h, 8 ;skin
g 7, 42
pca ' ' 70h, 6 ;skin

g 8, 26
pca ' ' 6eh, 2 ;hair
g 8, 28
pca ' ' 70h, 2 ;skin
g 8, 30
pca ' ' 6eh, 4 ;hair
g 8, 34
pca ' ' 70h, 8 ;skin
g 8, 44
pca ' ' 70h, 6 ;skin

g 9, 26
pca ' ' 6eh, 4 ;hair
g 9, 30
pca ' ' 70h, 10 ;skin

g 10, 30
pca ' ' 70h, 16 ;skin

g 11, 28
pca ' ' 4eh, 4 ;Shirt
g 11, 32
pca ' ' 14h, 2 ;Vest
g 11, 34
pca ' ' 4eh, 8 ;Shirt

g 12, 26
pca ' ' 4eh, 6 ;Shirt
g 12, 32
pca ' ' 14h, 2 ;Vest
g 12, 34
pca ' ' 4eh, 4 ;Shirt
g 12, 38
pca ' ' 14h, 2 ;Vest
g 12, 40
pca ' ' 4eh, 6 ;Shirt

g 13, 24
pca ' ' 4eh, 8 ;Shirt
g 13, 32
pca ' ' 14h, 8 ;Vest
g 13, 40
pca ' ' 4eh, 8 ;Shirt

g 14, 24
pca ' ' 70h, 4 ;skin
g 14, 28
pca ' ' 4eh, 2 ;Shirt
g 14, 30
pca ' ' 14h, 2 ;Vest
g 14, 32
pca ' ' 20h, 2 ;Button
g 14, 34
pca ' ' 14h, 4 ;Vest
g 14, 38
pca ' ' 20h, 2 ;Button
g 14, 40
pca ' ' 14h, 2 ;Vest
g 14, 42
pca ' ' 4eh, 2 ;Shirt
g 14, 44
pca ' ' 70h, 4 ;Skin

g 15, 24
pca ' ' 70h, 6 ;Skin
g 15, 30
pca ' ' 14h, 12 ;Vest
g 15, 42
pca ' ' 70h, 6 ;Skin

g 16, 24
pca ' ' 70h, 4 ;Skin
g 16, 28
pca ' ' 14h, 16 ;Vest
g 16, 44
pca ' ' 70h, 4 ;Skin

g 17, 28
pca ' ' 14h, 6
g 17, 38
pca ' ' 14h, 6

g 18, 26
pca ' ' 6eh, 6
g 18, 40
pca ' ' 6eh, 6

g 19, 24
pca ' ' 6eh, 8
g 19, 40
pca ' ' 6eh, 8

g 20, 24
pca ' ' 20h, 24

g 21, 24
pca '=' 8dh, 10
g 21, 34
pca 'M' 8dh, 1
g 21, 35
pca 'A' 8dh, 1
g 21, 36
pca 'R' 8dh, 1
g 21, 37
pca 'I' 8dh, 1
g 21, 38
pca 'O' 8dh, 1
g 21, 39
pca '=' 8dh, 9

g 22, 24
pca ' ' 20h, 24

;/////////////////////////////////////////

;//////HAIR\\\\\\
g 0,0 ;y,x
pca '/',15,1

g 0,1
pca 'X',15,4

g 0,5
pca '\',15,6

g 0,13
pca '/',15,7

g 0,19
pca 'X',15,4

g 0,23
pca '\',15,1


g 1,0 ;y,x
pca '/',15,1

g 1,1
pca 'X',15,4

g 1,5
pca '\',15,7

g 1,12
pca '/',15,7

g 1,19
pca 'X',15,4

g 1,23
pca '\',15,1


g 2, 0
pca '|',15,5
g 2, 19
pca '|',15,5

g 3, 0
pca '|',15,5
g 3, 19
pca '|',15,5

g 4, 0
pca '|',15,5
g 4, 19
pca '|',15,5

g 5, 0
pca '|',15,5
g 5, 19
pca '|',15,5

g 6, 0
pca '|',15,5
g 6, 19
pca '|',15,5

g 7, 0
pca '|',15,5
g 7, 19
pca '|',15,5

g 8, 0
pca '|',15,5
g 8, 19
pca '|',15,5

;//////BROWS\\\\\\

g 3,7
pca '\', 15,4

g 3, 13
pca '/', 15,4

;//////EYES\\\\\\

g 4,8
pca '(', 8Dh,1
g 4,9
pca 'I', 8Dh,1
g 4,10
pca ')', 8Dh,1

g 4, 13
pca '(', 8dh,1
g 4, 14
pca 'I', 8Dh,1
g 4, 15
pca ')', 8dh,1

g 5, 12
pca '\', 15,1

g 8, 18
pca '/', 15,1
g 8, 5
pca '\', 15,1

g 9, 17
pca '/', 15,1
g 9, 6
pca '\', 15,1
g 9, 7
pca '_', 15,10


exit