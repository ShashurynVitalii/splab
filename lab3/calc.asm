.386
.model flat, c
option casemap: none

.data
K dd 45781022h
.code
calc proc
	push ebp
	mov ebp, esp
	finit
	fld qword ptr [ebp+20]
	fdiv dword ptr [ebp+28]
	fld qword ptr [ebp+32]
	fmul qword ptr [ebp+8]
	fild K
	fsub qword ptr [ebp+8]
	fsub dword ptr [ebp+16]
	fsub st, st(2)
	fadd st, st(1)
	fwait
	pop ebp
	ret
calc endp
end