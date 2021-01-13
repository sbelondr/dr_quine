	global _main
	extern _puts
test: push rbx
	lea rdi,[rel l1]
	call _puts
	pop rbx
	leave
	ret
_main: push rbp
	mov rbp, rsp
	sub rsp, 16
	call test
	mov rax,0x2000001
	mov rdi, 0
	syscall

section .data
l1: db "	global _main",10,"	extern _puts",10,"test: push rbx",10,0
l2: db 10,10,"section .data",10,0

