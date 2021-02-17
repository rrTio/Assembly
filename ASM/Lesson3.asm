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

g 5,5 ;x,y
pca '*',14h,45 ;Top red over blue
g 10,10
pca '-',9Dh,35 ;Upper magenta
g 12,39
pca 'A',67h,12 ;Central Text
g 15,10
pca '-',9Dh,35 ;Lower magenta
g 20,5
pca '*',14h,45 ; Bottom red over blue

exit