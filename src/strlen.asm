global strlen

section .text
	strlen:
		mov rbx, 0
		mov rcx, rdi
		strlenloop:
			cmp byte[rcx], 0
			je strlenendloop
			add rbx, 1
			add rcx, 1
			jmp strlenloop
		strlenendloop:
			mov rax, rbx
			ret
