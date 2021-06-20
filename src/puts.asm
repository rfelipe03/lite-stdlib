global puts

section .data
	putsnewline db 0xa

section .text
	puts:
		mov rbx, rdi
		mov rcx, 0
		putsloop:
			cmp byte[rbx], 0
			je endputsloop
			add rbx, 1
			add rcx, 1
			jmp putsloop
		endputsloop:
			sub rbx, rcx
			mov rax, 1
			mov rdi, 1
			mov rsi, rbx
			mov rdx, rcx
			syscall
			mov rbx, rax
			add rbx, 1
			mov rax, 1
			mov rdi, 1
			mov rsi, putsnewline
			mov rdx, 1
			syscall
			mov rax, rbx
			ret
