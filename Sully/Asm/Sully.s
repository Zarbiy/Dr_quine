section .data
    base_name db "Sully_%d.s",0
    file_name db 15 dup(0)
    msg db "section .data%1$c    base_name db %2$cSully_%%d.s%2$c,0%1$c    file_name db 15 dup(0)%1$c    msg db %2$c%3$s%2$c,0%1$c    base_exec db %2$cnasm -f elf64 Sully_%4$c.s -o Sully_%4$c.o && gcc -o Sully_%4$c Sully_%4$c.o -nostartfiles && ./Sully_%4$c%2$c,0%1$c    exec_name db 70 dup(0)%1$c%1$csection .text%1$c    extern printf, sprintf, dprintf, exit, system, open, close%1$c    global _start%1$c%1$c_start:%1$c    mov r12, %4$d%1$c    cmp r12, 0%1$c    jle end%1$c%1$c    dec r12%1$c%1$c    lea rdi, [rel file_name]%1$c    lea rsi, [rel base_name]%1$c    mov edx, r12d%1$c    xor rax, rax%1$c    mov rax, [rel sprintf wrt ..got]%1$c    call rax%1$c%1$c    mov rdi, file_name%1$c    mov rsi, 577%1$c    mov rdx, 0o777%1$c    xor rax, rax%1$c    mov rax, [rel open wrt ..got]%1$c    call rax%1$c%1$c    mov rdi, rax%1$c    lea rsi, [rel msg]%1$c    mov rdx, 10%1$c    mov rcx, 34%1$c    lea r8, [rel msg]%1$c    xor rax, rax%1$c    mov rax, [rel dprintf wrt ..got]%1$c    call rax%1$c%1$c    xor rax, rax%1$c    mov rax, [rel close wrt ..got]%1$c    call rax%1$c%1$c    lea rdi, [rel exec_name]%1$c    lea rsi, [rel base_exec]%1$c    mov rdx, r12%1$c    xor rax, rax%1$c    mov rax, [rel sprintf wrt ..got]%1$c    call rax%1$c%1$c    lea rdi, [rel exec_name]%1$c    xor rax, rax%1$c    mov rax, [rel system wrt ..got]%1$c    call rax%1$c%1$c    mov rdi, 0%1$c    mov rax, [rel exit wrt ..got]%1$c    call rax%1$c%1$cend:%1$c    mov rdi, 0%1$c    mov rax, [rel exit wrt ..got]%1$c    call rax%1$c",0
    base_exec db "nasm -f elf64 Sully_%4$c.s -o Sully_%4$c.o && gcc -o Sully_%4$c Sully_%4$c.o -nostartfiles && ./Sully_%4$c",0
    exec_name db 70 dup(0)

section .text
    extern printf, sprintf, dprintf, exit, system, open, close
    global _start

_start:
    mov r12, 5
    cmp r12, 0
    jle end

    dec r12

    lea rdi, [rel file_name]
    lea rsi, [rel base_name]
    mov edx, r12d
    xor rax, rax
    mov rax, [rel sprintf wrt ..got]
    call rax

    mov rdi, file_name
    mov rsi, 577
    mov rdx, 0o777
    xor rax, rax
    mov rax, [rel open wrt ..got]
    call rax

    mov rdi, rax
    lea rsi, [rel msg]
    mov rdx, 10
    mov rcx, 34
    lea r8, [rel msg]
    mov r9, r12
    xor rax, rax
    mov rax, [rel dprintf wrt ..got]
    call rax

    xor rax, rax
    mov rax, [rel close wrt ..got]
    call rax

    lea rdi, [rel exec_name]
    lea rsi, [rel base_exec]
    mov rdx, r12
    xor rax, rax
    mov rax, [rel sprintf wrt ..got]
    call rax

    lea rdi, [rel exec_name]
    xor rax, rax
    mov rax, [rel system wrt ..got]
    call rax

    mov rdi, 0
    mov rax, [rel exit wrt ..got]
    call rax

end:
    mov rdi, 0
    mov rax, [rel exit wrt ..got]
    call rax
