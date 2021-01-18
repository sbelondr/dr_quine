	global _main
	extern _printf
	extern _exit

_main: lea rdi,[rel s]
	push rbp
	push rdi
	mov rbp,rsp
	sub rsp,16
	call _printf
	leave
	xor rax,rax
	xor rdi,rdi
	mov rdi,0
	call _exit
section .data
s:db`	global _main\
	extern _printf\
\
_main: lea rdi,[rel s]\
call _printf\
leave\
section .data`,0
