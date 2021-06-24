global strcmp

section .data
	strcmp:
		strcmploop:
			mov rbx, [rdi]
			mov rcx, [rsi]
			cmp rbx, rcx
			jne strcmpne
			cmp rcx, 0
			je strcmpendstr
			cmp rbx, 0
			je strcmpendstr
			add rdi, 1
			add rsi, 1
			jmp strcmploop
		strcmpne:
			mov rax, 1
			ret
		strcmpendstr:
			mov rax, 0
			ret
