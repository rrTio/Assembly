section .data
	text db "Hello, World!", 10
	new db "TEST", 10
section .text
	global _start
_start: 
	mov rax, 1
	mov rdi, 1
	mov rsi, text, new
	mov rdx, 14
	syscall

	mov rax, 60
	mov rdi, 0
	syscall
