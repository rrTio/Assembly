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
start: jmp begin
n1 db 'f'
var db 1
r1 db 10
c1 db 0
begin:
mov ax,0003h
int 10h
mov bx, 1
y1: mov cx, bx
x1: g r1, c1
pc n1
dec n1
inc c1
loop x1
mov al,var
sub c1,al
inc var
inc r1
mov n1,'f'
inc bx
cmp bx,7
jnz y1;
mov n1,'8'
mov c1,0
mov bx,6
y2: mov cx,bx
x2: g r1, c1
pc n1
inc c1
loop x2
mov c1,0
inc r1
dec bx
cmp bx,0
jnz y2;
mov n1,'5'
g 10,18
pc n1
mov c1,18
mov r1,11
mov bx,2
y3: mov cx,bx
x3: g r1, c1
pc n1
dec c1
loop x3
mov c1,18
dec n1
inc r1
inc bx
cmp bx,7
jnz y3;
mov n1,'a'
mov c1,13
mov r1,16
mov var,6
mov bx,6
y4: mov cx,bx
x4: g r1, c1
pc n1
inc n1
inc c1
loop x4
dec var
inc r1
mov al,var
sub c1,al
dec bx
cmp bx,0
jnz y4;
mov n1,'4'
mov c1,9
mov r1,10
mov var,2
mov bx,1
y5: mov cx,bx
x5: g r1, c1
pc n1
inc c1
loop x5
dec n1
inc r1
mov al,var
sub c1,al
add var,2
add bx,2
cmp bx,9
jnz y5;
mov n1,'a'
mov c1,6
mov bx,6
y6: mov cx,7
x6: g r1, c1
pc n1
inc c1
loop x6
mov c1,6
inc n1
inc r1
dec bx
cmp bx,0
jnz y6;
mov n1,'5'
mov c1,9
mov r1,20
mov var,3
mov bx,1
y7: mov cx,bx
x7: g r1, c1
pc n1
add c1,2
loop x7
add n1,2
inc r1
mov al,var
sub c1,al
add var,2
inc bx
cmp bx,4
jnz y7;
mov n1,'4'
mov c1,1
mov r1,2
mov bx,2
y8:g r1,c1
pc n1
sub n1,3
inc r1
inc c1
mov cx,3
x8: g r1,c1
pc n1
inc n1
inc c1
inc r1
loop x8
dec bx
cmp bx,0
jnz y8;
mov c1,10
mov r1,9
mov bx,3
y9:mov n1,'#'
g r1,c1
pc n1
dec r1
inc c1
mov cx,2
mov n1,'$'
x9: g r1,c1
pc n1
inc c1
dec r1
loop x9
dec bx
cmp bx,0
jnz y9
g 23,0
int 20h
cseg ends
end start