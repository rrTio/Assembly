data segment
line   db '                               &&&&&&                    $'
line00 db '                           &&&       &&&&,               $'
line01 db '                        &                 %              $'
line02 db '                       &                   %             $'
line03 db '                       &   &&&              &            $'
line04 db '                        & %      &&&&&%  &  &            $'
line05 db '                        &&%((   &&&&   @&&&&             $'
line06 db '                         &  &&&&&  &&&&#   &             $'
line07 db '                          &              &               $'
line08 db '                           &,           &                $'
line09 db '                            & %%    && #                 $'
line10 db '                            (#        %%&                $'
line11 db '                    %&&%/  &   &    &*   #  %&&&         $'
line12 db '               &   &        %    &&     @       .(  &%   $'
line13 db '     &%&&&&%&&%&&&&&&&&&&&%&&&&&&&&%%&%,        .(    %  $'
line14 db '    #                                  @        .(    &  $'
line15 db '   .(                                  @        .(    .# $'
line16 db '   .(                                  @        .(     & $'
line17 db '   .(              %    &              @        .(     & $'
line18 db '   .(             &     &              @        .(      @$'
line19 db '   .(               *%&                @        .(      &$'
line20 db '   .(                                  @        .(      %$'
line21 db '   .(                                  @        .( &%%  &$'
line22 db '    &&                                &&        %       &$'
line23 db '    &&&&&&&(&(%&&&&&&&&&&&&&&&&&&&&&&&&&&(&(%&&&&&&&&&&&&$'
line24 db '               NETWORK SECURITY/PROGRAMMER               $'
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

blinkgreen macro
mov bl, 82h
endm

drawing macro
gotoxy 0, 80
printColour ' ', blinkgreen, 80
string line

gotoxy 1, 80
printColour ' ', blinkgreen, 80
string line00

gotoxy 2, 80
printColour ' ', blinkgreen, 80
string line01

gotoxy 3, 80
printColour ' ', blinkgreen, 80
string line02

gotoxy 4, 80
printColour ' ', blinkgreen, 80
string line03

gotoxy 5, 80
printColour ' ', blinkgreen, 80
string line04

gotoxy 6, 80
printColour ' ', blinkgreen, 80
string line05

gotoxy 7, 80
printColour ' ', blinkgreen, 80
string line06

gotoxy 8, 80
printColour ' ', blinkgreen, 80
string line07

gotoxy 9, 80
printColour ' ', blinkgreen, 80
string line08

gotoxy 10, 80
printColour ' ', blinkgreen, 80
string line09

gotoxy 11, 80
printColour ' ', blinkgreen, 80
string line10

gotoxy 12, 80
printColour ' ', blinkgreen, 80
string line11

gotoxy 13, 80
printColour ' ', blinkgreen, 80
string line12

gotoxy 14, 80
printColour ' ', blinkgreen, 80
string line13

gotoxy 15, 80
printColour ' ', blinkgreen, 80
string line16

gotoxy 16, 80
printColour ' ', blinkgreen, 80
string line17

gotoxy 17, 80
printColour ' ', blinkgreen, 80
string line18

gotoxy 18, 80
printColour ' ', blinkgreen, 80
string line19

gotoxy 19, 80
printColour ' ', blinkgreen, 80
string line20

gotoxy 20, 80
printColour ' ', blinkgreen, 80
string line21

gotoxy 21, 80
printColour ' ', blinkgreen, 80
string line22

gotoxy 22, 80
printColour ' ', blinkgreen, 80
string line23

gotoxy 23, 80
printColour ' ', blinkgreen, 80
string line24

endm

cseg segment para 'code'
assume cs:cseg
org 100h
start:
clear
drawing
exit