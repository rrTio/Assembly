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

ps macro y
mov ah,09
lea dx,y
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

cseg segment para 'code'
assume cs:cseg;ds:cseg;ss:cseg;es:cseg
org 100h
start: jmp begin
data segment
n1 db 'UE Manila$'
n2 db '***$'
n3 db '*****$'
data ends
begin:
cls

g 8,39
pc '*'
g 9,38
ps n2
g 10,37
ps n3
g 11,38
ps n2
g 12,39
pc '*'

g 23,65
ps n1

g 23,0
exit








