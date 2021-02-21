gotoxy macro y,x
mov ah,02
mov dh,y
mov dl,x
int 10h
endm
print macro char,colour,repetition
mov ah,09
mov al,char
colour   ; Colour
mov cx,repetition
int 10h
endm
printColour macro char,c,repetition
mov ah,09
mov al,char
c   ; Colour
mov cx,repetition
int 10h
endm
string macro t
mov ax,data
mov ds,ax
LEA DX,t
mov ah,09h
int 21h
endm
clear macro
mov ax,0003h
int 10h
endm
exit macro
int 20h
cseg ends
end start
endm

;\\\\\\\\\\\\\\\\\\\\\\\\\FOREGROUND COLOURS///////////////////////// DEFAULT BACKGROUND: BLACK
blackOblack macro
mov bl, 00h
endm
blueOblack macro
mov bl, 01h
endm
greenOblack macro
mov bl, 02h
endm
cyanOblack macro
mov bl, 03h
endm
redOblack macro
mov bl, 04h
endm
magentaOblack macro
mov bl, 05h
endm
brownOblack macro
mov bl, 06h
endm
lightgreyOblack macro
mov bl, 07h
endm
darkgreyOblack macro
mov bl, 08h
endm
lightblueOblack macro
mov bl, 09h
endm
lightgreenOblack macro
mov bl, 0Ah
endm
lightcyanOblack macro
mov bl, 0Bh
endm
lightredOblack macro
mov bl, 0Ch
endm
lightmagentaOblack macro
mov bl, 0Dh
endm
yellowOblack macro
mov bl, 0Eh
endm
whiteOblack macro
mov bl, 0Fh
endm

;\\\\\\\\\\\\\\\\\\\\\\\\\BLINKING FOREGROUND///////////////////////// DEFAULT BACKGROUND: BLACK
blinkblue macro
mov bl, 81h
endm
blinkgreen macro
mov bl, 82h
endm
blinkcyan macro
mov bl, 83h
endm
blinkred macro
mov bl, 84h
endm
blinkmagenta macro
mov bl, 85h
endm
blinkbrown macro
mov bl, 86h
endm
blinklightgrey macro
mov bl, 87h
endm
blinkdarkgrey macro
mov bl, 88h
endm
blinklightblue macro
mov bl, 89h
endm
blinklightgreen macro
mov bl, 8Ah
endm
blinklightcyan macro
mov bl, 8Bh
endm
blinklightred macro
mov bl, 8Ch
endm
blinklightmagenta macro
mov bl, 8Dh
endm
blinkyellow macro
mov bl, 8Eh
endm
blinkwhite macro
mov bl, 8Fh
endm

;\\\\\\\\\\\\\\\\\\\\\\\\\BACKGROUND COLOURS///////////////////////// DEFAULT FOREGROUND: BLACK
black macro
mov bl, 00h
endm
blue macro
mov bl, 10h
endm
green macro
mov bl, 20h
endm
cyan macro
mov bl, 30h
endm
red macro
mov bl, 40h
endm
magenta macro
mov bl, 50h
endm
brown macro
mov bl, 60h
endm
lightgrey macro
mov bl, 70h
endm
darkgrey macro
mov bl, 80h
endm
lightblue macro
mov bl, 90h
endm
lightgreen macro
mov bl, 0A0h
endm
lightcyan macro
mov bl, 0B0h
endm
lightred macro
mov bl, 0C0h
endm
lightmagenta macro
mov bl, 0D0h
endm
yellow macro
mov bl, 0E0h
endm
white macro
mov bl, 0F0h
endm

cseg segment para 'code'
assume cs:cseg;ds:cseg;ss:cseg;es:cseg
org 100h
start:
clear

gotoxy 1,0
print '@', blinkblue, 8
gotoxy 2, 0
print '@', blinkblue, 2
gotoxy 2, 8
print '@', blinkblue, 2
gotoxy 3, 0
print '@', blinkblue, 2
gotoxy 3, 8
print '@', blinkblue, 2
gotoxy 4, 0
print '@', blinkblue, 8
gotoxy 5, 0
print '@', blinkblue, 2
gotoxy 5, 4
print '@', blinkblue, 2
gotoxy 6, 0
print '@', blinkblue, 2
gotoxy 6, 6
print '@', blinkblue, 2
gotoxy 7, 0
print '@', blinkblue, 2
gotoxy 7, 8
print '@', blinkblue, 2

gotoxy 9,0
print '@', blinkred, 8
gotoxy 10, 0
print '@', blinkred, 2
gotoxy 10, 8
print '@', blinkred, 2
gotoxy 11, 0
print '@', blinkred, 2
gotoxy 11, 8
print '@', blinkred, 2
gotoxy 12, 0
print '@', blinkred, 8
gotoxy 13, 0
print '@', blinkred, 2
gotoxy 13, 4
print '@', blinkred, 2
gotoxy 14, 0
print '@', blinkred, 2
gotoxy 14, 6
print '@', blinkred, 2
gotoxy 15, 0
print '@', blinkred, 2
gotoxy 15, 8
print '@', blinkred, 2

gotoxy 1, 14
print '@', blinkgreen, 6
gotoxy 2, 12
print '@', blinkgreen, 2
gotoxy 2, 20
print '@', blinkgreen, 2
gotoxy 3, 12
print '@', blinkgreen, 2
gotoxy 4, 12
print '@', blinkgreen, 2
gotoxy 5, 12
print '@', blinkgreen, 2
gotoxy 5, 18
print '@', blinkgreen, 4
gotoxy 6, 12
print '@', blinkgreen, 2
gotoxy 6, 20
print '@', blinkgreen, 2
gotoxy 7, 14
print '@', blinkgreen, 6

gotoxy 9, 12
print '@', blinkmagenta, 10
gotoxy 10, 16
print '@', blinkmagenta, 2
gotoxy 11, 16
print '@', blinkmagenta, 2
gotoxy 12, 16
print '@', blinkmagenta, 2
gotoxy 13, 16
print '@', blinkmagenta, 2
gotoxy 14, 16
print '@', blinkmagenta, 2
gotoxy 15, 16
print '@', blinkmagenta, 2

exit