section .text
global _main
extern _dprintf
extern _sprintf
extern _setenv
extern _getenv
extern _system
default rel

section .text
	global _main
	global _nameFile
	global inc_i

_main:
push rbp

call _compil_and_launch
ret

checkI:
lea rdi, [rel father]
call _getenv
lea r8, [rel rax]
mov rax, i
mov [ii], rax
cmp r8,0
je _nameFile
call inc_i
ret

inc_i:
mov rax, i
dec rax
mov [ii], rax
call _nameFile
ret

_nameFile:
lea rdi,[rel testt]
lea rsi, [rel form]
mov rdx, [ii]
xor rax,rax
call _sprintf
push rax
call openFile
ret

openFile:
lea rdi,[rel testt]
xor rax,rax
mov rsi,1538
mov rdx,0666o
mov rax,0x2000005
syscall
mov [fd],rax
call write_in_file
ret

write_in_file:
mov rdi,rax
lea rsi,[rel form]
mov rdx,i
xor rax,rax
push rax
call _dprintf
pop rax
push rax
call _compil_and_launch
ret

_compil_and_launch:
lea rdi, [rel testSys]
call _system
xor rax,rax
call exit
ret

exit:
mov rax,0x2000001
mov rdi,0
syscall
ret

section .data
fd:dq 0
ii:dq 0
father:db"father",0
i:equ 5
f:db"Sully_X.s",0
format:db"%d",0
form:db"Sully_%d.s",0
testt:times 512 db 0
testSys:db"ls -la",0
