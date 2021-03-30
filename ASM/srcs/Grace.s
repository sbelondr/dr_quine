%define FT main:m_t 2
%define OPEN 2
%macro m_t 1
push rbp ;z
mov rbp,rsp
sub rsp,16
mov rdi,f
mov rsi,578
mov rdx,508
mov rax,OPEN
syscall
mov [fd],rax
mov rdi,[fd]
mov rsi,l
mov rdx,10
mov rcx,34
mov r8,l
mov r9,37
call dprintf
leave
xor rax,rax
mov rax,60
mov rdi, 0
syscall
ret
section .data
l:db"%4$cdefine FT main:m_t 2%1$c%4$cdefine OPEN 2%1$c%4$cmacro m_t 1%1$cpush rbp ;z%1$cmov rbp,rsp%1$csub rsp,16%1$cmov rdi,f%1$cmov rsi,578%1$cmov rdx,508%1$cmov rax,OPEN%1$csyscall%1$cmov [fd],rax%1$cmov rdi,[fd]%1$cmov rsi,l%1$cmov rdx,10%1$cmov rcx,34%1$cmov r8,l%1$cmov r9,37%1$ccall dprintf%1$cleave%1$cxor rax,rax%1$cmov rax,60%1$cmov rdi, 0%1$csyscall%1$cret%1$csection .data%1$cl:db%2$c%3$s%2$c,0%1$cf:db%2$cGrace_kid.s%2$c,0%1$cfd:dq 0%1$c%4$cendmacro%1$csection .text%1$cglobal main%1$cextern dprintf%1$cFT%1$c",0
f:db"Grace_kid.s",0
fd:dq 0
%endmacro
section .text
global main
extern dprintf
FT
