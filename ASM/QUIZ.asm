gotoxy macro y,x
mov ah,02
mov dh,y
mov dl,x
int 10h
endm

print macro c,col,rep
mov ah,09
mov al,c
col
mov cx,rep
int 10h
endm

string macro t
mov ax,data
mov ds,ax
LEA DX,t
mov ah,09h
int 21h
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

blinklightgreen macro
mov bl, 8Ah
endm

blinklightmagenta macro
mov bl, 8Dh
endm

blinklightcyan macro
mov bl, 8Bh
endm

blinkyellow macro
mov bl, 8Eh
endm

data segment
text1 db 'MAY 2021$'
textgrid1 db '===========================$'
days db '||  S  M  T  W  Th F  S  ||$'
text2 db '||                    1  ||$'
text3 db '||  2  3  4  5  6  7  8  ||$'
text4 db '||  9 10 11 12 13 14 15  ||$'
text5 db '|| 16 17 18 19 20 21 22  ||$'
text6 db '||    24 25 26 27 28 29  ||$'
text7 db '|| 30 31                 ||$'
textgrid2 db '===========================$'
description db 'GEMINI - Playful and intellectually curious,constantly juggling a variety of passions, hobbies, careers, and friend groups.$'
data ends

cseg segment para 'code'
assume cs:cseg
org 100h
start:
cls

gotoxy 18, 34
print '*', blinklightgreen, 8
gotoxy 19, 34
print '*', blinklightgreen, 2
gotoxy 19, 42
print '*', blinklightgreen, 2
gotoxy 20, 34
print '*', blinklightgreen, 2
gotoxy 20, 42
print '*', blinklightgreen, 2
gotoxy 21, 34
print '*', blinklightgreen, 8
gotoxy 22, 34
print '*', blinklightgreen, 2
gotoxy 22, 38
print '*', blinklightgreen, 2
gotoxy 23, 34
print '*', blinklightgreen, 2
gotoxy 23, 40
print '*', blinklightgreen, 2
gotoxy 24, 34
print '*', blinklightgreen, 2
gotoxy 24, 42
print '*', blinklightgreen, 2

gotoxy 18, 48
print '*', blinklightmagenta, 6
gotoxy 19, 46
print '*', blinklightmagenta, 2
gotoxy 19, 54
print '*', blinklightmagenta, 2
gotoxy 20, 46
print '*', blinklightmagenta, 2
gotoxy 20, 54
print '*', blinklightmagenta, 2
gotoxy 21, 46
print '*', blinklightmagenta, 2
gotoxy 21, 54
print '*', blinklightmagenta, 2
gotoxy 22, 46
print '*', blinklightmagenta, 2
gotoxy 22, 54
print '*', blinklightmagenta, 2
gotoxy 23, 46
print '*', blinklightmagenta, 2
gotoxy 23, 54
print '*', blinklightmagenta, 2
gotoxy 24, 48
print '*', blinklightmagenta, 6

gotoxy 18, 58
print '*' blinklightcyan, 10
gotoxy 19, 66
print '*' blinklightcyan, 2
gotoxy 20, 64
print '*' blinklightcyan, 2
gotoxy 21, 62
print '*' blinklightcyan, 2
gotoxy 22, 60
print '*' blinklightcyan, 2
gotoxy 23, 58
print '*' blinklightcyan, 2
gotoxy 24, 58
print '*' blinklightcyan, 10

gotoxy 18, 72
print '*', blinkyellow, 8
gotoxy 19, 70
print '*', blinkyellow, 2
gotoxy 20, 70
print '*', blinkyellow, 2
gotoxy 21, 72
print '*', blinkyellow, 6
gotoxy 22, 78
print '*', blinkyellow, 2
gotoxy 23, 78
print '*', blinkyellow, 2
gotoxy 24, 70
print '*', blinkyellow, 8

gotoxy 4, 30
string text1
gotoxy 5, 30
string textgrid1
gotoxy 6, 30
string days
gotoxy 7, 30
string text2
gotoxy 8, 30
string text3
gotoxy 9, 30
string text4
gotoxy 10, 30
string text5
gotoxy 11, 30
string text6
gotoxy 12, 30
string text7
gotoxy 13, 30
string textgrid2
gotoxy 11, 32
print '2' blinklightgreen, 1
gotoxy 11, 33
print '3' blinkyellow, 1
gotoxy 11, 34
print 'I' blinklightgreen, 1
gotoxy 14, 4
string description
exit