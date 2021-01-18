	global _main
	extern _printf
	extern _exit

%macro p 6
lea rdi,[rel %1]
lea rsi,[rel %2]
lea rdx,[rel %3]
lea rcx,[rel %4]
lea r8,[rel %5]
lea r9,[rel %6]
call _printf
leave
add rsp,8
mov rbp,rsp
xor rax,rax
%endmacro

_main:
	push rbp
	mov rbp,rsp
	sub rsp,16
	p l1,ln,ln,ln,ln,lp
	p l2,ln,lp,ln,lp,ln
	p l3,lp,ln,lp,ln,lp
	p l4,ln,lp,ln,ln,ln
	p l5,ln,ln,ln,lp,ln
	p l6,ln,ln,ln,ln,ln
	p l7,ln,ln,ln,ln,ln

	p le,ln,ln,ln,ln,ln
	p lb,ln,lq,ln,lp,ln
	p lc,lz,ln,lz,ln,ln
	mov r9, l
	inc r9
	p la,r9,l1,ln,r9,l2
	xor rax,rax
	mov rdi,0
	call _exit
	leave

section .data
l:db 1
lq:db'`',0
lp:db"%",0
ln:db`\n`,0
lz:db"`\n`",0
l1:db`	global _main%s	extern _printf%s	extern _exit%s%s%smacro p 6`,0
l2:db`%slea rdi,[rel %s1]%slea rsi,[rel %s2]%s`,0
l3:db`lea rdx,[rel %s3]%slea rcx,[rel %s4]%slea r8,[rel %s5]`,0
l4:db`%slea r9,[rel %s6]%scall _printf%sleave%s`,0
l5:db`add rsp,8%smov rbp,rsp%sxor rax,rax%s%sendmacro%s`,0
l6:db`%s_main:%s	push rbp%s	mov rbp,rsp%s	sub rsp,16%s`,0
l7:db`	p l1,ln,ln,ln,ln,lp%s	p l2,ln,lp,ln,lp,ln%s	p l3,lp,ln,lp,ln,lp%s	p l4,ln,lp,ln,ln,ln%s	p l5,ln,ln,ln,lp,ln%s`,0
le:db`	xor rax,rax%s	mov rdi,0%s	call _exit%s	leave%s%s`,0
la:db"l%d:db`%s`,0%sl%d:db`%s`,0",0
lb:db`section .data%slq:db'%s',0%slp:db"%s",0%s`,0
lc:db`ln:db%s,0%slz:db"%s",0%s`,0
