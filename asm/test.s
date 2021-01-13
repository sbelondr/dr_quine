push rbp
mov rbp,rsp
sub rsp,16
mov rax,0x2000004
mov rdi,1
lea rsi,[rel "Salut"]
mov rdx,6
syscall
