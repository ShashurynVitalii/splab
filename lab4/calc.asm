.386
.model flat, c

.data
const_1 dd 1.0
const_2 dd 2.0
const_4 dd 4.0
const_41 dd 41.0
.code
calc proc
	push ebp
	mov ebp, esp
	finit
	fld dword ptr [ebp+16]
	fcomp dword ptr [ebp+20]
	fstsw ax
	sahf
	jbe next
	fld dword ptr [ebp+20]
	fdiv dword ptr [ebp+16]
	fld const_41
	fsub st, st(1)
	fadd const_1
	fldln2
	fld qword ptr [ebp+8]
	fmul dword ptr [ebp+20]
	fadd const_2
	fyl2x
	fmul dword ptr [ebp+16]
	fdiv st, st(1)
	jmp finish
next:
	fld dword ptr [ebp+16]
	fdiv dword ptr [ebp+20]
	fsub const_1
	fldlg2
	fld const_4
	fmul dword ptr [ebp+20]
	fsub dword ptr [ebp+16]
	fyl2x
	fmul qword ptr [ebp+8]
	fdiv st, st(1)
finish:
	pop ebp
	ret
calc endp
end
