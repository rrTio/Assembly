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

data segment
text1 db "\_______$"
data ends

s macro d, t
mov ax,d
mov ds,ax
LEA DX,t
mov ah,09h
int 21h
endm

cseg segment para 'code'
assume cs:cseg;ds:cseg;ss:cseg;es:cseg
org 100h
start:
cls

g 7,7
s data, text1

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