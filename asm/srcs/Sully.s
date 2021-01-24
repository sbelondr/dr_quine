section .text
global _main
extern _dprintf
extern _printf
extern _asprintf
;default rel

_main:
push rbp
mov rbp,rsp
sub rsp,16

mov rax, i;[rel i]
dec rax
;lea rdi, [rel format]
mov r9, rax
;xor rax,rax
;lodsb
;mov rsi,rax

lea rdi, [rel f]
;mov byte[rax+6], 'X'
add rdi,6
stosb

lea rdi, [rel f]
call _printf
leave
ret

call exit

file:
lea rdi,[rel f]
mov rsi,1538
mov rdx,0666o
mov rax,0x2000005
syscall

exit:
xor rdi,rdi
xor rsi,rsi
xor rax,rax
mov rax,0x2000001
mov rdi,5
syscall
ret

section .data
i:equ 66
f:db"Sully_X.s",0
format:db"%d",0
