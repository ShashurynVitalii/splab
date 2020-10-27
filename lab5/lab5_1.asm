.586
.model flat, stdcall
option casemap: none

include \masm32\include\windows.inc
include \masm32\macros\macros.asm
include \masm32\include\masm32.inc
include \masm32\include\gdi32.inc
include \masm32\include\user32.inc
include \masm32\include\kernel32.inc
include \masm32\include\debug.inc

includelib \masm32\lib\masm32.lib
includelib \masm32\lib\gdi32.lib
includelib \masm32\lib\user32.lib
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\debug.lib

.data
.code
start:
push 'Á'
call IsCharUpperA
cmp eax, 0
je next
PrintDec eax
PrintText "Character in upper case"
jmp finish
next:
PrintDec eax
PrintText "Character in lower case"
finish:
push 0
call ExitProcess
end start
 

