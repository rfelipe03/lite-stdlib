global putchar

section .bss
	integer resb 8

section .text
	putchar:
		mov qword[integer], rdi
		mov rax, 1
		mov rdi, 1
		mov rsi, integer
		mov rdx, 1
		syscall
		mov rax, [integer]
		ret
