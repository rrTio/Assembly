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
start:jmp begin
n1 db 'A'
r1 db 7
n2 db 'A'
r2 db 0
c2 db 0
n3 db 'A'
r3 db 0
c3 db 23
begin:
mov ax,0003h
int 10h
;1-8
mov cx,1
x:g r1,70
pc n1
inc r1
inc n1
inc cx
cmp cx,8
jbe x
;====
;A-Z
mov cx,24
y:g r2,c2
pc n2
inc r2
inc c2
inc n2
loop y

mov cx,24
z:g r3,c3
pc n3
inc r3
dec c3
inc n3
loop z

;g 23,0
int 20h
cseg ends
end start
