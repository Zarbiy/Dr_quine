%define LF 10
%define DQ 34
%define FILENAME "Grace_kid.s"

section .data
    msg db "%%define LF 10%1$c%%define DQ 34%1$c%%define FILENAME %2$cGrace_kid.s%2$c%1$c%1$csection .data%1$c    msg db %2$c%3$s%2$c,0%1$c    filename db FILENAME, 0%1$c%1$csection .text%1$c    global _start%1$c    extern dprintf, open, write, close, exit%1$c%1$c; this is a comment%1$c%%macro START 0%1$c_start:%1$c    mov rdi, filename%1$c    mov rsi, 577%1$c    mov rdx, 0o777%1$c    xor rax, rax%1$c    mov rax, [rel open wrt ..got]%1$c    call rax%1$c    cmp rax, 0%1$c    jl .open_error%1$c    mov rdi, rax%1$c    lea rsi, [rel msg]%1$c    mov rdx, LF%1$c    mov rcx, DQ%1$c    lea r8, [rel msg]%1$c    xor rax, rax%1$c    mov rax, [rel dprintf wrt ..got]%1$c    call rax%1$c    xor rax, rax%1$c    mov rax, [rel close wrt ..got]%1$c    call rax%1$c    mov rdi, 0%1$c    xor rax, rax%1$c    mov rax, [rel exit wrt ..got]%1$c    call rax%1$c%1$c.open_error:%1$c    mov rdi, 1%1$c    mov rax, [rel exit wrt ..got]%1$c    call rax%1$c%%endmacro%1$c%1$cSTART",0
    filename db FILENAME, 0

section .text
    global _start
    extern dprintf, open, write, close, exit

; this is a comment
%macro START 0
_start:
    mov rdi, filename
    mov rsi, 577
    mov rdx, 0o777
    xor rax, rax
    mov rax, [rel open wrt ..got]
    call rax
    cmp rax, 0
    jl .open_error
    mov rdi, rax
    lea rsi, [rel msg]
    mov rdx, LF
    mov rcx, DQ
    lea r8, [rel msg]
    xor rax, rax
    mov rax, [rel dprintf wrt ..got]
    call rax
    xor rax, rax
    mov rax, [rel close wrt ..got]
    call rax
    mov rdi, 0
    xor rax, rax
    mov rax, [rel exit wrt ..got]
    call rax

.open_error:
    mov rdi, 1
    mov rax, [rel exit wrt ..got]
    call rax
%endmacro

START