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

cseg segment para 'code'
assume cs:cseg;ds:cseg;ss:cseg;es:cseg
org 100h
start:
cls

g 1, 30
pca ' ' 4eh, 12 ;cap

g 2, 28
pca ' ' 4eh, 20 ;cap

g 3, 28
pca ' ' 6eh, 6 ;hair
g 3, 34
pca ' ' 70h, 6 ;skin
g 3, 41
pca ' ' 07h, 1
g 3, 42
pca ' ' 70h, 2 ;skin

g 4, 26
pca ' ' 6eh, 2 ;hair
g 4, 28
pca ' ' 70h, 2 ;skin
g 4, 30
pca ' ' 6eh, 2 ;hair
g 4, 32
pca ' ' 70h, 8 ;skin
g 4, 42
pca ' ' 70h, 6 ;skin

g 5, 26
pca ' ' 6eh, 2 ;hair
g 5, 28
pca ' ' 70h, 2 ;skin
g 5, 30
pca ' ' 6eh, 4 ;hair
g 5, 34
pca ' ' 70h, 8 ;skin
g 5, 44
pca ' ' 70h, 6 ;skin

g 6, 26
pca ' ' 6eh, 4 ;hair
g 6, 30
pca ' ' 70h, 10 ;skin

g 7, 30
pca ' ' 70h, 16 ;skin

g 8, 28
pca ' ' 4eh, 4 ;Shirt
g 8, 32
pca ' ' 14h, 2 ;Vest
g 8, 34
pca ' ' 4eh, 8 ;Shirt

g 9, 26
pca ' ' 4eh, 6 ;Shirt
g 9, 32
pca ' ' 14h, 2 ;Vest
g 9, 34
pca ' ' 4eh, 4 ;Shirt
g 9, 38
pca ' ' 14h, 2 ;Vest
g 9, 40
pca ' ' 4eh, 6 ;Shirt

g 10, 24
pca ' ' 4eh, 8 ;Shirt
g 10, 32
pca ' ' 14h, 8 ;Vest
g 10, 40
pca ' ' 4eh, 8 ;Shirt

g 11, 24
pca ' ' 70h, 4 ;skin
g 11, 28
pca ' ' 4eh, 2 ;Shirt
g 11, 30
pca ' ' 14h, 2 ;Vest
g 11, 32
pca ' ' 0A0h, 2 ;Button
g 11, 34
pca ' ' 14h, 4 ;Vest
g 11, 38
pca ' ' 0A0h, 2 ;Button
g 11, 40
pca ' ' 14h, 2 ;Vest
g 11, 42
pca ' ' 4eh, 2 ;Shirt
g 11, 44
pca ' ' 70h, 4 ;Skin

g 12, 24
pca ' ' 70h, 6 ;Skin
g 12, 30
pca ' ' 14h, 12 ;Vest
g 12, 42
pca ' ' 70h, 6 ;Skin

g 13, 24
pca ' ' 70h, 4 ;Skin
g 13, 28
pca ' ' 14h, 16 ;Vest
g 13, 44
pca ' ' 70h, 4 ;Skin

g 14, 28
pca ' ' 14h, 6
g 14, 38
pca ' ' 14h, 6

g 15, 26
pca ' ' 6eh, 6
g 15, 40
pca ' ' 6eh, 6

g 16, 24
pca ' ' 6eh, 8
g 16, 40
pca ' ' 6eh, 8

g 17, 24
pca ' ' 20h, 24

g 18, 24
pca '=' 0f0h, 10
g 18, 34
pca 'M' 84h, 1
g 18, 35
pca 'A' 82h, 1
g 18, 36
pca 'R' 8Eh, 1
g 18, 37
pca 'I' 81h, 1
g 18, 38
pca 'O' 82h, 1
g 18, 39
pca '=' 0F0h, 9

g 19, 24
pca ' ' 20h, 24

g 20, 26
pca '\' 02h, 1
g 20, 27
pca ' ' 80h, 18
g 20, 45
pca '/' 02h, 1

g 21, 27
pca ' ' 20h, 18

g 22, 27
pca ' ' 20h, 18

g 23, 27
pca ' ' 20h, 18

g 24, 27
pca ' ' 20h, 18


exit