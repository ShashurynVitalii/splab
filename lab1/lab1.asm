.586
.model flat, stdcall
option casemap: none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc
include \masm32\include\debug.inc
include \masm32\include\user32.inc

includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib
includelib \masm32\lib\debug.lib
includelib \masm32\lib\user32.lib

.data
Arr dd 2, 34, 11, -7, 7, 9, 10, -4
K dd 4
c_parameter dd -3
d_parameter dd 12
Sum dd 0
hBound dd 0
lBound dd 0

.code
start:
    mov eax, c_parameter
    mov ebx, 2
    mul ebx
    mov lBound, eax
    mov eax, d_parameter
    mov ebx, 3
    mul ebx
    mov hBound, eax
    mov ecx, 0
arr_proc:
    mov eax, [Arr + ecx*4]
    cmp eax, lBound
    jl next_elem
    cmp eax, hBound
    jg next_elem
    cmp K, 0
    jbe output
    add Sum, eax
    dec K
next_elem:
    inc ecx
    cmp ecx, 7
    jbe arr_proc
output:
    PrintDec Sum
    invoke ExitProcess, NULL
end start