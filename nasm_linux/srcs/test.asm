

section .text
	global main
	extern printf

main:
	push rbp
	mov rbp, rsp
	sub rsp, 16

	mov rdi, f
	mov rsi, 578
	mov rdx, 508
	mov rax, 2
	syscall
	xor rax, rax
	mov rax, 60
	mov rdi, 0
	syscall
	ret

section .data
	f:db"Test_me", 0
