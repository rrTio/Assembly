cseg segment para 'code'
assume cs:cseg;ds:cseg;ss:cseg;es:cseg
org 100h
start:
mov ax,0003h; clrscr
int 10h
;R//////////////////////
mov ah,02;gotoxy
mov dh,0;Y
mov dl,0;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,0;Y
mov dl,1;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,0;Y
mov dl,2;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,0;Y
mov dl,3;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,1;Y
mov dl,0;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,2;Y
mov dl,0;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,2;Y
mov dl,1;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,2;Y
mov dl,2;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,2;Y
mov dl,3;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,1;Y
mov dl,4;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,3;Y
mov dl,0;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,3;Y
mov dl,4;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,4;Y
mov dl,0;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,4;Y
mov dl,4;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
;//////////
mov ah,02;gotoxy
mov dh,6;Y
mov dl,0;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,6;Y
mov dl,1;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,6;Y
mov dl,2;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,6;Y
mov dl,3;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,7;Y
mov dl,0;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,7;Y
mov dl,4;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,8;Y
mov dl,0;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,8;Y
mov dl,1;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,8;Y
mov dl,2;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,2;Y
mov dl,3;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,1;Y
mov dl,4;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,3;Y
mov dl,0;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,3;Y
mov dl,4;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,4;Y
mov dl,0;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,4;Y
mov dl,4;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
;//////////
int 20h
cseg ends
end start
