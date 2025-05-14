section .data
    msg db "section .data%1$c    msg db %2$c%3$s%2$c,0%1$c%1$csection .text%1$c    extern printf%1$c    global main%1$c%1$c; This is a comment outsite main function%1$c%1$cmain:%1$c    ; This is a comment inside main function%1$c    call print%1$c    mov rax, 0%1$c    ret%1$c%1$cprint:%1$c    lea rdi, [rel msg]%1$c    mov rsi, 10%1$c    mov rdx, 34%1$c    lea rcx, [rel msg]%1$c    xor rax, rax%1$c    mov rax, [rel printf wrt ..got]%1$c    call rax%1$c    ret%1$c",0

section .text
    extern printf
    global main

; This is a comment outsite main function

main:
    ; This is a comment inside main function
    call print
    mov rax, 0
    ret

print:
    lea rdi, [rel msg]
    mov rsi, 10
    mov rdx, 34
    lea rcx, [rel msg]
    xor rax, rax
    mov rax, [rel printf wrt ..got]
    call rax
    ret
