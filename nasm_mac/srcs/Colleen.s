global _main
extern _printf
b:
ret
;a
_main:push rbp
lea rdi,[rel l];b
mov rsi,10
mov rdx,34
lea rcx,[rel l]
call _printf
xor rax,rax
pop rbp
ret
l:db"global _main%1$cextern _printf%1$cb:%1$cret%1$c;a%1$c_main:push rbp%1$clea rdi,[rel l];b%1$cmov rsi,10%1$cmov rdx,34%1$clea rcx,[rel l]%1$ccall _printf%1$cxor rax,rax%1$cpop rbp%1$cret%1$cl:db%2$c%3$s%2$c,0%1$c",0
