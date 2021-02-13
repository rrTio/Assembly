data segment
text1 db 'CENTER TEXT$'
text2 db 'TOP LEFT TEXT$'
text3 db 'TOP RIGHT TEXT$'
text4 db 'BOTTOM LEFT TEXT$'
text5 db 'BOTTOM RIGHT TEXT$'
data ends
cseg segment para 'code'
assume cs:cseg;ds:cseg;ss:cseg;es:cseg
org 100h
start:
mov ax,0003h
int 10h
;TEXT1///////////////////////////////////////////////
mov ah,02;gotoxy
mov dh,12;Y
mov dl,33;X
int 10h
mov ax,data
mov ds,ax
LEA DX,text1
mov ah,09h
int 21h
;TEXT2///////////////////////////////////////////////
mov ah,02;gotoxy
mov dh,0;Y
mov dl,0;X
int 10h
mov ax,data
mov ds,ax
LEA DX,text2
mov ah,09h
int 21h
;TEXT3///////////////////////////////////////////////
mov ah,02;gotoxy
mov dh,0;Y
mov dl,66;X
int 10h
mov ax,data
mov ds,ax
LEA DX,text3
mov ah,09h
int 21h
;TEXT4///////////////////////////////////////////////
mov ah,02;gotoxy
mov dh,23;Y
mov dl,0;X
int 10h
mov ax,data
mov ds,ax
LEA DX,text4
mov ah,09h
int 21h
;TEXT5///////////////////////////////////////////////
mov ah,02;gotoxy
mov dh,23;Y
mov dl,63;X
int 10h
mov ax,data
mov ds,ax
LEA DX,text5
mov ah,09h
int 21h

int 20h
cseg ends
end start