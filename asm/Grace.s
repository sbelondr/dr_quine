section .text
global _main
extern _dprintf
default rel
_main:push rbp
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
call _dprintf
leave
xor rax,rax
pop rbp
ret
section .data
l:db"section .text%1$cglobal _main%1$cextern _dprintf%1$cdefault rel%1$c_main:push rbp%1$cmov rbp,rsp%1$csub rsp,16%1$clea rdi,[rel f]%1$cmov rsi,1538%1$cmov rdx,0666o%1$cmov rax,0x2000005%1$csyscall%1$cmov [fd],rax%1$cmov rdi,[fd]%1$clea rsi,[rel l]%1$cmov rdx,10%1$cmov rcx,34%1$clea r8,[rel l]%1$ccall _dprintf%1$cleave%1$cxor rax,rax%1$cpop rbp%1$cret%1$csection .data%1$cl:db%2$c%3$s%2$c,0%1$cf:db%2$cf%2$c,0%1$cfd:dq 0%1$c",0
f:db"f",0
fd:dq 0
