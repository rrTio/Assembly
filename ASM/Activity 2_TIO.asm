cseg segment para 'code'
assume cs:cseg;ds:cseg;ss:cseg;es:cseg
org 100h
start:
mov ax,0003h; clrscr
int 10h
;R///////////////////////////////////////////////////////////////////////////////////
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
;R///////////////////////////////////////////////////////////////////////////////////
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
mov dh,8;Y
mov dl,3;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,9;Y
mov dl,0;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,9;Y
mov dl,4;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,10;Y
mov dl,0;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
mov ah,02;gotoxy
mov dh,10;Y
mov dl,4;X
int 10h
mov ah,02;print char
mov dl,'R'
int 21h
;G///////////////////////////////////////////////////////////////////////////////////
mov ah,02;gotoxy
mov dh,12;Y
mov dl,0;X
int 10h
mov ah,02;print char
mov dl,'G'
int 21h
mov ah,02;gotoxy
mov dh,12;Y
mov dl,1;X
int 10h
mov ah,02;print char
mov dl,'G'
int 21h
mov ah,02;gotoxy
mov dh,12;Y
mov dl,2;X
int 10h
mov ah,02;print char
mov dl,'G'
int 21h
mov ah,02;gotoxy
mov dh,12;Y
mov dl,3;X
int 10h
mov ah,02;print char
mov dl,'G'
int 21h
mov ah,02;gotoxy
mov dh,12;Y
mov dl,4;X
int 10h
mov ah,02;print char
mov dl,'G'
int 21h
mov ah,02;gotoxy
mov dh,13;Y
mov dl,0;X
int 10h
mov ah,02;print char
mov dl,'G'
int 21h
mov ah,02;gotoxy
mov dh,14;Y
mov dl,0;X
int 10h
mov ah,02;print char
mov dl,'G'
int 21h
mov ah,02;gotoxy
mov dh,14;Y
mov dl,2;X
int 10h
mov ah,02;print char
mov dl,'G'
int 21h
mov ah,02;gotoxy
mov dh,14;Y
mov dl,3;X
int 10h
mov ah,02;print char
mov dl,'G'
int 21h
mov ah,02;gotoxy
mov dh,14;Y
mov dl,4;X
int 10h
mov ah,02;print char
mov dl,'G'
int 21h
mov ah,02;gotoxy
mov dh,15;Y
mov dl,0;X
int 10h
mov ah,02;print char
mov dl,'G'
int 21h
mov ah,02;gotoxy
mov dh,15;Y
mov dl,4;X
int 10h
mov ah,02;print char
mov dl,'G'
int 21h
mov ah,02;gotoxy
mov dh,16;Y
mov dl,0;X
int 10h
mov ah,02;print char
mov dl,'G'
int 21h
mov ah,02;gotoxy
mov dh,16;Y
mov dl,1;X
int 10h
mov ah,02;print char
mov dl,'G'
int 21h
mov ah,02;gotoxy
mov dh,16;Y
mov dl,2;X
int 10h
mov ah,02;print char
mov dl,'G'
int 21h
mov ah,02;gotoxy
mov dh,16;Y
mov dl,3;X
int 10h
mov ah,02;print char
mov dl,'G'
int 21h
mov ah,02;gotoxy
mov dh,16;Y
mov dl,4;X
int 10h
mov ah,02;print char
mov dl,'G'
int 21h
;T///////////////////////////////////////////////////////////////////////////////////
mov ah,02;gotoxy
mov dh,18;Y
mov dl,0;X
int 10h
mov ah,02;print char
mov dl,'T'
int 21h
mov ah,02;gotoxy
mov dh,18;Y
mov dl,1;X
int 10h
mov ah,02;print char
mov dl,'T'
int 21h
mov ah,02;gotoxy
mov dh,18;Y
mov dl,2;X
int 10h
mov ah,02;print char
mov dl,'T'
int 21h
mov ah,02;gotoxy
mov dh,18;Y
mov dl,3;X
int 10h
mov ah,02;print char
mov dl,'T'
int 21h
mov ah,02;gotoxy
mov dh,18;Y
mov dl,4;X
int 10h
mov ah,02;print char
mov dl,'T'
int 21h
mov ah,02;gotoxy
mov dh,19;Y
mov dl,2;X
int 10h
mov ah,02;print char
mov dl,'T'
int 21h
mov ah,02;gotoxy
mov dh,20;Y
mov dl,2;X
int 10h
mov ah,02;print char
mov dl,'T'
int 21h
mov ah,02;gotoxy
mov dh,21;Y
mov dl,2;X
int 10h
mov ah,02;print char
mov dl,'T'
int 21h
mov ah,02;gotoxy
mov dh,22;Y
mov dl,2;X
int 10h
mov ah,02;print char
mov dl,'T'
int 21h
;///////////////////////////////////////////////////////////////////////////////////
;mov ah,09;gotoxy
;mov dh,50;Y
;mov dl,50;X
;int 10h
;mov ah,09;print char
;mov dl,'ROZS RAVEN TIO'
;int 21h
;int 20h
cseg ends
end start
