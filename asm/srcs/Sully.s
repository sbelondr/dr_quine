section .text
global _main
extern _dprintf
extern _printf
extern _sprintf
extern _setenv
extern _getenv
;default rel

_main:
push rbp

editI:
lea rdi, [rel father]
call _getenv
lea r8, [rel rax]
pop rbp
push rbp

mov r9, i
cmp r8,0
je display

dec r9


display:
lea rdi,[rel testt]
lea rsi, [rel format]
mov rdx,r9
mov rax, 0
call _sprintf

pop rbp
push rbp

lea rdi, [rel form]
lea rsi, [rel testt]
mov rdx, 0
xor rax,rax
call _printf
pop rbp
mov rax, 0
ret
;ret

call exit

file:
lea rdi,[rel f]
mov rsi,1538
mov rdx,0666o
mov rax,0x2000005
syscall

exit:
;xor rdi,rdi
;xor rsi,rsi
;xor rax,rax
mov rax,0x2000001
mov rdi,5
syscall
ret

section .data
father:db"father",0
i:equ 5
f:db"Sully_X.s",0
format:db"%d",0
form:db"Sully_%s.s",0
testt:times 512 db 0
