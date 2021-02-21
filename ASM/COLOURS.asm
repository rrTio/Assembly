data segment
text1 db 'CREATED BY: ROZS RAVEN TIO$'
data ends

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

;\\\\\\\\\\\\\\\\\\\\\\\\\FOREGROUND COLOURS///////////////////////// DEFAULT BACKGROUND: BLUE
blackOblue macro
mov bl, 10h
endm
blueOblue macro
mov bl, 11h
endm
greenOblue macro
mov bl, 12h
endm
cyanOblue macro
mov bl, 13h
endm
redOblue macro
mov bl, 14h
endm
magentaOblue macro
mov bl, 15h
endm
brownOblue macro
mov bl, 16h
endm
lightgreyOblue macro
mov bl, 17h
endm
darkgreyOblue macro
mov bl, 18h
endm
lightblueOblue macro
mov bl, 19h
endm
lightgreenOblue macro
mov bl, 1Ah
endm
lightcyanOblue macro
mov bl, 1Bh
endm
lightredOblue macro
mov bl, 1Ch
endm
lightmagentaOblue macro
mov bl, 1Dh
endm
yellowOblue macro
mov bl, 1Eh
endm
whiteOblue macro
mov bl, 1Fh
endm

;\\\\\\\\\\\\\\\\\\\\\\\\\FOREGROUND COLOURS///////////////////////// DEFAULT BACKGROUND: GREEN
blackOgreen macro
mov bl, 20h
endm
blueOgreen macro
mov bl, 11h
endm
greenOgreen macro
mov bl, 22h
endm
cyanOgreen macro
mov bl, 23h
endm
redOgreen macro
mov bl, 24h
endm
magentaOgreen macro
mov bl, 25h
endm
brownOgreen macro
mov bl, 26h
endm
lightgreyOgreen macro
mov bl, 27h
endm
darkgreyOgreen macro
mov bl, 28h
endm
lightblueOgreen macro
mov bl, 29h
endm
lightgreenOgreen macro
mov bl, 2Ah
endm
lightcyanOgreen macro
mov bl, 2Bh
endm
lightredOgreen macro
mov bl, 2Ch
endm
lightmagentaOgreen macro
mov bl, 2Dh
endm
yellowOgreen macro
mov bl, 2Eh
endm
whiteOgreen macro
mov bl, 2Fh
endm

;\\\\\\\\\\\\\\\\\\\\\\\\\FOREGROUND COLOURS///////////////////////// DEFAULT BACKGROUND: CYAN
blackOcyan macro
mov bl, 30h
endm
blueOcyan macro
mov bl, 31h
endm
greenOcyan macro
mov bl,32h
endm
cyanOcyan macro
mov bl, 33h
endm
redOcyan macro
mov bl, 34h
endm
magentaOcyan macro
mov bl, 35h
endm
brownOcyan macro
mov bl, 36h
endm
lightgreyOcyan macro
mov bl, 37h
endm
darkgreyOcyan macro
mov bl, 38h
endm
lightblueOcyan macro
mov bl, 39h
endm
lightgreenOcyan macro
mov bl, 3Ah
endm
lightcyanOcyan macro
mov bl, 3Bh
endm
lightredOcyan macro
mov bl, 3Ch
endm
lightmagentaOcyan macro
mov bl, 3Dh
endm
yellowOcyan macro
mov bl, 3Eh
endm
whiteOcyan macro
mov bl, 3Fh
endm

;\\\\\\\\\\\\\\\\\\\\\\\\\FOREGROUND COLOURS///////////////////////// DEFAULT BACKGROUND: RED
blackOred macro
mov bl, 40h
endm
blueOred macro
mov bl, 41h
endm
greenOred macro
mov bl, 42h
endm
cyanOred macro
mov bl, 43h
endm
redOred macro
mov bl, 44h
endm
magentaOred macro
mov bl, 45h
endm
brownOred macro
mov bl, 46h
endm
lightgreyOred macro
mov bl, 47h
endm
darkgreyOred macro
mov bl, 48h
endm
lightblueOred macro
mov bl, 49h
endm
lightgreenOred macro
mov bl, 4Ah
endm
lightcyanOred macro
mov bl, 4Bh
endm
lightredOred macro
mov bl, 4Ch
endm
lightmagentaOred macro
mov bl, 4Dh
endm
yellowOred macro
mov bl, 4Eh
endm
whiteOred macro
mov bl, 4Fh
endm

;\\\\\\\\\\\\\\\\\\\\\\\\\FOREGROUND COLOURS///////////////////////// DEFAULT BACKGROUND: MAGENTA
blackOmagenta macro
mov bl, 50h
endm
blueOmagenta macro
mov bl, 51h
endm
greenOmagenta macro
mov bl, 52h
endm
cyanOmagenta macro
mov bl, 53h
endm
redOmagenta macro
mov bl, 54h
endm
magentaOmagenta macro
mov bl, 55h
endm
brownOmagenta macro
mov bl, 56h
endm
lightgreyOmagenta macro
mov bl, 57h
endm
darkgreyOmagenta macro
mov bl, 58h
endm
lightblueOmagenta macro
mov bl, 59h
endm
lightgreenOmagenta macro
mov bl, 5Ah
endm
lightcyanOmagenta macro
mov bl, 5Bh
endm
lightredOmagenta macro
mov bl, 5Ch
endm
lightmagentaOmagenta macro
mov bl, 5Dh
endm
yellowOmagenta macro
mov bl, 5Eh
endm
whiteOmagenta macro
mov bl, 5Fh
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

;\\\\\\\\\\\\\\\\\\\\\\\\\BACKGROUND COLOURS///////////////////////// DEFAULT FOREGROUND: SAME AS BACKGROUND
black macro
mov bl, 00h
endm
blue macro
mov bl, 11h
endm
green macro
mov bl, 22h
endm
cyan macro
mov bl, 33h
endm
red macro
mov bl, 44h
endm
magenta macro
mov bl, 55h
endm
brown macro
mov bl, 66h
endm
lightgrey macro
mov bl, 77h
endm
darkgrey macro
mov bl, 88h
endm
lightblue macro
mov bl, 99h
endm
lightgreen macro
mov bl, 0AAh
endm
lightcyan macro
mov bl, 0BBh
endm
lightred macro
mov bl, 0CCh
endm
lightmagenta macro
mov bl, 0DDh
endm
yellow macro
mov bl, 0EEh
endm
white macro
mov bl, 0FFh
endm


cseg segment para 'code'
assume cs:cseg;ds:cseg;ss:cseg;es:cseg
org 100h
start:
clear

;format
;gotoxy yCoordinate, xCoordinate
;print char, colour,repetition

gotoxy 0, 0
printColour ' ', yellowOblack, 26
string text1

exit