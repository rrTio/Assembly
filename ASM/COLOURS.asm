data segment
text1 db 'STRING0$'
text2 db 'STRING1$'
data ends

gotoxy macro y,x
mov ah,02
mov dh,y
mov dl,x
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

;\\\\\\\\\\\\\\\\\\\\\\\\\FOREGROUND COLOURS///////////////////////// DEFAULT BACKGROUND: BROWN
blackObrown macro
mov bl, 60h
endm
blueObrown macro
mov bl, 61h
endm
greenObrown macro
mov bl, 62h
endm
cyanObrown macro
mov bl, 63h
endm
redObrown macro
mov bl, 64h
endm
magentaObrown macro
mov bl, 65h
endm
brownObrown macro
mov bl, 66h
endm
lightgreyObrown macro
mov bl, 67h
endm
darkgreyObrown macro
mov bl, 68h
endm
lightblueObrown macro
mov bl, 69h
endm
lightgreenObrown macro
mov bl, 6Ah
endm
lightcyanObrown macro
mov bl, 6Bh
endm
lightredObrown macro
mov bl, 6Ch
endm
lightmagentaObrown macro
mov bl, 6Dh
endm
yellowObrown macro
mov bl, 6Eh
endm
whiteObrown macro
mov bl, 6Fh
endm

;\\\\\\\\\\\\\\\\\\\\\\\\\FOREGROUND COLOURS///////////////////////// DEFAULT BACKGROUND: LIGHT GREY
blackOlightgrey macro
mov bl, 70h
endm
blueOlightgrey macro
mov bl, 71h
endm
greenOlightgrey macro
mov bl, 72h
endm
cyanOlightgrey macro
mov bl, 73h
endm
redOlightgrey macro
mov bl, 74h
endm
magentaOlightgrey macro
mov bl, 75h
endm
brownOlightgrey macro
mov bl, 76h
endm
lightgreyOlightgrey macro
mov bl, 77h
endm
darkgreyOlightgrey macro
mov bl, 78h
endm
lightblueOlightgrey macro
mov bl, 79h
endm
lightgreenOlightgrey macro
mov bl, 7Ah
endm
lightcyanOlightgrey macro
mov bl, 7Bh
endm
lightredOlightgrey macro
mov bl, 7Ch
endm
lightmagentaOlightgrey macro
mov bl, 7Dh
endm
yellowOlightgrey macro
mov bl, 7Eh
endm
whiteOlightgrey macro
mov bl, 7Fh
endm

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\FOREGROUND BLINKING//////////////////////////////////////////////////

;\\\\\\\\\\\\\\\\\\\\\\\\\FOREGROUND COLOURS///////////////////////// DEFAULT BACKGROUND: DARK GREY
blackOdarkgrey macro
mov bl, 80h
endm
blueOdarkgrey macro
mov bl, 81h
endm
greenOdarkgrey macro
mov bl, 82h
endm
cyanOdarkgrey macro
mov bl, 83h
endm
redOdarkgrey macro
mov bl, 84h
endm
magentaOdarkgrey macro
mov bl, 85h
endm
bronwOdarkgrey macro
mov bl, 86h
endm
lightgreyOdarkgrey macro
mov bl, 87h
endm
darkgreyOdarkgrey macro
mov bl, 88h
endm
lightblueOdarkgrey macro
mov bl, 89h
endm
lightgreenOdarkgrey macro
mov bl, 8Ah
endm
lightcyanOdarkgrey macro
mov bl, 8Bh
endm
lightredOdarkgrey macro
mov bl, 8Ch
endm
lightmagentaOdarkgrey macro
mov bl, 8Dh
endm
yellowOdarkgrey macro
mov bl, 8Eh
endm
whiteOdarkgrey macro
mov bl, 8Fh
endm

;\\\\\\\\\\\\\\\\\\\\\\\\\FOREGROUND COLOURS///////////////////////// DEFAULT BACKGROUND: LIGHT BLUE
blackOlightblue macro
mov bl, 90h
endm
blueOlightblue macro
mov bl, 91h
endm
greenOlightblue macro
mov bl, 92h
endm
cyanOlightblue macro
mov bl, 93h
endm
redOlightblue macro
mov bl, 94h
endm
magentaOlightblue macro
mov bl, 95h
endm
brownOlightblue macro
mov bl, 96h
endm
lightgreyOlightblue macro
mov bl, 97h
endm
darkgreyOlightblue macro
mov bl, 98h
endm
lightblueOlightblue macro
mov bl, 99h
endm
lightgreenOlightblue macro
mov bl, 9Ah
endm
lightcyanOlightblue macro
mov bl, 9Bh
endm
lightredOlightblue macro
mov bl, 9Ch
endm
lightmagentaOlightblue macro
mov bl, 9Dh
endm
yellowOlightblue macro
mov bl, 9Eh
endm
whiteOlightblue macro
mov bl, 9Fh
endm

;\\\\\\\\\\\\\\\\\\\\\\\\\FOREGROUND COLOURS///////////////////////// DEFAULT BACKGROUND: LIGHT GREEN
blackOlightgreen macro
mov bl, 0A0h
endm
blueOlightgreen macro
mov bl, 0A1h
endm
greenOlightgreen macro
mov bl, 0A2h
endm
cyanOlightgreen macro
mov bl, 0A3h
endm
redOlightgreen macro
mov bl, 0A4h
endm
magentaOlightgreen macro
mov bl, 0A5h
endm
brownOlightgreen macro
mov bl, 0A6h
endm
lightgreyOlightgreen macro
mov bl, 0A7h
endm
darkgreyOlightgreen macro
mov bl, 0A8h
endm
lightblueOlightgreen macro
mov bl, 0A9h
endm
lightgreenOlightgreen macro
mov bl, 0AAh
endm
lightcyanOlightgreen macro
mov bl, 0ABh
endm
lightredOlightgreen macro
mov bl, 0ACh
endm
lightmagentaOlightgreen macro
mov bl, 0ADh
endm
yellowOlightgreen macro
mov bl, 0AEh
endm
whiteOlightgreen macro
mov bl, 0AFh
endm

;\\\\\\\\\\\\\\\\\\\\\\\\\FOREGROUND COLOURS///////////////////////// DEFAULT BACKGROUND: LIGHT CYAN
blackOlightcyan macro
mov bl, 0B0h
endm
blueOlightcyan macro
mov bl, 0B1h
endm
greenOlightcyan macro
mov bl, 0B2h
endm
cyanOlightcyan macro
mov bl, 0B3h
endm
redOlightcyan macro
mov bl, 0B4h
endm
magentaOlightcyan macro
mov bl, 0B5h
endm
brownOlightcyan macro
mov bl, 0B6h
endm
lightgreyOlightcyan macro
mov bl, 0B7h
endm
darkgreyOlightcyan macro
mov bl, 0B8h
endm
lightblueOlightcyan macro
mov bl, 0B9h
endm
lightgreenOlightcyan macro
mov bl, 0BAh
endm
lightcyanOlightcyan macro
mov bl, 0BBh
endm
lightredOlightcyan macro
mov bl, 0BCh
endm
lightmagentaOlightcyan macro
mov bl, 0BDh
endm
yellowOlightcyan macro
mov bl, 0BEh
endm
whiteOlightcyan macro
mov bl, 0BFh
endm

;\\\\\\\\\\\\\\\\\\\\\\\\\FOREGROUND COLOURS///////////////////////// DEFAULT BACKGROUND: LIGHT RED
blackOlightred macro
mov bl, 0C0h
endm
blueOlightred macro
mov bl, 0C1h
endm
greenOlightred macro
mov bl, 0C2h
endm
cyanOlightred macro
mov bl, 0C3h
endm
redOlightred macro
mov bl, 0C4h
endm
magentaOlightred macro
mov bl, 0C5h
endm
brownOlightred macro
mov bl, 0C6h
endm
lightgreyOlightred macro
mov bl, 0C7h
endm
darkgreyOlightred macro
mov bl, 0C8h
endm
lightblueOlightred macro
mov bl, 0C9h
endm
lightgreenOlightred macro
mov bl, 0CAh
endm
lightcyanOlightred macro
mov bl, 0CBh
endm
lightredOlightred macro
mov bl, 0CCh
endm
lightmagentaOlightred macro
mov bl, 0CDh
endm
yellowOlightred macro
mov bl, 0CEh
endm
whiteOlightred macro
mov bl, 0CFh
endm

;\\\\\\\\\\\\\\\\\\\\\\\\\FOREGROUND COLOURS///////////////////////// DEFAULT BACKGROUND: LIGHT MAGENTA
blackOlightmagenta macro
mov bl, 0D0h
endm
blueOlightmagenta macro
mov bl, 0D1h
endm
greenOlightmagenta macro
mov bl, 0D2h
endm
cyanOlightmagenta macro
mov bl, 0D3h
endm
redOlightmagenta macro
mov bl, 0D4h
endm
magentaOlightmagenta macro
mov bl, 0D5h
endm
brownOlightmagenta macro
mov bl, 0D6h
endm
lightgreyOlightmagenta macro
mov bl, 0D7h
endm
darkgreyOlightmagenta macro
mov bl, 0D8h
endm
lightblueOlightmagenta macro
mov bl, 0D9h
endm
lightgreenOlightmagenta macro
mov bl, 0DAh
endm
lightcyanOlightmagenta macro
mov bl, 0DBh
endm
lightredOlightmagenta macro
mov bl, 0DCh
endm
lightmagentaOlightmagenta macro
mov bl, 0DDh
endm
yellowOlightmagenta macro
mov bl, 0DEh
endm
whiteOlightmagenta macro
mov bl, 0DFh
endm

;\\\\\\\\\\\\\\\\\\\\\\\\\FOREGROUND COLOURS///////////////////////// DEFAULT BACKGROUND: YELLOW
blackOyellow macro
mov bl, 0E0h
endm
blueOyellow macro
mov bl, 0E1h
endm
greenOyellow macro
mov bl, 0E2h
endm
cyanOyellow macro
mov bl, 0E3h
endm
redOyellow macro
mov bl, 0E4h
endm
magentaOyellow macro
mov bl, 0E5h
endm
brownOyellow macro
mov bl, 0E6h
endm
lightgreyOyellow macro
mov bl, 0E7h
endm
darkgreyOyellow macro
mov bl, 0E8h
endm
lightblueOyellow macro
mov bl, 0E9h
endm
lightgreenOyellow macro
mov bl, 0EAh
endm
lightcyanOyellow macro
mov bl, 0EBh
endm
lightredOyellow macro
mov bl, 0ECh
endm
lightmagentaOyellow macro
mov bl, 0EDh
endm
yellowOyellow macro
mov bl, 0EEh
endm
whiteOyellow macro
mov bl, 0EFh
endm

;\\\\\\\\\\\\\\\\\\\\\\\\\FOREGROUND COLOURS///////////////////////// DEFAULT BACKGROUND: WHITE
blackOwhite macro
mov bl, 0F0h
endm
blueOwhite macro
mov bl, 0F1h
endm
greenOwhite macro
mov bl, 0F2h
endm
cyanOwhite macro
mov bl, 0F3h
endm
redOwhite macro
mov bl, 0F4h
endm
magentaOwhite macro
mov bl, 0F5h
endm
brownOwhite macro
mov bl, 0F6h
endm
lightgreyOwhite macro
mov bl, 0F7h
endm
darkgreyOwhite macro
mov bl, 0F8h
endm
lightblueOwhite macro
mov bl, 0F9h
endm
lightgreenOwhite macro
mov bl, 0FAh
endm
lightcyanOwhite macro
mov bl, 0FBh
endm
lightredOwhite macro
mov bl, 0FCh
endm
lightmagentaOwhite macro
mov bl, 0FDh
endm
yellowOwhite macro
mov bl, 0FEh
endm
whiteOwhite macro
mov bl, 0FFh
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