.386
.model flat, c
.data
	K equ 45781022h
	div_val db 0
	mul_val dw 0
.code
calc proc
	push ebp
	mov ebp, esp
	xor eax, eax
	mov ax, word ptr [ebp+16]
	mov bl, 2
	idiv bl
	mov div_val, al
	xor eax, eax
	mov al, byte ptr [ebp+8]
	mov bl, 4
	imul bl
	mov mul_val, ax
	xor eax, eax
	mov eax, K
	sub eax, dword ptr [ebp+8]
	sub eax, dword ptr [ebp+12]
	sub al, div_val
	add ax, mul_val
	pop ebp
	ret
calc endp
end