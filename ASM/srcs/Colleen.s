global main
extern printf
b:
ret
;a
main:push rbp
mov rdi,l;b
mov rsi,10
mov rdx,34
mov rcx,l
call printf
xor rax,rax
pop rbp
ret
l:db"global main%1$cextern printf%1$cb:%1$cret%1$c;a%1$cmain:push rbp%1$cmov rdi,l;b%1$cmov rsi,10%1$cmov rdx,34%1$cmov rcx,l%1$ccall printf%1$cxor rax,rax%1$cpop rbp%1$cret%1$cl:db%2$c%3$s%2$c,0%1$c",0
