%define FT _main:m_t 2
%macro m_t 1
push rbp ;z
mov rbp,rsp
sub rsp,16
lea rdi,[rel f]
mov rsi,1538
mov rdx,0666o
mov rax,0x2000005
syscall
mov [fd],rax
mov rdi,[fd]
lea rsi,[rel l]
mov rdx,10
mov rcx,34
lea r8,[rel l]
mov r9,37
call _dprintf
leave
xor rax,rax
mov rax, 0x2000001
mov rdi, 0
syscall
ret
section .data
l:db"%4$cdefine FT _main:m_t 2%1$c%4$cmacro m_t 1%1$cpush rbp ;z%1$cmov rbp,rsp%1$csub rsp,16%1$clea rdi,[rel f]%1$cmov rsi,1538%1$cmov rdx,0666o%1$cmov rax,0x2000005%1$csyscall%1$cmov [fd],rax%1$cmov rdi,[fd]%1$clea rsi,[rel l]%1$cmov rdx,10%1$cmov rcx,34%1$clea r8,[rel l]%1$cmov r9,37%1$ccall _dprintf%1$cleave%1$cxor rax,rax%1$cmov rax, 0x2000001%1$cmov rdi, 0%1$csyscall%1$cret%1$csection .data%1$cl:db%2$c%3$s%2$c,0%1$cf:db%2$cGrace_kid.s%2$c,0%1$cfd:dq 0%1$c%4$cendmacro%1$csection .text%1$cglobal _main%1$cextern _dprintf%1$cdefault rel%1$cFT%1$c",0
f:db"Grace_kid.s",0
fd:dq 0
%endmacro
section .text
global _main
extern _dprintf
default rel
FT
