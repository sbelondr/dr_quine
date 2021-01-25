section .text
global _main
extern _dprintf
extern _printf
extern _sprintf
extern _setenv
extern _getenv
default rel

section .text
	global _main
	global _nameFile
	global inc_i

_main:
push rbp

;push rax

_nameFile:
lea rdi,[rel testt]
lea rsi, [rel father]
;pop rax
;lea rdx, [rel father]
mov rax, 0
call _sprintf
push rax
call openFile
ret

openFile:
;pop rax
lea rdi,[rel father]
mov rsi,1538
mov rdx,0666o
mov rax,0x2000005
syscall
mov [fd],rax
xor rax,rax
push rax
call write_in_file
ret

write_in_file:
mov rdi,1
lea rsi,[rel father]
mov rdx,0
call _dprintf
pop rax
push rax
call exit
ret

checkI:
lea rdi, [rel father]
call _getenv
lea r8, [rel rax]
pop rbp
push rbp
mov rax, i
push rax
cmp r8,0
;je _display
call inc_i
ret

inc_i:
pop rax
dec rax
push rax
;call _display
ret

pop rbp
push rbp

call exit

;lea rdi, [rel form]
;lea rsi, [rel testt]
;mov rdx, 0
;xor rax,rax
;call _printf
;pop rbp
;mov rax, 0
;ret
;ret


call exit

exit:
;xor rdi,rdi
;xor rsi,rsi
;xor rax,rax
mov rax,0x2000001
mov rdi,0
syscall
ret

section .data
fd:dq 0
father:db"father",0
i:equ 5
f:db"Sully_X.s",0
format:db"%d",0
form:db"Sully_%s.s",0
testt:times 512 db 0
