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
text1 db "==========MARIO==========$"
data ends

cseg segment para 'code'
assume cs:cseg;ds:cseg;ss:cseg;es:cseg
org 100h
start:
cls

mov ah,02;gotoxy
mov dh,16
mov dl,0
int 10h
mov ax,data
mov ds,ax
LEA DX,text1
mov ah,09h
int 21h

g 0, 6
pca ' ' 4eh, 12 ;cap

g 1, 4
pca ' ' 4eh, 20 ;cap

g 2, 4
pca ' ' 6eh, 6 ;hair
g 2, 10
pca ' ' 70h, 6 ;skin
g 2,18
pca ' ' 70h, 2 ;skin

g 3, 2
pca ' ' 6eh, 2 ;hair
g 3, 4
pca ' ' 70h, 2 ;skin
g 3, 6
pca ' ' 6eh, 2 ;hair
g 3, 8
pca ' ' 70h, 8 ;skin
g 3, 18
pca ' ' 70h, 6 ;skin

g 4, 2
pca ' ' 6eh, 2 ;hair
g 4, 4
pca ' ' 70h, 2 ;skin
g 4, 6
pca ' ' 6eh, 4 ;hair
g 4, 10
pca ' ' 70h, 8 ;skin
g 4, 20
pca ' ' 70h, 6 ;skin

g 5, 2
pca ' ' 6eh, 4 ;hair
g 5, 6
pca ' ' 70h, 10 ;skin

g 6, 6
pca ' ' 70h, 16 ;skin

g 7, 4
pca ' ' 4eh, 4 ;Shirt
g 7, 8
pca ' ' 14h, 2 ;Vest
g 7, 10
pca ' ' 4eh, 8 ;Shirt

g 8, 2
pca ' ' 4eh, 6 ;Shirt
g 8, 8
pca ' ' 14h, 2 ;Vest
g 8, 10
pca ' ' 4eh, 4 ;Shirt
g 8, 14
pca ' ' 14h, 2 ;Vest
g 8, 16
pca ' ' 4eh, 6 ;Shirt

g 9, 0
pca ' ' 4eh, 8 ;Shirt
g 9, 8
pca ' ' 14h, 8 ;Vest
g 9, 16
pca ' ' 4eh, 8 ;Shirt

g 10, 0
pca ' ' 70h, 4 ;skin
g 10, 4
pca ' ' 4eh, 2 ;Shirt
g 10, 6
pca ' ' 14h, 2 ;Vest
g 10, 8
pca ' ' 20h, 2 ;Button
g 10, 10
pca ' ' 14h, 4 ;Vest
g 10, 14
pca ' ' 20h, 2 ;Button
g 10, 16
pca ' ' 14h, 2 ;Vest
g 10, 18
pca ' ' 4eh, 2 ;Shirt
g 10, 20
pca ' ' 70h, 4 ;Skin

g 11, 0
pca ' ' 70h, 6 ;Skin
g 11, 6
pca ' ' 14h, 12 ;Vest
g 11, 18
pca ' ' 70h, 6 ;Skin

g 12, 0
pca ' ' 70h, 4 ;Skin
g 12, 4
pca ' ' 14h, 16 ;Vest
g 12, 20
pca ' ' 70h, 4 ;Skin

g 13, 4
pca ' ' 14h, 6
g 13, 14
pca ' ' 14h, 6

g 14, 2
pca ' ' 6eh, 6
g 14, 16
pca ' ' 6eh, 6

g 15, 0
pca ' ' 6eh, 8
g 15, 16
pca ' ' 6eh, 8


exit