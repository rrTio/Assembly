data segment
month01 db '====JANUARY 2021====$'
days01 db  ' S  M  T  W  T  F  S$'
week101 db '                1  2$'
week201 db ' 3  4  5  6  7  8  9$'
week301 db '10 11 12 13 14 15 16$'
week401 db '17 18 19 20 21 22 23$'
week501 db '24 25 26 27 28 29 30$'
week601 db '31$'

month02 db '====FEBRUARY 2021===$'
days02 db  ' S  M  T  W  T  F  S$'
week102 db '    1  2  3  4  5  6$'
week202 db ' 7  8  9 10 11 12 13$'
week302 db '14 15 16 17 18 19 20$'
week402 db '21 22 23 24 25 26 27$'
week502 db '28$'

month03 db '=====MARCH 2021=====$'
days03 db  ' S  M  T  W  T  F  S$'
week103 db '    1  2  3  4  5  6$'
week203 db ' 7  8  9 10 11 12 13$'
week303 db '14 15 16 17 18 19 20$'
week403 db '21 22 23 24 25 26 27$'
week503 db '28 29 30 31$'

month04 db '=====APRIL 2021=====$'
days04 db  ' S  M  T  W  T  F  S$'
week104 db '             1  2  3$'
week204 db ' 4  5  6  7  8  9 10$'
week304 db '11 12 13 14 15 16 17$'
week404 db '18 19 20 21 22 23 24$'
week504 db '25 26 27 28 29 30$'

month05 db '======MAY 2021======$'
days05 db  ' S  M  T  W  T  F  S$'
week105 db '                   1$'
week205 db ' 2  3  4  5  6  7  8$'
week305 db ' 9 10 11 12 13 14 15$'
week405 db '16 17 18 19 20 21 22$'
week505 db '23 24 25 26 27 28 29$'
week605 db '30 31$'

month06 db '=====JUNE 2021======$'
days06 db  ' S  M  T  W  T  F  S$'
week106 db '       1  2  3  4  5$'
week206 db ' 6  7  8  9 10 11 12$'
week306 db '13 14 15 16 17 18 19$'
week406 db '20 21 22 23 24 25 26$'
week506 db '27 28 29 30$'

month07 db '=====JULY 2021======$'
days07 db  ' S  M  T  W  T  F  S$'
week107 db '             1  2  3$'
week207 db ' 4  5  6  7  8  9 10$'
week307 db '11 12 13 14 15 16 17$'
week407 db '18 19 20 21 22 23 24$'
week507 db '25 26 27 28 29 30 31$'

month08 db '=====AUGUST 2021====$'
days08 db  ' S  M  T  W  T  F  S$'
week108 db ' 1  2  3  4  5  6  7$'
week208 db ' 8  9 10 11 12 13 14$'
week308 db '15 16 17 18 19 20 21$'
week408 db '22 23 24 25 26 27 28$'
week508 db '29 30$'

month09 db '===SEPTEMBER 2021===$'
days09 db  ' S  M  T  W  T  F  S$'
week109 db '          1  2  3  4$'
week209 db ' 5  6  7  8  9 10 11$'
week309 db '12 13 14 15 16 17 18$'
week409 db '19 20 21 22 23 24 25$'
week509 db '26 27 28 29 30 $'

month10 db '====OCTOBER 2021====$'
days10 db  ' S  M  T  W  T  F  S$'
week110 db '                1  2$'
week210 db ' 3  4  5  6  7  8  9$'
week310 db '10 11 12 13 14 15 16$'
week410 db '17 18 19 20 21 22 23$'
week510 db '24 25 26 27 28 29 30$'
week610 db '31$'

month11 db '====NOVEMBER 2021===$'
days11 db  ' S  M  T  W  T  F  S$'
week111 db '    1  2  3  4  5  6$'
week211 db ' 7  8  9 10 11 12 13$'
week311 db '14 15 16 17 18 19 20$'
week411 db '21 22 23 24 25 26 27$'
week511 db '28 29 30 31$'

month12 db '===DECEMBER 2021====$'
days12 db  ' S  M  T  W  T  F  S$'
week112 db '          1  2  3  4$'
week212 db ' 5  6  7  8  9 10 11$'
week312 db '12 13 14 15 16 17 18$'
week412 db '19 20 21 22 23 24 25$'
week512 db '26 27 28 29 30 $'
data ends

january macro
gotoxy 0,0
string month01
gotoxy 1,0
string days01
gotoxy 2,0
string week101
gotoxy 3,0
string week201
gotoxy 4,0
string week301
gotoxy 5,0
string week401
gotoxy 6,0
string week501
gotoxy 7,0
string week601
endm
february macro
gotoxy 0,20
string month02
gotoxy 1,20
string days02
gotoxy 2,20
string week102
gotoxy 3,20
string week202
gotoxy 4,20
string week302
gotoxy 5,20
string week402
gotoxy 6,20
string week502
endm
march macro
gotoxy 0,40
string month03
gotoxy 1,40
string days03
gotoxy 2,40
string week103
gotoxy 3,40
string week203
gotoxy 4,40
string week303
gotoxy 5,40
string week403
gotoxy 6,40
string week503
endm
april macro
gotoxy 0,60
string month04
gotoxy 1,60
string days04
gotoxy 2,60
string week104
gotoxy 3,60
string week204
gotoxy 4,60
string week304
gotoxy 5,60
string week404
gotoxy 6,60
string week504
endm
may macro
gotoxy 8,0
string month05
gotoxy 9,0
string days05
gotoxy 10,0
string week105
gotoxy 11,0
string week205
gotoxy 12,0
string week305
gotoxy 13,0
string week405
gotoxy 14,0
string week505
gotoxy 15,0
string week605
endm
june macro
gotoxy 8,20
string month06
gotoxy 9,20
string days06
gotoxy 10, 20
string week106
gotoxy 11, 20
string week206
gotoxy 12, 20
string week306
gotoxy 13, 20
string week406
gotoxy 14, 20
string week506
endm
july macro
gotoxy 8,40
string month07
gotoxy 9,40
string days07
gotoxy 10,40
string week107
gotoxy 11,40
string week207
gotoxy 12,40
string week307
gotoxy 13,40
string week407
gotoxy 14,40
string week507
endm
august macro
gotoxy 8,60
string month08
gotoxy 9,60
string days08
gotoxy 10,60
string week108
gotoxy 11,60
string week208
gotoxy 12,60
string week308
gotoxy 13,60
string week408
gotoxy 14,60
string week508
endm
september macro
gotoxy 16,0
string month09
gotoxy 17,0
string days09
gotoxy 18,0
string week109
gotoxy 19,0
string week209
gotoxy 20,0
string week309
gotoxy 21,0
string week409
gotoxy 22,0
string week509
endm
october macro
gotoxy 16,20
string month10
gotoxy 17,20
string days10
gotoxy 18,20
string week110
gotoxy 19,20
string week210
gotoxy 20,20
string week310
gotoxy 21,20
string week410
gotoxy 22,20
string week510
gotoxy 23,20
string week610
endm
november macro
gotoxy 16,40
string month11
gotoxy 17,40
string days11
gotoxy 18,40
string week111
gotoxy 19,40
string week211
gotoxy 20,40
string week311
gotoxy 21,40
string week411
gotoxy 22,40
string week511

endm
december macro
gotoxy 16,60
string month12
gotoxy 17,60
string days12
gotoxy 18,60
string week112
gotoxy 19,60
string week212
gotoxy 20,60
string week312
gotoxy 21,60
string week412
gotoxy 22,60
string week512



endm

lightmagentaOblack macro
mov bl, 0Dh
endm
lightcyanOblack macro
mov bl, 0Bh
endm
yellowOblack macro
mov bl, 0Eh
endm
lightgreenOblack macro
mov bl, 0Ah
endm

background macro
gotoxy 0,0
print ' ', lightmagentaOblack, 20
gotoxy 1,0
print ' ', lightmagentaOblack, 20
gotoxy 2,0
print ' ', lightmagentaOblack, 20
gotoxy 3,0
print ' ', lightmagentaOblack, 20
gotoxy 4,0
print ' ', lightmagentaOblack, 20
gotoxy 5,0
print ' ', lightmagentaOblack, 20
gotoxy 6,0
print ' ', lightmagentaOblack, 20
gotoxy 7,0
print ' ', lightmagentaOblack, 20

gotoxy 0,20
print ' ', lightgreenOblack, 20
gotoxy 1,20
print ' ', lightgreenOblack, 20
gotoxy 2,20
print ' ', lightgreenOblack, 20
gotoxy 3,20
print ' ', lightgreenOblack, 20
gotoxy 4,20
print ' ', lightgreenOblack, 20
gotoxy 5,20
print ' ', lightgreenOblack, 20
gotoxy 6,20
print ' ', lightgreenOblack, 20

gotoxy 0,40
print ' ', lightcyanOblack, 20
gotoxy 1,40
print ' ', lightcyanOblack, 20
gotoxy 2,40
print ' ', lightcyanOblack, 20
gotoxy 3,40
print ' ', lightcyanOblack, 20
gotoxy 4,40
print ' ', lightcyanOblack, 20
gotoxy 5,40
print ' ', lightcyanOblack, 20
gotoxy 6,40
print ' ', lightcyanOblack, 20

gotoxy 0,60
print ' ', yellowOblack, 20
gotoxy 1,60
print ' ', yellowOblack, 20
gotoxy 2,60
print ' ', yellowOblack, 20
gotoxy 3,60
print ' ', yellowOblack, 20
gotoxy 4,60
print ' ', yellowOblack, 20
gotoxy 5,60
print ' ', yellowOblack, 20
gotoxy 6,60
print ' ', yellowOblack, 20

gotoxy 8,0
print ' ', yellowOblack, 20
gotoxy 9,0
print ' ', yellowOblack, 20
gotoxy 10,0
print ' ', yellowOblack, 20
gotoxy 11,0
print ' ', yellowOblack, 20
gotoxy 12,0
print ' ', yellowOblack, 20
gotoxy 13,0
print ' ', yellowOblack, 20
gotoxy 14,0
print ' ', yellowOblack, 20
gotoxy 15,0
print ' ', yellowOblack, 20

gotoxy 8,20
print ' ', lightmagentaOblack, 20
gotoxy 9,20
print ' ', lightmagentaOblack, 20
gotoxy 10,20
print ' ', lightmagentaOblack, 20
gotoxy 11,20
print ' ', lightmagentaOblack, 20
gotoxy 12,20
print ' ', lightmagentaOblack, 20
gotoxy 13,20
print ' ', lightmagentaOblack, 20
gotoxy 14,20
print ' ', lightmagentaOblack, 20
gotoxy 15,20
print ' ', lightmagentaOblack, 20

gotoxy 8,40
print ' ', lightgreenOblack, 20
gotoxy 9,40
print ' ', lightgreenOblack, 20
gotoxy 10,40
print ' ', lightgreenOblack, 20
gotoxy 11,40
print ' ', lightgreenOblack, 20
gotoxy 12,40
print ' ', lightgreenOblack, 20
gotoxy 13,40
print ' ', lightgreenOblack, 20
gotoxy 14,40
print ' ', lightgreenOblack, 20

gotoxy 8,60
print ' ', lightcyanOblack, 20
gotoxy 9,60
print ' ', lightcyanOblack, 20
gotoxy 10,60
print ' ', lightcyanOblack, 20
gotoxy 11,60
print ' ', lightcyanOblack, 20
gotoxy 12,60
print ' ', lightcyanOblack, 20
gotoxy 13,60
print ' ', lightcyanOblack, 20
gotoxy 14,60
print ' ', lightcyanOblack, 20

gotoxy 16,0
print ' ', lightcyanOblack, 20
gotoxy 17,0
print ' ', lightcyanOblack, 20
gotoxy 18,0
print ' ', lightcyanOblack, 20
gotoxy 19,0
print ' ', lightcyanOblack, 20
gotoxy 20,0
print ' ', lightcyanOblack, 20
gotoxy 21,0
print ' ', lightcyanOblack, 20
gotoxy 22,0
print ' ', lightcyanOblack, 20
gotoxy 23,0
print ' ', lightcyanOblack, 20

gotoxy 16,20
print ' ', yellowOblack, 20
gotoxy 17,20
print ' ', yellowOblack, 20
gotoxy 18,20
print ' ', yellowOblack, 20
gotoxy 19,20
print ' ', yellowOblack, 20
gotoxy 20,20
print ' ', yellowOblack, 20
gotoxy 21,20
print ' ', yellowOblack, 20
gotoxy 22,20
print ' ', yellowOblack, 20
gotoxy 23,20
print ' ', yellowOblack, 20

gotoxy 16,40
print ' ', lightmagentaOblack, 20
gotoxy 17,40
print ' ', lightmagentaOblack, 20
gotoxy 18,40
print ' ', lightmagentaOblack, 20
gotoxy 19,40
print ' ', lightmagentaOblack, 20
gotoxy 20,40
print ' ', lightmagentaOblack, 20
gotoxy 21,40
print ' ', lightmagentaOblack, 20
gotoxy 22,40
print ' ', lightmagentaOblack, 20

gotoxy 16,60
print ' ', lightgreenOblack, 20
gotoxy 17,60
print ' ', lightgreenOblack, 20
gotoxy 18,60
print ' ', lightgreenOblack, 20
gotoxy 19,60
print ' ', lightgreenOblack, 20
gotoxy 20,60
print ' ', lightgreenOblack, 20
gotoxy 21,60
print ' ', lightgreenOblack, 20
gotoxy 22,60
print ' ', lightgreenOblack, 20

endm

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

cseg segment para 'code'
assume cs:cseg
org 100h
start:
cls

background
january
february
march
april
may
june
july
august
september
october
november
december

exit
