	global _main
	extern _printf
	extern _exit

%macro p 1
lea rdi, [rel ls]
lea rsi, [rel %1]
call _printf
leave
add rsp,8
mov rbp,rsp
xor rax, rax
%endmacro

_main:
	push rbp
	mov rbp,rsp
	sub rsp,16
	p l1
	p l2
	p l3
	p l4
	p l5
	p l6
	p le
	xor rax,rax
	mov rdi,0
	call _exit
	leave

section .data
ls:db"%s",0
lt:db"sss",0
l1:db"	global _main",10,"	extern _printf",10,"	extern _exit",10,10,"%macro p 1",10,"lea rdi, [rel ls]",10,0
l2:db"lea rsi, [rel %1]",10,"call _printf",10,"leave",10,"add rsp,8",10,"mov rbp,rsp",0
l3:db 10,"xor rax, rax",10,"%endmacro",10,10,0
l4:db"_main:",10,"	push rbp",10,"	mov rbp,rsp",10,0
l5:db"	sub rsp,16",10,"	p l1",10,"	p l2",10,"	p l3",10,0
l6:db"	p l4",10,"	p l5",10,"	p l6",10,"	p le",10,0
le:db"	xor rax,rax",10,"	mov rdi,0",10,"	call _exit",10,"	leave",10,0
