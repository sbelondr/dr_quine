section .text
global _main
extern _dprintf
extern _asprintf
extern _printf
default rel

_main:
push rbp
mov rbp,rsp
sub rsp,16

mov rdi,i
dec rdi

lea rdi, [rel r8]
lea rsi, [rel format]
mov rdx, i
call _asprintf
leave
;ret
;mov rdi, rax
;xor rax,rax
;xor rsi,rsi
call exit

lea rdi,[rel f]
mov rsi,1538
mov rdx,0666o
mov rax,0x2000005
syscall

exit:
xor rdi,rdi
xor rsi,rsi
;mov rdi, rax
xor rax,rax
mov rax,0x2000001
mov rdi,5
ret
syscall

section .data
i:equ 5
f:db"Sully_", i + '0',".s",0
format:db"%d",0
