data segment
text1 db "\_______$"
text2 db "ROZS RAVEN TIO$"
data ends

g macro y,x
mov ah,02
mov dh,y
mov dl,x
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

s macro t
mov ax,data
mov ds,ax
LEA DX,t
mov ah,09h
int 21h
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

cseg segment para 'code'
assume cs:cseg;ds:cseg;ss:cseg;es:cseg
org 100h
start:
cls
background
me

exit