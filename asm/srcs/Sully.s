section .text
global _main
extern _dprintf
extern _sprintf
extern _getenv
extern _system
default rel
%macro p 4
pop rax
lea rdi,[rel %1]
lea rsi, [rel %2]
mov rdx, [%3]
lea rcx, [rel %4]
xor rax,rax
call _sprintf
push rax
%endmacro
_main:
push rbp
checkI:
lea rdi, [rel father]
call _getenv
lea r8, [rel rax]
mov rax, i
mov [in], rax
cmp r8,0
je _nameFile
call inc_i
ret
inc_i:
mov rax, i
dec rax
mov [in], rax
call _nameFile
ret
_nameFile:
push rax
p name, form, in, s
p exec, form, in, e
p obj, form, in, o
pop rax
lea rdi,[rel final]
lea rsi, [rel nasmCommand]
lea rdx, [rel name]
lea rcx, [rel obj]
lea r8, [rel exec]
xor rax,rax
call _sprintf
push rax
call openFile
ret
openFile:
lea rdi,[rel name]
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
lea rsi,[rel quine]
mov rdx, 37
mov rcx, 34
mov r8, 10
lea r9, [rel quine]
mov rax, [in]
push rax
xor rax,rax
call _dprintf
pop rax
push rax
mov rax,[in]
cmp rax,0
je exit
call _compil_and_launch
ret
_compil_and_launch:
push rax
lea rdi, [rel final]
call _system
pop rax
call exit
ret
exit:
mov rax,0x2000001
mov rdi,0
syscall
ret
section .data
fd:dq 0
i:equ 5
in:dq 0
father:db"father",0
s:db".s",0
o:db".o",0
e:db"",0
name:times 512 db 0
exec:times 512 db 0
obj:times 512 db 0
final:times 1024 db 0
form:db"Sully_%d%s",0
nasmCommand:db"nasm -f macho64 %1$s -o %2$s && ld -macosx_version_min 10.8 -lSystem -no_pie -o %3$s %2$s && father=0 ./%3$s",0
quine:db"section .text%3$cglobal _main%3$cextern _dprintf%3$cextern _sprintf%3$cextern _getenv%3$cextern _system%3$cdefault rel%3$c%1$cmacro p 4%3$cpop rax%3$clea rdi,[rel %1$c1]%3$clea rsi, [rel %1$c2]%3$cmov rdx, [%1$c3]%3$clea rcx, [rel %1$c4]%3$cxor rax,rax%3$ccall _sprintf%3$cpush rax%3$c%1$cendmacro%3$c_main:%3$cpush rbp%3$ccheckI:%3$clea rdi, [rel father]%3$ccall _getenv%3$clea r8, [rel rax]%3$cmov rax, i%3$cmov [in], rax%3$ccmp r8,0%3$cje _nameFile%3$ccall inc_i%3$cret%3$cinc_i:%3$cmov rax, i%3$cdec rax%3$cmov [in], rax%3$ccall _nameFile%3$cret%3$c_nameFile:%3$cpush rax%3$cp name, form, in, s%3$cp exec, form, in, e%3$cp obj, form, in, o%3$cpop rax%3$clea rdi,[rel final]%3$clea rsi, [rel nasmCommand]%3$clea rdx, [rel name]%3$clea rcx, [rel obj]%3$clea r8, [rel exec]%3$cxor rax,rax%3$ccall _sprintf%3$cpush rax%3$ccall openFile%3$cret%3$copenFile:%3$clea rdi,[rel name]%3$cxor rax,rax%3$cmov rsi,1538%3$cmov rdx,0666o%3$cmov rax,0x2000005%3$csyscall%3$cmov [fd],rax%3$ccall write_in_file%3$cret%3$cwrite_in_file:%3$cmov rdi,rax%3$clea rsi,[rel quine]%3$cmov rdx, 37%3$cmov rcx, 34%3$cmov r8, 10%3$clea r9, [rel quine]%3$cmov rax, [in]%3$cpush rax%3$cxor rax,rax%3$ccall _dprintf%3$cpop rax%3$cpush rax%3$cmov rax,[in]%3$ccmp rax,0%3$cje exit%3$ccall _compil_and_launch%3$cret%3$c_compil_and_launch:%3$cpush rax%3$clea rdi, [rel final]%3$ccall _system%3$cpop rax%3$ccall exit%3$cret%3$cexit:%3$cmov rax,0x2000001%3$cmov rdi,0%3$csyscall%3$cret%3$csection .data%3$cfd:dq 0%3$ci:equ %5$d%3$cin:dq 0%3$cfather:db%2$cfather%2$c,0%3$cs:db%2$c.s%2$c,0%3$co:db%2$c.o%2$c,0%3$ce:db%2$c%2$c,0%3$cname:times 512 db 0%3$cexec:times 512 db 0%3$cobj:times 512 db 0%3$cfinal:times 1024 db 0%3$cform:db%2$cSully_%1$cd%1$cs%2$c,0%3$cnasmCommand:db%2$cnasm -f macho64 %1$c1$s -o %1$c2$s && ld -macosx_version_min 10.8 -lSystem -no_pie -o %1$c3$s %1$c2$s && father=0 ./%1$c3$s%2$c,0%3$cquine:db%2$c%4$s%2$c,0%3$c",0
